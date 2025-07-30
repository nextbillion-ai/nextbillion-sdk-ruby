# frozen_string_literal: true

module Nextbillionai
  module Models
    module Skynet
      module Asset
        # @see Nextbillionai::Resources::Skynet::Asset::Event#list
        class EventListResponse < Nextbillionai::Internal::Type::BaseModel
          # @!attribute data
          #   An object containing the information about the event history for the requested
          #   `asset`.
          #
          #   @return [Nextbillionai::Models::Skynet::Asset::EventListResponse::Data, nil]
          optional :data, -> { Nextbillionai::Models::Skynet::Asset::EventListResponse::Data }

          # @!attribute message
          #   Displays the error message in case of a failed request. If the request is
          #   successful, this field is not present in the response.
          #
          #   @return [String, nil]
          optional :message, String

          # @!attribute status
          #   A string indicating the state of the response. On successful responses, the
          #   value will be `Ok`. Indicative error messages are returned for different errors.
          #   See the [API Error Codes](#api-error-codes) section below for more information.
          #
          #   @return [String, nil]
          optional :status, String

          # @!method initialize(data: nil, message: nil, status: nil)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::Skynet::Asset::EventListResponse} for more details.
          #
          #   @param data [Nextbillionai::Models::Skynet::Asset::EventListResponse::Data] An object containing the information about the event history for the requested `
          #
          #   @param message [String] Displays the error message in case of a failed request. If the request is succes
          #
          #   @param status [String] A string indicating the state of the response. On successful responses, the valu

          # @see Nextbillionai::Models::Skynet::Asset::EventListResponse#data
          class Data < Nextbillionai::Internal::Type::BaseModel
            # @!attribute list
            #   An array of objects with each object on the list representing one event.
            #
            #   @return [Array<Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List>, nil]
            optional :list,
                     -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List] }

            # @!attribute page
            #   An object with pagination details of the search results. Use this object to
            #   implement pagination in your application.
            #
            #   @return [Nextbillionai::Models::Skynet::Pagination, nil]
            optional :page, -> { Nextbillionai::Skynet::Pagination }

            # @!method initialize(list: nil, page: nil)
            #   Some parameter documentations has been truncated, see
            #   {Nextbillionai::Models::Skynet::Asset::EventListResponse::Data} for more
            #   details.
            #
            #   An object containing the information about the event history for the requested
            #   `asset`.
            #
            #   @param list [Array<Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List>] An array of objects with each object on the list representing one event.
            #
            #   @param page [Nextbillionai::Models::Skynet::Pagination] An object with pagination details of the search results. Use this object to impl

            class List < Nextbillionai::Internal::Type::BaseModel
              # @!attribute asset_id
              #   ID of the `asset`. This is the same ID that was generated/provided at the time
              #   of creating the `asset`.
              #
              #   @return [String, nil]
              optional :asset_id, String

              # @!attribute event_type
              #   Nature of the event triggered by the `asset`. It can have following values:
              #
              #   - `enter`: When the `asset` enters a specific geofence
              #
              #   - `exit`: When the `asset` moves out of a specific geofence.
              #
              #   - `speeding`: When the `asset` exceeds the certain speed limit.
              #
              #   - `idle`: When the `asset` exhibits idle or no activity.
              #
              #   @return [Symbol, Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::EventType, nil]
              optional :event_type,
                       enum: -> { Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::EventType }

              # @!attribute extra
              #   Additional information about the event. Currently, this object returns the speed
              #   limit that was used to generate the over-speeding events, for a `speeding` type
              #   event.
              #
              #   It is worth highlighting that, when the `use_admin_speed_limit` is `true`, the
              #   speed limit value will be obtained from the underlying road information.
              #   Whereas, if the `use_admin_speed_limit` is `false`, the speed limit will be
              #   equal to the `customer_speed_limit` value provided by the user when creating or
              #   updating the `monitor`.
              #
              #   @return [Object, nil]
              optional :extra, Nextbillionai::Internal::Type::Unknown

              # @!attribute geofence_id
              #   ID of the `geofence` associated with the event.
              #
              #   @return [String, nil]
              optional :geofence_id, String

              # @!attribute monitor_id
              #   ID of the `monitor` associated with the event.
              #
              #   @return [String, nil]
              optional :monitor_id, String

              # @!attribute monitor_tags
              #   Tags associated with the `monitor`.
              #
              #   @return [Array<String>, nil]
              optional :monitor_tags, Nextbillionai::Internal::Type::ArrayOf[String]

              # @!attribute prev_location
              #   An object with details of the `asset` at the last tracked location before the
              #   event was triggered.
              #
              #   @return [Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::PrevLocation, nil]
              optional :prev_location,
                       -> { Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::PrevLocation }

              # @!attribute timestamp
              #   A UNIX epoch timestamp in milliseconds representing the time at which the event
              #   was added/created.
              #
              #   @return [Integer, nil]
              optional :timestamp, Integer

              # @!attribute triggered_location
              #   An object with details of the `asset` at the location where the event was
              #   triggered.
              #
              #   @return [Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::TriggeredLocation, nil]
              optional :triggered_location,
                       -> { Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::TriggeredLocation }

              # @!attribute triggered_timestamp
              #   A UNIX epoch timestamp in milliseconds representing the time at which the event
              #   was triggered.
              #
              #   @return [Integer, nil]
              optional :triggered_timestamp, Integer

              # @!method initialize(asset_id: nil, event_type: nil, extra: nil, geofence_id: nil, monitor_id: nil, monitor_tags: nil, prev_location: nil, timestamp: nil, triggered_location: nil, triggered_timestamp: nil)
              #   Some parameter documentations has been truncated, see
              #   {Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List} for more
              #   details.
              #
              #   @param asset_id [String] ID of the `asset`. This is the same ID that was generated/provided at the time o
              #
              #   @param event_type [Symbol, Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::EventType] Nature of the event triggered by the `asset`. It can have following values:
              #
              #   @param extra [Object] Additional information about the event. Currently, this object returns the speed
              #
              #   @param geofence_id [String] ID of the `geofence` associated with the event.
              #
              #   @param monitor_id [String] ID of the `monitor` associated with the event.
              #
              #   @param monitor_tags [Array<String>] Tags associated with the `monitor`.
              #
              #   @param prev_location [Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::PrevLocation] An object with details of the `asset` at the last tracked location before the ev
              #
              #   @param timestamp [Integer] A UNIX epoch timestamp in milliseconds representing the time at which the event
              #
              #   @param triggered_location [Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::TriggeredLocation] An object with details of the `asset` at the location where the event was trigge
              #
              #   @param triggered_timestamp [Integer] A UNIX epoch timestamp in milliseconds representing the time at which the event

              # Nature of the event triggered by the `asset`. It can have following values:
              #
              # - `enter`: When the `asset` enters a specific geofence
              #
              # - `exit`: When the `asset` moves out of a specific geofence.
              #
              # - `speeding`: When the `asset` exceeds the certain speed limit.
              #
              # - `idle`: When the `asset` exhibits idle or no activity.
              #
              # @see Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List#event_type
              module EventType
                extend Nextbillionai::Internal::Type::Enum

                ENTER = :"`enter`"
                EXIT = :"`exit`"
                SPEEDING = :"`speeding`"
                IDLE = :"`idle`"

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List#prev_location
              class PrevLocation < Nextbillionai::Internal::Type::BaseModel
                # @!attribute bearing
                #   If available, this property returns the heading of the `asset` from true north
                #   in clockwise direction, at the `prev_location` tracked for the `asset`.
                #
                #   @return [Float, nil]
                optional :bearing, Float

                # @!attribute location
                #   `prev_location` information of the `asset`.
                #
                #   @return [Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::PrevLocation::Location, nil]
                optional :location,
                         -> { Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::PrevLocation::Location }

                # @!attribute meta_data
                #   Returns the custom data added during the location information upload.
                #
                #   @return [Object, nil]
                optional :meta_data, Nextbillionai::Internal::Type::Unknown

                # @!attribute speed
                #   If available, this property returns the speed of the `asset`, in meters per
                #   second, at the `prev_location` of the `asset`.
                #
                #   @return [Float, nil]
                optional :speed, Float

                # @!attribute timestamp
                #   A UNIX epoch timestamp in milliseconds representing the time at which the
                #   `asset` was at the `prev_location`.
                #
                #   @return [Integer, nil]
                optional :timestamp, Integer

                # @!method initialize(bearing: nil, location: nil, meta_data: nil, speed: nil, timestamp: nil)
                #   Some parameter documentations has been truncated, see
                #   {Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::PrevLocation}
                #   for more details.
                #
                #   An object with details of the `asset` at the last tracked location before the
                #   event was triggered.
                #
                #   @param bearing [Float] If available, this property returns the heading of the `asset` from true north i
                #
                #   @param location [Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::PrevLocation::Location] `prev_location` information of the `asset`.
                #
                #   @param meta_data [Object] Returns the custom data added during the location information upload.
                #
                #   @param speed [Float] If available, this property returns the speed of the `asset`, in meters per seco
                #
                #   @param timestamp [Integer] A UNIX epoch timestamp in milliseconds representing the time at which the `asset

                # @see Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::PrevLocation#location
                class Location < Nextbillionai::Internal::Type::BaseModel
                  # @!attribute lat
                  #   Latitude of the `prev_location` tracked for the `asset`.
                  #
                  #   @return [Float, nil]
                  optional :lat, Float

                  # @!attribute lon
                  #   Longitude of the `prev_location` tracked for the `asset`.
                  #
                  #   @return [Float, nil]
                  optional :lon, Float

                  # @!method initialize(lat: nil, lon: nil)
                  #   `prev_location` information of the `asset`.
                  #
                  #   @param lat [Float] Latitude of the `prev_location` tracked for the `asset`.
                  #
                  #   @param lon [Float] Longitude of the `prev_location` tracked for the `asset`.
                end
              end

              # @see Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List#triggered_location
              class TriggeredLocation < Nextbillionai::Internal::Type::BaseModel
                # @!attribute bearing
                #   If available, this property returns the heading of the `asset` from true north
                #   in clockwise direction, when the event was triggered.
                #
                #   @return [Float, nil]
                optional :bearing, Float

                # @!attribute location
                #   An object with information about the location at which the event was triggered.
                #
                #   @return [Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::TriggeredLocation::Location, nil]
                optional :location,
                         -> { Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::TriggeredLocation::Location }

                # @!attribute meta_data
                #   Returns the custom data added during the location information upload.
                #
                #   @return [Object, nil]
                optional :meta_data, Nextbillionai::Internal::Type::Unknown

                # @!attribute speed
                #   If available, this property returns the speed of the `asset`, in meters per
                #   second, when the event was triggered.
                #
                #   @return [Float, nil]
                optional :speed, Float

                # @!attribute timestamp
                #   A UNIX epoch timestamp in milliseconds representing the time at which the
                #   `asset` was at the `triggered_location`.
                #
                #   @return [Integer, nil]
                optional :timestamp, Integer

                # @!method initialize(bearing: nil, location: nil, meta_data: nil, speed: nil, timestamp: nil)
                #   Some parameter documentations has been truncated, see
                #   {Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::TriggeredLocation}
                #   for more details.
                #
                #   An object with details of the `asset` at the location where the event was
                #   triggered.
                #
                #   @param bearing [Float] If available, this property returns the heading of the `asset` from true north i
                #
                #   @param location [Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::TriggeredLocation::Location] An object with information about the location at which the event was triggered.
                #
                #   @param meta_data [Object] Returns the custom data added during the location information upload.
                #
                #   @param speed [Float] If available, this property returns the speed of the `asset`, in meters per seco
                #
                #   @param timestamp [Integer] A UNIX epoch timestamp in milliseconds representing the time at which the `asset

                # @see Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::TriggeredLocation#location
                class Location < Nextbillionai::Internal::Type::BaseModel
                  # @!attribute lat
                  #   Latitude of the `triggered_location` of the event.
                  #
                  #   @return [Float, nil]
                  optional :lat, Float

                  # @!attribute lon
                  #   Longitude of the `triggered_location` of the event.
                  #
                  #   @return [Float, nil]
                  optional :lon, Float

                  # @!method initialize(lat: nil, lon: nil)
                  #   An object with information about the location at which the event was triggered.
                  #
                  #   @param lat [Float] Latitude of the `triggered_location` of the event.
                  #
                  #   @param lon [Float] Longitude of the `triggered_location` of the event.
                end
              end
            end
          end
        end
      end
    end
  end
end
