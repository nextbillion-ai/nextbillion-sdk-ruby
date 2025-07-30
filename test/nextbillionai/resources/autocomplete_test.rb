# frozen_string_literal: true

require_relative "../test_helper"

class Nextbillionai::Test::Resources::AutocompleteTest < Nextbillionai::Test::ResourceTest
  def test_suggest_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.autocomplete.suggest(key: "key=API_KEY", q: "q=125, Berliner, berlin")

    assert_pattern do
      response => Nextbillionai::Models::AutocompleteSuggestResponse
    end

    assert_pattern do
      response => {
        items: ^(Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::AutocompleteSuggestResponse::Item]) | nil
      }
    end
  end
end
