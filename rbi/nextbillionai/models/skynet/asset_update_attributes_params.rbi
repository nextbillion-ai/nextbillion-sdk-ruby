# typed: strong

module Nextbillionai
  module Models
    module Skynet
      class AssetUpdateAttributesParams < Nextbillionai::Internal::Type::BaseModel
        extend Nextbillionai::Internal::Type::RequestParameters::Converter
        include Nextbillionai::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Skynet::AssetUpdateAttributesParams,
              Nextbillionai::Internal::AnyHash
            )
          end

        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        sig { returns(String) }
        attr_accessor :key

        # `attributes` can be used to add any useful information or context to your assets
        # like the vehicle type, shift timing etc. These attributes can also be used to
        # filter assets in **Search**, **Monitor**, and _Get Asset List_ queries.
        #
        # Provide the attributes to be added or updated, in `key`:`value` format. If an
        # existing `key` is provided in the input, then the `value` will be modified as
        # per the input value. If a new `key` is provided in the input, then the `key`
        # would be added to the existing set. The contents of any `value` field are
        # neither altered nor removed unless specifically referred to by its `key` in the
        # input request.
        #
        # Please note that the maximum number of `key`:`value` pairs that can be added to
        # an `attributes` object is 100. Also, the overall size of `attributes` object
        # should not exceed 65kb.
        sig { returns(T.anything) }
        attr_accessor :attributes

        sig do
          params(
            key: String,
            attributes: T.anything,
            request_options: Nextbillionai::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          # `attributes` can be used to add any useful information or context to your assets
          # like the vehicle type, shift timing etc. These attributes can also be used to
          # filter assets in **Search**, **Monitor**, and _Get Asset List_ queries.
          #
          # Provide the attributes to be added or updated, in `key`:`value` format. If an
          # existing `key` is provided in the input, then the `value` will be modified as
          # per the input value. If a new `key` is provided in the input, then the `key`
          # would be added to the existing set. The contents of any `value` field are
          # neither altered nor removed unless specifically referred to by its `key` in the
          # input request.
          #
          # Please note that the maximum number of `key`:`value` pairs that can be added to
          # an `attributes` object is 100. Also, the overall size of `attributes` object
          # should not exceed 65kb.
          attributes:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              key: String,
              attributes: T.anything,
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
