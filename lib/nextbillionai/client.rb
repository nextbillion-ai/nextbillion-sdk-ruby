# frozen_string_literal: true

module Nextbillionai
  class Client < Nextbillionai::Internal::Transport::BaseClient
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

    # @return [Nextbillionai::Resources::Fleetify]
    attr_reader :fleetify

    # @return [Nextbillionai::Resources::Skynet]
    attr_reader :skynet

    # @return [Nextbillionai::Resources::Geocode]
    attr_reader :geocode

    # @return [Nextbillionai::Resources::Optimization]
    attr_reader :optimization

    # @return [Nextbillionai::Resources::Geofence]
    attr_reader :geofence

    # @return [Nextbillionai::Resources::Discover]
    attr_reader :discover

    # @return [Nextbillionai::Resources::Browse]
    attr_reader :browse

    # @return [Nextbillionai::Resources::Mdm]
    attr_reader :mdm

    # @return [Nextbillionai::Resources::Isochrone]
    attr_reader :isochrone

    # @return [Nextbillionai::Resources::Restrictions]
    attr_reader :restrictions

    # @return [Nextbillionai::Resources::RestrictionsItems]
    attr_reader :restrictions_items

    # @return [Nextbillionai::Resources::DistanceMatrix]
    attr_reader :distance_matrix

    # @return [Nextbillionai::Resources::Autocomplete]
    attr_reader :autocomplete

    # @return [Nextbillionai::Resources::Navigation]
    attr_reader :navigation

    # @return [Nextbillionai::Resources::Map]
    attr_reader :map

    # @return [Nextbillionai::Resources::Autosuggest]
    attr_reader :autosuggest

    # @return [Nextbillionai::Resources::Directions]
    attr_reader :directions

    # @return [Nextbillionai::Resources::Batch]
    attr_reader :batch

    # @return [Nextbillionai::Resources::Multigeocode]
    attr_reader :multigeocode

    # @return [Nextbillionai::Resources::Revgeocode]
    attr_reader :revgeocode

    # @return [Nextbillionai::Resources::RouteReport]
    attr_reader :route_report

    # @return [Nextbillionai::Resources::SnapToRoads]
    attr_reader :snap_to_roads

    # @return [Nextbillionai::Resources::Postalcode]
    attr_reader :postalcode

    # @return [Nextbillionai::Resources::Lookup]
    attr_reader :lookup

    # @return [Nextbillionai::Resources::Areas]
    attr_reader :areas

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

      @fleetify = Nextbillionai::Resources::Fleetify.new(client: self)
      @skynet = Nextbillionai::Resources::Skynet.new(client: self)
      @geocode = Nextbillionai::Resources::Geocode.new(client: self)
      @optimization = Nextbillionai::Resources::Optimization.new(client: self)
      @geofence = Nextbillionai::Resources::Geofence.new(client: self)
      @discover = Nextbillionai::Resources::Discover.new(client: self)
      @browse = Nextbillionai::Resources::Browse.new(client: self)
      @mdm = Nextbillionai::Resources::Mdm.new(client: self)
      @isochrone = Nextbillionai::Resources::Isochrone.new(client: self)
      @restrictions = Nextbillionai::Resources::Restrictions.new(client: self)
      @restrictions_items = Nextbillionai::Resources::RestrictionsItems.new(client: self)
      @distance_matrix = Nextbillionai::Resources::DistanceMatrix.new(client: self)
      @autocomplete = Nextbillionai::Resources::Autocomplete.new(client: self)
      @navigation = Nextbillionai::Resources::Navigation.new(client: self)
      @map = Nextbillionai::Resources::Map.new(client: self)
      @autosuggest = Nextbillionai::Resources::Autosuggest.new(client: self)
      @directions = Nextbillionai::Resources::Directions.new(client: self)
      @batch = Nextbillionai::Resources::Batch.new(client: self)
      @multigeocode = Nextbillionai::Resources::Multigeocode.new(client: self)
      @revgeocode = Nextbillionai::Resources::Revgeocode.new(client: self)
      @route_report = Nextbillionai::Resources::RouteReport.new(client: self)
      @snap_to_roads = Nextbillionai::Resources::SnapToRoads.new(client: self)
      @postalcode = Nextbillionai::Resources::Postalcode.new(client: self)
      @lookup = Nextbillionai::Resources::Lookup.new(client: self)
      @areas = Nextbillionai::Resources::Areas.new(client: self)
    end
  end
end
