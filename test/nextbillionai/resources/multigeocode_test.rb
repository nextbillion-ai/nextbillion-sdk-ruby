# frozen_string_literal: true

require_relative "../test_helper"

class Nextbillionai::Test::Resources::MultigeocodeTest < Nextbillionai::Test::ResourceTest
  def test_search_required_params
    skip("Prism tests are disabled")

    response =
      @nextbillion_sdk.multigeocode.search(
        key: "key=API_KEY",
        at: {lat: 0, lng: 0},
        query: "“query”: “Taj Mahal”"
      )

    assert_pattern do
      response => Nextbillionai::Models::MultigeocodeSearchResponse
    end

    assert_pattern do
      response => {
        entities: ^(Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::MultigeocodeSearchResponse::Entity]) | nil
      }
    end
  end
end
