# typed: strong

module NextbillionSDK
  module Models
    module Skynet
      class TripRetrieveResponse < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Models::Skynet::TripRetrieveResponse,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # An container for the trip returned by the service.
        sig do
          returns(
            T.nilable(
              NextbillionSDK::Models::Skynet::TripRetrieveResponse::Data
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              NextbillionSDK::Models::Skynet::TripRetrieveResponse::Data::OrHash
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
              NextbillionSDK::Models::Skynet::TripRetrieveResponse::Data::OrHash,
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
              data: NextbillionSDK::Models::Skynet::TripRetrieveResponse::Data,
              message: String,
              status: String
            }
          )
        end
        def to_hash
        end

        class Data < NextbillionSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                NextbillionSDK::Models::Skynet::TripRetrieveResponse::Data,
                NextbillionSDK::Internal::AnyHash
              )
            end

          # An object containing the returned trip details.
          sig do
            returns(
              T.nilable(
                NextbillionSDK::Models::Skynet::TripRetrieveResponse::Data::Trip
              )
            )
          end
          attr_reader :trip

          sig do
            params(
              trip:
                NextbillionSDK::Models::Skynet::TripRetrieveResponse::Data::Trip::OrHash
            ).void
          end
          attr_writer :trip

          # An container for the trip returned by the service.
          sig do
            params(
              trip:
                NextbillionSDK::Models::Skynet::TripRetrieveResponse::Data::Trip::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # An object containing the returned trip details.
            trip: nil
          )
          end

          sig do
            override.returns(
              {
                trip:
                  NextbillionSDK::Models::Skynet::TripRetrieveResponse::Data::Trip
              }
            )
          end
          def to_hash
          end

          class Trip < NextbillionSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  NextbillionSDK::Models::Skynet::TripRetrieveResponse::Data::Trip,
                  NextbillionSDK::Internal::AnyHash
                )
              end

            # Returns the unique identifier of the trip.
            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

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

            # Returns the time, expressed as UNIX epoch timestamp in milliseconds, when the
            # trip ended.
            sig { returns(T.nilable(Integer)) }
            attr_reader :ended_at

            sig { params(ended_at: Integer).void }
            attr_writer :ended_at

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
                T.nilable(
                  T::Array[NextbillionSDK::Skynet::Asset::TrackLocation]
                )
              )
            end
            attr_reader :route

            sig do
              params(
                route:
                  T::Array[NextbillionSDK::Skynet::Asset::TrackLocation::OrHash]
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
              returns(T.nilable(T::Array[NextbillionSDK::Skynet::TripStop]))
            end
            attr_reader :stops

            sig do
              params(
                stops: T::Array[NextbillionSDK::Skynet::TripStop::OrHash]
              ).void
            end
            attr_writer :stops

            # Returns the timeme, expressed as UNIX epoch timestamp in milliseconds, when the
            # trip was last updated.
            sig { returns(T.nilable(Integer)) }
            attr_reader :updated_at

            sig { params(updated_at: Integer).void }
            attr_writer :updated_at

            # An object containing the returned trip details.
            sig do
              params(
                id: String,
                asset_id: String,
                attributes: T.anything,
                created_at: Integer,
                description: String,
                ended_at: Integer,
                meta_data: T.anything,
                name: String,
                route:
                  T::Array[
                    NextbillionSDK::Skynet::Asset::TrackLocation::OrHash
                  ],
                started_at: Integer,
                state: String,
                stops: T::Array[NextbillionSDK::Skynet::TripStop::OrHash],
                updated_at: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              # Returns the unique identifier of the trip.
              id: nil,
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
              # Returns the time, expressed as UNIX epoch timestamp in milliseconds, when the
              # trip ended.
              ended_at: nil,
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
                  asset_id: String,
                  attributes: T.anything,
                  created_at: Integer,
                  description: String,
                  ended_at: Integer,
                  meta_data: T.anything,
                  name: String,
                  route: T::Array[NextbillionSDK::Skynet::Asset::TrackLocation],
                  started_at: Integer,
                  state: String,
                  stops: T::Array[NextbillionSDK::Skynet::TripStop],
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
