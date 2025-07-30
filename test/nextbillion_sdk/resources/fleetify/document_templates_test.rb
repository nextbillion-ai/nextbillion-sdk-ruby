# frozen_string_literal: true

require_relative "../../test_helper"

class NextbillionSDK::Test::Resources::Fleetify::DocumentTemplatesTest < NextbillionSDK::Test::ResourceTest
  def test_create_required_params
    skip("skipped: tests are disabled for the time being")

    response =
      @nextbillion_sdk.fleetify.document_templates.create(
        key: "key",
        content: [{label: "\"label\": \"Specify Completion Time\"", type: :string}],
        name: "name"
      )

    assert_pattern do
      response => NextbillionSDK::Models::Fleetify::DocumentTemplateCreateResponse
    end

    assert_pattern do
      response => {
        data: NextbillionSDK::Models::Fleetify::DocumentTemplateCreateResponse::Data | nil,
        msg: String | nil,
        status: Integer | nil
      }
    end
  end

  def test_retrieve_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.fleetify.document_templates.retrieve("id", key: "key")

    assert_pattern do
      response => NextbillionSDK::Models::Fleetify::DocumentTemplateRetrieveResponse
    end

    assert_pattern do
      response => {
        data: NextbillionSDK::Models::Fleetify::DocumentTemplateRetrieveResponse::Data | nil,
        msg: String | nil,
        status: Integer | nil
      }
    end
  end

  def test_update_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.fleetify.document_templates.update("id", key: "key")

    assert_pattern do
      response => NextbillionSDK::Models::Fleetify::DocumentTemplateUpdateResponse
    end

    assert_pattern do
      response => {
        data: NextbillionSDK::Models::Fleetify::DocumentTemplateUpdateResponse::Data | nil,
        msg: String | nil,
        status: Integer | nil
      }
    end
  end

  def test_list_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.fleetify.document_templates.list(key: "key")

    assert_pattern do
      response => NextbillionSDK::Models::Fleetify::DocumentTemplateListResponse
    end

    assert_pattern do
      response => {
        data: ^(NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Models::Fleetify::DocumentTemplateListResponse::Data]) | nil,
        msg: String | nil,
        status: Integer | nil
      }
    end
  end

  def test_delete_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.fleetify.document_templates.delete("id", key: "key")

    assert_pattern do
      response => NextbillionSDK::Models::Fleetify::DocumentTemplateDeleteResponse
    end

    assert_pattern do
      response => {
        msg: String | nil,
        status: Integer | nil
      }
    end
  end
end
