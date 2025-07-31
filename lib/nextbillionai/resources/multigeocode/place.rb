# frozen_string_literal: true

module Nextbillionai
  module Resources
    class Multigeocode
      class Place
        # Some parameter documentations has been truncated, see
        # {Nextbillionai::Models::Multigeocode::PlaceCreateParams} for more details.
        #
        # The "Add Place" method allows users to create custom places
        #
        # Add place method provides the flexibility to create custom places in a way that
        # suits your business needs. The newly created place and its attributes can be
        # added to custom (proprietary) dataset - to the effect of building your own
        # places dataset (s) - or, to a default dataset. Overcome inaccurate ‘POI’ details
        # from default search provider by creating custom, highly accurate ‘POIs’.
        #
        # @overload create(key:, place:, data_source: nil, force: nil, score: nil, request_options: {})
        #
        # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
        #
        # @param place [Array<Nextbillionai::Models::Multigeocode::PlaceCreateParams::Place>] Body param: This parameter represents the place details, including geographical
        #
        # @param data_source [Nextbillionai::Models::Multigeocode::PlaceCreateParams::DataSource] Body param: It contains information about the dataset that returns the specific
        #
        # @param force [Boolean] Body param: When 2 places are located within 100 meters of each other and have m
        #
        # @param score [Integer] Body param: Search score of the place. This is calculated based on how ‘richly’
        #
        # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Nextbillionai::Models::Multigeocode::PlaceCreateResponse]
        #
        # @see Nextbillionai::Models::Multigeocode::PlaceCreateParams
        def create(params)
          parsed, options = Nextbillionai::Multigeocode::PlaceCreateParams.dump_request(params)
          query_params = [:key]
          @client.request(
            method: :post,
            path: "multigeocode/place",
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            model: Nextbillionai::Models::Multigeocode::PlaceCreateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Nextbillionai::Models::Multigeocode::PlaceRetrieveParams} for more details.
        #
        # Use this method to get the details of previously created custom places using its
        # NextBillion ID.
        #
        # @overload retrieve(doc_id, key:, request_options: {})
        #
        # @param doc_id [String] Unique NextBillion ID of the location to be looked up.
        #
        # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Nextbillionai::Models::Multigeocode::PlaceRetrieveResponse]
        #
        # @see Nextbillionai::Models::Multigeocode::PlaceRetrieveParams
        def retrieve(doc_id, params)
          parsed, options = Nextbillionai::Multigeocode::PlaceRetrieveParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["multigeocode/place/%1$s", doc_id],
            query: parsed,
            model: Nextbillionai::Models::Multigeocode::PlaceRetrieveResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Nextbillionai::Models::Multigeocode::PlaceUpdateParams} for more details.
        #
        # The "Update Place" method allows businesses to update the attributes of an
        # existing place.
        #
        # This method allows you to update the attributes of custom places. In effect,
        # updating a place replaces the current information in search results with the
        # updated information associated with the specific docID. Use this method to
        # enhance the accuracy/usability of your search results with respect to the
        # default dataset to suit your business needs.
        #
        # If you want to prioritize a particular result in your search results, update the
        # ‘score’ of that specific place.
        # Alternatively, you can block places which are no longer needed by setting their
        # status: ‘disable’.
        #
        # @overload update(doc_id, key:, data_source: nil, place: nil, score: nil, request_options: {})
        #
        # @param doc_id [String] Path param: Unique NextBillion ID of the location to be updated.
        #
        # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
        #
        # @param data_source [Nextbillionai::Models::Multigeocode::PlaceUpdateParams::DataSource] Body param: dataSource values can be updated to enhance or prioritize the search
        #
        # @param place [Array<Nextbillionai::Models::Multigeocode::PlaceItem>] Body param: This parameter represents the place details, including geographical
        #
        # @param score [Integer] Body param: Search score of the place. This is calculated based on how ‘richly’
        #
        # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Nextbillionai::Models::Multigeocode::PlaceUpdateResponse]
        #
        # @see Nextbillionai::Models::Multigeocode::PlaceUpdateParams
        def update(doc_id, params)
          parsed, options = Nextbillionai::Multigeocode::PlaceUpdateParams.dump_request(params)
          query_params = [:key]
          @client.request(
            method: :put,
            path: ["multigeocode/place/%1$s", doc_id],
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            model: Nextbillionai::Models::Multigeocode::PlaceUpdateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Nextbillionai::Models::Multigeocode::PlaceDeleteParams} for more details.
        #
        # The "Delete Place" method enables businesses to delete a previously created
        # place
        #
        # Use this method to delete a previously created place. Please note that the place
        # associated with the specified docID only would be deleted. As a result, once a
        # place is deleted, the search API can still return valid results from the default
        # datasets or others, if present.
        #
        # @overload delete(doc_id, key:, request_options: {})
        #
        # @param doc_id [String] Unique NextBillion ID of the location to be deleted
        #
        # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Nextbillionai::Models::Multigeocode::PlaceDeleteResponse]
        #
        # @see Nextbillionai::Models::Multigeocode::PlaceDeleteParams
        def delete(doc_id, params)
          parsed, options = Nextbillionai::Multigeocode::PlaceDeleteParams.dump_request(params)
          @client.request(
            method: :delete,
            path: ["multigeocode/place/%1$s", doc_id],
            query: parsed,
            model: Nextbillionai::Models::Multigeocode::PlaceDeleteResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Nextbillionai::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
