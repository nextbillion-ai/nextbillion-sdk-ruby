# typed: strong

module Nextbillionai
  module Resources
    class Skynet
      class Trip
        # Retrieves detailed information about a specific trip.
        sig do
          params(
            id: String,
            key: String,
            cluster:
              Nextbillionai::Skynet::TripRetrieveParams::Cluster::OrSymbol,
            request_options: Nextbillionai::RequestOptions::OrHash
          ).returns(Nextbillionai::Models::Skynet::TripRetrieveResponse)
        end
        def retrieve(
          # Specify the ID of trip that is to be retrieved.
          id,
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          # the cluster of the region you want to use
          cluster: nil,
          request_options: {}
        )
        end

        # Updates the data of a specified trip with the provided data.
        sig do
          params(
            id: String,
            key: String,
            asset_id: String,
            cluster: Nextbillionai::Skynet::TripUpdateParams::Cluster::OrSymbol,
            attributes: T.anything,
            description: String,
            meta_data: T.anything,
            name: String,
            stops:
              T::Array[Nextbillionai::Skynet::TripUpdateParams::Stop::OrHash],
            request_options: Nextbillionai::RequestOptions::OrHash
          ).returns(Nextbillionai::Skynet::SimpleResp)
        end
        def update(
          # Path param: Specify the ID of the trip to be updated. Please note that a trip
          # which has ended can not be updated.
          id,
          # Query param: A key is a unique identifier that is required to authenticate a
          # request to the API.
          key:,
          # Body param: Use this param to update the ID of the asset which made this trip.
          # Please be cautious when using this field as providing an ID other than what was
          # provided at the time of starting the trip, will link a new asset to the trip and
          # un-link the original asset, even if the trip is still active.
          asset_id:,
          # Query param: the cluster of the region you want to use
          cluster: nil,
          # Body param: Use this field to update the attributes of the trip. Please note
          # that when updating the attributes field, previously added information will be
          # overwritten.
          attributes: nil,
          # Body param: Use this parameter to update the custom description of the trip.
          description: nil,
          # Body param: Use this JSON object to update additional details about the trip.
          # This property is used to add any custom information / context about the trip.
          #
          # Please note that updating the meta_data field will overwrite the previously
          # added information.
          meta_data: nil,
          # Body param: Use this property to update the name of the trip.
          name: nil,
          # Body param: Use this object to update the details of the stops made during the
          # trip. Each object represents a single stop.
          #
          # Please note that when updating this field, the new stops will overwrite any
          # existing stops configured for the trip.
          stops: nil,
          request_options: {}
        )
        end

        # Deletes a specified trip from the system.
        sig do
          params(
            id: String,
            key: String,
            cluster: Nextbillionai::Skynet::TripDeleteParams::Cluster::OrSymbol,
            request_options: Nextbillionai::RequestOptions::OrHash
          ).returns(Nextbillionai::Skynet::SimpleResp)
        end
        def delete(
          # Specify the ID of the trip to be deleted.
          id,
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          # the cluster of the region you want to use
          cluster: nil,
          request_options: {}
        )
        end

        # End a trip
        sig do
          params(
            key: String,
            id: String,
            cluster: Nextbillionai::Skynet::TripEndParams::Cluster::OrSymbol,
            request_options: Nextbillionai::RequestOptions::OrHash
          ).returns(Nextbillionai::Skynet::SimpleResp)
        end
        def end_(
          # Query param: A key is a unique identifier that is required to authenticate a
          # request to the API.
          key:,
          # Body param: Specify the ID of the trip to be ended.
          id:,
          # Query param: the cluster of the region you want to use
          cluster: nil,
          request_options: {}
        )
        end

        # Get summary of an ended trip
        sig do
          params(
            id: String,
            key: String,
            cluster:
              Nextbillionai::Skynet::TripGetSummaryParams::Cluster::OrSymbol,
            request_options: Nextbillionai::RequestOptions::OrHash
          ).returns(Nextbillionai::Models::Skynet::TripGetSummaryResponse)
        end
        def get_summary(
          # Specify the ID of the trip whose summary needs to be generated. Please ensure
          # the trip is already completed. Trip summary is not available for ongoing trips.
          id,
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          # the cluster of the region you want to use
          cluster: nil,
          request_options: {}
        )
        end

        # Add a new trip to the system with the provided data.
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
          ).returns(Nextbillionai::Models::Skynet::TripStartResponse)
        end
        def start(
          # Query param: A key is a unique identifier that is required to authenticate a
          # request to the API.
          key:,
          # Body param: Specify the ID of the asset which is making this trip. The asset
          # will be linked to this trip.
          asset_id:,
          # Query param: the cluster of the region you want to use
          cluster: nil,
          # Body param: attributes can be used to store custom information about a trip in
          # key:value format. Use attributes to add any useful information or context to
          # your trips like the driver name, destination etc.
          #
          # Please note that the maximum number of key:value pairs that can be added to an
          # attributes object is 100. Also, the overall size of attributes object should not
          # exceed 65kb.
          attributes: nil,
          # Body param: Set a unique ID for the new trip. If not provided, an ID will be
          # automatically generated in UUID format. A valid custom_id can contain letters,
          # numbers, “-”, & “\_” only.
          #
          # Please note that the ID of a trip can not be changed once it is created.
          custom_id: nil,
          # Body param: Add a custom description for the trip.
          description: nil,
          # Body param: An JSON object to collect additional details about the trip. Use
          # this property to add any custom information / context about the trip. The input
          # will be passed on to the response as-is and can be used to display useful
          # information on, for example, a UI app.
          meta_data: nil,
          # Body param: Specify a name for the trip.
          name: nil,
          # Body param: An array of objects to collect the details about all the stops that
          # need to be made before the trip ends. Each object represents one stop.
          stops: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Nextbillionai::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
