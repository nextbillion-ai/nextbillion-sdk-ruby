# frozen_string_literal: true

module Nextbillionai
  module Models
    module DistanceMatrix
      # @see Nextbillionai::Resources::DistanceMatrix::Json#create
      class JsonCreateParams < Nextbillionai::Internal::Type::BaseModel
        extend Nextbillionai::Internal::Type::RequestParameters::Converter
        include Nextbillionai::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
