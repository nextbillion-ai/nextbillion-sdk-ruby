# typed: strong

module NextbillionSDK
  module Models
    module Skynet
      class TripUpdateParams < NextbillionSDK::Internal::Type::BaseModel
        extend NextbillionSDK::Internal::Type::RequestParameters::Converter
        include NextbillionSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Skynet::TripUpdateParams,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        sig { returns(String) }
        attr_accessor :key

        # Use this param to update the ID of the asset which made this trip. Please be
        # cautious when using this field as providing an ID other than what was provided
        # at the time of starting the trip, will link a new asset to the trip and un-link
        # the original asset, even if the trip is still active.
        sig { returns(String) }
        attr_accessor :asset_id

        # the cluster of the region you want to use
        sig do
          returns(
            T.nilable(
              NextbillionSDK::Skynet::TripUpdateParams::Cluster::OrSymbol
            )
          )
        end
        attr_reader :cluster

        sig do
          params(
            cluster: NextbillionSDK::Skynet::TripUpdateParams::Cluster::OrSymbol
          ).void
        end
        attr_writer :cluster

        # Use this field to update the attributes of the trip. Please note that when
        # updating the attributes field, previously added information will be overwritten.
        sig { returns(T.nilable(T.anything)) }
        attr_reader :attributes

        sig { params(attributes: T.anything).void }
        attr_writer :attributes

        # Use this parameter to update the custom description of the trip.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # Use this JSON object to update additional details about the trip. This property
        # is used to add any custom information / context about the trip.
        #
        # Please note that updating the meta_data field will overwrite the previously
        # added information.
        sig { returns(T.nilable(T.anything)) }
        attr_reader :meta_data

        sig { params(meta_data: T.anything).void }
        attr_writer :meta_data

        # Use this property to update the name of the trip.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # Use this object to update the details of the stops made during the trip. Each
        # object represents a single stop.
        #
        # Please note that when updating this field, the new stops will overwrite any
        # existing stops configured for the trip.
        sig do
          returns(
            T.nilable(T::Array[NextbillionSDK::Skynet::TripUpdateParams::Stop])
          )
        end
        attr_reader :stops

        sig do
          params(
            stops:
              T::Array[NextbillionSDK::Skynet::TripUpdateParams::Stop::OrHash]
          ).void
        end
        attr_writer :stops

        sig do
          params(
            key: String,
            asset_id: String,
            cluster:
              NextbillionSDK::Skynet::TripUpdateParams::Cluster::OrSymbol,
            attributes: T.anything,
            description: String,
            meta_data: T.anything,
            name: String,
            stops:
              T::Array[NextbillionSDK::Skynet::TripUpdateParams::Stop::OrHash],
            request_options: NextbillionSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          # Use this param to update the ID of the asset which made this trip. Please be
          # cautious when using this field as providing an ID other than what was provided
          # at the time of starting the trip, will link a new asset to the trip and un-link
          # the original asset, even if the trip is still active.
          asset_id:,
          # the cluster of the region you want to use
          cluster: nil,
          # Use this field to update the attributes of the trip. Please note that when
          # updating the attributes field, previously added information will be overwritten.
          attributes: nil,
          # Use this parameter to update the custom description of the trip.
          description: nil,
          # Use this JSON object to update additional details about the trip. This property
          # is used to add any custom information / context about the trip.
          #
          # Please note that updating the meta_data field will overwrite the previously
          # added information.
          meta_data: nil,
          # Use this property to update the name of the trip.
          name: nil,
          # Use this object to update the details of the stops made during the trip. Each
          # object represents a single stop.
          #
          # Please note that when updating this field, the new stops will overwrite any
          # existing stops configured for the trip.
          stops: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              key: String,
              asset_id: String,
              cluster:
                NextbillionSDK::Skynet::TripUpdateParams::Cluster::OrSymbol,
              attributes: T.anything,
              description: String,
              meta_data: T.anything,
              name: String,
              stops: T::Array[NextbillionSDK::Skynet::TripUpdateParams::Stop],
              request_options: NextbillionSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        # the cluster of the region you want to use
        module Cluster
          extend NextbillionSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, NextbillionSDK::Skynet::TripUpdateParams::Cluster)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AMERICA =
            T.let(
              :america,
              NextbillionSDK::Skynet::TripUpdateParams::Cluster::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                NextbillionSDK::Skynet::TripUpdateParams::Cluster::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Stop < NextbillionSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                NextbillionSDK::Skynet::TripUpdateParams::Stop,
                NextbillionSDK::Internal::AnyHash
              )
            end

          # Use this parameter to update the ID of the geofence indicating the area where
          # the asset needs to make a stop, during the trip. Only the IDs of geofences
          # created using
          # [NextBillion.ai's Geofence API](https://docs.nextbillion.ai/docs/tracking/api/geofence#create-a-geofence)
          # are accepted.
          #
          # Please note that updating this field will overwrite the previously added
          # information.
          sig { returns(T.nilable(String)) }
          attr_reader :geofence_id

          sig { params(geofence_id: String).void }
          attr_writer :geofence_id

          # Use this JSON object to update additional details about the stop. This property
          # is used to add any custom information / context about the stop.
          #
          # Please note that updating the meta_data field will overwrite the previously
          # added information.
          sig { returns(T.nilable(T.anything)) }
          attr_reader :meta_data

          sig { params(meta_data: T.anything).void }
          attr_writer :meta_data

          # Use this filed to update the name of the stop.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig do
            params(
              geofence_id: String,
              meta_data: T.anything,
              name: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Use this parameter to update the ID of the geofence indicating the area where
            # the asset needs to make a stop, during the trip. Only the IDs of geofences
            # created using
            # [NextBillion.ai's Geofence API](https://docs.nextbillion.ai/docs/tracking/api/geofence#create-a-geofence)
            # are accepted.
            #
            # Please note that updating this field will overwrite the previously added
            # information.
            geofence_id: nil,
            # Use this JSON object to update additional details about the stop. This property
            # is used to add any custom information / context about the stop.
            #
            # Please note that updating the meta_data field will overwrite the previously
            # added information.
            meta_data: nil,
            # Use this filed to update the name of the stop.
            name: nil
          )
          end

          sig do
            override.returns(
              { geofence_id: String, meta_data: T.anything, name: String }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
