# typed: strong

module NextbillionSDK
  module Models
    class GeofenceContainsParams < NextbillionSDK::Internal::Type::BaseModel
      extend NextbillionSDK::Internal::Type::RequestParameters::Converter
      include NextbillionSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            NextbillionSDK::GeofenceContainsParams,
            NextbillionSDK::Internal::AnyHash
          )
        end

      # A key is a unique identifier that is required to authenticate a request to the
      # API.
      sig { returns(String) }
      attr_accessor :key

      # Pipe (|) separated coordinates, in [latitude,longitude] format, of the locations
      # to be searched against the geofences.
      sig { returns(String) }
      attr_accessor :locations

      # A `,` separated list geofence IDs against which the `locations` will be
      # searched. If not provided, then the 'locations' will be searched against all
      # your existing geofences.
      #
      # Maximum length of the string can be 256 characters.
      sig { returns(T.nilable(String)) }
      attr_reader :geofences

      sig { params(geofences: String).void }
      attr_writer :geofences

      # When `true`, an array with detailed information of geofences is returned. When
      # `false`, an array containing only the IDs of the geofences is returned.
      sig { returns(T.nilable(String)) }
      attr_reader :verbose

      sig { params(verbose: String).void }
      attr_writer :verbose

      sig do
        params(
          key: String,
          locations: String,
          geofences: String,
          verbose: String,
          request_options: NextbillionSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        key:,
        # Pipe (|) separated coordinates, in [latitude,longitude] format, of the locations
        # to be searched against the geofences.
        locations:,
        # A `,` separated list geofence IDs against which the `locations` will be
        # searched. If not provided, then the 'locations' will be searched against all
        # your existing geofences.
        #
        # Maximum length of the string can be 256 characters.
        geofences: nil,
        # When `true`, an array with detailed information of geofences is returned. When
        # `false`, an array containing only the IDs of the geofences is returned.
        verbose: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            key: String,
            locations: String,
            geofences: String,
            verbose: String,
            request_options: NextbillionSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
