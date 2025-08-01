# frozen_string_literal: true

module Nextbillionai
  module Models
    module Skynet
      # @see Nextbillionai::Resources::Skynet::Trip#get_summary
      class TripGetSummaryResponse < Nextbillionai::Internal::Type::BaseModel
        # @!attribute data
        #   An container for the trip returned by the service.
        #
        #   @return [Nextbillionai::Models::Skynet::TripGetSummaryResponse::Data, nil]
        optional :data, -> { Nextbillionai::Models::Skynet::TripGetSummaryResponse::Data }

        # @!attribute message
        #   Displays the error message in case of a failed request. If the request is
        #   successful, this field is not present in the response.
        #
        #   @return [String, nil]
        optional :message, String

        # @!attribute status
        #   A string indicating the state of the response. On successful responses, the
        #   value will be Ok. Indicative error messages are returned for different errors.
        #   See the [API Error Codes](#api-error-codes) section below for more information.
        #
        #   @return [String, nil]
        optional :status, String

        # @!method initialize(data: nil, message: nil, status: nil)
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::Skynet::TripGetSummaryResponse} for more details.
        #
        #   @param data [Nextbillionai::Models::Skynet::TripGetSummaryResponse::Data] An container for the trip returned by the service.
        #
        #   @param message [String] Displays the error message in case of a failed request. If the request is succes
        #
        #   @param status [String] A string indicating the state of the response. On successful responses, the valu

        # @see Nextbillionai::Models::Skynet::TripGetSummaryResponse#data
        class Data < Nextbillionai::Internal::Type::BaseModel
          # @!attribute trip
          #   An object containing the returned trip summary.
          #
          #   @return [Nextbillionai::Models::Skynet::TripGetSummaryResponse::Data::Trip, nil]
          optional :trip, -> { Nextbillionai::Models::Skynet::TripGetSummaryResponse::Data::Trip }

          # @!method initialize(trip: nil)
          #   An container for the trip returned by the service.
          #
          #   @param trip [Nextbillionai::Models::Skynet::TripGetSummaryResponse::Data::Trip] An object containing the returned trip summary.

          # @see Nextbillionai::Models::Skynet::TripGetSummaryResponse::Data#trip
          class Trip < Nextbillionai::Internal::Type::BaseModel
            # @!attribute id
            #   Returns the unique identifier of the trip.
            #
            #   @return [String, nil]
            optional :id, String

            # @!attribute asset
            #   An object with details of the asset properties.
            #
            #   @return [Nextbillionai::Models::Skynet::AssetDetails, nil]
            optional :asset, -> { Nextbillionai::Skynet::AssetDetails }

            # @!attribute asset_id
            #   Returns the ID of the asset linked to the trip when the trip was started or
            #   updated.
            #
            #   @return [String, nil]
            optional :asset_id, String

            # @!attribute attributes
            #   Returns the attributes provided for the trip at the time of starting or updating
            #   it.
            #
            #   @return [Object, nil]
            optional :attributes, Nextbillionai::Internal::Type::Unknown

            # @!attribute created_at
            #   Returns the time, expressed as UNIX epoch timestamp in milliseconds, when the
            #   trip was created.
            #
            #   @return [Integer, nil]
            optional :created_at, Integer

            # @!attribute description
            #   Returns the custom description for the trip as provided at the time of starting
            #   or updating the trip.
            #
            #   @return [String, nil]
            optional :description, String

            # @!attribute distance
            #   Returns the total distance covered during the trip, in meters. Please note that
            #   this field will be available in the response only if a minimum of 3 locations
            #   were tracked during the trip.
            #
            #   @return [Float, nil]
            optional :distance, Float

            # @!attribute duration
            #   Returns the total duration elapsed during the trip, in seconds. Please note that
            #   this field will be available in the response only if a minimum of 3 locations
            #   were tracked during the trip.
            #
            #   @return [Float, nil]
            optional :duration, Float

            # @!attribute ended_at
            #   Returns the time, expressed as UNIX epoch timestamp in milliseconds, when the
            #   trip ended.
            #
            #   @return [Integer, nil]
            optional :ended_at, Integer

            # @!attribute geometry
            #   Returns the geometry of the route that was taken during the trip, encoded in
            #   polyline format. Please note that this field will be available in the response
            #   only if a minimum of 3 locations were tracked during the trip.
            #
            #   @return [Array<String>, nil]
            optional :geometry, Nextbillionai::Internal::Type::ArrayOf[String]

            # @!attribute meta_data
            #   Returns the metadata containing additional information about the trip as
            #   provided at the time of starting or updating the trip.
            #
            #   @return [Object, nil]
            optional :meta_data, Nextbillionai::Internal::Type::Unknown

            # @!attribute name
            #   Returns the name for the trip as provided at the time of starting or updating
            #   the trip.
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute route
            #   An array of object returning the details of the locations tracked for the asset
            #   during the trip which has ended. Each object represents a single location that
            #   was tracked.
            #
            #   Please note that this attribute will not be present in the response if no
            #   locations were tracked/uploaded during the trip.
            #
            #   @return [Array<Nextbillionai::Models::Skynet::Asset::TrackLocation>, nil]
            optional :route,
                     -> {
                       Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Skynet::Asset::TrackLocation]
                     }

            # @!attribute started_at
            #   Returns the time, expressed as UNIX epoch timestamp in milliseconds, when the
            #   trip started.
            #
            #   @return [Integer, nil]
            optional :started_at, Integer

            # @!attribute state
            #   Returns the current state of the trip. The value will be "active" if the trip is
            #   still going on, otherwise the value returned would be "ended".
            #
            #   @return [String, nil]
            optional :state, String

            # @!attribute stops
            #   An array of objects returning the details of the stops made during the trip.
            #   Each object represents a single stop.
            #
            #   @return [Array<Nextbillionai::Models::Skynet::TripStop>, nil]
            optional :stops, -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Skynet::TripStop] }

            # @!attribute updated_at
            #   Returns the timeme, expressed as UNIX epoch timestamp in milliseconds, when the
            #   trip was last updated.
            #
            #   @return [Integer, nil]
            optional :updated_at, Integer

            # @!method initialize(id: nil, asset: nil, asset_id: nil, attributes: nil, created_at: nil, description: nil, distance: nil, duration: nil, ended_at: nil, geometry: nil, meta_data: nil, name: nil, route: nil, started_at: nil, state: nil, stops: nil, updated_at: nil)
            #   Some parameter documentations has been truncated, see
            #   {Nextbillionai::Models::Skynet::TripGetSummaryResponse::Data::Trip} for more
            #   details.
            #
            #   An object containing the returned trip summary.
            #
            #   @param id [String] Returns the unique identifier of the trip.
            #
            #   @param asset [Nextbillionai::Models::Skynet::AssetDetails] An object with details of the asset properties.
            #
            #   @param asset_id [String] Returns the ID of the asset linked to the trip when the trip was started or upda
            #
            #   @param attributes [Object] Returns the attributes provided for the trip at the time of starting or updating
            #
            #   @param created_at [Integer] Returns the time, expressed as UNIX epoch timestamp in milliseconds, when the tr
            #
            #   @param description [String] Returns the custom description for the trip as provided at the time of starting
            #
            #   @param distance [Float] Returns the total distance covered during the trip, in meters. Please note that
            #
            #   @param duration [Float] Returns the total duration elapsed during the trip, in seconds. Please note that
            #
            #   @param ended_at [Integer] Returns the time, expressed as UNIX epoch timestamp in milliseconds, when the tr
            #
            #   @param geometry [Array<String>] Returns the geometry of the route that was taken during the trip, encoded in pol
            #
            #   @param meta_data [Object] Returns the metadata containing additional information about the trip as provide
            #
            #   @param name [String] Returns the name for the trip as provided at the time of starting or updating th
            #
            #   @param route [Array<Nextbillionai::Models::Skynet::Asset::TrackLocation>] An array of object returning the details of the locations tracked for the asset
            #
            #   @param started_at [Integer] Returns the time, expressed as UNIX epoch timestamp in milliseconds, when the tr
            #
            #   @param state [String] Returns the current state of the trip. The value will be "active" if the trip is
            #
            #   @param stops [Array<Nextbillionai::Models::Skynet::TripStop>] An array of objects returning the details of the stops made during the trip. Eac
            #
            #   @param updated_at [Integer] Returns the timeme, expressed as UNIX epoch timestamp in milliseconds, when the
          end
        end
      end
    end
  end
end
