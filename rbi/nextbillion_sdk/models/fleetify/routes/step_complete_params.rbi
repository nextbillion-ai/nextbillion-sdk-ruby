# typed: strong

module NextbillionSDK
  module Models
    module Fleetify
      module Routes
        class StepCompleteParams < NextbillionSDK::Internal::Type::BaseModel
          extend NextbillionSDK::Internal::Type::RequestParameters::Converter
          include NextbillionSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                NextbillionSDK::Fleetify::Routes::StepCompleteParams,
                NextbillionSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :route_id

          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          sig { returns(String) }
          attr_accessor :key

          # A key-value map storing form submission data, where keys correspond to field
          # labels and values can be of any type depend on the type of according document
          # item.
          sig { returns(T.nilable(T.anything)) }
          attr_reader :document

          sig { params(document: T.anything).void }
          attr_writer :document

          # Sets the status of the route step. Currently only completed is supported.
          #
          # Note: once marked completed, a step cannot transition to other statuses. You can
          # only update the document afterwards.
          sig { returns(T.nilable(String)) }
          attr_reader :mode

          sig { params(mode: String).void }
          attr_writer :mode

          # Sets the status of the route step. Currently only completed is supported.
          #
          # Note: once marked completed, a step cannot transition to other statuses. You can
          # only update the document afterwards.
          sig { returns(T.nilable(String)) }
          attr_reader :status

          sig { params(status: String).void }
          attr_writer :status

          sig do
            params(
              route_id: String,
              key: String,
              document: T.anything,
              mode: String,
              status: String,
              request_options: NextbillionSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            route_id:,
            # A key is a unique identifier that is required to authenticate a request to the
            # API.
            key:,
            # A key-value map storing form submission data, where keys correspond to field
            # labels and values can be of any type depend on the type of according document
            # item.
            document: nil,
            # Sets the status of the route step. Currently only completed is supported.
            #
            # Note: once marked completed, a step cannot transition to other statuses. You can
            # only update the document afterwards.
            mode: nil,
            # Sets the status of the route step. Currently only completed is supported.
            #
            # Note: once marked completed, a step cannot transition to other statuses. You can
            # only update the document afterwards.
            status: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                route_id: String,
                key: String,
                document: T.anything,
                mode: String,
                status: String,
                request_options: NextbillionSDK::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
