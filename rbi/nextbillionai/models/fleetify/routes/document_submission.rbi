# typed: strong

module Nextbillionai
  module Models
    module Fleetify
      module Routes
        DocumentSubmission =
          T.let(T.anything, Nextbillionai::Internal::Type::Converter)
      end
    end
  end
end
