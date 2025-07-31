# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Multigeocode
      # @see NextbillionSDK::Resources::Multigeocode::Place#create
      class PlaceCreateResponse < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute doc_id
        #   A unique NextBillion DocID will be created for the POI. Use this ID to search
        #   this place through the “Get Place” method, to update attributes or ‘status’
        #   through the “Update Place” method or delete it using the “Delete Place” method.
        #
        #   @return [String, nil]
        optional :doc_id, String, api_name: :docId

        # @!method initialize(doc_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::Multigeocode::PlaceCreateResponse} for more details.
        #
        #   @param doc_id [String] A unique NextBillion DocID will be created for the POI. Use this ID to search t
      end
    end
  end
end
