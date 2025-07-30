# typed: strong

module Nextbillionai
  module Models
    RestrictionListByBboxResponse =
      T.let(
        Nextbillionai::Internal::Type::ArrayOf[
          Nextbillionai::RichGroupResponse
        ],
        Nextbillionai::Internal::Type::Converter
      )
  end
end
