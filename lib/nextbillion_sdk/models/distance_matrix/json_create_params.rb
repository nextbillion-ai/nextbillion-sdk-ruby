# frozen_string_literal: true

module NextbillionSDK
  module Models
    module DistanceMatrix
      # @see NextbillionSDK::Resources::DistanceMatrix::Json#create
      class JsonCreateParams < NextbillionSDK::Internal::Type::BaseModel
        extend NextbillionSDK::Internal::Type::RequestParameters::Converter
        include NextbillionSDK::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
