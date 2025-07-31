# typed: strong

module Nextbillionai
  module Models
    module Fleetify
      class DocumentTemplateContentRequest < Nextbillionai::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Fleetify::DocumentTemplateContentRequest,
              Nextbillionai::Internal::AnyHash
            )
          end

        # Specify the label or the name of the field. The label specified here can be used
        # as field name when rendering the document in the Driver app.
        sig { returns(String) }
        attr_accessor :label

        # Specify the data type of the field. It corresponds to the type of information
        # that the driver needs to collect.
        sig do
          returns(
            Nextbillionai::Fleetify::DocumentTemplateContentRequest::Type::OrSymbol
          )
        end
        attr_accessor :type

        # An object to define additional information required for single_choice or
        # multi_choices type document items.
        sig do
          returns(
            T.nilable(
              Nextbillionai::Fleetify::DocumentTemplateContentRequest::Meta
            )
          )
        end
        attr_reader :meta

        sig do
          params(
            meta:
              Nextbillionai::Fleetify::DocumentTemplateContentRequest::Meta::OrHash
          ).void
        end
        attr_writer :meta

        # Specify the name of the document field. A field'sname can be used for internal
        # references to the document field.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # Specify if it is mandatory to fill the field. Default value is false.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :required

        sig { params(required: T::Boolean).void }
        attr_writer :required

        # Specify the validation rules for the field. This can be used to enforce data
        # quality and integrity checks. For example, if the field is a number type,
        # validation can define constraints like minimum / maximum number values.
        sig do
          returns(
            T.nilable(
              Nextbillionai::Fleetify::DocumentTemplateContentRequest::Validation
            )
          )
        end
        attr_reader :validation

        sig do
          params(
            validation:
              Nextbillionai::Fleetify::DocumentTemplateContentRequest::Validation::OrHash
          ).void
        end
        attr_writer :validation

        # An object to collect the details of form fields - data structures, validation
        # rules - for collecting required information after successfully executing a route
        # step.
        sig do
          params(
            label: String,
            type:
              Nextbillionai::Fleetify::DocumentTemplateContentRequest::Type::OrSymbol,
            meta:
              Nextbillionai::Fleetify::DocumentTemplateContentRequest::Meta::OrHash,
            name: String,
            required: T::Boolean,
            validation:
              Nextbillionai::Fleetify::DocumentTemplateContentRequest::Validation::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Specify the label or the name of the field. The label specified here can be used
          # as field name when rendering the document in the Driver app.
          label:,
          # Specify the data type of the field. It corresponds to the type of information
          # that the driver needs to collect.
          type:,
          # An object to define additional information required for single_choice or
          # multi_choices type document items.
          meta: nil,
          # Specify the name of the document field. A field'sname can be used for internal
          # references to the document field.
          name: nil,
          # Specify if it is mandatory to fill the field. Default value is false.
          required: nil,
          # Specify the validation rules for the field. This can be used to enforce data
          # quality and integrity checks. For example, if the field is a number type,
          # validation can define constraints like minimum / maximum number values.
          validation: nil
        )
        end

        sig do
          override.returns(
            {
              label: String,
              type:
                Nextbillionai::Fleetify::DocumentTemplateContentRequest::Type::OrSymbol,
              meta:
                Nextbillionai::Fleetify::DocumentTemplateContentRequest::Meta,
              name: String,
              required: T::Boolean,
              validation:
                Nextbillionai::Fleetify::DocumentTemplateContentRequest::Validation
            }
          )
        end
        def to_hash
        end

        # Specify the data type of the field. It corresponds to the type of information
        # that the driver needs to collect.
        module Type
          extend Nextbillionai::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Nextbillionai::Fleetify::DocumentTemplateContentRequest::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STRING =
            T.let(
              :string,
              Nextbillionai::Fleetify::DocumentTemplateContentRequest::Type::TaggedSymbol
            )
          NUMBER =
            T.let(
              :number,
              Nextbillionai::Fleetify::DocumentTemplateContentRequest::Type::TaggedSymbol
            )
          DATE_TIME =
            T.let(
              :date_time,
              Nextbillionai::Fleetify::DocumentTemplateContentRequest::Type::TaggedSymbol
            )
          PHOTOS =
            T.let(
              :photos,
              Nextbillionai::Fleetify::DocumentTemplateContentRequest::Type::TaggedSymbol
            )
          MULTI_CHOICES =
            T.let(
              :multi_choices,
              Nextbillionai::Fleetify::DocumentTemplateContentRequest::Type::TaggedSymbol
            )
          SIGNATURE =
            T.let(
              :signature,
              Nextbillionai::Fleetify::DocumentTemplateContentRequest::Type::TaggedSymbol
            )
          BARCODE =
            T.let(
              :barcode,
              Nextbillionai::Fleetify::DocumentTemplateContentRequest::Type::TaggedSymbol
            )
          SINGLE_CHOICE =
            T.let(
              :single_choice,
              Nextbillionai::Fleetify::DocumentTemplateContentRequest::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Nextbillionai::Fleetify::DocumentTemplateContentRequest::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Meta < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Fleetify::DocumentTemplateContentRequest::Meta,
                Nextbillionai::Internal::AnyHash
              )
            end

          # An array of objects to define options for a multi_choices or single_choice type
          # document field. Each object represents one option.
          sig do
            returns(
              T::Array[
                Nextbillionai::Fleetify::DocumentTemplateContentRequest::Meta::Option
              ]
            )
          end
          attr_accessor :options

          # An object to define additional information required for single_choice or
          # multi_choices type document items.
          sig do
            params(
              options:
                T::Array[
                  Nextbillionai::Fleetify::DocumentTemplateContentRequest::Meta::Option::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # An array of objects to define options for a multi_choices or single_choice type
            # document field. Each object represents one option.
            options:
          )
          end

          sig do
            override.returns(
              {
                options:
                  T::Array[
                    Nextbillionai::Fleetify::DocumentTemplateContentRequest::Meta::Option
                  ]
              }
            )
          end
          def to_hash
          end

          class Option < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Fleetify::DocumentTemplateContentRequest::Meta::Option,
                  Nextbillionai::Internal::AnyHash
                )
              end

            # Specify the label or name for the option.
            sig { returns(String) }
            attr_accessor :label

            # Specify the value associated with the option. This value will be submitted when
            # the option is checked in the Driver app.
            sig { returns(String) }
            attr_accessor :value

            sig do
              params(label: String, value: String).returns(T.attached_class)
            end
            def self.new(
              # Specify the label or name for the option.
              label:,
              # Specify the value associated with the option. This value will be submitted when
              # the option is checked in the Driver app.
              value:
            )
            end

            sig { override.returns({ label: String, value: String }) }
            def to_hash
            end
          end
        end

        class Validation < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Fleetify::DocumentTemplateContentRequest::Validation,
                Nextbillionai::Internal::AnyHash
              )
            end

          # Specifies the maximum allowed value for number type document field. Input values
          # must be less than or equal to this threshold.
          sig { returns(T.nilable(Integer)) }
          attr_reader :max

          sig { params(max: Integer).void }
          attr_writer :max

          # Specifies the maximum number of items for multi_choices, photos type document
          # fields. The number of provided input items must be less than or equal to this
          # threshold.
          sig { returns(T.nilable(Integer)) }
          attr_reader :max_items

          sig { params(max_items: Integer).void }
          attr_writer :max_items

          # Specifies the minimum allowed value for number type document field. Input values
          # must be greater than or equal to this threshold.
          sig { returns(T.nilable(Integer)) }
          attr_reader :min

          sig { params(min: Integer).void }
          attr_writer :min

          # Specifies the minimum number of items for multi_choices, photos type document
          # fields. The number of provided input items must be greater than or equal to this
          # threshold.
          sig { returns(T.nilable(Integer)) }
          attr_reader :min_items

          sig { params(min_items: Integer).void }
          attr_writer :min_items

          # Specify the validation rules for the field. This can be used to enforce data
          # quality and integrity checks. For example, if the field is a number type,
          # validation can define constraints like minimum / maximum number values.
          sig do
            params(
              max: Integer,
              max_items: Integer,
              min: Integer,
              min_items: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # Specifies the maximum allowed value for number type document field. Input values
            # must be less than or equal to this threshold.
            max: nil,
            # Specifies the maximum number of items for multi_choices, photos type document
            # fields. The number of provided input items must be less than or equal to this
            # threshold.
            max_items: nil,
            # Specifies the minimum allowed value for number type document field. Input values
            # must be greater than or equal to this threshold.
            min: nil,
            # Specifies the minimum number of items for multi_choices, photos type document
            # fields. The number of provided input items must be greater than or equal to this
            # threshold.
            min_items: nil
          )
          end

          sig do
            override.returns(
              {
                max: Integer,
                max_items: Integer,
                min: Integer,
                min_items: Integer
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
