# typed: strong

module NextbillionSDK
  module Resources
    class Multigeocode
      class Place
        # The "Add Place" method allows users to create custom places
        #
        # Add place method provides the flexibility to create custom places in a way that
        # suits your business needs. The newly created place and its attributes can be
        # added to custom (proprietary) dataset - to the effect of building your own
        # places dataset (s) - or, to a default dataset. Overcome inaccurate ‘POI’ details
        # from default search provider by creating custom, highly accurate ‘POIs’.
        sig do
          params(
            key: String,
            place:
              T::Array[
                NextbillionSDK::Multigeocode::PlaceCreateParams::Place::OrHash
              ],
            data_source:
              NextbillionSDK::Multigeocode::PlaceCreateParams::DataSource::OrHash,
            force: T::Boolean,
            score: Integer,
            request_options: NextbillionSDK::RequestOptions::OrHash
          ).returns(NextbillionSDK::Models::Multigeocode::PlaceCreateResponse)
        end
        def create(
          # Query param: A key is a unique identifier that is required to authenticate a
          # request to the API.
          key:,
          # Body param: This parameter represents the place details, including geographical
          # information, address and other related information.
          place:,
          # Body param: It contains information about the dataset that returns the specific
          # result
          data_source: nil,
          # Body param: When 2 places are located within 100 meters of each other and have
          # more than 90% of matching attributes (at least 11 out of 12 attributes in the
          # “place” object), they will be considered duplicates and any requests to add such
          # a new place would be rejected. Set force=true to override this duplicate check.
          # You can use this to create closely located POIs. For instance, places inside a
          # mall, university or a government building etc.
          force: nil,
          # Body param: Search score of the place. This is calculated based on how ‘richly’
          # the place is defined. For instance, a place with - street name, city, state and
          # country attributes set might be ranked lower than a place which has values of -
          # house, building, street name, city, state and country attributes set. The score
          # determines the rank of the place among search results. You can also use this
          # field to set a custom score as per its relevance to rank it among the search
          # results from multiple data sources.
          score: nil,
          request_options: {}
        )
        end

        # Use this method to get the details of previously created custom places using its
        # NextBillion ID.
        sig do
          params(
            doc_id: String,
            key: String,
            request_options: NextbillionSDK::RequestOptions::OrHash
          ).returns(NextbillionSDK::Models::Multigeocode::PlaceRetrieveResponse)
        end
        def retrieve(
          # Unique NextBillion ID of the location to be looked up.
          doc_id,
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          request_options: {}
        )
        end

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
        sig do
          params(
            doc_id: String,
            key: String,
            data_source:
              NextbillionSDK::Multigeocode::PlaceUpdateParams::DataSource::OrHash,
            place: T::Array[NextbillionSDK::Multigeocode::PlaceItem::OrHash],
            score: Integer,
            request_options: NextbillionSDK::RequestOptions::OrHash
          ).returns(NextbillionSDK::Models::Multigeocode::PlaceUpdateResponse)
        end
        def update(
          # Path param: Unique NextBillion ID of the location to be updated.
          doc_id,
          # Query param: A key is a unique identifier that is required to authenticate a
          # request to the API.
          key:,
          # Body param: dataSource values can be updated to enhance or prioritize the search
          # results to better suit specific business use cases.
          data_source: nil,
          # Body param: This parameter represents the place details, including geographical
          # information, address and other related information.
          place: nil,
          # Body param: Search score of the place. This is calculated based on how ‘richly’
          # the place is defined. For instance, a place with street name, city, state and
          # country attributes set might be ranked lower than a place which has values of
          # house, building, street name, city, state and country attributes set. The score
          # determines the rank of the place among search results. You can also use this
          # field to set a custom score as per its relevance to rank it among the search
          # results from multiple data sources.
          score: nil,
          request_options: {}
        )
        end

        # The "Delete Place" method enables businesses to delete a previously created
        # place
        #
        # Use this method to delete a previously created place. Please note that the place
        # associated with the specified docID only would be deleted. As a result, once a
        # place is deleted, the search API can still return valid results from the default
        # datasets or others, if present.
        sig do
          params(
            doc_id: String,
            key: String,
            request_options: NextbillionSDK::RequestOptions::OrHash
          ).returns(NextbillionSDK::Models::Multigeocode::PlaceDeleteResponse)
        end
        def delete(
          # Unique NextBillion ID of the location to be deleted
          doc_id,
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: NextbillionSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
