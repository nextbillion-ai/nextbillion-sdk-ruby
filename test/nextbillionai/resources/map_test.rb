# frozen_string_literal: true

require_relative "../test_helper"

class Nextbillionai::Test::Resources::MapTest < Nextbillionai::Test::ResourceTest
  def test_create_segment
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.map.create_segment

    assert_pattern do
      response => nil
    end
  end
end
