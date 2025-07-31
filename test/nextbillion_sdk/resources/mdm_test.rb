# frozen_string_literal: true

require_relative "../test_helper"

class NextbillionSDK::Test::Resources::MdmTest < NextbillionSDK::Test::ResourceTest
  def test_create_distance_matrix_required_params
    skip("skipped: tests are disabled for the time being")

    response =
      @nextbillion_sdk.mdm.create_distance_matrix(key: "key=API_KEY", option: :flexible, origins: "origins")

    assert_pattern do
      response => NextbillionSDK::Models::MdmCreateDistanceMatrixResponse
    end

    assert_pattern do
      response => {
        code: String | nil,
        message: String | nil,
        task_id: String | nil,
        warning: ^(NextbillionSDK::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_get_distance_matrix_status_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.mdm.get_distance_matrix_status(id: "id", key: "key=API_KEY")

    assert_pattern do
      response => NextbillionSDK::Models::MdmGetDistanceMatrixStatusResponse
    end

    assert_pattern do
      response => {
        code: NextbillionSDK::Models::MdmGetDistanceMatrixStatusResponse::Code | nil,
        output_addr: String | nil,
        result_link: String | nil,
        status: String | nil
      }
    end
  end
end
