# frozen_string_literal: true

require_relative "../../../test_helper"

class Nextbillionai::Test::Resources::Skynet::Asset::EventTest < Nextbillionai::Test::ResourceTest
  def test_list_required_params
    skip("Prism tests are disabled")

    response = @nextbillion_sdk.skynet.asset.event.list("id", key: "key=API_KEY")

    assert_pattern do
      response => Nextbillionai::Models::Skynet::Asset::EventListResponse
    end

    assert_pattern do
      response => {
        data: Nextbillionai::Models::Skynet::Asset::EventListResponse::Data | nil,
        message: String | nil,
        status: String | nil
      }
    end
  end
end
