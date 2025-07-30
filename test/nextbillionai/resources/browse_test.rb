# frozen_string_literal: true

require_relative "../test_helper"

class Nextbillionai::Test::Resources::BrowseTest < Nextbillionai::Test::ResourceTest
  def test_search_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.browse.search(key: "key=API_KEY")

    assert_pattern do
      response => Nextbillionai::Models::BrowseSearchResponse
    end

    assert_pattern do
      response => {
        items: ^(Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::BrowseSearchResponse::Item]) | nil
      }
    end
  end
end
