# typed: strong

module NextbillionSDK
  module Models
    module Skynet
      module Asset
        class LocationListParams < NextbillionSDK::Internal::Type::BaseModel
          extend NextbillionSDK::Internal::Type::RequestParameters::Converter
          include NextbillionSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                NextbillionSDK::Skynet::Asset::LocationListParams,
                NextbillionSDK::Internal::AnyHash
              )
            end

          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          sig { returns(String) }
          attr_accessor :key

          # the cluster of the region you want to use
          sig do
            returns(
              T.nilable(
                NextbillionSDK::Skynet::Asset::LocationListParams::Cluster::OrSymbol
              )
            )
          end
          attr_reader :cluster

          sig do
            params(
              cluster:
                NextbillionSDK::Skynet::Asset::LocationListParams::Cluster::OrSymbol
            ).void
          end
          attr_writer :cluster

          # Describe the geometry characteristics through a , separated list of properties.
          #
          # Setting mapmatch to 1 returns the geometry of the tracked points, snapped to the
          # nearest road.
          #
          # Setting interpolate to 1 smoothens the snapped geometry by adding more points,
          # as needed. Please note, mapmatch should be set to 1 for interpolate to be
          # effective.
          #
          # mode is used to set the transport mode for which the snapped route will be
          # determined. Allowed values for mode are car and truck.
          sig { returns(T.nilable(String)) }
          attr_reader :correction

          sig { params(correction: String).void }
          attr_writer :correction

          # Time until which the tracked locations of the asset need to be retrieved.
          sig { returns(T.nilable(Integer)) }
          attr_reader :end_time

          sig { params(end_time: Integer).void }
          attr_writer :end_time

          # Set the geometry format to encode the path linking the tracked locations of the
          # asset.
          #
          # Please note that geometry_type is effective only when mapmatch property of
          # correction parameter is set to 1.
          sig do
            returns(
              T.nilable(
                NextbillionSDK::Skynet::Asset::LocationListParams::GeometryType::OrSymbol
              )
            )
          end
          attr_reader :geometry_type

          sig do
            params(
              geometry_type:
                NextbillionSDK::Skynet::Asset::LocationListParams::GeometryType::OrSymbol
            ).void
          end
          attr_writer :geometry_type

          # Denotes page number. Use this along with the ps parameter to implement
          # pagination for your searched results. This parameter does not have a maximum
          # limit but would return an empty response in case a higher value is provided when
          # the result-set itself is smaller.
          sig { returns(T.nilable(Integer)) }
          attr_reader :pn

          sig { params(pn: Integer).void }
          attr_writer :pn

          # Denotes number of search results per page. Use this along with the pn parameter
          # to implement pagination for your searched results.
          sig { returns(T.nilable(Integer)) }
          attr_reader :ps

          sig { params(ps: Integer).void }
          attr_writer :ps

          # Time after which the tracked locations of the asset need to be retrieved.
          sig { returns(T.nilable(Integer)) }
          attr_reader :start_time

          sig { params(start_time: Integer).void }
          attr_writer :start_time

          sig do
            params(
              key: String,
              cluster:
                NextbillionSDK::Skynet::Asset::LocationListParams::Cluster::OrSymbol,
              correction: String,
              end_time: Integer,
              geometry_type:
                NextbillionSDK::Skynet::Asset::LocationListParams::GeometryType::OrSymbol,
              pn: Integer,
              ps: Integer,
              start_time: Integer,
              request_options: NextbillionSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # A key is a unique identifier that is required to authenticate a request to the
            # API.
            key:,
            # the cluster of the region you want to use
            cluster: nil,
            # Describe the geometry characteristics through a , separated list of properties.
            #
            # Setting mapmatch to 1 returns the geometry of the tracked points, snapped to the
            # nearest road.
            #
            # Setting interpolate to 1 smoothens the snapped geometry by adding more points,
            # as needed. Please note, mapmatch should be set to 1 for interpolate to be
            # effective.
            #
            # mode is used to set the transport mode for which the snapped route will be
            # determined. Allowed values for mode are car and truck.
            correction: nil,
            # Time until which the tracked locations of the asset need to be retrieved.
            end_time: nil,
            # Set the geometry format to encode the path linking the tracked locations of the
            # asset.
            #
            # Please note that geometry_type is effective only when mapmatch property of
            # correction parameter is set to 1.
            geometry_type: nil,
            # Denotes page number. Use this along with the ps parameter to implement
            # pagination for your searched results. This parameter does not have a maximum
            # limit but would return an empty response in case a higher value is provided when
            # the result-set itself is smaller.
            pn: nil,
            # Denotes number of search results per page. Use this along with the pn parameter
            # to implement pagination for your searched results.
            ps: nil,
            # Time after which the tracked locations of the asset need to be retrieved.
            start_time: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                key: String,
                cluster:
                  NextbillionSDK::Skynet::Asset::LocationListParams::Cluster::OrSymbol,
                correction: String,
                end_time: Integer,
                geometry_type:
                  NextbillionSDK::Skynet::Asset::LocationListParams::GeometryType::OrSymbol,
                pn: Integer,
                ps: Integer,
                start_time: Integer,
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
                T.all(
                  Symbol,
                  NextbillionSDK::Skynet::Asset::LocationListParams::Cluster
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AMERICA =
              T.let(
                :america,
                NextbillionSDK::Skynet::Asset::LocationListParams::Cluster::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  NextbillionSDK::Skynet::Asset::LocationListParams::Cluster::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Set the geometry format to encode the path linking the tracked locations of the
          # asset.
          #
          # Please note that geometry_type is effective only when mapmatch property of
          # correction parameter is set to 1.
          module GeometryType
            extend NextbillionSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  NextbillionSDK::Skynet::Asset::LocationListParams::GeometryType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            POLYLINE =
              T.let(
                :polyline,
                NextbillionSDK::Skynet::Asset::LocationListParams::GeometryType::TaggedSymbol
              )
            POLYLINE6 =
              T.let(
                :polyline6,
                NextbillionSDK::Skynet::Asset::LocationListParams::GeometryType::TaggedSymbol
              )
            GEOJSON =
              T.let(
                :geojson,
                NextbillionSDK::Skynet::Asset::LocationListParams::GeometryType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  NextbillionSDK::Skynet::Asset::LocationListParams::GeometryType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
