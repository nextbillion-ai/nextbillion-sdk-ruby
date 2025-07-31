# typed: strong

module Nextbillionai
  module Resources
    class RestrictionsItems
      # Get restriction items by bbox
      sig do
        params(
          max_lat: Float,
          max_lon: Float,
          min_lat: Float,
          min_lon: Float,
          group_id: Float,
          mode: Nextbillionai::RestrictionsItemListParams::Mode::OrSymbol,
          restriction_type:
            Nextbillionai::RestrictionsItemListParams::RestrictionType::OrSymbol,
          source: String,
          state: Nextbillionai::RestrictionsItemListParams::State::OrSymbol,
          status: Nextbillionai::RestrictionsItemListParams::Status::OrSymbol,
          request_options: Nextbillionai::RequestOptions::OrHash
        ).returns(
          T::Array[Nextbillionai::Models::RestrictionsItemListResponseItem]
        )
      end
      def list(
        max_lat:,
        max_lon:,
        min_lat:,
        min_lon:,
        group_id: nil,
        mode: nil,
        restriction_type: nil,
        source: nil,
        state: nil,
        status: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Nextbillionai::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
