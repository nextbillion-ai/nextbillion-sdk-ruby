# typed: strong

module NextbillionSDK
  module Models
    module Skynet
      class AssetUpdateAttributesParams < NextbillionSDK::Internal::Type::BaseModel
        extend NextbillionSDK::Internal::Type::RequestParameters::Converter
        include NextbillionSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Skynet::AssetUpdateAttributesParams,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        sig { returns(String) }
        attr_accessor :key

        # attributes can be used to add any useful information or context to your assets
        # like the vehicle type, shift timing etc. These attributes can also be used to
        # filter assets in **Search**, **Monitor**, and _Get Asset List_ queries.
        #
        # Provide the attributes to be added or updated, in key:value format. If an
        # existing key is provided in the input, then the value will be modified as per
        # the input value. If a new key is provided in the input, then the key would be
        # added to the existing set. The contents of any value field are neither altered
        # nor removed unless specifically referred to by its key in the input request.
        #
        # Please note that the maximum number of key:value pairs that can be added to an
        # attributes object is 100. Also, the overall size of attributes object should not
        # exceed 65kb.
        sig { returns(T.anything) }
        attr_accessor :attributes

        sig do
          params(
            key: String,
            attributes: T.anything,
            request_options: NextbillionSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          # attributes can be used to add any useful information or context to your assets
          # like the vehicle type, shift timing etc. These attributes can also be used to
          # filter assets in **Search**, **Monitor**, and _Get Asset List_ queries.
          #
          # Provide the attributes to be added or updated, in key:value format. If an
          # existing key is provided in the input, then the value will be modified as per
          # the input value. If a new key is provided in the input, then the key would be
          # added to the existing set. The contents of any value field are neither altered
          # nor removed unless specifically referred to by its key in the input request.
          #
          # Please note that the maximum number of key:value pairs that can be added to an
          # attributes object is 100. Also, the overall size of attributes object should not
          # exceed 65kb.
          attributes:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              key: String,
              attributes: T.anything,
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
