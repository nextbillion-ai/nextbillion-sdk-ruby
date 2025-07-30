# typed: strong

module Nextbillionai
  module Models
    class RouteReportCreateResponse < Nextbillionai::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Nextbillionai::Models::RouteReportCreateResponse,
            Nextbillionai::Internal::AnyHash
          )
        end

      # An array of objects returning encoded geometry of the routes. Each object
      # represents an individual route in the input.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :geometry

      sig { params(geometry: T::Array[String]).void }
      attr_writer :geometry

      # Returns the details of route segments in each state or country that the route
      # passes through. Each object represents an individual route in the input request.
      sig do
        returns(
          T.nilable(
            T::Array[Nextbillionai::Models::RouteReportCreateResponse::Mileage]
          )
        )
      end
      attr_reader :mileage

      sig do
        params(
          mileage:
            T::Array[
              Nextbillionai::Models::RouteReportCreateResponse::Mileage::OrHash
            ]
        ).void
      end
      attr_writer :mileage

      # Displays the error message in case of a failed request or operation. Please note
      # that this parameter is not returned in the response in case of a successful
      # request.
      sig { returns(T.nilable(String)) }
      attr_reader :msg

      sig { params(msg: String).void }
      attr_writer :msg

      # An array of objects returning a summary of the route with information about
      # tolls, bridges, tunnels, segments, maximum speeds and more. Each array
      # represents an individual route in the input request.
      sig do
        returns(
          T.nilable(
            T::Array[
              Nextbillionai::Models::RouteReportCreateResponse::RoadSummary
            ]
          )
        )
      end
      attr_reader :road_summary

      sig do
        params(
          road_summary:
            T::Array[
              Nextbillionai::Models::RouteReportCreateResponse::RoadSummary::OrHash
            ]
        ).void
      end
      attr_writer :road_summary

      # A string indicating the state of the response. On normal responses, the value
      # will be Ok. Indicative HTTP error codes are returned for different errors. See
      # the
      # [**API Errors Codes**](https://app.reapi.com/ws/hmx8aL45B5jjrJa8/p/vNNilNksLVz675pI/s/ealJmVGjTQv4x5Wi/edit/path/VYzo7gOlRsQQZo0U#api-error-codes)
      # section below for more information.
      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { params(status: String).void }
      attr_writer :status

      sig do
        params(
          geometry: T::Array[String],
          mileage:
            T::Array[
              Nextbillionai::Models::RouteReportCreateResponse::Mileage::OrHash
            ],
          msg: String,
          road_summary:
            T::Array[
              Nextbillionai::Models::RouteReportCreateResponse::RoadSummary::OrHash
            ],
          status: String
        ).returns(T.attached_class)
      end
      def self.new(
        # An array of objects returning encoded geometry of the routes. Each object
        # represents an individual route in the input.
        geometry: nil,
        # Returns the details of route segments in each state or country that the route
        # passes through. Each object represents an individual route in the input request.
        mileage: nil,
        # Displays the error message in case of a failed request or operation. Please note
        # that this parameter is not returned in the response in case of a successful
        # request.
        msg: nil,
        # An array of objects returning a summary of the route with information about
        # tolls, bridges, tunnels, segments, maximum speeds and more. Each array
        # represents an individual route in the input request.
        road_summary: nil,
        # A string indicating the state of the response. On normal responses, the value
        # will be Ok. Indicative HTTP error codes are returned for different errors. See
        # the
        # [**API Errors Codes**](https://app.reapi.com/ws/hmx8aL45B5jjrJa8/p/vNNilNksLVz675pI/s/ealJmVGjTQv4x5Wi/edit/path/VYzo7gOlRsQQZo0U#api-error-codes)
        # section below for more information.
        status: nil
      )
      end

      sig do
        override.returns(
          {
            geometry: T::Array[String],
            mileage:
              T::Array[
                Nextbillionai::Models::RouteReportCreateResponse::Mileage
              ],
            msg: String,
            road_summary:
              T::Array[
                Nextbillionai::Models::RouteReportCreateResponse::RoadSummary
              ],
            status: String
          }
        )
      end
      def to_hash
      end

      class Mileage < Nextbillionai::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Models::RouteReportCreateResponse::Mileage,
              Nextbillionai::Internal::AnyHash
            )
          end

        # Returns the details of road segments that the route covers in different states
        # and countries.
        sig do
          returns(
            T.nilable(
              Nextbillionai::Models::RouteReportCreateResponse::Mileage::Segment
            )
          )
        end
        attr_reader :segment

        sig do
          params(
            segment:
              Nextbillionai::Models::RouteReportCreateResponse::Mileage::Segment::OrHash
          ).void
        end
        attr_writer :segment

        # Returns a summary of distances that the route covers in different states and
        # countries.
        sig do
          returns(
            T.nilable(
              Nextbillionai::Models::RouteReportCreateResponse::Mileage::Summary
            )
          )
        end
        attr_reader :summary

        sig do
          params(
            summary:
              Nextbillionai::Models::RouteReportCreateResponse::Mileage::Summary::OrHash
          ).void
        end
        attr_writer :summary

        sig do
          params(
            segment:
              Nextbillionai::Models::RouteReportCreateResponse::Mileage::Segment::OrHash,
            summary:
              Nextbillionai::Models::RouteReportCreateResponse::Mileage::Summary::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Returns the details of road segments that the route covers in different states
          # and countries.
          segment: nil,
          # Returns a summary of distances that the route covers in different states and
          # countries.
          summary: nil
        )
        end

        sig do
          override.returns(
            {
              segment:
                Nextbillionai::Models::RouteReportCreateResponse::Mileage::Segment,
              summary:
                Nextbillionai::Models::RouteReportCreateResponse::Mileage::Summary
            }
          )
        end
        def to_hash
        end

        class Segment < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Models::RouteReportCreateResponse::Mileage::Segment,
                Nextbillionai::Internal::AnyHash
              )
            end

          # An array of objects containing country-wise break up of the route segments. Each
          # object returns the segment details of a different country.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Nextbillionai::Models::RouteReportCreateResponse::Mileage::Segment::Country
                ]
              )
            )
          end
          attr_reader :country

          sig do
            params(
              country:
                T::Array[
                  Nextbillionai::Models::RouteReportCreateResponse::Mileage::Segment::Country::OrHash
                ]
            ).void
          end
          attr_writer :country

          # An array of objects containing state-wise break up of the route segments. Each
          # object returns the segment details of a different state.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Nextbillionai::Models::RouteReportCreateResponse::Mileage::Segment::State
                ]
              )
            )
          end
          attr_reader :state

          sig do
            params(
              state:
                T::Array[
                  Nextbillionai::Models::RouteReportCreateResponse::Mileage::Segment::State::OrHash
                ]
            ).void
          end
          attr_writer :state

          # Returns the details of road segments that the route covers in different states
          # and countries.
          sig do
            params(
              country:
                T::Array[
                  Nextbillionai::Models::RouteReportCreateResponse::Mileage::Segment::Country::OrHash
                ],
              state:
                T::Array[
                  Nextbillionai::Models::RouteReportCreateResponse::Mileage::Segment::State::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # An array of objects containing country-wise break up of the route segments. Each
            # object returns the segment details of a different country.
            country: nil,
            # An array of objects containing state-wise break up of the route segments. Each
            # object returns the segment details of a different state.
            state: nil
          )
          end

          sig do
            override.returns(
              {
                country:
                  T::Array[
                    Nextbillionai::Models::RouteReportCreateResponse::Mileage::Segment::Country
                  ],
                state:
                  T::Array[
                    Nextbillionai::Models::RouteReportCreateResponse::Mileage::Segment::State
                  ]
              }
            )
          end
          def to_hash
          end

          class Country < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Models::RouteReportCreateResponse::Mileage::Segment::Country,
                  Nextbillionai::Internal::AnyHash
                )
              end

            # Represents the total distance of this segment, in meters.
            sig { returns(T.nilable(Float)) }
            attr_reader :distance

            sig { params(distance: Float).void }
            attr_writer :distance

            # Represents a sequence of ‘n’ consecutive vertices in the route geometry starting
            # from the offset, forming a continuous section of route with a distance indicated
            # in distancefield.
            sig { returns(T.nilable(Integer)) }
            attr_reader :length

            sig { params(length: Integer).void }
            attr_writer :length

            # Represents the index value of the vertex of current segment's starting point in
            # route geometry. First vertex in the route geometry has an offset of 0.
            sig { returns(T.nilable(Integer)) }
            attr_reader :offset

            sig { params(offset: Integer).void }
            attr_writer :offset

            # Returns the name of the country in which the segment lies.
            sig { returns(T.nilable(String)) }
            attr_reader :value

            sig { params(value: String).void }
            attr_writer :value

            sig do
              params(
                distance: Float,
                length: Integer,
                offset: Integer,
                value: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Represents the total distance of this segment, in meters.
              distance: nil,
              # Represents a sequence of ‘n’ consecutive vertices in the route geometry starting
              # from the offset, forming a continuous section of route with a distance indicated
              # in distancefield.
              length: nil,
              # Represents the index value of the vertex of current segment's starting point in
              # route geometry. First vertex in the route geometry has an offset of 0.
              offset: nil,
              # Returns the name of the country in which the segment lies.
              value: nil
            )
            end

            sig do
              override.returns(
                {
                  distance: Float,
                  length: Integer,
                  offset: Integer,
                  value: String
                }
              )
            end
            def to_hash
            end
          end

          class State < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Models::RouteReportCreateResponse::Mileage::Segment::State,
                  Nextbillionai::Internal::AnyHash
                )
              end

            # Represents the real distance of this segment, in meters.
            sig { returns(T.nilable(Float)) }
            attr_reader :distance

            sig { params(distance: Float).void }
            attr_writer :distance

            # Represents a sequence of ‘n’ consecutive vertices in the route geometry starting
            # from the offset, forming a continuous section of route with a distance indicated
            # in distancefield.
            sig { returns(T.nilable(Integer)) }
            attr_reader :length

            sig { params(length: Integer).void }
            attr_writer :length

            # Represents the index value of the vertex of current segment's starting point in
            # route geometry. First vertex in the route geometry has an offset of 0.
            sig { returns(T.nilable(Integer)) }
            attr_reader :offset

            sig { params(offset: Integer).void }
            attr_writer :offset

            # Returns the name of the state in which the segment lies.
            sig { returns(T.nilable(String)) }
            attr_reader :value

            sig { params(value: String).void }
            attr_writer :value

            sig do
              params(
                distance: Float,
                length: Integer,
                offset: Integer,
                value: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Represents the real distance of this segment, in meters.
              distance: nil,
              # Represents a sequence of ‘n’ consecutive vertices in the route geometry starting
              # from the offset, forming a continuous section of route with a distance indicated
              # in distancefield.
              length: nil,
              # Represents the index value of the vertex of current segment's starting point in
              # route geometry. First vertex in the route geometry has an offset of 0.
              offset: nil,
              # Returns the name of the state in which the segment lies.
              value: nil
            )
            end

            sig do
              override.returns(
                {
                  distance: Float,
                  length: Integer,
                  offset: Integer,
                  value: String
                }
              )
            end
            def to_hash
            end
          end
        end

        class Summary < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Models::RouteReportCreateResponse::Mileage::Summary,
                Nextbillionai::Internal::AnyHash
              )
            end

          # A break up of country-wise distances that the route covers in key:value pair
          # format.
          sig { returns(T.nilable(T.anything)) }
          attr_reader :country

          sig { params(country: T.anything).void }
          attr_writer :country

          # A break up of state-wise distances that the route covers specified in key:value
          # pair format.
          sig { returns(T.nilable(T.anything)) }
          attr_reader :state

          sig { params(state: T.anything).void }
          attr_writer :state

          # Returns a summary of distances that the route covers in different states and
          # countries.
          sig do
            params(country: T.anything, state: T.anything).returns(
              T.attached_class
            )
          end
          def self.new(
            # A break up of country-wise distances that the route covers in key:value pair
            # format.
            country: nil,
            # A break up of state-wise distances that the route covers specified in key:value
            # pair format.
            state: nil
          )
          end

          sig { override.returns({ country: T.anything, state: T.anything }) }
          def to_hash
          end
        end
      end

      class RoadSummary < Nextbillionai::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Models::RouteReportCreateResponse::RoadSummary,
              Nextbillionai::Internal::AnyHash
            )
          end

        # Returns the segment-wise road class and max speed information of the route.
        sig do
          returns(
            T.nilable(
              Nextbillionai::Models::RouteReportCreateResponse::RoadSummary::Segment
            )
          )
        end
        attr_reader :segment

        sig do
          params(
            segment:
              Nextbillionai::Models::RouteReportCreateResponse::RoadSummary::Segment::OrHash
          ).void
        end
        attr_writer :segment

        # Returns an overview of the route with information about trip distance, duration
        # and road class details among others.
        sig do
          returns(
            T.nilable(
              Nextbillionai::Models::RouteReportCreateResponse::RoadSummary::Summary
            )
          )
        end
        attr_reader :summary

        sig do
          params(
            summary:
              Nextbillionai::Models::RouteReportCreateResponse::RoadSummary::Summary::OrHash
          ).void
        end
        attr_writer :summary

        sig do
          params(
            segment:
              Nextbillionai::Models::RouteReportCreateResponse::RoadSummary::Segment::OrHash,
            summary:
              Nextbillionai::Models::RouteReportCreateResponse::RoadSummary::Summary::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Returns the segment-wise road class and max speed information of the route.
          segment: nil,
          # Returns an overview of the route with information about trip distance, duration
          # and road class details among others.
          summary: nil
        )
        end

        sig do
          override.returns(
            {
              segment:
                Nextbillionai::Models::RouteReportCreateResponse::RoadSummary::Segment,
              summary:
                Nextbillionai::Models::RouteReportCreateResponse::RoadSummary::Summary
            }
          )
        end
        def to_hash
        end

        class Segment < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Models::RouteReportCreateResponse::RoadSummary::Segment,
                Nextbillionai::Internal::AnyHash
              )
            end

          # An array of objects returning the maximum speed of different segments that the
          # route goes through.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Nextbillionai::Models::RouteReportCreateResponse::RoadSummary::Segment::MaxSpeed
                ]
              )
            )
          end
          attr_reader :max_speed

          sig do
            params(
              max_speed:
                T::Array[
                  Nextbillionai::Models::RouteReportCreateResponse::RoadSummary::Segment::MaxSpeed::OrHash
                ]
            ).void
          end
          attr_writer :max_speed

          # An array of objects returning the details of road segments belonging to
          # different road classes that the route goes through. Each object refers to a
          # unique road class.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Nextbillionai::Models::RouteReportCreateResponse::RoadSummary::Segment::RoadClass
                ]
              )
            )
          end
          attr_reader :road_class

          sig do
            params(
              road_class:
                T::Array[
                  Nextbillionai::Models::RouteReportCreateResponse::RoadSummary::Segment::RoadClass::OrHash
                ]
            ).void
          end
          attr_writer :road_class

          # Returns the segment-wise road class and max speed information of the route.
          sig do
            params(
              max_speed:
                T::Array[
                  Nextbillionai::Models::RouteReportCreateResponse::RoadSummary::Segment::MaxSpeed::OrHash
                ],
              road_class:
                T::Array[
                  Nextbillionai::Models::RouteReportCreateResponse::RoadSummary::Segment::RoadClass::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # An array of objects returning the maximum speed of different segments that the
            # route goes through.
            max_speed: nil,
            # An array of objects returning the details of road segments belonging to
            # different road classes that the route goes through. Each object refers to a
            # unique road class.
            road_class: nil
          )
          end

          sig do
            override.returns(
              {
                max_speed:
                  T::Array[
                    Nextbillionai::Models::RouteReportCreateResponse::RoadSummary::Segment::MaxSpeed
                  ],
                road_class:
                  T::Array[
                    Nextbillionai::Models::RouteReportCreateResponse::RoadSummary::Segment::RoadClass
                  ]
              }
            )
          end
          def to_hash
          end

          class MaxSpeed < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Models::RouteReportCreateResponse::RoadSummary::Segment::MaxSpeed,
                  Nextbillionai::Internal::AnyHash
                )
              end

            # Returns the total distance of this segment, in meters.
            sig { returns(T.nilable(Integer)) }
            attr_reader :distance

            sig { params(distance: Integer).void }
            attr_writer :distance

            # Represents a sequence of ‘n’ consecutive vertices in the route geometry starting
            # from the offset, forming a continuous section of route where the maximum speed
            # is same and is indicated in value.
            sig { returns(T.nilable(Integer)) }
            attr_reader :length

            sig { params(length: Integer).void }
            attr_writer :length

            # Represents the index value of the vertex of current segment's starting point in
            # route geometry. First vertex in the route geometry has an offset of 0.
            sig { returns(T.nilable(Integer)) }
            attr_reader :offset

            sig { params(offset: Integer).void }
            attr_writer :offset

            # Denotes the maximum speed of this segment, in kilometers per hour. - A value of
            # “-1” indicates that the speed is unlimited for this road segment. - A value of
            # “0” indicates that there is no information about the maximum speed for this road
            # segment.
            sig { returns(T.nilable(Integer)) }
            attr_reader :value

            sig { params(value: Integer).void }
            attr_writer :value

            sig do
              params(
                distance: Integer,
                length: Integer,
                offset: Integer,
                value: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              # Returns the total distance of this segment, in meters.
              distance: nil,
              # Represents a sequence of ‘n’ consecutive vertices in the route geometry starting
              # from the offset, forming a continuous section of route where the maximum speed
              # is same and is indicated in value.
              length: nil,
              # Represents the index value of the vertex of current segment's starting point in
              # route geometry. First vertex in the route geometry has an offset of 0.
              offset: nil,
              # Denotes the maximum speed of this segment, in kilometers per hour. - A value of
              # “-1” indicates that the speed is unlimited for this road segment. - A value of
              # “0” indicates that there is no information about the maximum speed for this road
              # segment.
              value: nil
            )
            end

            sig do
              override.returns(
                {
                  distance: Integer,
                  length: Integer,
                  offset: Integer,
                  value: Integer
                }
              )
            end
            def to_hash
            end
          end

          class RoadClass < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Models::RouteReportCreateResponse::RoadSummary::Segment::RoadClass,
                  Nextbillionai::Internal::AnyHash
                )
              end

            # Returns the total distance of this segment, in meters.
            sig { returns(T.nilable(Integer)) }
            attr_reader :distance

            sig { params(distance: Integer).void }
            attr_writer :distance

            # Represents a sequence of ‘n’ consecutive vertices in the route geometry starting
            # from the offset, forming a continuous section of route with a distance indicated
            # in distancefield.
            sig { returns(T.nilable(Integer)) }
            attr_reader :length

            sig { params(length: Integer).void }
            attr_writer :length

            # Represents the index value of the vertex of current segment's starting point in
            # route geometry. First vertex in the route geometry has an offset of 0.
            sig { returns(T.nilable(Integer)) }
            attr_reader :offset

            sig { params(offset: Integer).void }
            attr_writer :offset

            # Returns the road class name to which the segment belongs.
            sig { returns(T.nilable(String)) }
            attr_reader :value

            sig { params(value: String).void }
            attr_writer :value

            sig do
              params(
                distance: Integer,
                length: Integer,
                offset: Integer,
                value: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Returns the total distance of this segment, in meters.
              distance: nil,
              # Represents a sequence of ‘n’ consecutive vertices in the route geometry starting
              # from the offset, forming a continuous section of route with a distance indicated
              # in distancefield.
              length: nil,
              # Represents the index value of the vertex of current segment's starting point in
              # route geometry. First vertex in the route geometry has an offset of 0.
              offset: nil,
              # Returns the road class name to which the segment belongs.
              value: nil
            )
            end

            sig do
              override.returns(
                {
                  distance: Integer,
                  length: Integer,
                  offset: Integer,
                  value: String
                }
              )
            end
            def to_hash
            end
          end
        end

        class Summary < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Models::RouteReportCreateResponse::RoadSummary::Summary,
                Nextbillionai::Internal::AnyHash
              )
            end

          # Returns the total distance of the route , in meters.
          sig { returns(T.nilable(Float)) }
          attr_reader :distance

          sig { params(distance: Float).void }
          attr_writer :distance

          # Returns the total duration of the route, in seconds.
          sig { returns(T.nilable(Float)) }
          attr_reader :duration

          sig { params(duration: Float).void }
          attr_writer :duration

          # A boolean value indicating if there are any bridges in the given route.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :has_bridge

          sig { params(has_bridge: T::Boolean).void }
          attr_writer :has_bridge

          # A boolean value indicating if there are any roundabouts in the given route.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :has_roundabout

          sig { params(has_roundabout: T::Boolean).void }
          attr_writer :has_roundabout

          # A boolean value indicating if there are any tolls in the given route.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :has_toll

          sig { params(has_toll: T::Boolean).void }
          attr_writer :has_toll

          # A boolean value indicating if there are any tunnels in the given route.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :has_tunnel

          sig { params(has_tunnel: T::Boolean).void }
          attr_writer :has_tunnel

          # An object with details about the different types of road classes that the route
          # goes through. Distance traversed on a given road class is also returned. The
          # contents of this object follow the key:value pair format.
          sig { returns(T.nilable(T.anything)) }
          attr_reader :road_class

          sig { params(road_class: T.anything).void }
          attr_writer :road_class

          # Returns the total distance travelled on toll roads. This field is present in the
          # response only when the has_toll property is true.
          sig { returns(T.nilable(Float)) }
          attr_reader :toll_distance

          sig { params(toll_distance: Float).void }
          attr_writer :toll_distance

          # Returns an overview of the route with information about trip distance, duration
          # and road class details among others.
          sig do
            params(
              distance: Float,
              duration: Float,
              has_bridge: T::Boolean,
              has_roundabout: T::Boolean,
              has_toll: T::Boolean,
              has_tunnel: T::Boolean,
              road_class: T.anything,
              toll_distance: Float
            ).returns(T.attached_class)
          end
          def self.new(
            # Returns the total distance of the route , in meters.
            distance: nil,
            # Returns the total duration of the route, in seconds.
            duration: nil,
            # A boolean value indicating if there are any bridges in the given route.
            has_bridge: nil,
            # A boolean value indicating if there are any roundabouts in the given route.
            has_roundabout: nil,
            # A boolean value indicating if there are any tolls in the given route.
            has_toll: nil,
            # A boolean value indicating if there are any tunnels in the given route.
            has_tunnel: nil,
            # An object with details about the different types of road classes that the route
            # goes through. Distance traversed on a given road class is also returned. The
            # contents of this object follow the key:value pair format.
            road_class: nil,
            # Returns the total distance travelled on toll roads. This field is present in the
            # response only when the has_toll property is true.
            toll_distance: nil
          )
          end

          sig do
            override.returns(
              {
                distance: Float,
                duration: Float,
                has_bridge: T::Boolean,
                has_roundabout: T::Boolean,
                has_toll: T::Boolean,
                has_tunnel: T::Boolean,
                road_class: T.anything,
                toll_distance: Float
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
