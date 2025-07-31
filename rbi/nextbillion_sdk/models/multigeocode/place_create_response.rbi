# typed: strong

module NextbillionSDK
  module Models
    module Multigeocode
      class PlaceCreateResponse < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Models::Multigeocode::PlaceCreateResponse,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # A unique NextBillion DocID will be created for the POI. Use this ID to search
        # this place through the “Get Place” method, to update attributes or ‘status’
        # through the “Update Place” method or delete it using the “Delete Place” method.
        sig { returns(T.nilable(String)) }
        attr_reader :doc_id

        sig { params(doc_id: String).void }
        attr_writer :doc_id

        sig { params(doc_id: String).returns(T.attached_class) }
        def self.new(
          # A unique NextBillion DocID will be created for the POI. Use this ID to search
          # this place through the “Get Place” method, to update attributes or ‘status’
          # through the “Update Place” method or delete it using the “Delete Place” method.
          doc_id: nil
        )
        end

        sig { override.returns({ doc_id: String }) }
        def to_hash
        end
      end
    end
  end
end
