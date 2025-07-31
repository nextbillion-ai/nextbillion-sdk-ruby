# frozen_string_literal: true

module Nextbillionai
  module Models
    module Skynet
      class TripStop < Nextbillionai::Internal::Type::BaseModel
        # @!attribute geofence_id
        #   Returns the ID of the geofence that was used to indicate the area to make a
        #   stop.
        #
        #   @return [String, nil]
        optional :geofence_id, String

        # @!attribute meta_data
        #   Returns any meta data that was added to provide additional information about the
        #   stop.
        #
        #   @return [Object, nil]
        optional :meta_data, Nextbillionai::Internal::Type::Unknown

        # @!attribute name
        #   Returns the name of the stop that was provided when configuring this stop for
        #   the trip.
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(geofence_id: nil, meta_data: nil, name: nil)
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::Skynet::TripStop} for more details.
        #
        #   @param geofence_id [String] Returns the ID of the geofence that was used to indicate the area to make a stop
        #
        #   @param meta_data [Object] Returns any meta data that was added to provide additional information about the
        #
        #   @param name [String] Returns the name of the stop that was provided when configuring this stop for th
      end
    end
  end
end
