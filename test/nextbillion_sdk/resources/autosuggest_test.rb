# frozen_string_literal: true

require_relative "../test_helper"

class NextbillionSDK::Test::Resources::AutosuggestTest < NextbillionSDK::Test::ResourceTest
  def test_suggest_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.autosuggest.suggest(key: "key=API_KEY", q: "q=125, Berliner, berlin")

    assert_pattern do
      response => NextbillionSDK::Models::AutosuggestSuggestResponse
    end

    assert_pattern do
      response => {
        items: ^(NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Models::AutosuggestSuggestResponse::Item]) | nil
      }
    end
  end
end
