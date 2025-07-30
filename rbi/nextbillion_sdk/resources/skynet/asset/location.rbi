# typed: strong

module NextbillionSDK
  module Resources
    class Skynet
      class Asset
        class Location
          # Track locations of an asset
          sig do
            params(
              id: String,
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
            ).returns(
              NextbillionSDK::Models::Skynet::Asset::LocationListResponse
            )
          end
          def list(
            # ID of the asset for which the location track information needs to be retrieved.
            # This is the same ID that was generated/provided at the time of creating the
            # asset.
            id,
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

          # Track the last location of an asset
          sig do
            params(
              id: String,
              key: String,
              cluster:
                NextbillionSDK::Skynet::Asset::LocationGetLastParams::Cluster::OrSymbol,
              request_options: NextbillionSDK::RequestOptions::OrHash
            ).returns(
              NextbillionSDK::Models::Skynet::Asset::LocationGetLastResponse
            )
          end
          def get_last(
            # ID of the asset whose last location is to be retrieved. This is the same ID that
            # was generated/provided at the time of creating the asset.
            id,
            # A key is a unique identifier that is required to authenticate a request to the
            # API.
            key:,
            # the cluster of the region you want to use
            cluster: nil,
            request_options: {}
          )
          end

          # @api private
          sig do
            params(client: NextbillionSDK::Client).returns(T.attached_class)
          end
          def self.new(client:)
          end
        end
      end
    end
  end
end
