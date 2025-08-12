# frozen_string_literal: true

require_relative "../test_helper"

class Nextbillionai::Test::Resources::DiscoverTest < Nextbillionai::Test::ResourceTest
  def test_retrieve_required_params
    skip("Prism tests are disabled")

    response = @nextbillion_sdk.discover.retrieve(key: "key=API_KEY", q: "q=125, Berliner, berlin")

    assert_pattern do
      response => Nextbillionai::Models::DiscoverRetrieveResponse
    end

    assert_pattern do
      response => {
        items: ^(Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::DiscoverRetrieveResponse::Item]) | nil
      }
    end
  end
end
