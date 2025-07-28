# typed: strong

module NextbillionSDK
  module Models
    RestrictionListByBboxResponse =
      T.let(
        NextbillionSDK::Internal::Type::ArrayOf[
          NextbillionSDK::RichGroupResponse
        ],
        NextbillionSDK::Internal::Type::Converter
      )
  end
end
