# typed: strong

module NextbillionSDK
  class Client < NextbillionSDK::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    sig { returns(String) }
    attr_reader :api_key

    sig { returns(NextbillionSDK::Resources::Fleetify) }
    attr_reader :fleetify

    sig { returns(NextbillionSDK::Resources::Skynet) }
    attr_reader :skynet

    sig { returns(NextbillionSDK::Resources::Geocode) }
    attr_reader :geocode

    sig { returns(NextbillionSDK::Resources::Optimization) }
    attr_reader :optimization

    sig { returns(NextbillionSDK::Resources::Geofence) }
    attr_reader :geofence

    sig { returns(NextbillionSDK::Resources::Discover) }
    attr_reader :discover

    sig { returns(NextbillionSDK::Resources::Browse) }
    attr_reader :browse

    sig { returns(NextbillionSDK::Resources::Mdm) }
    attr_reader :mdm

    sig { returns(NextbillionSDK::Resources::Isochrone) }
    attr_reader :isochrone

    sig { returns(NextbillionSDK::Resources::Restrictions) }
    attr_reader :restrictions

    sig { returns(NextbillionSDK::Resources::RestrictionsItems) }
    attr_reader :restrictions_items

    sig { returns(NextbillionSDK::Resources::DistanceMatrix) }
    attr_reader :distance_matrix

    sig { returns(NextbillionSDK::Resources::Autocomplete) }
    attr_reader :autocomplete

    sig { returns(NextbillionSDK::Resources::Navigation) }
    attr_reader :navigation

    sig { returns(NextbillionSDK::Resources::Map) }
    attr_reader :map

    sig { returns(NextbillionSDK::Resources::Autosuggest) }
    attr_reader :autosuggest

    sig { returns(NextbillionSDK::Resources::Directions) }
    attr_reader :directions

    sig { returns(NextbillionSDK::Resources::Batch) }
    attr_reader :batch

    sig { returns(NextbillionSDK::Resources::Multigeocode) }
    attr_reader :multigeocode

    sig { returns(NextbillionSDK::Resources::Revgeocode) }
    attr_reader :revgeocode

    sig { returns(NextbillionSDK::Resources::RouteReport) }
    attr_reader :route_report

    sig { returns(NextbillionSDK::Resources::SnapToRoads) }
    attr_reader :snap_to_roads

    sig { returns(NextbillionSDK::Resources::Postalcode) }
    attr_reader :postalcode

    sig { returns(NextbillionSDK::Resources::Areas) }
    attr_reader :areas

    sig { returns(NextbillionSDK::Resources::Lookup) }
    attr_reader :lookup

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_query
    end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        api_key: T.nilable(String),
        base_url: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      ).returns(T.attached_class)
    end
    def self.new(
      # Defaults to `ENV["NEXTBILLION_SDK_API_KEY"]`
      api_key: ENV["NEXTBILLION_SDK_API_KEY"],
      # Override the default base URL for the API, e.g.,
      # `"https://api.example.com/v2/"`. Defaults to `ENV["NEXTBILLION_SDK_BASE_URL"]`
      base_url: ENV["NEXTBILLION_SDK_BASE_URL"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: NextbillionSDK::Client::DEFAULT_MAX_RETRIES,
      timeout: NextbillionSDK::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: NextbillionSDK::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: NextbillionSDK::Client::DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
