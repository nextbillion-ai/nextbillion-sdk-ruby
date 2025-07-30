# typed: strong

module Nextbillionai
  module Models
    module Fleetify
      class DocumentTemplateCreateParams < Nextbillionai::Internal::Type::BaseModel
        extend Nextbillionai::Internal::Type::RequestParameters::Converter
        include Nextbillionai::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Fleetify::DocumentTemplateCreateParams,
              Nextbillionai::Internal::AnyHash
            )
          end

        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        sig { returns(String) }
        attr_accessor :key

        # A form field that drivers must complete when executing a route step. Defines the
        # data structure and validation rules for collecting required information during
        # route execution.
        sig do
          returns(
            T::Array[Nextbillionai::Fleetify::DocumentTemplateContentRequest]
          )
        end
        attr_accessor :content

        # Specify a name for the document template to be created.
        sig { returns(String) }
        attr_accessor :name

        sig do
          params(
            key: String,
            content:
              T::Array[
                Nextbillionai::Fleetify::DocumentTemplateContentRequest::OrHash
              ],
            name: String,
            request_options: Nextbillionai::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          # A form field that drivers must complete when executing a route step. Defines the
          # data structure and validation rules for collecting required information during
          # route execution.
          content:,
          # Specify a name for the document template to be created.
          name:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              key: String,
              content:
                T::Array[
                  Nextbillionai::Fleetify::DocumentTemplateContentRequest
                ],
              name: String,
              request_options: Nextbillionai::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
