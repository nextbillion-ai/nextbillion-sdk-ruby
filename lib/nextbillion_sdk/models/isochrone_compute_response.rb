# frozen_string_literal: true

module NextbillionSDK
  module Models
    # @see NextbillionSDK::Resources::Isochrone#compute
    class IsochroneComputeResponse < NextbillionSDK::Internal::Type::BaseModel
      # @!attribute features
      #   A
      #   [GeoJSON FeatureCollection](https://datatracker.ietf.org/doc/html/rfc7946#section-3.3)
      #   object with details of the isochrone contours. Each feature object in this
      #   collection represents an isochrone.
      #
      #   @return [Array<NextbillionSDK::Models::IsochroneComputeResponse::Feature>, nil]
      optional :features,
               -> { NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Models::IsochroneComputeResponse::Feature] }

      # @!attribute msg
      #   Displays the error message in case of a failed request or operation. Please note
      #   that this parameter is not returned in the response in case of a successful
      #   request.
      #
      #   @return [String, nil]
      optional :msg, String

      # @!attribute status
      #   A string indicating the state of the response. On normal responses, the value
      #   will be Ok. Indicative HTTP error codes are returned for different errors. See
      #   the [API Errors Codes](#api-error-codes) section below for more information.
      #
      #   @return [String, nil]
      optional :status, String

      # @!attribute type
      #   Type of the GeoJSON object. As prescribed in
      #   [GeoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946#section-1.4),
      #   its value is FeatureCollection as the feature property contains a list of
      #   geoJSON feature objects.
      #
      #   @return [String, nil]
      optional :type, String

      # @!method initialize(features: nil, msg: nil, status: nil, type: nil)
      #   Some parameter documentations has been truncated, see
      #   {NextbillionSDK::Models::IsochroneComputeResponse} for more details.
      #
      #   @param features [Array<NextbillionSDK::Models::IsochroneComputeResponse::Feature>] A [GeoJSON FeatureCollection](https://datatracker.ietf.org/doc/html/rfc7946#sect
      #
      #   @param msg [String] Displays the error message in case of a failed request or operation. Please note
      #
      #   @param status [String] A string indicating the state of the response. On normal responses, the value wi
      #
      #   @param type [String] Type of the GeoJSON object. As prescribed in [GeoJSON standard](https://datatrac

      class Feature < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute geometry
        #   A [GeoJSON geometry](https://datatracker.ietf.org/doc/html/rfc7946#page-7)
        #   object with details of the contour line.
        #
        #   @return [NextbillionSDK::Models::IsochroneComputeResponse::Feature::Geometry, nil]
        optional :geometry, -> { NextbillionSDK::Models::IsochroneComputeResponse::Feature::Geometry }

        # @!attribute properties
        #   An object with details of how the isochrone contour can be drawn on a map.
        #
        #   @return [NextbillionSDK::Models::IsochroneComputeResponse::Feature::Properties, nil]
        optional :properties, -> { NextbillionSDK::Models::IsochroneComputeResponse::Feature::Properties }

        # @!attribute type
        #   Type of the GeoJSON object. Its value is Feature as per the
        #   [GeoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946#section-1.4)
        #   object.
        #
        #   @return [String, nil]
        optional :type, String

        # @!method initialize(geometry: nil, properties: nil, type: nil)
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::IsochroneComputeResponse::Feature} for more details.
        #
        #   @param geometry [NextbillionSDK::Models::IsochroneComputeResponse::Feature::Geometry] A [GeoJSON geometry](https://datatracker.ietf.org/doc/html/rfc7946#page-7) objec
        #
        #   @param properties [NextbillionSDK::Models::IsochroneComputeResponse::Feature::Properties] An object with details of how the isochrone contour can be drawn on a map.
        #
        #   @param type [String] Type of the GeoJSON object. Its value is Feature as per the [GeoJSON standard](h

        # @see NextbillionSDK::Models::IsochroneComputeResponse::Feature#geometry
        class Geometry < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute coordinates
          #   An array of coordinate points, in [longitude,latitude] format representing the
          #   isochrone contour line.
          #
          #   @return [Array<Float>, nil]
          optional :coordinates, NextbillionSDK::Internal::Type::ArrayOf[Float]

          # @!attribute type
          #   Type of the geoJSON geometry.
          #
          #   @return [String, nil]
          optional :type, String

          # @!method initialize(coordinates: nil, type: nil)
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::IsochroneComputeResponse::Feature::Geometry} for more
          #   details.
          #
          #   A [GeoJSON geometry](https://datatracker.ietf.org/doc/html/rfc7946#page-7)
          #   object with details of the contour line.
          #
          #   @param coordinates [Array<Float>] An array of coordinate points, in [longitude,latitude] format representing the i
          #
          #   @param type [String] Type of the geoJSON geometry.
        end

        # @see NextbillionSDK::Models::IsochroneComputeResponse::Feature#properties
        class Properties < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute color
          #   The hex code of the color of the isochrone contour line
          #
          #   @return [String, nil]
          optional :color, String

          # @!attribute contour
          #   The value of the metric used in this contour. See the metric property to
          #   determine whether this is a time or distance contour. When the metric is time
          #   this value denotes the travel time in minutes and when the metric is distance
          #   this value denotes the travel distance in kilometers.
          #
          #   @return [Float, nil]
          optional :contour, Float

          # @!attribute fill
          #   The hex code for the fill color of the isochrone contour line.
          #
          #   @return [String, nil]
          optional :fill, String

          # @!attribute fill_color
          #   The hex code for the fill color of the isochrone contour line
          #
          #   @return [String, nil]
          optional :fill_color, String, api_name: :fillColor

          # @!attribute fill_opacity
          #   The fill opacity for the isochrone contour line. It is a float value starting
          #   from 0.0 with a max value of 1.0. Higher number indicates a higher fill opacity.
          #
          #   @return [Float, nil]
          optional :fill_opacity, Float, api_name: :fillOpacity

          # @!attribute metric
          #   The metric that the contour represents - either distance or time
          #
          #   @return [String, nil]
          optional :metric, String

          # @!attribute opacity
          #   The opacity of the isochrone contour line. It is a float value starting from 0.0
          #   with a max value of 1.0. Higher number indicates a higher line opacity
          #
          #   @return [Float, nil]
          optional :opacity, Float

          # @!method initialize(color: nil, contour: nil, fill: nil, fill_color: nil, fill_opacity: nil, metric: nil, opacity: nil)
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::IsochroneComputeResponse::Feature::Properties} for more
          #   details.
          #
          #   An object with details of how the isochrone contour can be drawn on a map.
          #
          #   @param color [String] The hex code of the color of the isochrone contour line
          #
          #   @param contour [Float] The value of the metric used in this contour. See the metric property to determi
          #
          #   @param fill [String] The hex code for the fill color of the isochrone contour line.
          #
          #   @param fill_color [String] The hex code for the fill color of the isochrone contour line
          #
          #   @param fill_opacity [Float] The fill opacity for the isochrone contour line. It is a float value starting fr
          #
          #   @param metric [String] The metric that the contour represents - either distance or time
          #
          #   @param opacity [Float] The opacity of the isochrone contour line. It is a float value starting from 0.0
        end
      end
    end
  end
end
