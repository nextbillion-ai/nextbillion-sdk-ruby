# frozen_string_literal: true

module Nextbillionai
  module Models
    module Skynet
      # @see Nextbillionai::Resources::Skynet::NamespacedApikeys#create
      class NamespacedApikeyCreateParams < Nextbillionai::Internal::Type::BaseModel
        extend Nextbillionai::Internal::Type::RequestParameters::Converter
        include Nextbillionai::Internal::Type::RequestParameters

        # @!attribute key
        #   A key is a unique identifier that is required to authenticate a request to the
        #   API.
        #
        #   @return [String]
        required :key, String

        # @!attribute namespace
        #   Specify a name for the `namespace`. If the namespace specified is unique then a
        #   new namespace along with a new key is created. Whereas if the specified
        #   `namespace` is not unique, a new key will be created in the existing
        #   `namespace`. Please note that a `namespace` cannot be created using another
        #   namespace key.
        #
        #   @return [String]
        required :namespace, String

        # @!method initialize(key:, namespace:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::Skynet::NamespacedApikeyCreateParams} for more details.
        #
        #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        #   @param namespace [String] Specify a name for the `namespace`. If the namespace specified is unique then a
        #
        #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
