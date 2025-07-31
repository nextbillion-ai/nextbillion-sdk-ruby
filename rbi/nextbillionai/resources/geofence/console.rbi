# typed: strong

module Nextbillionai
  module Resources
    class Geofence
      class Console
        # preview geofence geojson
        sig do
          params(
            type: Nextbillionai::GeofenceEntityCreate::Type::OrSymbol,
            circle: Nextbillionai::GeofenceEntityCreate::Circle::OrHash,
            custom_id: String,
            isochrone: Nextbillionai::GeofenceEntityCreate::Isochrone::OrHash,
            meta_data: T.anything,
            name: String,
            polygon: Nextbillionai::GeofenceEntityCreate::Polygon::OrHash,
            tags: T::Array[String],
            request_options: Nextbillionai::RequestOptions::OrHash
          ).returns(Nextbillionai::Models::Geofence::ConsolePreviewResponse)
        end
        def preview(
          # Specify the type of the geofence that is being created.
          type:,
          # Provide the details to create a circular geofence. Please note that this object
          # is mandatory when type is circle. When the type is not circle, the properties of
          # this object will be ignored while creating the geofence.
          circle: nil,
          # Set an unique ID for the new geofence. If not provided, an ID will be
          # automatically generated in UUID format. A valid custom*id can contain letters,
          # numbers, "-", & "*" only.
          #
          # Please note that the ID of a geofence can not be changed once it is created.
          custom_id: nil,
          # Provide the details to create an isochrone based geofence. Use this object when
          # type is isochrone. When the type is not isochrone, the properties of this object
          # will be ignored while creating the geofence.
          isochrone: nil,
          # Metadata of the geofence. Use this field to define custom attributes that
          # provide more context and information about the geofence being created like
          # country, group ID etc.
          #
          # The data being added should be in valid JSON object format (i.e. key and value
          # pairs). Max size allowed for the object is 65kb.
          meta_data: nil,
          # Name of the geofence. Use this field to assign a meaningful, custom name to the
          # geofence being created.
          name: nil,
          # Provide the details to create a custom polygon type of geofence. Please note
          # that this object is mandatory when type is polygon. When the type is not
          # polygon, the properties of this object will be ignored while creating the
          # geofence.
          #
          # Self-intersecting polygons or polygons containing other polygons are invalid and
          # will be removed while processing the request.
          #
          # Area of the polygon should be less than 2000 km<sup>2</sup>.
          polygon: nil,
          # An array of strings to associate multiple tags to the geofence. tags can be used
          # to search or filter geofences (using Get Geofence List method).
          #
          # Create valid tags using a string consisting of alphanumeric characters (A-Z,
          # a-z, 0-9) along with the underscore ('\_') and hyphen ('-') symbols.
          tags: nil,
          request_options: {}
        )
        end

        # Console Geofence Search API
        sig do
          params(
            query: String,
            request_options: Nextbillionai::RequestOptions::OrHash
          ).returns(Nextbillionai::Models::Geofence::ConsoleSearchResponse)
        end
        def search(
          # string to be searched, will used to match name or id of geofence.
          query:,
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
