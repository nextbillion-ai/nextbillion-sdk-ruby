# frozen_string_literal: true

require_relative "../test_helper"

class NextbillionSDK::Test::Resources::PostalcodeTest < NextbillionSDK::Test::ResourceTest
  def test_retrieve_coordinates_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.postalcode.retrieve_coordinates(key: "key=API_KEY")

    assert_pattern do
      response => NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse
    end

    assert_pattern do
      response => {
        places: NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse::Places | nil,
        warning: ^(NextbillionSDK::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end
end
