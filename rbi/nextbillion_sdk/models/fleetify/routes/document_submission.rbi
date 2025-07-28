# typed: strong

module NextbillionSDK
  module Models
    module Fleetify
      module Routes
        DocumentSubmission =
          T.let(T.anything, NextbillionSDK::Internal::Type::Converter)
      end
    end
  end
end
