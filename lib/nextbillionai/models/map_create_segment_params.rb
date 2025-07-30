# frozen_string_literal: true

module Nextbillionai
  module Models
    # @see Nextbillionai::Resources::Map#create_segment
    class MapCreateSegmentParams < Nextbillionai::Internal::Type::BaseModel
      extend Nextbillionai::Internal::Type::RequestParameters::Converter
      include Nextbillionai::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
