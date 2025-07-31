# frozen_string_literal: true

require_relative "../test_helper"

class NextbillionSDK::Test::Resources::AutocompleteTest < NextbillionSDK::Test::ResourceTest
  def test_suggest_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.autocomplete.suggest(key: "key=API_KEY", q: "q=125, Berliner, berlin")

    assert_pattern do
      response => NextbillionSDK::Models::AutocompleteSuggestResponse
    end

    assert_pattern do
      response => {
        items: ^(NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Models::AutocompleteSuggestResponse::Item]) | nil
      }
    end
  end
end
