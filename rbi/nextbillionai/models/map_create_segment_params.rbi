# typed: strong

module Nextbillionai
  module Models
    class MapCreateSegmentParams < Nextbillionai::Internal::Type::BaseModel
      extend Nextbillionai::Internal::Type::RequestParameters::Converter
      include Nextbillionai::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Nextbillionai::MapCreateSegmentParams,
            Nextbillionai::Internal::AnyHash
          )
        end

      sig do
        params(request_options: Nextbillionai::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig do
        override.returns({ request_options: Nextbillionai::RequestOptions })
      end
      def to_hash
      end
    end
  end
end
