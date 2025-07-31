# typed: strong

module NextbillionSDK
  module Models
    class GeofenceListParams < NextbillionSDK::Internal::Type::BaseModel
      extend NextbillionSDK::Internal::Type::RequestParameters::Converter
      include NextbillionSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            NextbillionSDK::GeofenceListParams,
            NextbillionSDK::Internal::AnyHash
          )
        end

      # A key is a unique identifier that is required to authenticate a request to the
      # API.
      sig { returns(String) }
      attr_accessor :key

      # Denotes page number. Use this along with the `ps` parameter to implement
      # pagination for your searched results. This parameter does not have a maximum
      # limit but would return an empty response in case a higher value is provided when
      # the result-set itself is smaller.
      sig { returns(T.nilable(Integer)) }
      attr_reader :pn

      sig { params(pn: Integer).void }
      attr_writer :pn

      # Denotes number of search results per page. Use this along with the `pn`
      # parameter to implement pagination for your searched results.
      sig { returns(T.nilable(Integer)) }
      attr_reader :ps

      sig { params(ps: Integer).void }
      attr_writer :ps

      # Comma (`,`) separated list of `tags` which will be used to filter the geofences.
      #
      # Please note only the geofences which have all the `tags` added to this parameter
      # will be included in the result. This parameter can accept a string with a
      # maximum length of 256 characters.
      sig { returns(T.nilable(String)) }
      attr_reader :tags

      sig { params(tags: String).void }
      attr_writer :tags

      sig do
        params(
          key: String,
          pn: Integer,
          ps: Integer,
          tags: String,
          request_options: NextbillionSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        key:,
        # Denotes page number. Use this along with the `ps` parameter to implement
        # pagination for your searched results. This parameter does not have a maximum
        # limit but would return an empty response in case a higher value is provided when
        # the result-set itself is smaller.
        pn: nil,
        # Denotes number of search results per page. Use this along with the `pn`
        # parameter to implement pagination for your searched results.
        ps: nil,
        # Comma (`,`) separated list of `tags` which will be used to filter the geofences.
        #
        # Please note only the geofences which have all the `tags` added to this parameter
        # will be included in the result. This parameter can accept a string with a
        # maximum length of 256 characters.
        tags: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            key: String,
            pn: Integer,
            ps: Integer,
            tags: String,
            request_options: NextbillionSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
