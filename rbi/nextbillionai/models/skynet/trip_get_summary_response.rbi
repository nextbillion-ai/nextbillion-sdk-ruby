# typed: strong

module Nextbillionai
  module Models
    module Skynet
      class TripGetSummaryResponse < Nextbillionai::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Models::Skynet::TripGetSummaryResponse,
              Nextbillionai::Internal::AnyHash
            )
          end

        # An container for the trip returned by the service.
        sig do
          returns(
            T.nilable(
              Nextbillionai::Models::Skynet::TripGetSummaryResponse::Data
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Nextbillionai::Models::Skynet::TripGetSummaryResponse::Data::OrHash
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
              Nextbillionai::Models::Skynet::TripGetSummaryResponse::Data::OrHash,
            message: String,
            status: String
          ).returns(T.attached_class)
        end
        def self.new(
          # An container for the trip returned by the service.
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
              data: Nextbillionai::Models::Skynet::TripGetSummaryResponse::Data,
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
                Nextbillionai::Models::Skynet::TripGetSummaryResponse::Data,
                Nextbillionai::Internal::AnyHash
              )
            end

          # An object containing the returned trip summary.
          sig do
            returns(
              T.nilable(
                Nextbillionai::Models::Skynet::TripGetSummaryResponse::Data::Trip
              )
            )
          end
          attr_reader :trip

          sig do
            params(
              trip:
                Nextbillionai::Models::Skynet::TripGetSummaryResponse::Data::Trip::OrHash
            ).void
          end
          attr_writer :trip

          # An container for the trip returned by the service.
          sig do
            params(
              trip:
                Nextbillionai::Models::Skynet::TripGetSummaryResponse::Data::Trip::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # An object containing the returned trip summary.
            trip: nil
          )
          end

          sig do
            override.returns(
              {
                trip:
                  Nextbillionai::Models::Skynet::TripGetSummaryResponse::Data::Trip
              }
            )
          end
          def to_hash
          end

          class Trip < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Models::Skynet::TripGetSummaryResponse::Data::Trip,
                  Nextbillionai::Internal::AnyHash
                )
              end

            # Returns the unique identifier of the trip.
            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            # An object with details of the `asset` properties.
            sig { returns(T.nilable(Nextbillionai::Skynet::AssetDetails)) }
            attr_reader :asset

            sig do
              params(asset: Nextbillionai::Skynet::AssetDetails::OrHash).void
            end
            attr_writer :asset

            # Returns the ID of the asset linked to the trip when the trip was started or
            # updated.
            sig { returns(T.nilable(String)) }
            attr_reader :asset_id

            sig { params(asset_id: String).void }
            attr_writer :asset_id

            # Returns the `attributes` provided for the trip at the time of starting or
            # updating it.
            sig { returns(T.nilable(T.anything)) }
            attr_reader :attributes

            sig { params(attributes: T.anything).void }
            attr_writer :attributes

            # Returns the time, expressed as UNIX epoch timestamp in milliseconds, when the
            # trip was created.
            sig { returns(T.nilable(Integer)) }
            attr_reader :created_at

            sig { params(created_at: Integer).void }
            attr_writer :created_at

            # Returns the custom description for the trip as provided at the time of starting
            # or updating the trip.
            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            # Returns the total distance covered during the trip, in meters. Please note that
            # this field will be available in the response only if a minimum of 3 locations
            # were tracked during the trip.
            sig { returns(T.nilable(Float)) }
            attr_reader :distance

            sig { params(distance: Float).void }
            attr_writer :distance

            # Returns the total duration elapsed during the trip, in seconds. Please note that
            # this field will be available in the response only if a minimum of 3 locations
            # were tracked during the trip.
            sig { returns(T.nilable(Float)) }
            attr_reader :duration

            sig { params(duration: Float).void }
            attr_writer :duration

            # Returns the time, expressed as UNIX epoch timestamp in milliseconds, when the
            # trip ended.
            sig { returns(T.nilable(Integer)) }
            attr_reader :ended_at

            sig { params(ended_at: Integer).void }
            attr_writer :ended_at

            # Returns the geometry of the route that was taken during the trip, encoded in
            # polyline format. Please note that this field will be available in the response
            # only if a minimum of 3 locations were tracked during the trip.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :geometry

            sig { params(geometry: T::Array[String]).void }
            attr_writer :geometry

            # Returns the metadata containing additional information about the trip as
            # provided at the time of starting or updating the trip.
            sig { returns(T.nilable(T.anything)) }
            attr_reader :meta_data

            sig { params(meta_data: T.anything).void }
            attr_writer :meta_data

            # Returns the name for the trip as provided at the time of starting or updating
            # the trip.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # An array of object returning the details of the locations tracked for the asset
            # during the trip which has ended. Each object represents a single location that
            # was tracked.
            #
            # Please note that this attribute will not be present in the response if no
            # locations were tracked/uploaded during the trip.
            sig do
              returns(
                T.nilable(T::Array[Nextbillionai::Skynet::Asset::TrackLocation])
              )
            end
            attr_reader :route

            sig do
              params(
                route:
                  T::Array[Nextbillionai::Skynet::Asset::TrackLocation::OrHash]
              ).void
            end
            attr_writer :route

            # Returns the time, expressed as UNIX epoch timestamp in milliseconds, when the
            # trip started.
            sig { returns(T.nilable(Integer)) }
            attr_reader :started_at

            sig { params(started_at: Integer).void }
            attr_writer :started_at

            # Returns the current state of the trip. The value will be "active" if the trip is
            # still going on, otherwise the value returned would be "ended".
            sig { returns(T.nilable(String)) }
            attr_reader :state

            sig { params(state: String).void }
            attr_writer :state

            # An array of objects returning the details of the stops made during the trip.
            # Each object represents a single stop.
            sig do
              returns(T.nilable(T::Array[Nextbillionai::Skynet::TripStop]))
            end
            attr_reader :stops

            sig do
              params(
                stops: T::Array[Nextbillionai::Skynet::TripStop::OrHash]
              ).void
            end
            attr_writer :stops

            # Returns the timeme, expressed as UNIX epoch timestamp in milliseconds, when the
            # trip was last updated.
            sig { returns(T.nilable(Integer)) }
            attr_reader :updated_at

            sig { params(updated_at: Integer).void }
            attr_writer :updated_at

            # An object containing the returned trip summary.
            sig do
              params(
                id: String,
                asset: Nextbillionai::Skynet::AssetDetails::OrHash,
                asset_id: String,
                attributes: T.anything,
                created_at: Integer,
                description: String,
                distance: Float,
                duration: Float,
                ended_at: Integer,
                geometry: T::Array[String],
                meta_data: T.anything,
                name: String,
                route:
                  T::Array[Nextbillionai::Skynet::Asset::TrackLocation::OrHash],
                started_at: Integer,
                state: String,
                stops: T::Array[Nextbillionai::Skynet::TripStop::OrHash],
                updated_at: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              # Returns the unique identifier of the trip.
              id: nil,
              # An object with details of the `asset` properties.
              asset: nil,
              # Returns the ID of the asset linked to the trip when the trip was started or
              # updated.
              asset_id: nil,
              # Returns the `attributes` provided for the trip at the time of starting or
              # updating it.
              attributes: nil,
              # Returns the time, expressed as UNIX epoch timestamp in milliseconds, when the
              # trip was created.
              created_at: nil,
              # Returns the custom description for the trip as provided at the time of starting
              # or updating the trip.
              description: nil,
              # Returns the total distance covered during the trip, in meters. Please note that
              # this field will be available in the response only if a minimum of 3 locations
              # were tracked during the trip.
              distance: nil,
              # Returns the total duration elapsed during the trip, in seconds. Please note that
              # this field will be available in the response only if a minimum of 3 locations
              # were tracked during the trip.
              duration: nil,
              # Returns the time, expressed as UNIX epoch timestamp in milliseconds, when the
              # trip ended.
              ended_at: nil,
              # Returns the geometry of the route that was taken during the trip, encoded in
              # polyline format. Please note that this field will be available in the response
              # only if a minimum of 3 locations were tracked during the trip.
              geometry: nil,
              # Returns the metadata containing additional information about the trip as
              # provided at the time of starting or updating the trip.
              meta_data: nil,
              # Returns the name for the trip as provided at the time of starting or updating
              # the trip.
              name: nil,
              # An array of object returning the details of the locations tracked for the asset
              # during the trip which has ended. Each object represents a single location that
              # was tracked.
              #
              # Please note that this attribute will not be present in the response if no
              # locations were tracked/uploaded during the trip.
              route: nil,
              # Returns the time, expressed as UNIX epoch timestamp in milliseconds, when the
              # trip started.
              started_at: nil,
              # Returns the current state of the trip. The value will be "active" if the trip is
              # still going on, otherwise the value returned would be "ended".
              state: nil,
              # An array of objects returning the details of the stops made during the trip.
              # Each object represents a single stop.
              stops: nil,
              # Returns the timeme, expressed as UNIX epoch timestamp in milliseconds, when the
              # trip was last updated.
              updated_at: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  asset: Nextbillionai::Skynet::AssetDetails,
                  asset_id: String,
                  attributes: T.anything,
                  created_at: Integer,
                  description: String,
                  distance: Float,
                  duration: Float,
                  ended_at: Integer,
                  geometry: T::Array[String],
                  meta_data: T.anything,
                  name: String,
                  route: T::Array[Nextbillionai::Skynet::Asset::TrackLocation],
                  started_at: Integer,
                  state: String,
                  stops: T::Array[Nextbillionai::Skynet::TripStop],
                  updated_at: Integer
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
