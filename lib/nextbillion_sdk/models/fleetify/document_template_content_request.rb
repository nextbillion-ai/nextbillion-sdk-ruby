# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Fleetify
      class DocumentTemplateContentRequest < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute label
        #   Specify the label or the name of the field. The label specified here can be used
        #   as field name when rendering the document in the Driver app.
        #
        #   @return [String]
        required :label, String

        # @!attribute type
        #   Specify the data type of the field. It corresponds to the type of information
        #   that the driver needs to collect.
        #
        #   @return [Symbol, NextbillionSDK::Models::Fleetify::DocumentTemplateContentRequest::Type]
        required :type, enum: -> { NextbillionSDK::Fleetify::DocumentTemplateContentRequest::Type }

        # @!attribute meta
        #   An object to define additional information required for single_choice or
        #   multi_choices type document items.
        #
        #   @return [NextbillionSDK::Models::Fleetify::DocumentTemplateContentRequest::Meta, nil]
        optional :meta, -> { NextbillionSDK::Fleetify::DocumentTemplateContentRequest::Meta }

        # @!attribute name
        #   Specify the name of the document field. A field'sname can be used for internal
        #   references to the document field.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute required
        #   Specify if it is mandatory to fill the field. Default value is false.
        #
        #   @return [Boolean, nil]
        optional :required, NextbillionSDK::Internal::Type::Boolean

        # @!attribute validation
        #   Specify the validation rules for the field. This can be used to enforce data
        #   quality and integrity checks. For example, if the field is a number type,
        #   validation can define constraints like minimum / maximum number values.
        #
        #   @return [NextbillionSDK::Models::Fleetify::DocumentTemplateContentRequest::Validation, nil]
        optional :validation, -> { NextbillionSDK::Fleetify::DocumentTemplateContentRequest::Validation }

        # @!method initialize(label:, type:, meta: nil, name: nil, required: nil, validation: nil)
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::Fleetify::DocumentTemplateContentRequest} for more
        #   details.
        #
        #   An object to collect the details of form fields - data structures, validation
        #   rules - for collecting required information after successfully executing a route
        #   step.
        #
        #   @param label [String] Specify the label or the name of the field. The label specified here can be used
        #
        #   @param type [Symbol, NextbillionSDK::Models::Fleetify::DocumentTemplateContentRequest::Type] Specify the data type of the field. It corresponds to the type of information th
        #
        #   @param meta [NextbillionSDK::Models::Fleetify::DocumentTemplateContentRequest::Meta] An object to define additional information required for single_choice or multi_c
        #
        #   @param name [String] Specify the name of the document field. A field'sname can be used for internal r
        #
        #   @param required [Boolean] Specify if it is mandatory to fill the field. Default value is false.
        #
        #   @param validation [NextbillionSDK::Models::Fleetify::DocumentTemplateContentRequest::Validation] Specify the validation rules for the field. This can be used to enforce data qua

        # Specify the data type of the field. It corresponds to the type of information
        # that the driver needs to collect.
        #
        # @see NextbillionSDK::Models::Fleetify::DocumentTemplateContentRequest#type
        module Type
          extend NextbillionSDK::Internal::Type::Enum

          STRING = :string
          NUMBER = :number
          DATE_TIME = :date_time
          PHOTOS = :photos
          MULTI_CHOICES = :multi_choices
          SIGNATURE = :signature
          BARCODE = :barcode
          SINGLE_CHOICE = :single_choice

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see NextbillionSDK::Models::Fleetify::DocumentTemplateContentRequest#meta
        class Meta < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute options
          #   An array of objects to define options for a multi_choices or single_choice type
          #   document field. Each object represents one option.
          #
          #   @return [Array<NextbillionSDK::Models::Fleetify::DocumentTemplateContentRequest::Meta::Option>]
          required :options,
                   -> {
                     NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Fleetify::DocumentTemplateContentRequest::Meta::Option]
                   }

          # @!method initialize(options:)
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::Fleetify::DocumentTemplateContentRequest::Meta} for
          #   more details.
          #
          #   An object to define additional information required for single_choice or
          #   multi_choices type document items.
          #
          #   @param options [Array<NextbillionSDK::Models::Fleetify::DocumentTemplateContentRequest::Meta::Option>] An array of objects to define options for a multi_choices or single_choice type

          class Option < NextbillionSDK::Internal::Type::BaseModel
            # @!attribute label
            #   Specify the label or name for the option.
            #
            #   @return [String]
            required :label, String

            # @!attribute value
            #   Specify the value associated with the option. This value will be submitted when
            #   the option is checked in the Driver app.
            #
            #   @return [String]
            required :value, String

            # @!method initialize(label:, value:)
            #   Some parameter documentations has been truncated, see
            #   {NextbillionSDK::Models::Fleetify::DocumentTemplateContentRequest::Meta::Option}
            #   for more details.
            #
            #   @param label [String] Specify the label or name for the option.
            #
            #   @param value [String] Specify the value associated with the option. This value will be submitted when
          end
        end

        # @see NextbillionSDK::Models::Fleetify::DocumentTemplateContentRequest#validation
        class Validation < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute max
          #   Specifies the maximum allowed value for number type document field. Input values
          #   must be less than or equal to this threshold.
          #
          #   @return [Integer, nil]
          optional :max, Integer

          # @!attribute max_items
          #   Specifies the maximum number of items for multi_choices, photos type document
          #   fields. The number of provided input items must be less than or equal to this
          #   threshold.
          #
          #   @return [Integer, nil]
          optional :max_items, Integer

          # @!attribute min
          #   Specifies the minimum allowed value for number type document field. Input values
          #   must be greater than or equal to this threshold.
          #
          #   @return [Integer, nil]
          optional :min, Integer

          # @!attribute min_items
          #   Specifies the minimum number of items for multi_choices, photos type document
          #   fields. The number of provided input items must be greater than or equal to this
          #   threshold.
          #
          #   @return [Integer, nil]
          optional :min_items, Integer

          # @!method initialize(max: nil, max_items: nil, min: nil, min_items: nil)
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::Fleetify::DocumentTemplateContentRequest::Validation}
          #   for more details.
          #
          #   Specify the validation rules for the field. This can be used to enforce data
          #   quality and integrity checks. For example, if the field is a number type,
          #   validation can define constraints like minimum / maximum number values.
          #
          #   @param max [Integer] Specifies the maximum allowed value for number type document field. Input values
          #
          #   @param max_items [Integer] Specifies the maximum number of items for multi_choices, photos type document fi
          #
          #   @param min [Integer] Specifies the minimum allowed value for number type document field. Input values
          #
          #   @param min_items [Integer] Specifies the minimum number of items for multi_choices, photos type document fi
        end
      end
    end
  end
end
