# frozen_string_literal: true

module Nextbillionai
  module Models
    # @see Nextbillionai::Resources::Restrictions#create
    class RestrictionCreateParams < Nextbillionai::Models::RichGroupRequest
      extend Nextbillionai::Internal::Type::RequestParameters::Converter
      include Nextbillionai::Internal::Type::RequestParameters

      # @!attribute key
      #   A key is a unique identifier that is required to authenticate a request to the
      #   API.
      #
      #   @return [String]
      required :key, String

      # @!attribute latlon
      #   Use this parameter to decide the format for specifying the geofence coordinates.
      #   If true, then the coordinates of geofence can be specified as
      #   "latitude,longitude" format, otherwise they should be specified in
      #   "longitude,latitude" format.
      #
      #   @return [Boolean, nil]
      optional :latlon, Nextbillionai::Internal::Type::Boolean

      # @!method initialize(key:, latlon: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Nextbillionai::Models::RestrictionCreateParams} for more details.
      #
      #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      #   @param latlon [Boolean] Use this parameter to decide the format for specifying the geofence coordinates.
      #
      #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]

      module RestrictionType
        extend Nextbillionai::Internal::Type::Enum

        TURN = :turn
        PARKING = :parking
        FIXEDSPEED = :fixedspeed
        MAXSPEED = :maxspeed
        CLOSURE = :closure
        TRUCK = :truck

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
