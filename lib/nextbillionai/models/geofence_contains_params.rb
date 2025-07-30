# frozen_string_literal: true

module Nextbillionai
  module Models
    # @see Nextbillionai::Resources::Geofence#contains
    class GeofenceContainsParams < Nextbillionai::Internal::Type::BaseModel
      extend Nextbillionai::Internal::Type::RequestParameters::Converter
      include Nextbillionai::Internal::Type::RequestParameters

      # @!attribute key
      #   A key is a unique identifier that is required to authenticate a request to the
      #   API.
      #
      #   @return [String]
      required :key, String

      # @!attribute locations
      #   Pipe (|) separated coordinates, in [latitude,longitude] format, of the locations
      #   to be searched against the geofences.
      #
      #   @return [String]
      required :locations, String

      # @!attribute geofences
      #   A `,` separated list geofence IDs against which the `locations` will be
      #   searched. If not provided, then the 'locations' will be searched against all
      #   your existing geofences.
      #
      #   Maximum length of the string can be 256 characters.
      #
      #   @return [String, nil]
      optional :geofences, String

      # @!attribute verbose
      #   When `true`, an array with detailed information of geofences is returned. When
      #   `false`, an array containing only the IDs of the geofences is returned.
      #
      #   @return [String, nil]
      optional :verbose, String

      # @!method initialize(key:, locations:, geofences: nil, verbose: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Nextbillionai::Models::GeofenceContainsParams} for more details.
      #
      #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      #   @param locations [String] Pipe (|) separated coordinates, in [latitude,longitude] format, of the locations
      #
      #   @param geofences [String] A `,` separated list geofence IDs against which the `locations` will be searched
      #
      #   @param verbose [String] When `true`, an array with detailed information of geofences is returned. When `
      #
      #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
