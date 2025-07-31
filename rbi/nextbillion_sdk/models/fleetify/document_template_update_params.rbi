# typed: strong

module NextbillionSDK
  module Models
    module Fleetify
      class DocumentTemplateUpdateParams < NextbillionSDK::Internal::Type::BaseModel
        extend NextbillionSDK::Internal::Type::RequestParameters::Converter
        include NextbillionSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Fleetify::DocumentTemplateUpdateParams,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        sig { returns(String) }
        attr_accessor :key

        # An object to collect the details of form fields to be updated - data structures,
        # validation rules. Please note that the details provided here will overwrite any
        # existing document fields in the given template.
        sig do
          returns(
            T.nilable(
              T::Array[NextbillionSDK::Fleetify::DocumentTemplateContentRequest]
            )
          )
        end
        attr_reader :content

        sig do
          params(
            content:
              T::Array[
                NextbillionSDK::Fleetify::DocumentTemplateContentRequest::OrHash
              ]
          ).void
        end
        attr_writer :content

        # Specify the document template name to be updated.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig do
          params(
            key: String,
            content:
              T::Array[
                NextbillionSDK::Fleetify::DocumentTemplateContentRequest::OrHash
              ],
            name: String,
            request_options: NextbillionSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          # An object to collect the details of form fields to be updated - data structures,
          # validation rules. Please note that the details provided here will overwrite any
          # existing document fields in the given template.
          content: nil,
          # Specify the document template name to be updated.
          name: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              key: String,
              content:
                T::Array[
                  NextbillionSDK::Fleetify::DocumentTemplateContentRequest
                ],
              name: String,
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
