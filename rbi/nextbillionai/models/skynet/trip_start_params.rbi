# typed: strong

module Nextbillionai
  module Models
    module Skynet
      class TripStartParams < Nextbillionai::Internal::Type::BaseModel
        extend Nextbillionai::Internal::Type::RequestParameters::Converter
        include Nextbillionai::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Skynet::TripStartParams,
              Nextbillionai::Internal::AnyHash
            )
          end

        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        sig { returns(String) }
        attr_accessor :key

        # Specify the ID of the asset which is making this trip. The asset will be linked
        # to this trip.
        sig { returns(String) }
        attr_accessor :asset_id

        # the cluster of the region you want to use
        sig do
          returns(
            T.nilable(Nextbillionai::Skynet::TripStartParams::Cluster::OrSymbol)
          )
        end
        attr_reader :cluster

        sig do
          params(
            cluster: Nextbillionai::Skynet::TripStartParams::Cluster::OrSymbol
          ).void
        end
        attr_writer :cluster

        # `attributes` can be used to store custom information about a trip in
        # `key`:`value` format. Use `attributes` to add any useful information or context
        # to your trips like the driver name, destination etc.
        #
        # Please note that the maximum number of `key`:`value` pairs that can be added to
        # an `attributes` object is 100. Also, the overall size of `attributes` object
        # should not exceed 65kb.
        sig { returns(T.nilable(T.anything)) }
        attr_reader :attributes

        sig { params(attributes: T.anything).void }
        attr_writer :attributes

        # Set a unique ID for the new `trip`. If not provided, an ID will be automatically
        # generated in UUID format. A valid `custom_id` can contain letters, numbers, “-”,
        # & “\_” only.
        #
        # Please note that the ID of a `trip` can not be changed once it is created.
        sig { returns(T.nilable(String)) }
        attr_reader :custom_id

        sig { params(custom_id: String).void }
        attr_writer :custom_id

        # Add a custom description for the trip.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # An JSON object to collect additional details about the trip. Use this property
        # to add any custom information / context about the trip. The input will be passed
        # on to the response as-is and can be used to display useful information on, for
        # example, a UI app.
        sig { returns(T.nilable(T.anything)) }
        attr_reader :meta_data

        sig { params(meta_data: T.anything).void }
        attr_writer :meta_data

        # Specify a name for the trip.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # An array of objects to collect the details about all the stops that need to be
        # made before the trip ends. Each object represents one stop.
        sig do
          returns(
            T.nilable(T::Array[Nextbillionai::Skynet::TripStartParams::Stop])
          )
        end
        attr_reader :stops

        sig do
          params(
            stops:
              T::Array[Nextbillionai::Skynet::TripStartParams::Stop::OrHash]
          ).void
        end
        attr_writer :stops

        sig do
          params(
            key: String,
            asset_id: String,
            cluster: Nextbillionai::Skynet::TripStartParams::Cluster::OrSymbol,
            attributes: T.anything,
            custom_id: String,
            description: String,
            meta_data: T.anything,
            name: String,
            stops:
              T::Array[Nextbillionai::Skynet::TripStartParams::Stop::OrHash],
            request_options: Nextbillionai::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          # Specify the ID of the asset which is making this trip. The asset will be linked
          # to this trip.
          asset_id:,
          # the cluster of the region you want to use
          cluster: nil,
          # `attributes` can be used to store custom information about a trip in
          # `key`:`value` format. Use `attributes` to add any useful information or context
          # to your trips like the driver name, destination etc.
          #
          # Please note that the maximum number of `key`:`value` pairs that can be added to
          # an `attributes` object is 100. Also, the overall size of `attributes` object
          # should not exceed 65kb.
          attributes: nil,
          # Set a unique ID for the new `trip`. If not provided, an ID will be automatically
          # generated in UUID format. A valid `custom_id` can contain letters, numbers, “-”,
          # & “\_” only.
          #
          # Please note that the ID of a `trip` can not be changed once it is created.
          custom_id: nil,
          # Add a custom description for the trip.
          description: nil,
          # An JSON object to collect additional details about the trip. Use this property
          # to add any custom information / context about the trip. The input will be passed
          # on to the response as-is and can be used to display useful information on, for
          # example, a UI app.
          meta_data: nil,
          # Specify a name for the trip.
          name: nil,
          # An array of objects to collect the details about all the stops that need to be
          # made before the trip ends. Each object represents one stop.
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
                Nextbillionai::Skynet::TripStartParams::Cluster::OrSymbol,
              attributes: T.anything,
              custom_id: String,
              description: String,
              meta_data: T.anything,
              name: String,
              stops: T::Array[Nextbillionai::Skynet::TripStartParams::Stop],
              request_options: Nextbillionai::RequestOptions
            }
          )
        end
        def to_hash
        end

        # the cluster of the region you want to use
        module Cluster
          extend Nextbillionai::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Nextbillionai::Skynet::TripStartParams::Cluster)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AMERICA =
            T.let(
              :america,
              Nextbillionai::Skynet::TripStartParams::Cluster::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Nextbillionai::Skynet::TripStartParams::Cluster::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Stop < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Skynet::TripStartParams::Stop,
                Nextbillionai::Internal::AnyHash
              )
            end

          # Specify the ID of the geofence indicating the area where the asset needs to make
          # a stop, during the trip. Only the IDs of geofences created using
          # [NextBillion.ai's Geofence API](https://docs.nextbillion.ai/docs/tracking/api/geofence#create-a-geofence)
          # are accepted.
          sig { returns(T.nilable(String)) }
          attr_reader :geofence_id

          sig { params(geofence_id: String).void }
          attr_writer :geofence_id

          # An JSON object to collect additional details about the stop. Use this property
          # to add any custom information / context about the stop. The input will be passed
          # on to the response as-is and can be used to display useful information on, for
          # example, a UI app.
          sig { returns(T.nilable(T.anything)) }
          attr_reader :meta_data

          sig { params(meta_data: T.anything).void }
          attr_writer :meta_data

          # Specify a custom name for the stop.
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
            # Specify the ID of the geofence indicating the area where the asset needs to make
            # a stop, during the trip. Only the IDs of geofences created using
            # [NextBillion.ai's Geofence API](https://docs.nextbillion.ai/docs/tracking/api/geofence#create-a-geofence)
            # are accepted.
            geofence_id: nil,
            # An JSON object to collect additional details about the stop. Use this property
            # to add any custom information / context about the stop. The input will be passed
            # on to the response as-is and can be used to display useful information on, for
            # example, a UI app.
            meta_data: nil,
            # Specify a custom name for the stop.
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
