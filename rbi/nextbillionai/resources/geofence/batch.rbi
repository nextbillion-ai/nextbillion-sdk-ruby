# typed: strong

module Nextbillionai
  module Resources
    class Geofence
      class Batch
        # Batch Creation of Geofence
        sig do
          params(
            key: String,
            geofences: T::Array[Nextbillionai::GeofenceEntityCreate::OrHash],
            request_options: Nextbillionai::RequestOptions::OrHash
          ).returns(Nextbillionai::Models::Geofence::BatchCreateResponse)
        end
        def create(
          # Query param: A key is a unique identifier that is required to authenticate a
          # request to the API.
          key:,
          # Body param: An array of objects to collect the details of the multiple geofences
          # that need to be created.
          geofences: nil,
          request_options: {}
        )
        end

        # Batch Query of Geofence
        sig do
          params(
            ids: String,
            key: String,
            request_options: Nextbillionai::RequestOptions::OrHash
          ).returns(Nextbillionai::Models::Geofence::BatchListResponse)
        end
        def list(
          # Comma(`,`) separated list of IDs of the geofences to be searched.
          ids:,
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          request_options: {}
        )
        end

        # Delete Batch Geofence
        sig do
          params(
            key: String,
            ids: T::Array[String],
            request_options: Nextbillionai::RequestOptions::OrHash
          ).returns(Nextbillionai::Skynet::SimpleResp)
        end
        def delete(
          # Query param: A key is a unique identifier that is required to authenticate a
          # request to the API.
          key:,
          # Body param: An array IDs of the geofence to be deleted. These are the IDs that
          # were generated/provided at the time of creating the respective geofences.
          ids: nil,
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
