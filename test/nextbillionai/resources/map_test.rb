# frozen_string_literal: true

require_relative "../test_helper"

class Nextbillionai::Test::Resources::MapTest < Nextbillionai::Test::ResourceTest
  def test_create_segment
    skip("Prism tests are disabled")

    response = @nextbillion_sdk.map.create_segment

    assert_pattern do
      response => nil
    end
  end
end
