# frozen_string_literal: true

require_relative "../test_helper"

class Nextbillionai::Test::Resources::LookupTest < Nextbillionai::Test::ResourceTest
  def test_by_id_required_params
    skip("Prism tests are disabled")

    response = @nextbillion_sdk.lookup.by_id(id: "id", key: "key=API_KEY")

    assert_pattern do
      response => Nextbillionai::Models::LookupByIDResponse
    end

    assert_pattern do
      response => {
        items: ^(Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::LookupByIDResponse::Item]) | nil
      }
    end
  end
end
