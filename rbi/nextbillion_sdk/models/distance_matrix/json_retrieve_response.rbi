# typed: strong

module NextbillionSDK
  module Models
    module DistanceMatrix
      class JsonRetrieveResponse < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Models::DistanceMatrix::JsonRetrieveResponse,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # Displays the error message in case of a failed request or operation. Please note
        # that this parameter is not returned in the response in case of a successful
        # request.
        sig { returns(T.nilable(String)) }
        attr_reader :msg

        sig { params(msg: String).void }
        attr_writer :msg

        # Container object for a response with an array of arrays structure.
        sig do
          returns(
            T.nilable(
              T::Array[
                NextbillionSDK::Models::DistanceMatrix::JsonRetrieveResponse::Row
              ]
            )
          )
        end
        attr_reader :rows

        sig do
          params(
            rows:
              T::Array[
                NextbillionSDK::Models::DistanceMatrix::JsonRetrieveResponse::Row::OrHash
              ]
          ).void
        end
        attr_writer :rows

        # A string indicating the state of the response. On normal responses, the value
        # will be Ok. Indicative HTTP error codes are returned for different errors. See
        # the [API Errors Codes](#api-error-codes) section below for more information.
        sig { returns(T.nilable(String)) }
        attr_reader :status

        sig { params(status: String).void }
        attr_writer :status

        sig do
          params(
            msg: String,
            rows:
              T::Array[
                NextbillionSDK::Models::DistanceMatrix::JsonRetrieveResponse::Row::OrHash
              ],
            status: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Displays the error message in case of a failed request or operation. Please note
          # that this parameter is not returned in the response in case of a successful
          # request.
          msg: nil,
          # Container object for a response with an array of arrays structure.
          rows: nil,
          # A string indicating the state of the response. On normal responses, the value
          # will be Ok. Indicative HTTP error codes are returned for different errors. See
          # the [API Errors Codes](#api-error-codes) section below for more information.
          status: nil
        )
        end

        sig do
          override.returns(
            {
              msg: String,
              rows:
                T::Array[
                  NextbillionSDK::Models::DistanceMatrix::JsonRetrieveResponse::Row
                ],
              status: String
            }
          )
        end
        def to_hash
        end

        class Row < NextbillionSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                NextbillionSDK::Models::DistanceMatrix::JsonRetrieveResponse::Row,
                NextbillionSDK::Internal::AnyHash
              )
            end

          # An array of objects. Each elements array corresponds to a single origins
          # coordinate and contains objects with distance and duration values for each of
          # the destinations. The details in the first elements array correspond to the
          # first origins point and the first object corresponds to the first destinations
          # point and so on.
          sig do
            returns(
              T.nilable(
                T::Array[
                  NextbillionSDK::Models::DistanceMatrix::JsonRetrieveResponse::Row::Element
                ]
              )
            )
          end
          attr_reader :elements

          sig do
            params(
              elements:
                T::Array[
                  NextbillionSDK::Models::DistanceMatrix::JsonRetrieveResponse::Row::Element::OrHash
                ]
            ).void
          end
          attr_writer :elements

          sig do
            params(
              elements:
                T::Array[
                  NextbillionSDK::Models::DistanceMatrix::JsonRetrieveResponse::Row::Element::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # An array of objects. Each elements array corresponds to a single origins
            # coordinate and contains objects with distance and duration values for each of
            # the destinations. The details in the first elements array correspond to the
            # first origins point and the first object corresponds to the first destinations
            # point and so on.
            elements: nil
          )
          end

          sig do
            override.returns(
              {
                elements:
                  T::Array[
                    NextbillionSDK::Models::DistanceMatrix::JsonRetrieveResponse::Row::Element
                  ]
              }
            )
          end
          def to_hash
          end

          class Element < NextbillionSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  NextbillionSDK::Models::DistanceMatrix::JsonRetrieveResponse::Row::Element,
                  NextbillionSDK::Internal::AnyHash
                )
              end

            # Distance of the route from an origin to a destination, in meters.
            sig { returns(T.nilable(Float)) }
            attr_reader :distance

            sig { params(distance: Float).void }
            attr_writer :distance

            # Duration of the trip from an origin to a destination, in seconds.
            sig { returns(T.nilable(Float)) }
            attr_reader :duration

            sig { params(duration: Float).void }
            attr_writer :duration

            sig do
              params(distance: Float, duration: Float).returns(T.attached_class)
            end
            def self.new(
              # Distance of the route from an origin to a destination, in meters.
              distance: nil,
              # Duration of the trip from an origin to a destination, in seconds.
              duration: nil
            )
            end

            sig { override.returns({ distance: Float, duration: Float }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
