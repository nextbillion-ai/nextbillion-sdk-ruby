# frozen_string_literal: true

require_relative "../test_helper"

class Nextbillionai::Test::Resources::GeocodeTest < Nextbillionai::Test::ResourceTest
  def test_retrieve_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.geocode.retrieve(key: "key=API_KEY", q: "q=125, Berliner, berlin")

    assert_pattern do
      response => Nextbillionai::Models::GeocodeRetrieveResponse
    end

    assert_pattern do
      response => {
        items: ^(Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::GeocodeRetrieveResponse::Item]) | nil
      }
    end
  end

  def test_batch_create_required_params
    skip("skipped: tests are disabled for the time being")

    response =
      @nextbillion_sdk.geocode.batch_create(
        key: "key=API_KEY",
        body: [{q: "\"q\":\"125, Berliner, berlin\""}]
      )

    assert_pattern do
      response => Nextbillionai::Models::GeocodeBatchCreateResponse
    end

    assert_pattern do
      response => {
        items: ^(Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::GeocodeBatchCreateResponse::Item]) | nil
      }
    end
  end

  def test_structured_retrieve_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.geocode.structured_retrieve(country_code: "countryCode", key: "key=API_KEY")

    assert_pattern do
      response => Nextbillionai::Models::GeocodeStructuredRetrieveResponse
    end

    assert_pattern do
      response => {
        items: ^(Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::GeocodeStructuredRetrieveResponse::Item]) | nil
      }
    end
  end
end
