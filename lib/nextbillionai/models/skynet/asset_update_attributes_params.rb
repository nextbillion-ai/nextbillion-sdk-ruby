# frozen_string_literal: true

module Nextbillionai
  module Models
    module Skynet
      # @see Nextbillionai::Resources::Skynet::Asset#update_attributes
      class AssetUpdateAttributesParams < Nextbillionai::Internal::Type::BaseModel
        extend Nextbillionai::Internal::Type::RequestParameters::Converter
        include Nextbillionai::Internal::Type::RequestParameters

        # @!attribute key
        #   A key is a unique identifier that is required to authenticate a request to the
        #   API.
        #
        #   @return [String]
        required :key, String

        # @!attribute attributes
        #   `attributes` can be used to add any useful information or context to your assets
        #   like the vehicle type, shift timing etc. These attributes can also be used to
        #   filter assets in **Search**, **Monitor**, and _Get Asset List_ queries.
        #
        #   Provide the attributes to be added or updated, in `key`:`value` format. If an
        #   existing `key` is provided in the input, then the `value` will be modified as
        #   per the input value. If a new `key` is provided in the input, then the `key`
        #   would be added to the existing set. The contents of any `value` field are
        #   neither altered nor removed unless specifically referred to by its `key` in the
        #   input request.
        #
        #   Please note that the maximum number of `key`:`value` pairs that can be added to
        #   an `attributes` object is 100. Also, the overall size of `attributes` object
        #   should not exceed 65kb.
        #
        #   @return [Object]
        required :attributes, Nextbillionai::Internal::Type::Unknown

        # @!method initialize(key:, attributes:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::Skynet::AssetUpdateAttributesParams} for more details.
        #
        #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        #   @param attributes [Object] `attributes` can be used to add any useful information or context to your assets
        #
        #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
