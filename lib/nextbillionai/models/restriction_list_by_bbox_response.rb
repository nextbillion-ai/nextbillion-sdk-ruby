# frozen_string_literal: true

module Nextbillionai
  module Models
    # @type [Nextbillionai::Internal::Type::Converter]
    RestrictionListByBboxResponse =
      Nextbillionai::Internal::Type::ArrayOf[-> { Nextbillionai::RichGroupResponse }]
  end
end
