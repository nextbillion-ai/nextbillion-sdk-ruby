# typed: strong

module NextbillionSDK
  module Models
    class PostalcodeRetrieveCoordinatesResponse < NextbillionSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse,
            NextbillionSDK::Internal::AnyHash
          )
        end

      # An object that contains details about the place that was provided in the input.
      sig do
        returns(
          T.nilable(
            NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places
          )
        )
      end
      attr_reader :places

      sig do
        params(
          places:
            NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::OrHash
        ).void
      end
      attr_writer :places

      # Returns a message, in case the input provided triggers any warnings.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :warning

      sig { params(warning: T::Array[String]).void }
      attr_writer :warning

      sig do
        params(
          places:
            NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::OrHash,
          warning: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        # An object that contains details about the place that was provided in the input.
        places: nil,
        # Returns a message, in case the input provided triggers any warnings.
        warning: nil
      )
      end

      sig do
        override.returns(
          {
            places:
              NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places,
            warning: T::Array[String]
          }
        )
      end
      def to_hash
      end

      class Places < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # Returns the address of the postalcode returned.
        sig { returns(T.nilable(String)) }
        attr_reader :address

        sig { params(address: String).void }
        attr_writer :address

        # An object containing the boundary details of the postal code area. This object
        # will not be returned in case the boundary information of the postal code
        # provided is not available (only for selected countries).
        #
        # Please note the contents of this object will change based on the format field in
        # the input. When the format field is not present in the input this object would
        # contain multipolygon - polygon - points objects depending on the boundary of the
        # given postal code. When the format field is present in the input, then the
        # contents of this object would match the
        # [geojson format and standard](https://datatracker.ietf.org/doc/html/rfc7946).
        sig do
          returns(
            T.nilable(
              NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary
            )
          )
        end
        attr_reader :boundary

        sig do
          params(
            boundary:
              NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary::OrHash
          ).void
        end
        attr_writer :boundary

        # Name of the country containing the geographic coordinate point / postal code
        # provided in the input request.
        sig { returns(T.nilable(String)) }
        attr_reader :country

        sig { params(country: String).void }
        attr_writer :country

        # Returns the [alpha-3 ISO code](https://www.iban.com/country-codes) of the
        # country containing the postalcode returned.
        sig { returns(T.nilable(String)) }
        attr_reader :country_code

        sig { params(country_code: String).void }
        attr_writer :country_code

        # This property is returned only when the API is requested to fetch the postal
        # code containing the location coordinate provided in the at input parameter.
        # distance denotes the straight line distance, in meters, from the requested
        # location coordinate to the postal code centroid.
        sig { returns(T.nilable(Float)) }
        attr_reader :distance

        sig { params(distance: Float).void }
        attr_writer :distance

        # Name of the district or region containing the geographic coordinate point /
        # postal code provided in the input request.
        sig { returns(T.nilable(String)) }
        attr_reader :district

        sig { params(district: String).void }
        attr_writer :district

        # Refers to the geographic coordinate denoting the center of the postal code in
        # latitude, longitude format.
        sig do
          returns(
            T.nilable(
              NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Geopoint
            )
          )
        end
        attr_reader :geopoint

        sig do
          params(
            geopoint:
              NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Geopoint::OrHash
          ).void
        end
        attr_writer :geopoint

        # Returns the postal code associated with the requested geographic coordinate
        # point or the postal code itself as provided in the input API request.
        sig { returns(T.nilable(String)) }
        attr_reader :postalcode

        sig { params(postalcode: String).void }
        attr_writer :postalcode

        # Name of the state or province containing the geographic coordinate point /
        # postal code provided in the input request.
        sig { returns(T.nilable(String)) }
        attr_reader :state

        sig { params(state: String).void }
        attr_writer :state

        # Name of the sub-district or sub-region containing the postal code or geographic
        # coordinate point / postal code provided in the input request
        sig { returns(T.nilable(String)) }
        attr_reader :subdistrict

        sig { params(subdistrict: String).void }
        attr_writer :subdistrict

        # An object that contains details about the place that was provided in the input.
        sig do
          params(
            address: String,
            boundary:
              NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary::OrHash,
            country: String,
            country_code: String,
            distance: Float,
            district: String,
            geopoint:
              NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Geopoint::OrHash,
            postalcode: String,
            state: String,
            subdistrict: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Returns the address of the postalcode returned.
          address: nil,
          # An object containing the boundary details of the postal code area. This object
          # will not be returned in case the boundary information of the postal code
          # provided is not available (only for selected countries).
          #
          # Please note the contents of this object will change based on the format field in
          # the input. When the format field is not present in the input this object would
          # contain multipolygon - polygon - points objects depending on the boundary of the
          # given postal code. When the format field is present in the input, then the
          # contents of this object would match the
          # [geojson format and standard](https://datatracker.ietf.org/doc/html/rfc7946).
          boundary: nil,
          # Name of the country containing the geographic coordinate point / postal code
          # provided in the input request.
          country: nil,
          # Returns the [alpha-3 ISO code](https://www.iban.com/country-codes) of the
          # country containing the postalcode returned.
          country_code: nil,
          # This property is returned only when the API is requested to fetch the postal
          # code containing the location coordinate provided in the at input parameter.
          # distance denotes the straight line distance, in meters, from the requested
          # location coordinate to the postal code centroid.
          distance: nil,
          # Name of the district or region containing the geographic coordinate point /
          # postal code provided in the input request.
          district: nil,
          # Refers to the geographic coordinate denoting the center of the postal code in
          # latitude, longitude format.
          geopoint: nil,
          # Returns the postal code associated with the requested geographic coordinate
          # point or the postal code itself as provided in the input API request.
          postalcode: nil,
          # Name of the state or province containing the geographic coordinate point /
          # postal code provided in the input request.
          state: nil,
          # Name of the sub-district or sub-region containing the postal code or geographic
          # coordinate point / postal code provided in the input request
          subdistrict: nil
        )
        end

        sig do
          override.returns(
            {
              address: String,
              boundary:
                NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary,
              country: String,
              country_code: String,
              distance: Float,
              district: String,
              geopoint:
                NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Geopoint,
              postalcode: String,
              state: String,
              subdistrict: String
            }
          )
        end
        def to_hash
        end

        class Boundary < NextbillionSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary,
                NextbillionSDK::Internal::AnyHash
              )
            end

          # An object with geoJSON details of the boundary. This object is returned when the
          # format field is set to geojson in the input request, otherwise it is not present
          # in the response. The contents of this object follow the
          # [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
          sig do
            returns(
              T.nilable(
                NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary::Geometry
              )
            )
          end
          attr_reader :geometry

          sig do
            params(
              geometry:
                NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary::Geometry::OrHash
            ).void
          end
          attr_writer :geometry

          # An array of objects containing information about all the polygons forming the
          # postal code area. In case, the postal code area is formed by multiple polygons
          # not containing each other, a matching count of polygon objects will be returned.
          #
          # Please note that this object is returned only when format field is not specified
          # in the input, otherwise it is not present in the response.
          sig do
            returns(
              T.nilable(
                T::Array[
                  NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary::Multipolygon
                ]
              )
            )
          end
          attr_reader :multipolygon

          sig do
            params(
              multipolygon:
                T::Array[
                  NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary::Multipolygon::OrHash
                ]
            ).void
          end
          attr_writer :multipolygon

          # Property associated with the geoJSON shape.
          sig { returns(T.nilable(String)) }
          attr_reader :properties

          sig { params(properties: String).void }
          attr_writer :properties

          # Type of the geoJSON object. This parameter is returned when the format field is
          # set to geojson in the input request, otherwise it is not present in the
          # response. The contents of this object follow the
          # [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
          sig { returns(T.nilable(String)) }
          attr_reader :type

          sig { params(type: String).void }
          attr_writer :type

          # An object containing the boundary details of the postal code area. This object
          # will not be returned in case the boundary information of the postal code
          # provided is not available (only for selected countries).
          #
          # Please note the contents of this object will change based on the format field in
          # the input. When the format field is not present in the input this object would
          # contain multipolygon - polygon - points objects depending on the boundary of the
          # given postal code. When the format field is present in the input, then the
          # contents of this object would match the
          # [geojson format and standard](https://datatracker.ietf.org/doc/html/rfc7946).
          sig do
            params(
              geometry:
                NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary::Geometry::OrHash,
              multipolygon:
                T::Array[
                  NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary::Multipolygon::OrHash
                ],
              properties: String,
              type: String
            ).returns(T.attached_class)
          end
          def self.new(
            # An object with geoJSON details of the boundary. This object is returned when the
            # format field is set to geojson in the input request, otherwise it is not present
            # in the response. The contents of this object follow the
            # [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
            geometry: nil,
            # An array of objects containing information about all the polygons forming the
            # postal code area. In case, the postal code area is formed by multiple polygons
            # not containing each other, a matching count of polygon objects will be returned.
            #
            # Please note that this object is returned only when format field is not specified
            # in the input, otherwise it is not present in the response.
            multipolygon: nil,
            # Property associated with the geoJSON shape.
            properties: nil,
            # Type of the geoJSON object. This parameter is returned when the format field is
            # set to geojson in the input request, otherwise it is not present in the
            # response. The contents of this object follow the
            # [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
            type: nil
          )
          end

          sig do
            override.returns(
              {
                geometry:
                  NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary::Geometry,
                multipolygon:
                  T::Array[
                    NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary::Multipolygon
                  ],
                properties: String,
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
                  NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary::Geometry,
                  NextbillionSDK::Internal::AnyHash
                )
              end

            # An array of coordinates in the [longitude, latitude] format, representing the
            # coordinates points which lie on the boundary of the postal code area.
            sig { returns(T.nilable(T::Array[T::Array[T::Array[Float]]])) }
            attr_reader :coordinates

            sig do
              params(coordinates: T::Array[T::Array[T::Array[Float]]]).void
            end
            attr_writer :coordinates

            # Type of the geoJSON geometry.
            sig { returns(T.nilable(String)) }
            attr_reader :type

            sig { params(type: String).void }
            attr_writer :type

            # An object with geoJSON details of the boundary. This object is returned when the
            # format field is set to geojson in the input request, otherwise it is not present
            # in the response. The contents of this object follow the
            # [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
            sig do
              params(
                coordinates: T::Array[T::Array[T::Array[Float]]],
                type: String
              ).returns(T.attached_class)
            end
            def self.new(
              # An array of coordinates in the [longitude, latitude] format, representing the
              # coordinates points which lie on the boundary of the postal code area.
              coordinates: nil,
              # Type of the geoJSON geometry.
              type: nil
            )
            end

            sig do
              override.returns(
                {
                  coordinates: T::Array[T::Array[T::Array[Float]]],
                  type: String
                }
              )
            end
            def to_hash
            end
          end

          class Multipolygon < NextbillionSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary::Multipolygon,
                  NextbillionSDK::Internal::AnyHash
                )
              end

            # An object containing the details of a single polygon that is a part of the
            # postal code area. In case the postal code area contains other polygon(s), the
            # details of such polygon(s) would be returned through an array of points object.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary::Multipolygon::Polygon
                  ]
                )
              )
            end
            attr_reader :polygon

            sig do
              params(
                polygon:
                  T::Array[
                    NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary::Multipolygon::Polygon::OrHash
                  ]
              ).void
            end
            attr_writer :polygon

            sig do
              params(
                polygon:
                  T::Array[
                    NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary::Multipolygon::Polygon::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              # An object containing the details of a single polygon that is a part of the
              # postal code area. In case the postal code area contains other polygon(s), the
              # details of such polygon(s) would be returned through an array of points object.
              polygon: nil
            )
            end

            sig do
              override.returns(
                {
                  polygon:
                    T::Array[
                      NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary::Multipolygon::Polygon
                    ]
                }
              )
            end
            def to_hash
            end

            class Polygon < NextbillionSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary::Multipolygon::Polygon,
                    NextbillionSDK::Internal::AnyHash
                  )
                end

              # Represents an array of geographic coordinates that define a polygon boundary.
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary::Multipolygon::Polygon::Point
                    ]
                  )
                )
              end
              attr_reader :points

              sig do
                params(
                  points:
                    T::Array[
                      NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary::Multipolygon::Polygon::Point::OrHash
                    ]
                ).void
              end
              attr_writer :points

              sig do
                params(
                  points:
                    T::Array[
                      NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary::Multipolygon::Polygon::Point::OrHash
                    ]
                ).returns(T.attached_class)
              end
              def self.new(
                # Represents an array of geographic coordinates that define a polygon boundary.
                points: nil
              )
              end

              sig do
                override.returns(
                  {
                    points:
                      T::Array[
                        NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary::Multipolygon::Polygon::Point
                      ]
                  }
                )
              end
              def to_hash
              end

              class Point < NextbillionSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Boundary::Multipolygon::Polygon::Point,
                      NextbillionSDK::Internal::AnyHash
                    )
                  end

                # Latitude of the coordinate.
                sig { returns(T.nilable(Float)) }
                attr_reader :lat

                sig { params(lat: Float).void }
                attr_writer :lat

                # Longitude of the coordinate.
                sig { returns(T.nilable(Float)) }
                attr_reader :lng

                sig { params(lng: Float).void }
                attr_writer :lng

                sig { params(lat: Float, lng: Float).returns(T.attached_class) }
                def self.new(
                  # Latitude of the coordinate.
                  lat: nil,
                  # Longitude of the coordinate.
                  lng: nil
                )
                end

                sig { override.returns({ lat: Float, lng: Float }) }
                def to_hash
                end
              end
            end
          end
        end

        class Geopoint < NextbillionSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places::Geopoint,
                NextbillionSDK::Internal::AnyHash
              )
            end

          # Latitude of the location.
          sig { returns(T.nilable(Float)) }
          attr_reader :lat

          sig { params(lat: Float).void }
          attr_writer :lat

          # Longitude of the location.
          sig { returns(T.nilable(Float)) }
          attr_reader :lng

          sig { params(lng: Float).void }
          attr_writer :lng

          # Refers to the geographic coordinate denoting the center of the postal code in
          # latitude, longitude format.
          sig { params(lat: Float, lng: Float).returns(T.attached_class) }
          def self.new(
            # Latitude of the location.
            lat: nil,
            # Longitude of the location.
            lng: nil
          )
          end

          sig { override.returns({ lat: Float, lng: Float }) }
          def to_hash
          end
        end
      end
    end
  end
end
