# frozen_string_literal: true

module NextbillionSDK
  class Client < NextbillionSDK::Internal::Transport::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60.0

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # @return [String]
    attr_reader :api_key

    # @return [NextbillionSDK::Resources::Fleetify]
    attr_reader :fleetify

    # @return [NextbillionSDK::Resources::Skynet]
    attr_reader :skynet

    # @return [NextbillionSDK::Resources::Geocode]
    attr_reader :geocode

    # @return [NextbillionSDK::Resources::Optimization]
    attr_reader :optimization

    # @return [NextbillionSDK::Resources::Geofence]
    attr_reader :geofence

    # @return [NextbillionSDK::Resources::Discover]
    attr_reader :discover

    # @return [NextbillionSDK::Resources::Browse]
    attr_reader :browse

    # @return [NextbillionSDK::Resources::Mdm]
    attr_reader :mdm

    # @return [NextbillionSDK::Resources::Isochrone]
    attr_reader :isochrone

    # @return [NextbillionSDK::Resources::Restrictions]
    attr_reader :restrictions

    # @return [NextbillionSDK::Resources::RestrictionsItems]
    attr_reader :restrictions_items

    # @return [NextbillionSDK::Resources::Distancematrix]
    attr_reader :distancematrix

    # @return [NextbillionSDK::Resources::Autocomplete]
    attr_reader :autocomplete

    # @return [NextbillionSDK::Resources::Navigation]
    attr_reader :navigation

    # @return [NextbillionSDK::Resources::Map]
    attr_reader :map

    # @return [NextbillionSDK::Resources::Autosuggest]
    attr_reader :autosuggest

    # @return [NextbillionSDK::Resources::Directions]
    attr_reader :directions

    # @return [NextbillionSDK::Resources::Batch]
    attr_reader :batch

    # @return [NextbillionSDK::Resources::Multigeocode]
    attr_reader :multigeocode

    # @return [NextbillionSDK::Resources::Revgeocode]
    attr_reader :revgeocode

    # @return [NextbillionSDK::Resources::RouteReport]
    attr_reader :route_report

    # @return [NextbillionSDK::Resources::SnapToRoads]
    attr_reader :snap_to_roads

    # @return [NextbillionSDK::Resources::Postalcode]
    attr_reader :postalcode

    # @return [NextbillionSDK::Resources::Areas]
    attr_reader :areas

    # @return [NextbillionSDK::Resources::Lookup]
    attr_reader :lookup

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_query
      {"key" => @api_key}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param api_key [String, nil] Defaults to `ENV["NEXTBILLION_SDK_API_KEY"]`
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g.,
    # `"https://api.example.com/v2/"`. Defaults to `ENV["NEXTBILLION_SDK_BASE_URL"]`
    #
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    #
    # @param timeout [Float]
    #
    # @param initial_retry_delay [Float]
    #
    # @param max_retry_delay [Float]
    def initialize(
      api_key: ENV["NEXTBILLION_SDK_API_KEY"],
      base_url: ENV["NEXTBILLION_SDK_BASE_URL"],
      max_retries: self.class::DEFAULT_MAX_RETRIES,
      timeout: self.class::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: self.class::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: self.class::DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= "https://api.nextbillion.io"

      if api_key.nil?
        raise ArgumentError.new("api_key is required, and can be set via environ: \"NEXTBILLION_SDK_API_KEY\"")
      end

      @api_key = api_key.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay
      )

      @fleetify = NextbillionSDK::Resources::Fleetify.new(client: self)
      @skynet = NextbillionSDK::Resources::Skynet.new(client: self)
      @geocode = NextbillionSDK::Resources::Geocode.new(client: self)
      @optimization = NextbillionSDK::Resources::Optimization.new(client: self)
      @geofence = NextbillionSDK::Resources::Geofence.new(client: self)
      @discover = NextbillionSDK::Resources::Discover.new(client: self)
      @browse = NextbillionSDK::Resources::Browse.new(client: self)
      @mdm = NextbillionSDK::Resources::Mdm.new(client: self)
      @isochrone = NextbillionSDK::Resources::Isochrone.new(client: self)
      @restrictions = NextbillionSDK::Resources::Restrictions.new(client: self)
      @restrictions_items = NextbillionSDK::Resources::RestrictionsItems.new(client: self)
      @distancematrix = NextbillionSDK::Resources::Distancematrix.new(client: self)
      @autocomplete = NextbillionSDK::Resources::Autocomplete.new(client: self)
      @navigation = NextbillionSDK::Resources::Navigation.new(client: self)
      @map = NextbillionSDK::Resources::Map.new(client: self)
      @autosuggest = NextbillionSDK::Resources::Autosuggest.new(client: self)
      @directions = NextbillionSDK::Resources::Directions.new(client: self)
      @batch = NextbillionSDK::Resources::Batch.new(client: self)
      @multigeocode = NextbillionSDK::Resources::Multigeocode.new(client: self)
      @revgeocode = NextbillionSDK::Resources::Revgeocode.new(client: self)
      @route_report = NextbillionSDK::Resources::RouteReport.new(client: self)
      @snap_to_roads = NextbillionSDK::Resources::SnapToRoads.new(client: self)
      @postalcode = NextbillionSDK::Resources::Postalcode.new(client: self)
      @areas = NextbillionSDK::Resources::Areas.new(client: self)
      @lookup = NextbillionSDK::Resources::Lookup.new(client: self)
    end
  end
end
