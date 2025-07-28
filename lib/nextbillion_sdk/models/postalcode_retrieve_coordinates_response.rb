# frozen_string_literal: true

module NextbillionSDK
  module Models
    # @see NextbillionSDK::Resources::Postalcode#retrieve_coordinates
    class PostalcodeRetrieveCoordinatesResponse < NextbillionSDK::Internal::Type::BaseModel
      # @!attribute places
      #   An object that contains details about the place that was provided in the input.
      #
      #   @return [NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places, nil]
      optional :places, -> { NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places }

      # @!attribute warning
      #   Returns a message, in case the input provided triggers any warnings.
      #
      #   @return [Array<String>, nil]
      optional :warning, NextbillionSDK::Internal::Type::ArrayOf[String]

      # @!method initialize(places: nil, warning: nil)
      #   @param places [NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places] An object that contains details about the place that was provided in the input.
      #
      #   @param warning [Array<String>] Returns a message, in case the input provided triggers any warnings.

      # @see NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse#places
      class Places < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute address
        #   Returns the address of the `postalcode` returned.
        #
        #   @return [String, nil]
        optional :address, String

        # @!attribute boundary
        #   An object containing the boundary details of the postal code area. This object
        #   will not be returned in case the boundary information of the postal code
        #   provided is not available (only for selected countries).
        #
        #   Please note the contents of this object will change based on the `format` field
        #   in the input. When the `format` field is not present in the input this object
        #   would contain `multipolygon` - `polygon` - `points` objects depending on the
        #   boundary of the given postal code. When the `format` field is present in the
        #   input, then the contents of this object would match the
        #   [geojson format and standard](https://datatracker.ietf.org/doc/html/rfc7946).
        #
        #   @return [NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary, nil]
        optional :boundary, -> { NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary }

        # @!attribute country
        #   Name of the country containing the geographic coordinate point / postal code
        #   provided in the input request.
        #
        #   @return [String, nil]
        optional :country, String

        # @!attribute country_code
        #   Returns the [alpha-3 ISO code](https://www.iban.com/country-codes) of the
        #   country containing the `postalcode` returned.
        #
        #   @return [String, nil]
        optional :country_code, String, api_name: :countryCode

        # @!attribute distance
        #   This property is returned only when the API is requested to fetch the postal
        #   code containing the location coordinate provided in the `at` input parameter.
        #   `distance` denotes the straight line distance, in meters, from the requested
        #   location coordinate to the postal code centroid.
        #
        #   @return [Float, nil]
        optional :distance, Float

        # @!attribute district
        #   Name of the district or region containing the geographic coordinate point /
        #   postal code provided in the input request.
        #
        #   @return [String, nil]
        optional :district, String

        # @!attribute geopoint
        #   Refers to the geographic coordinate denoting the center of the postal code in
        #   latitude, longitude format.
        #
        #   @return [NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Geopoint, nil]
        optional :geopoint, -> { NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Geopoint }

        # @!attribute postalcode
        #   Returns the postal code associated with the requested geographic coordinate
        #   point or the postal code itself as provided in the input API request.
        #
        #   @return [String, nil]
        optional :postalcode, String

        # @!attribute state
        #   Name of the state or province containing the geographic coordinate point /
        #   postal code provided in the input request.
        #
        #   @return [String, nil]
        optional :state, String

        # @!attribute subdistrict
        #   Name of the sub-district or sub-region containing the postal code or geographic
        #   coordinate point / postal code provided in the input request
        #
        #   @return [String, nil]
        optional :subdistrict, String

        # @!method initialize(address: nil, boundary: nil, country: nil, country_code: nil, distance: nil, district: nil, geopoint: nil, postalcode: nil, state: nil, subdistrict: nil)
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places} for more
        #   details.
        #
        #   An object that contains details about the place that was provided in the input.
        #
        #   @param address [String] Returns the address of the `postalcode` returned.
        #
        #   @param boundary [NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary] An object containing the boundary details of the postal code area. This object w
        #
        #   @param country [String] Name of the country containing the geographic coordinate point / postal code pro
        #
        #   @param country_code [String] Returns the [alpha-3 ISO code](https://www.iban.com/country-codes) of the countr
        #
        #   @param distance [Float] This property is returned only when the API is requested to fetch the postal cod
        #
        #   @param district [String] Name of the district or region containing the geographic coordinate point / post
        #
        #   @param geopoint [NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Geopoint] Refers to the geographic coordinate denoting the center of the postal code in la
        #
        #   @param postalcode [String] Returns the postal code associated with the requested geographic coordinate poin
        #
        #   @param state [String] Name of the state or province containing the geographic coordinate point / posta
        #
        #   @param subdistrict [String] Name of the sub-district or sub-region containing the postal code or geographic

        # @see NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places#boundary
        class Boundary < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute geometry
          #   An object with geoJSON details of the boundary. This object is returned when the
          #   `format` field is set to `geojson` in the input request, otherwise it is not
          #   present in the response. The contents of this object follow the
          #   [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
          #
          #   @return [NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary::Geometry, nil]
          optional :geometry,
                   -> { NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary::Geometry }

          # @!attribute multipolygon
          #   An array of objects containing information about all the polygons forming the
          #   postal code area. In case, the postal code area is formed by multiple polygons
          #   not containing each other, a matching count of `polygon` objects will be
          #   returned.
          #
          #   Please note that this object is returned only when `format` field is not
          #   specified in the input, otherwise it is not present in the response.
          #
          #   @return [Array<NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary::Multipolygon>, nil]
          optional :multipolygon,
                   -> { NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary::Multipolygon] }

          # @!attribute properties
          #   Property associated with the geoJSON shape.
          #
          #   @return [String, nil]
          optional :properties, String

          # @!attribute type
          #   Type of the geoJSON object. This parameter is returned when the `format` field
          #   is set to `geojson` in the input request, otherwise it is not present in the
          #   response. The contents of this object follow the
          #   [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
          #
          #   @return [String, nil]
          optional :type, String

          # @!method initialize(geometry: nil, multipolygon: nil, properties: nil, type: nil)
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary}
          #   for more details.
          #
          #   An object containing the boundary details of the postal code area. This object
          #   will not be returned in case the boundary information of the postal code
          #   provided is not available (only for selected countries).
          #
          #   Please note the contents of this object will change based on the `format` field
          #   in the input. When the `format` field is not present in the input this object
          #   would contain `multipolygon` - `polygon` - `points` objects depending on the
          #   boundary of the given postal code. When the `format` field is present in the
          #   input, then the contents of this object would match the
          #   [geojson format and standard](https://datatracker.ietf.org/doc/html/rfc7946).
          #
          #   @param geometry [NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary::Geometry] An object with geoJSON details of the boundary. This object is returned when the
          #
          #   @param multipolygon [Array<NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary::Multipolygon>] An array of objects containing information about all the polygons forming the p
          #
          #   @param properties [String] Property associated with the geoJSON shape.
          #
          #   @param type [String] Type of the geoJSON object. This parameter is returned when the `format` field i

          # @see NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary#geometry
          class Geometry < NextbillionSDK::Internal::Type::BaseModel
            # @!attribute coordinates
            #   An array of coordinates in the [longitude, latitude] format, representing the
            #   coordinates points which lie on the boundary of the postal code area.
            #
            #   @return [Array<Array<Array<Float>>>, nil]
            optional :coordinates,
                     NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Internal::Type::ArrayOf[Float]]]

            # @!attribute type
            #   Type of the geoJSON geometry.
            #
            #   @return [String, nil]
            optional :type, String

            # @!method initialize(coordinates: nil, type: nil)
            #   Some parameter documentations has been truncated, see
            #   {NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary::Geometry}
            #   for more details.
            #
            #   An object with geoJSON details of the boundary. This object is returned when the
            #   `format` field is set to `geojson` in the input request, otherwise it is not
            #   present in the response. The contents of this object follow the
            #   [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
            #
            #   @param coordinates [Array<Array<Array<Float>>>] An array of coordinates in the [longitude, latitude] format, representing the co
            #
            #   @param type [String] Type of the geoJSON geometry.
          end

          class Multipolygon < NextbillionSDK::Internal::Type::BaseModel
            # @!attribute polygon
            #   An object containing the details of a single polygon that is a part of the
            #   postal code area. In case the postal code area contains other polygon(s), the
            #   details of such polygon(s) would be returned through an array of `points`
            #   object.
            #
            #   @return [Array<NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary::Multipolygon::Polygon>, nil]
            optional :polygon,
                     -> { NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary::Multipolygon::Polygon] }

            # @!method initialize(polygon: nil)
            #   Some parameter documentations has been truncated, see
            #   {NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary::Multipolygon}
            #   for more details.
            #
            #   @param polygon [Array<NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary::Multipolygon::Polygon>] An object containing the details of a single polygon that is a part of the posta

            class Polygon < NextbillionSDK::Internal::Type::BaseModel
              # @!attribute points
              #   Represents an array of geographic coordinates that define a `polygon` boundary.
              #
              #   @return [Array<NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary::Multipolygon::Polygon::Point>, nil]
              optional :points,
                       -> do
                         NextbillionSDK::Internal::Type::ArrayOf[
                           NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary::Multipolygon::Polygon::Point
                         ]
                       end

              # @!method initialize(points: nil)
              #   @param points [Array<NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary::Multipolygon::Polygon::Point>] Represents an array of geographic coordinates that define a `polygon` boundary.

              class Point < NextbillionSDK::Internal::Type::BaseModel
                # @!attribute lat
                #   Latitude of the coordinate.
                #
                #   @return [Float, nil]
                optional :lat, Float

                # @!attribute lng
                #   Longitude of the coordinate.
                #
                #   @return [Float, nil]
                optional :lng, Float

                # @!method initialize(lat: nil, lng: nil)
                #   @param lat [Float] Latitude of the coordinate.
                #
                #   @param lng [Float] Longitude of the coordinate.
              end
            end
          end
        end

        # @see NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places#geopoint
        class Geopoint < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute lat
          #   Latitude of the location.
          #
          #   @return [Float, nil]
          optional :lat, Float

          # @!attribute lng
          #   Longitude of the location.
          #
          #   @return [Float, nil]
          optional :lng, Float

          # @!method initialize(lat: nil, lng: nil)
          #   Refers to the geographic coordinate denoting the center of the postal code in
          #   latitude, longitude format.
          #
          #   @param lat [Float] Latitude of the location.
          #
          #   @param lng [Float] Longitude of the location.
        end
      end
    end
  end
end
