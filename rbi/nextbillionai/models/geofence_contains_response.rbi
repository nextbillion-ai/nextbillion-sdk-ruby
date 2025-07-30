# typed: strong

module Nextbillionai
  module Models
    class GeofenceContainsResponse < Nextbillionai::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Nextbillionai::Models::GeofenceContainsResponse,
            Nextbillionai::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Nextbillionai::Models::GeofenceContainsResponse::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data: Nextbillionai::Models::GeofenceContainsResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      # A string indicating the state of the response. On successful responses, the
      # value will be `Ok`. Indicative error messages are returned for different errors.
      # See the [API Error Codes](#api-error-codes) section below for more information.
      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { params(status: String).void }
      attr_writer :status

      sig do
        params(
          data: Nextbillionai::Models::GeofenceContainsResponse::Data::OrHash,
          status: String
        ).returns(T.attached_class)
      end
      def self.new(
        data: nil,
        # A string indicating the state of the response. On successful responses, the
        # value will be `Ok`. Indicative error messages are returned for different errors.
        # See the [API Error Codes](#api-error-codes) section below for more information.
        status: nil
      )
      end

      sig do
        override.returns(
          {
            data: Nextbillionai::Models::GeofenceContainsResponse::Data,
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
              Nextbillionai::Models::GeofenceContainsResponse::Data,
              Nextbillionai::Internal::AnyHash
            )
          end

        # An array of objects containing each of the geofences provided in the `geofences`
        # input. If `geofences` in not provided then the array will return all the
        # geofences associated with the `key`
        sig do
          returns(
            T.nilable(
              T::Array[
                Nextbillionai::Models::GeofenceContainsResponse::Data::ResultList
              ]
            )
          )
        end
        attr_reader :result_list

        sig do
          params(
            result_list:
              T::Array[
                Nextbillionai::Models::GeofenceContainsResponse::Data::ResultList::OrHash
              ]
          ).void
        end
        attr_writer :result_list

        sig do
          params(
            result_list:
              T::Array[
                Nextbillionai::Models::GeofenceContainsResponse::Data::ResultList::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # An array of objects containing each of the geofences provided in the `geofences`
          # input. If `geofences` in not provided then the array will return all the
          # geofences associated with the `key`
          result_list: nil
        )
        end

        sig do
          override.returns(
            {
              result_list:
                T::Array[
                  Nextbillionai::Models::GeofenceContainsResponse::Data::ResultList
                ]
            }
          )
        end
        def to_hash
        end

        class ResultList < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Models::GeofenceContainsResponse::Data::ResultList,
                Nextbillionai::Internal::AnyHash
              )
            end

          # An object with details of the geofence.
          sig { returns(T.nilable(Nextbillionai::GeofenceAPI)) }
          attr_reader :geofence_detail

          sig do
            params(geofence_detail: Nextbillionai::GeofenceAPI::OrHash).void
          end
          attr_writer :geofence_detail

          # ID of the geofence provided/generated at the time of creating the geofence.
          sig { returns(T.nilable(String)) }
          attr_reader :geofence_id

          sig { params(geofence_id: String).void }
          attr_writer :geofence_id

          # An array of objects with results of the contains check for each of the
          # coordinate points in `locations` against the geofence represented by
          # `geofence_id`.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Nextbillionai::Models::GeofenceContainsResponse::Data::ResultList::Result
                ]
              )
            )
          end
          attr_reader :result

          sig do
            params(
              result:
                T::Array[
                  Nextbillionai::Models::GeofenceContainsResponse::Data::ResultList::Result::OrHash
                ]
            ).void
          end
          attr_writer :result

          sig do
            params(
              geofence_detail: Nextbillionai::GeofenceAPI::OrHash,
              geofence_id: String,
              result:
                T::Array[
                  Nextbillionai::Models::GeofenceContainsResponse::Data::ResultList::Result::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # An object with details of the geofence.
            geofence_detail: nil,
            # ID of the geofence provided/generated at the time of creating the geofence.
            geofence_id: nil,
            # An array of objects with results of the contains check for each of the
            # coordinate points in `locations` against the geofence represented by
            # `geofence_id`.
            result: nil
          )
          end

          sig do
            override.returns(
              {
                geofence_detail: Nextbillionai::GeofenceAPI,
                geofence_id: String,
                result:
                  T::Array[
                    Nextbillionai::Models::GeofenceContainsResponse::Data::ResultList::Result
                  ]
              }
            )
          end
          def to_hash
          end

          class Result < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Models::GeofenceContainsResponse::Data::ResultList::Result,
                  Nextbillionai::Internal::AnyHash
                )
              end

            # `true` when a coordinate point in `locations` is contained by this geofence.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :contain

            sig { params(contain: T::Boolean).void }
            attr_writer :contain

            # Index of the coordinate point in the input `locations`.
            sig { returns(T.nilable(Integer)) }
            attr_reader :location_index

            sig { params(location_index: Integer).void }
            attr_writer :location_index

            sig do
              params(contain: T::Boolean, location_index: Integer).returns(
                T.attached_class
              )
            end
            def self.new(
              # `true` when a coordinate point in `locations` is contained by this geofence.
              contain: nil,
              # Index of the coordinate point in the input `locations`.
              location_index: nil
            )
            end

            sig do
              override.returns({ contain: T::Boolean, location_index: Integer })
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
