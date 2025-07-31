# typed: strong

module NextbillionSDK
  module Models
    class IsochroneComputeResponse < NextbillionSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            NextbillionSDK::Models::IsochroneComputeResponse,
            NextbillionSDK::Internal::AnyHash
          )
        end

      # A
      # [GeoJSON FeatureCollection](https://datatracker.ietf.org/doc/html/rfc7946#section-3.3)
      # object with details of the isochrone contours. Each `feature` object in this
      # collection represents an isochrone.
      sig do
        returns(
          T.nilable(
            T::Array[NextbillionSDK::Models::IsochroneComputeResponse::Feature]
          )
        )
      end
      attr_reader :features

      sig do
        params(
          features:
            T::Array[
              NextbillionSDK::Models::IsochroneComputeResponse::Feature::OrHash
            ]
        ).void
      end
      attr_writer :features

      # Displays the error message in case of a failed request or operation. Please note
      # that this parameter is not returned in the response in case of a successful
      # request.
      sig { returns(T.nilable(String)) }
      attr_reader :msg

      sig { params(msg: String).void }
      attr_writer :msg

      # A string indicating the state of the response. On normal responses, the value
      # will be `Ok`. Indicative HTTP error codes are returned for different errors. See
      # the [API Errors Codes](#api-error-codes) section below for more information.
      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { params(status: String).void }
      attr_writer :status

      # Type of the GeoJSON object. As prescribed in
      # [GeoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946#section-1.4),
      # its value is `FeatureCollection` as the `feature` property contains a list of
      # geoJSON feature objects.
      sig { returns(T.nilable(String)) }
      attr_reader :type

      sig { params(type: String).void }
      attr_writer :type

      sig do
        params(
          features:
            T::Array[
              NextbillionSDK::Models::IsochroneComputeResponse::Feature::OrHash
            ],
          msg: String,
          status: String,
          type: String
        ).returns(T.attached_class)
      end
      def self.new(
        # A
        # [GeoJSON FeatureCollection](https://datatracker.ietf.org/doc/html/rfc7946#section-3.3)
        # object with details of the isochrone contours. Each `feature` object in this
        # collection represents an isochrone.
        features: nil,
        # Displays the error message in case of a failed request or operation. Please note
        # that this parameter is not returned in the response in case of a successful
        # request.
        msg: nil,
        # A string indicating the state of the response. On normal responses, the value
        # will be `Ok`. Indicative HTTP error codes are returned for different errors. See
        # the [API Errors Codes](#api-error-codes) section below for more information.
        status: nil,
        # Type of the GeoJSON object. As prescribed in
        # [GeoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946#section-1.4),
        # its value is `FeatureCollection` as the `feature` property contains a list of
        # geoJSON feature objects.
        type: nil
      )
      end

      sig do
        override.returns(
          {
            features:
              T::Array[
                NextbillionSDK::Models::IsochroneComputeResponse::Feature
              ],
            msg: String,
            status: String,
            type: String
          }
        )
      end
      def to_hash
      end

      class Feature < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Models::IsochroneComputeResponse::Feature,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # A [GeoJSON geometry](https://datatracker.ietf.org/doc/html/rfc7946#page-7)
        # object with details of the contour line.
        sig do
          returns(
            T.nilable(
              NextbillionSDK::Models::IsochroneComputeResponse::Feature::Geometry
            )
          )
        end
        attr_reader :geometry

        sig do
          params(
            geometry:
              NextbillionSDK::Models::IsochroneComputeResponse::Feature::Geometry::OrHash
          ).void
        end
        attr_writer :geometry

        # An object with details of how the isochrone contour can be drawn on a map.
        sig do
          returns(
            T.nilable(
              NextbillionSDK::Models::IsochroneComputeResponse::Feature::Properties
            )
          )
        end
        attr_reader :properties

        sig do
          params(
            properties:
              NextbillionSDK::Models::IsochroneComputeResponse::Feature::Properties::OrHash
          ).void
        end
        attr_writer :properties

        # Type of the GeoJSON object. Its value is `Feature` as per the
        # [GeoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946#section-1.4)
        # object.
        sig { returns(T.nilable(String)) }
        attr_reader :type

        sig { params(type: String).void }
        attr_writer :type

        sig do
          params(
            geometry:
              NextbillionSDK::Models::IsochroneComputeResponse::Feature::Geometry::OrHash,
            properties:
              NextbillionSDK::Models::IsochroneComputeResponse::Feature::Properties::OrHash,
            type: String
          ).returns(T.attached_class)
        end
        def self.new(
          # A [GeoJSON geometry](https://datatracker.ietf.org/doc/html/rfc7946#page-7)
          # object with details of the contour line.
          geometry: nil,
          # An object with details of how the isochrone contour can be drawn on a map.
          properties: nil,
          # Type of the GeoJSON object. Its value is `Feature` as per the
          # [GeoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946#section-1.4)
          # object.
          type: nil
        )
        end

        sig do
          override.returns(
            {
              geometry:
                NextbillionSDK::Models::IsochroneComputeResponse::Feature::Geometry,
              properties:
                NextbillionSDK::Models::IsochroneComputeResponse::Feature::Properties,
              type: String
            }
          )
        end
        def to_hash
        end

        class Geometry < NextbillionSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                NextbillionSDK::Models::IsochroneComputeResponse::Feature::Geometry,
                NextbillionSDK::Internal::AnyHash
              )
            end

          # An array of coordinate points, in [longitude,latitude] format representing the
          # isochrone contour line.
          sig { returns(T.nilable(T::Array[Float])) }
          attr_reader :coordinates

          sig { params(coordinates: T::Array[Float]).void }
          attr_writer :coordinates

          # Type of the geoJSON geometry.
          sig { returns(T.nilable(String)) }
          attr_reader :type

          sig { params(type: String).void }
          attr_writer :type

          # A [GeoJSON geometry](https://datatracker.ietf.org/doc/html/rfc7946#page-7)
          # object with details of the contour line.
          sig do
            params(coordinates: T::Array[Float], type: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # An array of coordinate points, in [longitude,latitude] format representing the
            # isochrone contour line.
            coordinates: nil,
            # Type of the geoJSON geometry.
            type: nil
          )
          end

          sig do
            override.returns({ coordinates: T::Array[Float], type: String })
          end
          def to_hash
          end
        end

        class Properties < NextbillionSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                NextbillionSDK::Models::IsochroneComputeResponse::Feature::Properties,
                NextbillionSDK::Internal::AnyHash
              )
            end

          # The hex code of the color of the isochrone contour line
          sig { returns(T.nilable(String)) }
          attr_reader :color

          sig { params(color: String).void }
          attr_writer :color

          # The value of the metric used in this contour. See the `metric` property to
          # determine whether this is a `time` or `distance` contour. When the `metric` is
          # `time` this value denotes the travel time in minutes and when the `metric` is
          # `distance` this value denotes the travel distance in kilometers.
          sig { returns(T.nilable(Float)) }
          attr_reader :contour

          sig { params(contour: Float).void }
          attr_writer :contour

          # The hex code for the fill color of the isochrone contour line.
          sig { returns(T.nilable(String)) }
          attr_reader :fill

          sig { params(fill: String).void }
          attr_writer :fill

          # The hex code for the fill color of the isochrone contour line
          sig { returns(T.nilable(String)) }
          attr_reader :fill_color

          sig { params(fill_color: String).void }
          attr_writer :fill_color

          # The fill opacity for the isochrone contour line. It is a float value starting
          # from 0.0 with a max value of 1.0. Higher number indicates a higher fill opacity.
          sig { returns(T.nilable(Float)) }
          attr_reader :fill_opacity

          sig { params(fill_opacity: Float).void }
          attr_writer :fill_opacity

          # The metric that the contour represents - either `distance` or `time`
          sig { returns(T.nilable(String)) }
          attr_reader :metric

          sig { params(metric: String).void }
          attr_writer :metric

          # The opacity of the isochrone contour line. It is a float value starting from 0.0
          # with a max value of 1.0. Higher number indicates a higher line opacity
          sig { returns(T.nilable(Float)) }
          attr_reader :opacity

          sig { params(opacity: Float).void }
          attr_writer :opacity

          # An object with details of how the isochrone contour can be drawn on a map.
          sig do
            params(
              color: String,
              contour: Float,
              fill: String,
              fill_color: String,
              fill_opacity: Float,
              metric: String,
              opacity: Float
            ).returns(T.attached_class)
          end
          def self.new(
            # The hex code of the color of the isochrone contour line
            color: nil,
            # The value of the metric used in this contour. See the `metric` property to
            # determine whether this is a `time` or `distance` contour. When the `metric` is
            # `time` this value denotes the travel time in minutes and when the `metric` is
            # `distance` this value denotes the travel distance in kilometers.
            contour: nil,
            # The hex code for the fill color of the isochrone contour line.
            fill: nil,
            # The hex code for the fill color of the isochrone contour line
            fill_color: nil,
            # The fill opacity for the isochrone contour line. It is a float value starting
            # from 0.0 with a max value of 1.0. Higher number indicates a higher fill opacity.
            fill_opacity: nil,
            # The metric that the contour represents - either `distance` or `time`
            metric: nil,
            # The opacity of the isochrone contour line. It is a float value starting from 0.0
            # with a max value of 1.0. Higher number indicates a higher line opacity
            opacity: nil
          )
          end

          sig do
            override.returns(
              {
                color: String,
                contour: Float,
                fill: String,
                fill_color: String,
                fill_opacity: Float,
                metric: String,
                opacity: Float
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
