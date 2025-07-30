# typed: strong

module Nextbillionai
  class Client < Nextbillionai::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    sig { returns(String) }
    attr_reader :api_key

    sig { returns(Nextbillionai::Resources::Fleetify) }
    attr_reader :fleetify

    sig { returns(Nextbillionai::Resources::Skynet) }
    attr_reader :skynet

    sig { returns(Nextbillionai::Resources::Geocode) }
    attr_reader :geocode

    sig { returns(Nextbillionai::Resources::Optimization) }
    attr_reader :optimization

    sig { returns(Nextbillionai::Resources::Geofence) }
    attr_reader :geofence

    sig { returns(Nextbillionai::Resources::Discover) }
    attr_reader :discover

    sig { returns(Nextbillionai::Resources::Browse) }
    attr_reader :browse

    sig { returns(Nextbillionai::Resources::Mdm) }
    attr_reader :mdm

    sig { returns(Nextbillionai::Resources::Isochrone) }
    attr_reader :isochrone

    sig { returns(Nextbillionai::Resources::Restrictions) }
    attr_reader :restrictions

    sig { returns(Nextbillionai::Resources::RestrictionsItems) }
    attr_reader :restrictions_items

    sig { returns(Nextbillionai::Resources::DistanceMatrix) }
    attr_reader :distance_matrix

    sig { returns(Nextbillionai::Resources::Autocomplete) }
    attr_reader :autocomplete

    sig { returns(Nextbillionai::Resources::Navigation) }
    attr_reader :navigation

    sig { returns(Nextbillionai::Resources::Map) }
    attr_reader :map

    sig { returns(Nextbillionai::Resources::Autosuggest) }
    attr_reader :autosuggest

    sig { returns(Nextbillionai::Resources::Directions) }
    attr_reader :directions

    sig { returns(Nextbillionai::Resources::Batch) }
    attr_reader :batch

    sig { returns(Nextbillionai::Resources::Multigeocode) }
    attr_reader :multigeocode

    sig { returns(Nextbillionai::Resources::Revgeocode) }
    attr_reader :revgeocode

    sig { returns(Nextbillionai::Resources::RouteReport) }
    attr_reader :route_report

    sig { returns(Nextbillionai::Resources::SnapToRoads) }
    attr_reader :snap_to_roads

    sig { returns(Nextbillionai::Resources::Postalcode) }
    attr_reader :postalcode

    sig { returns(Nextbillionai::Resources::Areas) }
    attr_reader :areas

    sig { returns(Nextbillionai::Resources::Lookup) }
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
      max_retries: Nextbillionai::Client::DEFAULT_MAX_RETRIES,
      timeout: Nextbillionai::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: Nextbillionai::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: Nextbillionai::Client::DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
