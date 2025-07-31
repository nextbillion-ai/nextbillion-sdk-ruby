# frozen_string_literal: true

module Nextbillionai
  module Resources
    class Geofence
      class Console
        # Some parameter documentations has been truncated, see
        # {Nextbillionai::Models::Geofence::ConsolePreviewParams} for more details.
        #
        # preview geofence geojson
        #
        # @overload preview(type:, circle: nil, custom_id: nil, isochrone: nil, meta_data: nil, name: nil, polygon: nil, tags: nil, request_options: {})
        #
        # @param type [Symbol, Nextbillionai::Models::GeofenceEntityCreate::Type] Specify the type of the geofence that is being created.
        #
        # @param circle [Nextbillionai::Models::GeofenceEntityCreate::Circle] Provide the details to create a circular geofence. Please note that this object
        #
        # @param custom_id [String] Set an unique ID for the new geofence. If not provided, an ID will be automatica
        #
        # @param isochrone [Nextbillionai::Models::GeofenceEntityCreate::Isochrone] Provide the details to create an isochrone based geofence. Use this object when
        #
        # @param meta_data [Object] Metadata of the geofence. Use this field to define custom attributes that provid
        #
        # @param name [String] Name of the geofence. Use this field to assign a meaningful, custom name to the
        #
        # @param polygon [Nextbillionai::Models::GeofenceEntityCreate::Polygon] Provide the details to create a custom polygon type of geofence. Please note tha
        #
        # @param tags [Array<String>] An array of strings to associate multiple tags to the geofence. tags can be used
        #
        # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Nextbillionai::Models::Geofence::ConsolePreviewResponse]
        #
        # @see Nextbillionai::Models::Geofence::ConsolePreviewParams
        def preview(params)
          parsed, options = Nextbillionai::Geofence::ConsolePreviewParams.dump_request(params)
          @client.request(
            method: :post,
            path: "geofence/console/preview",
            body: parsed,
            model: Nextbillionai::Models::Geofence::ConsolePreviewResponse,
            options: options
          )
        end

        # Console Geofence Search API
        #
        # @overload search(query:, request_options: {})
        #
        # @param query [String] string to be searched, will used to match name or id of geofence.
        #
        # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Nextbillionai::Models::Geofence::ConsoleSearchResponse]
        #
        # @see Nextbillionai::Models::Geofence::ConsoleSearchParams
        def search(params)
          parsed, options = Nextbillionai::Geofence::ConsoleSearchParams.dump_request(params)
          @client.request(
            method: :get,
            path: "geofence/console/search",
            query: parsed,
            model: Nextbillionai::Models::Geofence::ConsoleSearchResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Nextbillionai::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
