# typed: strong

module Nextbillionai
  module Models
    module Skynet
      module Asset
        class EventListResponse < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Models::Skynet::Asset::EventListResponse,
                Nextbillionai::Internal::AnyHash
              )
            end

          # An object containing the information about the event history for the requested
          # `asset`.
          sig do
            returns(
              T.nilable(
                Nextbillionai::Models::Skynet::Asset::EventListResponse::Data
              )
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          # Displays the error message in case of a failed request. If the request is
          # successful, this field is not present in the response.
          sig { returns(T.nilable(String)) }
          attr_reader :message

          sig { params(message: String).void }
          attr_writer :message

          # A string indicating the state of the response. On successful responses, the
          # value will be `Ok`. Indicative error messages are returned for different errors.
          # See the [API Error Codes](#api-error-codes) section below for more information.
          sig { returns(T.nilable(String)) }
          attr_reader :status

          sig { params(status: String).void }
          attr_writer :status

          sig do
            params(
              data:
                Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::OrHash,
              message: String,
              status: String
            ).returns(T.attached_class)
          end
          def self.new(
            # An object containing the information about the event history for the requested
            # `asset`.
            data: nil,
            # Displays the error message in case of a failed request. If the request is
            # successful, this field is not present in the response.
            message: nil,
            # A string indicating the state of the response. On successful responses, the
            # value will be `Ok`. Indicative error messages are returned for different errors.
            # See the [API Error Codes](#api-error-codes) section below for more information.
            status: nil
          )
          end

          sig do
            override.returns(
              {
                data:
                  Nextbillionai::Models::Skynet::Asset::EventListResponse::Data,
                message: String,
                status: String
              }
            )
          end
          def to_hash
          end

          class Data < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Models::Skynet::Asset::EventListResponse::Data,
                  Nextbillionai::Internal::AnyHash
                )
              end

            # An array of objects with each object on the list representing one event.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List
                  ]
                )
              )
            end
            attr_reader :list

            sig do
              params(
                list:
                  T::Array[
                    Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::OrHash
                  ]
              ).void
            end
            attr_writer :list

            # An object with pagination details of the search results. Use this object to
            # implement pagination in your application.
            sig { returns(T.nilable(Nextbillionai::Skynet::Pagination)) }
            attr_reader :page

            sig { params(page: Nextbillionai::Skynet::Pagination::OrHash).void }
            attr_writer :page

            # An object containing the information about the event history for the requested
            # `asset`.
            sig do
              params(
                list:
                  T::Array[
                    Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::OrHash
                  ],
                page: Nextbillionai::Skynet::Pagination::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # An array of objects with each object on the list representing one event.
              list: nil,
              # An object with pagination details of the search results. Use this object to
              # implement pagination in your application.
              page: nil
            )
            end

            sig do
              override.returns(
                {
                  list:
                    T::Array[
                      Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List
                    ],
                  page: Nextbillionai::Skynet::Pagination
                }
              )
            end
            def to_hash
            end

            class List < Nextbillionai::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List,
                    Nextbillionai::Internal::AnyHash
                  )
                end

              # ID of the `asset`. This is the same ID that was generated/provided at the time
              # of creating the `asset`.
              sig { returns(T.nilable(String)) }
              attr_reader :asset_id

              sig { params(asset_id: String).void }
              attr_writer :asset_id

              # Nature of the event triggered by the `asset`. It can have following values:
              #
              # - `enter`: When the `asset` enters a specific geofence
              #
              # - `exit`: When the `asset` moves out of a specific geofence.
              #
              # - `speeding`: When the `asset` exceeds the certain speed limit.
              #
              # - `idle`: When the `asset` exhibits idle or no activity.
              sig do
                returns(
                  T.nilable(
                    Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::EventType::TaggedSymbol
                  )
                )
              end
              attr_reader :event_type

              sig do
                params(
                  event_type:
                    Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::EventType::OrSymbol
                ).void
              end
              attr_writer :event_type

              # Additional information about the event. Currently, this object returns the speed
              # limit that was used to generate the over-speeding events, for a `speeding` type
              # event.
              #
              # It is worth highlighting that, when the `use_admin_speed_limit` is `true`, the
              # speed limit value will be obtained from the underlying road information.
              # Whereas, if the `use_admin_speed_limit` is `false`, the speed limit will be
              # equal to the `customer_speed_limit` value provided by the user when creating or
              # updating the `monitor`.
              sig { returns(T.nilable(T.anything)) }
              attr_reader :extra

              sig { params(extra: T.anything).void }
              attr_writer :extra

              # ID of the `geofence` associated with the event.
              sig { returns(T.nilable(String)) }
              attr_reader :geofence_id

              sig { params(geofence_id: String).void }
              attr_writer :geofence_id

              # ID of the `monitor` associated with the event.
              sig { returns(T.nilable(String)) }
              attr_reader :monitor_id

              sig { params(monitor_id: String).void }
              attr_writer :monitor_id

              # Tags associated with the `monitor`.
              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :monitor_tags

              sig { params(monitor_tags: T::Array[String]).void }
              attr_writer :monitor_tags

              # An object with details of the `asset` at the last tracked location before the
              # event was triggered.
              sig do
                returns(
                  T.nilable(
                    Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::PrevLocation
                  )
                )
              end
              attr_reader :prev_location

              sig do
                params(
                  prev_location:
                    Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::PrevLocation::OrHash
                ).void
              end
              attr_writer :prev_location

              # A UNIX epoch timestamp in milliseconds representing the time at which the event
              # was added/created.
              sig { returns(T.nilable(Integer)) }
              attr_reader :timestamp

              sig { params(timestamp: Integer).void }
              attr_writer :timestamp

              # An object with details of the `asset` at the location where the event was
              # triggered.
              sig do
                returns(
                  T.nilable(
                    Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::TriggeredLocation
                  )
                )
              end
              attr_reader :triggered_location

              sig do
                params(
                  triggered_location:
                    Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::TriggeredLocation::OrHash
                ).void
              end
              attr_writer :triggered_location

              # A UNIX epoch timestamp in milliseconds representing the time at which the event
              # was triggered.
              sig { returns(T.nilable(Integer)) }
              attr_reader :triggered_timestamp

              sig { params(triggered_timestamp: Integer).void }
              attr_writer :triggered_timestamp

              sig do
                params(
                  asset_id: String,
                  event_type:
                    Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::EventType::OrSymbol,
                  extra: T.anything,
                  geofence_id: String,
                  monitor_id: String,
                  monitor_tags: T::Array[String],
                  prev_location:
                    Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::PrevLocation::OrHash,
                  timestamp: Integer,
                  triggered_location:
                    Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::TriggeredLocation::OrHash,
                  triggered_timestamp: Integer
                ).returns(T.attached_class)
              end
              def self.new(
                # ID of the `asset`. This is the same ID that was generated/provided at the time
                # of creating the `asset`.
                asset_id: nil,
                # Nature of the event triggered by the `asset`. It can have following values:
                #
                # - `enter`: When the `asset` enters a specific geofence
                #
                # - `exit`: When the `asset` moves out of a specific geofence.
                #
                # - `speeding`: When the `asset` exceeds the certain speed limit.
                #
                # - `idle`: When the `asset` exhibits idle or no activity.
                event_type: nil,
                # Additional information about the event. Currently, this object returns the speed
                # limit that was used to generate the over-speeding events, for a `speeding` type
                # event.
                #
                # It is worth highlighting that, when the `use_admin_speed_limit` is `true`, the
                # speed limit value will be obtained from the underlying road information.
                # Whereas, if the `use_admin_speed_limit` is `false`, the speed limit will be
                # equal to the `customer_speed_limit` value provided by the user when creating or
                # updating the `monitor`.
                extra: nil,
                # ID of the `geofence` associated with the event.
                geofence_id: nil,
                # ID of the `monitor` associated with the event.
                monitor_id: nil,
                # Tags associated with the `monitor`.
                monitor_tags: nil,
                # An object with details of the `asset` at the last tracked location before the
                # event was triggered.
                prev_location: nil,
                # A UNIX epoch timestamp in milliseconds representing the time at which the event
                # was added/created.
                timestamp: nil,
                # An object with details of the `asset` at the location where the event was
                # triggered.
                triggered_location: nil,
                # A UNIX epoch timestamp in milliseconds representing the time at which the event
                # was triggered.
                triggered_timestamp: nil
              )
              end

              sig do
                override.returns(
                  {
                    asset_id: String,
                    event_type:
                      Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::EventType::TaggedSymbol,
                    extra: T.anything,
                    geofence_id: String,
                    monitor_id: String,
                    monitor_tags: T::Array[String],
                    prev_location:
                      Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::PrevLocation,
                    timestamp: Integer,
                    triggered_location:
                      Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::TriggeredLocation,
                    triggered_timestamp: Integer
                  }
                )
              end
              def to_hash
              end

              # Nature of the event triggered by the `asset`. It can have following values:
              #
              # - `enter`: When the `asset` enters a specific geofence
              #
              # - `exit`: When the `asset` moves out of a specific geofence.
              #
              # - `speeding`: When the `asset` exceeds the certain speed limit.
              #
              # - `idle`: When the `asset` exhibits idle or no activity.
              module EventType
                extend Nextbillionai::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::EventType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                ENTER =
                  T.let(
                    :"`enter`",
                    Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::EventType::TaggedSymbol
                  )
                EXIT =
                  T.let(
                    :"`exit`",
                    Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::EventType::TaggedSymbol
                  )
                SPEEDING =
                  T.let(
                    :"`speeding`",
                    Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::EventType::TaggedSymbol
                  )
                IDLE =
                  T.let(
                    :"`idle`",
                    Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::EventType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::EventType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              class PrevLocation < Nextbillionai::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::PrevLocation,
                      Nextbillionai::Internal::AnyHash
                    )
                  end

                # If available, this property returns the heading of the `asset` from true north
                # in clockwise direction, at the `prev_location` tracked for the `asset`.
                sig { returns(T.nilable(Float)) }
                attr_reader :bearing

                sig { params(bearing: Float).void }
                attr_writer :bearing

                # `prev_location` information of the `asset`.
                sig do
                  returns(
                    T.nilable(
                      Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::PrevLocation::Location
                    )
                  )
                end
                attr_reader :location

                sig do
                  params(
                    location:
                      Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::PrevLocation::Location::OrHash
                  ).void
                end
                attr_writer :location

                # Returns the custom data added during the location information upload.
                sig { returns(T.nilable(T.anything)) }
                attr_reader :meta_data

                sig { params(meta_data: T.anything).void }
                attr_writer :meta_data

                # If available, this property returns the speed of the `asset`, in meters per
                # second, at the `prev_location` of the `asset`.
                sig { returns(T.nilable(Float)) }
                attr_reader :speed

                sig { params(speed: Float).void }
                attr_writer :speed

                # A UNIX epoch timestamp in milliseconds representing the time at which the
                # `asset` was at the `prev_location`.
                sig { returns(T.nilable(Integer)) }
                attr_reader :timestamp

                sig { params(timestamp: Integer).void }
                attr_writer :timestamp

                # An object with details of the `asset` at the last tracked location before the
                # event was triggered.
                sig do
                  params(
                    bearing: Float,
                    location:
                      Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::PrevLocation::Location::OrHash,
                    meta_data: T.anything,
                    speed: Float,
                    timestamp: Integer
                  ).returns(T.attached_class)
                end
                def self.new(
                  # If available, this property returns the heading of the `asset` from true north
                  # in clockwise direction, at the `prev_location` tracked for the `asset`.
                  bearing: nil,
                  # `prev_location` information of the `asset`.
                  location: nil,
                  # Returns the custom data added during the location information upload.
                  meta_data: nil,
                  # If available, this property returns the speed of the `asset`, in meters per
                  # second, at the `prev_location` of the `asset`.
                  speed: nil,
                  # A UNIX epoch timestamp in milliseconds representing the time at which the
                  # `asset` was at the `prev_location`.
                  timestamp: nil
                )
                end

                sig do
                  override.returns(
                    {
                      bearing: Float,
                      location:
                        Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::PrevLocation::Location,
                      meta_data: T.anything,
                      speed: Float,
                      timestamp: Integer
                    }
                  )
                end
                def to_hash
                end

                class Location < Nextbillionai::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::PrevLocation::Location,
                        Nextbillionai::Internal::AnyHash
                      )
                    end

                  # Latitude of the `prev_location` tracked for the `asset`.
                  sig { returns(T.nilable(Float)) }
                  attr_reader :lat

                  sig { params(lat: Float).void }
                  attr_writer :lat

                  # Longitude of the `prev_location` tracked for the `asset`.
                  sig { returns(T.nilable(Float)) }
                  attr_reader :lon

                  sig { params(lon: Float).void }
                  attr_writer :lon

                  # `prev_location` information of the `asset`.
                  sig do
                    params(lat: Float, lon: Float).returns(T.attached_class)
                  end
                  def self.new(
                    # Latitude of the `prev_location` tracked for the `asset`.
                    lat: nil,
                    # Longitude of the `prev_location` tracked for the `asset`.
                    lon: nil
                  )
                  end

                  sig { override.returns({ lat: Float, lon: Float }) }
                  def to_hash
                  end
                end
              end

              class TriggeredLocation < Nextbillionai::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::TriggeredLocation,
                      Nextbillionai::Internal::AnyHash
                    )
                  end

                # If available, this property returns the heading of the `asset` from true north
                # in clockwise direction, when the event was triggered.
                sig { returns(T.nilable(Float)) }
                attr_reader :bearing

                sig { params(bearing: Float).void }
                attr_writer :bearing

                # An object with information about the location at which the event was triggered.
                sig do
                  returns(
                    T.nilable(
                      Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::TriggeredLocation::Location
                    )
                  )
                end
                attr_reader :location

                sig do
                  params(
                    location:
                      Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::TriggeredLocation::Location::OrHash
                  ).void
                end
                attr_writer :location

                # Returns the custom data added during the location information upload.
                sig { returns(T.nilable(T.anything)) }
                attr_reader :meta_data

                sig { params(meta_data: T.anything).void }
                attr_writer :meta_data

                # If available, this property returns the speed of the `asset`, in meters per
                # second, when the event was triggered.
                sig { returns(T.nilable(Float)) }
                attr_reader :speed

                sig { params(speed: Float).void }
                attr_writer :speed

                # A UNIX epoch timestamp in milliseconds representing the time at which the
                # `asset` was at the `triggered_location`.
                sig { returns(T.nilable(Integer)) }
                attr_reader :timestamp

                sig { params(timestamp: Integer).void }
                attr_writer :timestamp

                # An object with details of the `asset` at the location where the event was
                # triggered.
                sig do
                  params(
                    bearing: Float,
                    location:
                      Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::TriggeredLocation::Location::OrHash,
                    meta_data: T.anything,
                    speed: Float,
                    timestamp: Integer
                  ).returns(T.attached_class)
                end
                def self.new(
                  # If available, this property returns the heading of the `asset` from true north
                  # in clockwise direction, when the event was triggered.
                  bearing: nil,
                  # An object with information about the location at which the event was triggered.
                  location: nil,
                  # Returns the custom data added during the location information upload.
                  meta_data: nil,
                  # If available, this property returns the speed of the `asset`, in meters per
                  # second, when the event was triggered.
                  speed: nil,
                  # A UNIX epoch timestamp in milliseconds representing the time at which the
                  # `asset` was at the `triggered_location`.
                  timestamp: nil
                )
                end

                sig do
                  override.returns(
                    {
                      bearing: Float,
                      location:
                        Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::TriggeredLocation::Location,
                      meta_data: T.anything,
                      speed: Float,
                      timestamp: Integer
                    }
                  )
                end
                def to_hash
                end

                class Location < Nextbillionai::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Nextbillionai::Models::Skynet::Asset::EventListResponse::Data::List::TriggeredLocation::Location,
                        Nextbillionai::Internal::AnyHash
                      )
                    end

                  # Latitude of the `triggered_location` of the event.
                  sig { returns(T.nilable(Float)) }
                  attr_reader :lat

                  sig { params(lat: Float).void }
                  attr_writer :lat

                  # Longitude of the `triggered_location` of the event.
                  sig { returns(T.nilable(Float)) }
                  attr_reader :lon

                  sig { params(lon: Float).void }
                  attr_writer :lon

                  # An object with information about the location at which the event was triggered.
                  sig do
                    params(lat: Float, lon: Float).returns(T.attached_class)
                  end
                  def self.new(
                    # Latitude of the `triggered_location` of the event.
                    lat: nil,
                    # Longitude of the `triggered_location` of the event.
                    lon: nil
                  )
                  end

                  sig { override.returns({ lat: Float, lon: Float }) }
                  def to_hash
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
