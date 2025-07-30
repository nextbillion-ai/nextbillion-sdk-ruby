# typed: strong

module Nextbillionai
  module Models
    class RestrictionUpdateParams < Nextbillionai::Models::RichGroupRequest
      extend Nextbillionai::Internal::Type::RequestParameters::Converter
      include Nextbillionai::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Nextbillionai::RestrictionUpdateParams,
            Nextbillionai::Internal::AnyHash
          )
        end

      # A key is a unique identifier that is required to authenticate a request to the
      # API.
      sig { returns(String) }
      attr_accessor :key

      # Use this parameter to decide the format for specifying the geofence coordinates.
      # If true, then the coordinates of geofence can be specified as
      # "latitude,longitude" format, otherwise they should be specified in
      # "longitude,latitude" format.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :latlon

      sig { params(latlon: T::Boolean).void }
      attr_writer :latlon

      sig do
        params(
          key: String,
          latlon: T::Boolean,
          request_options: Nextbillionai::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        key:,
        # Use this parameter to decide the format for specifying the geofence coordinates.
        # If true, then the coordinates of geofence can be specified as
        # "latitude,longitude" format, otherwise they should be specified in
        # "longitude,latitude" format.
        latlon: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            key: String,
            latlon: T::Boolean,
            request_options: Nextbillionai::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
