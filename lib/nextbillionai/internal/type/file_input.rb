# frozen_string_literal: true

module Nextbillionai
  module Internal
    module Type
      # @api private
      #
      # @abstract
      #
      # Either `Pathname` or `StringIO`, or `IO`, or
      # `Nextbillionai::Internal::Type::FileInput`.
      #
      # Note: when `IO` is used, all retries are disabled, since many IO` streams are
      # not rewindable.
      class FileInput
        extend Nextbillionai::Internal::Type::Converter

        private_class_method :new

        # @api public
        #
        # @param other [Object]
        #
        # @return [Boolean]
        def self.===(other)
          case other
          in Pathname | StringIO | IO | String | Nextbillionai::FilePart
            true
          else
            false
          end
        end

        # @api public
        #
        # @param other [Object]
        #
        # @return [Boolean]
        def self.==(other) = other.is_a?(Class) && other <= Nextbillionai::Internal::Type::FileInput

        class << self
          # @api private
          #
          # @param value [StringIO, String, Object]
          #
          # @param state [Hash{Symbol=>Object}] .
          #
          #   @option state [Boolean] :translate_names
          #
          #   @option state [Boolean] :strictness
          #
          #   @option state [Hash{Symbol=>Object}] :exactness
          #
          #   @option state [Class<StandardError>] :error
          #
          #   @option state [Integer] :branched
          #
          # @return [StringIO, Object]
          def coerce(value, state:)
            exactness = state.fetch(:exactness)
            case value
            in String
              exactness[:yes] += 1
              StringIO.new(value)
            in StringIO
              exactness[:yes] += 1
              value
            else
              state[:error] = TypeError.new("#{value.class} can't be coerced into #{StringIO}")
              exactness[:no] += 1
              value
            end
          end

          # @api private
          #
          # @param value [Pathname, StringIO, IO, String, Object]
          #
          # @param state [Hash{Symbol=>Object}] .
          #
          #   @option state [Boolean] :can_retry
          #
          # @return [Pathname, StringIO, IO, String, Object]
          def dump(value, state:)
            # rubocop:disable Lint/DuplicateBranch
            case value
            in IO
              state[:can_retry] = false
            in Nextbillionai::FilePart if value.content.is_a?(IO)
              state[:can_retry] = false
            else
            end
            # rubocop:enable Lint/DuplicateBranch

            value
          end

          # @api private
          #
          # @return [Object]
          def to_sorbet_type
            T.any(Pathname, StringIO, IO, String, Nextbillionai::FilePart)
          end
        end
      end
    end
  end
end
