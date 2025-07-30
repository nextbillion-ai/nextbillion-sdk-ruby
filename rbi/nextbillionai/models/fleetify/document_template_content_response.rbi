# typed: strong

module Nextbillionai
  module Models
    module Fleetify
      class DocumentTemplateContentResponse < Nextbillionai::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Fleetify::DocumentTemplateContentResponse,
              Nextbillionai::Internal::AnyHash
            )
          end

        # Returns the label of the document field.
        sig { returns(T.nilable(String)) }
        attr_reader :label

        sig { params(label: String).void }
        attr_writer :label

        # Returns the options configured for single_choice or multi_choices type document
        # items.
        sig do
          returns(
            T.nilable(
              Nextbillionai::Fleetify::DocumentTemplateContentResponse::Meta
            )
          )
        end
        attr_reader :meta

        sig do
          params(
            meta:
              Nextbillionai::Fleetify::DocumentTemplateContentResponse::Meta::OrHash
          ).void
        end
        attr_writer :meta

        # Returns the name of the document field.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # Indicates if the document field is mandatory or not.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :required

        sig { params(required: T::Boolean).void }
        attr_writer :required

        # Returns the data type of the document field. It will always belong to one of
        # string, number, date_time, photos, multi_choices, signature, barcode, and
        # single_choice.
        sig { returns(T.nilable(String)) }
        attr_reader :type

        sig { params(type: String).void }
        attr_writer :type

        # Returns the validation rules for number , multi_choices , and photos document
        # field types.
        sig do
          returns(
            T.nilable(
              Nextbillionai::Fleetify::DocumentTemplateContentResponse::Validation
            )
          )
        end
        attr_reader :validation

        sig do
          params(
            validation:
              Nextbillionai::Fleetify::DocumentTemplateContentResponse::Validation::OrHash
          ).void
        end
        attr_writer :validation

        # An array of objects returning the details of data structures and validation
        # rules and other properties of all document fields. Each object represents one
        # document field.
        sig do
          params(
            label: String,
            meta:
              Nextbillionai::Fleetify::DocumentTemplateContentResponse::Meta::OrHash,
            name: String,
            required: T::Boolean,
            type: String,
            validation:
              Nextbillionai::Fleetify::DocumentTemplateContentResponse::Validation::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Returns the label of the document field.
          label: nil,
          # Returns the options configured for single_choice or multi_choices type document
          # items.
          meta: nil,
          # Returns the name of the document field.
          name: nil,
          # Indicates if the document field is mandatory or not.
          required: nil,
          # Returns the data type of the document field. It will always belong to one of
          # string, number, date_time, photos, multi_choices, signature, barcode, and
          # single_choice.
          type: nil,
          # Returns the validation rules for number , multi_choices , and photos document
          # field types.
          validation: nil
        )
        end

        sig do
          override.returns(
            {
              label: String,
              meta:
                Nextbillionai::Fleetify::DocumentTemplateContentResponse::Meta,
              name: String,
              required: T::Boolean,
              type: String,
              validation:
                Nextbillionai::Fleetify::DocumentTemplateContentResponse::Validation
            }
          )
        end
        def to_hash
        end

        class Meta < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Fleetify::DocumentTemplateContentResponse::Meta,
                Nextbillionai::Internal::AnyHash
              )
            end

          # An array of objects returning the options for multi_choices or single_choice
          # type document field. Each object represents one configured option.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Nextbillionai::Fleetify::DocumentTemplateContentResponse::Meta::Option
                ]
              )
            )
          end
          attr_reader :options

          sig do
            params(
              options:
                T::Array[
                  Nextbillionai::Fleetify::DocumentTemplateContentResponse::Meta::Option::OrHash
                ]
            ).void
          end
          attr_writer :options

          # Returns the options configured for single_choice or multi_choices type document
          # items.
          sig do
            params(
              options:
                T::Array[
                  Nextbillionai::Fleetify::DocumentTemplateContentResponse::Meta::Option::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # An array of objects returning the options for multi_choices or single_choice
            # type document field. Each object represents one configured option.
            options: nil
          )
          end

          sig do
            override.returns(
              {
                options:
                  T::Array[
                    Nextbillionai::Fleetify::DocumentTemplateContentResponse::Meta::Option
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
                  Nextbillionai::Fleetify::DocumentTemplateContentResponse::Meta::Option,
                  Nextbillionai::Internal::AnyHash
                )
              end

            # Returns the label for the option.
            sig { returns(T.nilable(String)) }
            attr_reader :label

            sig { params(label: String).void }
            attr_writer :label

            # Returns the value associated with the option. This value gets submitted when the
            # option is checked in the Driver app.
            sig { returns(T.nilable(String)) }
            attr_reader :value

            sig { params(value: String).void }
            attr_writer :value

            sig do
              params(label: String, value: String).returns(T.attached_class)
            end
            def self.new(
              # Returns the label for the option.
              label: nil,
              # Returns the value associated with the option. This value gets submitted when the
              # option is checked in the Driver app.
              value: nil
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
                Nextbillionai::Fleetify::DocumentTemplateContentResponse::Validation,
                Nextbillionai::Internal::AnyHash
              )
            end

          # Returns the maximum allowed value for number type document item, as specified at
          # the time of configuring the field. This parameter is not present in the response
          # if it was not provided in the input.
          sig { returns(T.nilable(Integer)) }
          attr_reader :max

          sig { params(max: Integer).void }
          attr_writer :max

          # Returns the maximum number of items required for multi_choices, photos type
          # document items. This parameter will not be present in the response if it was not
          # provided in the input.
          sig { returns(T.nilable(String)) }
          attr_reader :max_items

          sig { params(max_items: String).void }
          attr_writer :max_items

          # Returns the minimum allowed value for number type document item, as specified at
          # the time of configuring the field. This parameter is not present in the response
          # if it was not provided in the input.
          sig { returns(T.nilable(Integer)) }
          attr_reader :min

          sig { params(min: Integer).void }
          attr_writer :min

          # Returns the minimum number of items required for multi_choices, photos type
          # document items. This parameter will not be present in the response if it was not
          # provided in the input.
          sig { returns(T.nilable(String)) }
          attr_reader :min_items

          sig { params(min_items: String).void }
          attr_writer :min_items

          # Returns the validation rules for number , multi_choices , and photos document
          # field types.
          sig do
            params(
              max: Integer,
              max_items: String,
              min: Integer,
              min_items: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Returns the maximum allowed value for number type document item, as specified at
            # the time of configuring the field. This parameter is not present in the response
            # if it was not provided in the input.
            max: nil,
            # Returns the maximum number of items required for multi_choices, photos type
            # document items. This parameter will not be present in the response if it was not
            # provided in the input.
            max_items: nil,
            # Returns the minimum allowed value for number type document item, as specified at
            # the time of configuring the field. This parameter is not present in the response
            # if it was not provided in the input.
            min: nil,
            # Returns the minimum number of items required for multi_choices, photos type
            # document items. This parameter will not be present in the response if it was not
            # provided in the input.
            min_items: nil
          )
          end

          sig do
            override.returns(
              {
                max: Integer,
                max_items: String,
                min: Integer,
                min_items: String
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
