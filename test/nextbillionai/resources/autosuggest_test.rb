# frozen_string_literal: true

require_relative "../test_helper"

class Nextbillionai::Test::Resources::AutosuggestTest < Nextbillionai::Test::ResourceTest
  def test_suggest_required_params
    skip("Prism tests are disabled")

    response = @nextbillion_sdk.autosuggest.suggest(key: "key=API_KEY", q: "q=125, Berliner, berlin")

    assert_pattern do
      response => Nextbillionai::Models::AutosuggestSuggestResponse
    end

    assert_pattern do
      response => {
        items: ^(Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::AutosuggestSuggestResponse::Item]) | nil
      }
    end
  end
end
