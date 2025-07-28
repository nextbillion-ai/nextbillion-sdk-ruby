# frozen_string_literal: true

module NextbillionSDK
  module Models
    # @type [NextbillionSDK::Internal::Type::Converter]
    RestrictionListByBboxResponse =
      NextbillionSDK::Internal::Type::ArrayOf[-> { NextbillionSDK::RichGroupResponse }]
  end
end
