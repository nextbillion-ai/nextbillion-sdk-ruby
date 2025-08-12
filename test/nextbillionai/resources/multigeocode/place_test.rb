# frozen_string_literal: true

require_relative "../../test_helper"

class Nextbillionai::Test::Resources::Multigeocode::PlaceTest < Nextbillionai::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @nextbillion_sdk.multigeocode.place.create(key: "key=API_KEY", place: [{geopoint: {}}])

    assert_pattern do
      response => Nextbillionai::Models::Multigeocode::PlaceCreateResponse
    end

    assert_pattern do
      response => {
        doc_id: String | nil
      }
    end
  end

  def test_retrieve_required_params
    skip("Prism tests are disabled")

    response = @nextbillion_sdk.multigeocode.place.retrieve("docId", key: "key=API_KEY")

    assert_pattern do
      response => Nextbillionai::Models::Multigeocode::PlaceRetrieveResponse
    end

    assert_pattern do
      response => {
        data_sorce: Nextbillionai::Models::Multigeocode::PlaceRetrieveResponse::DataSorce | nil,
        doc_id: String | nil,
        place: ^(Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Multigeocode::PlaceItem]) | nil,
        score: Integer | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response = @nextbillion_sdk.multigeocode.place.update("docId", key: "key=API_KEY")

    assert_pattern do
      response => Nextbillionai::Models::Multigeocode::PlaceUpdateResponse
    end

    assert_pattern do
      response => {
        msg: String | nil,
        status: String | nil
      }
    end
  end

  def test_delete_required_params
    skip("Prism tests are disabled")

    response = @nextbillion_sdk.multigeocode.place.delete("docId", key: "key=API_KEY")

    assert_pattern do
      response => Nextbillionai::Models::Multigeocode::PlaceDeleteResponse
    end

    assert_pattern do
      response => {
        msg: String | nil,
        status: String | nil
      }
    end
  end
end
