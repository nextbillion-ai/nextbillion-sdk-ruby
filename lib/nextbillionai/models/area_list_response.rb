# frozen_string_literal: true

module Nextbillionai
  module Models
    class AreaListResponseItem < Nextbillionai::Internal::Type::BaseModel
      # @!attribute code
      #   Returns the code for the available area.
      #
      #   @return [String, nil]
      optional :code, String

      # @!attribute modes
      #   Returns available traveling modes for the given area.
      #
      #   @return [Array<String>, nil]
      optional :modes, Nextbillionai::Internal::Type::ArrayOf[String]

      # @!attribute name
      #   Returns the name of the available area.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute timezone
      #   Returns the offset from UTC time.
      #
      #   @return [Float, nil]
      optional :timezone, Float

      # @!method initialize(code: nil, modes: nil, name: nil, timezone: nil)
      #   @param code [String] Returns the code for the available area.
      #
      #   @param modes [Array<String>] Returns available traveling modes for the given area.
      #
      #   @param name [String] Returns the name of the available area.
      #
      #   @param timezone [Float] Returns the offset from UTC time.
    end

    # @type [Nextbillionai::Internal::Type::Converter]
    AreaListResponse =
      Nextbillionai::Internal::Type::ArrayOf[-> { Nextbillionai::Models::AreaListResponseItem }]
  end
end
