# typed: strong

module Nextbillionai
  module Models
    module Geofence
      class ConsolePreviewResponse < Nextbillionai::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Models::Geofence::ConsolePreviewResponse,
              Nextbillionai::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Nextbillionai::Models::Geofence::ConsolePreviewResponse::Data
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Nextbillionai::Models::Geofence::ConsolePreviewResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig { returns(T.nilable(String)) }
        attr_reader :message

        sig { params(message: String).void }
        attr_writer :message

        sig do
          params(
            data:
              Nextbillionai::Models::Geofence::ConsolePreviewResponse::Data::OrHash,
            message: String
          ).returns(T.attached_class)
        end
        def self.new(data: nil, message: nil)
        end

        sig do
          override.returns(
            {
              data:
                Nextbillionai::Models::Geofence::ConsolePreviewResponse::Data,
              message: String
            }
          )
        end
        def to_hash
        end

        class Data < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Models::Geofence::ConsolePreviewResponse::Data,
                Nextbillionai::Internal::AnyHash
              )
            end

          # An object with geoJSON details of the geofence. The contents of this object
          # follow the [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
          sig { returns(T.nilable(Nextbillionai::Geofence::PolygonGeojson)) }
          attr_reader :geojson

          sig do
            params(
              geojson: Nextbillionai::Geofence::PolygonGeojson::OrHash
            ).void
          end
          attr_writer :geojson

          sig do
            params(
              geojson: Nextbillionai::Geofence::PolygonGeojson::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # An object with geoJSON details of the geofence. The contents of this object
            # follow the [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
            geojson: nil
          )
          end

          sig do
            override.returns(
              { geojson: Nextbillionai::Geofence::PolygonGeojson }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
