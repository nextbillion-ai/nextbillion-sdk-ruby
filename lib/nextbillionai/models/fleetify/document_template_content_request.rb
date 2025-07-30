# frozen_string_literal: true

module Nextbillionai
  module Models
    module Fleetify
      class DocumentTemplateContentRequest < Nextbillionai::Internal::Type::BaseModel
        # @!attribute label
        #   Specify the label or the name of the field. The `label` specified here can be
        #   used as field name when rendering the document in the Driver app.
        #
        #   @return [String]
        required :label, String

        # @!attribute type
        #   Specify the data type of the field. It corresponds to the type of information
        #   that the driver needs to collect.
        #
        #   @return [Symbol, Nextbillionai::Models::Fleetify::DocumentTemplateContentRequest::Type]
        required :type, enum: -> { Nextbillionai::Fleetify::DocumentTemplateContentRequest::Type }

        # @!attribute meta
        #   An object to define additional information required for `single_choice` or
        #   `multi_choices` type document items.
        #
        #   @return [Nextbillionai::Models::Fleetify::DocumentTemplateContentRequest::Meta, nil]
        optional :meta, -> { Nextbillionai::Fleetify::DocumentTemplateContentRequest::Meta }

        # @!attribute name
        #   Specify the name of the document field. A field's`name` can be used for internal
        #   references to the document field.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute required
        #   Specify if it is mandatory to fill the field. Default value is false.
        #
        #   @return [Boolean, nil]
        optional :required, Nextbillionai::Internal::Type::Boolean

        # @!attribute validation
        #   Specify the validation rules for the field. This can be used to enforce data
        #   quality and integrity checks. For example, if the field is a number type,
        #   `validation` can define constraints like minimum / maximum number values.
        #
        #   @return [Nextbillionai::Models::Fleetify::DocumentTemplateContentRequest::Validation, nil]
        optional :validation, -> { Nextbillionai::Fleetify::DocumentTemplateContentRequest::Validation }

        # @!method initialize(label:, type:, meta: nil, name: nil, required: nil, validation: nil)
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::Fleetify::DocumentTemplateContentRequest} for more
        #   details.
        #
        #   An object to collect the details of form fields - data structures, validation
        #   rules - for collecting required information after successfully executing a route
        #   step.
        #
        #   @param label [String] Specify the label or the name of the field. The `label` specified here can be us
        #
        #   @param type [Symbol, Nextbillionai::Models::Fleetify::DocumentTemplateContentRequest::Type] Specify the data type of the field. It corresponds to the type of information th
        #
        #   @param meta [Nextbillionai::Models::Fleetify::DocumentTemplateContentRequest::Meta] An object to define additional information required for `single_choice` or `mult
        #
        #   @param name [String] Specify the name of the document field. A field's`name` can be used for internal
        #
        #   @param required [Boolean] Specify if it is mandatory to fill the field. Default value is false.
        #
        #   @param validation [Nextbillionai::Models::Fleetify::DocumentTemplateContentRequest::Validation] Specify the validation rules for the field. This can be used to enforce data qua

        # Specify the data type of the field. It corresponds to the type of information
        # that the driver needs to collect.
        #
        # @see Nextbillionai::Models::Fleetify::DocumentTemplateContentRequest#type
        module Type
          extend Nextbillionai::Internal::Type::Enum

          STRING = :"`string`"
          NUMBER = :"`number`"
          DATE_TIME = :"`date_time`"
          PHOTOS = :"`photos`"
          MULTI_CHOICES = :"`multi_choices`"
          SIGNATURE = :"`signature`"
          BARCODE = :"`barcode`"
          SINGLE_CHOICE = :"`single_choice`"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Nextbillionai::Models::Fleetify::DocumentTemplateContentRequest#meta
        class Meta < Nextbillionai::Internal::Type::BaseModel
          # @!attribute options
          #   An array of objects to define options for a `multi_choices` or `single_choice`
          #   type document field. Each object represents one option.
          #
          #   @return [Array<Nextbillionai::Models::Fleetify::DocumentTemplateContentRequest::Meta::Option>]
          required :options,
                   -> {
                     Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Fleetify::DocumentTemplateContentRequest::Meta::Option]
                   }

          # @!method initialize(options:)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::Fleetify::DocumentTemplateContentRequest::Meta} for more
          #   details.
          #
          #   An object to define additional information required for `single_choice` or
          #   `multi_choices` type document items.
          #
          #   @param options [Array<Nextbillionai::Models::Fleetify::DocumentTemplateContentRequest::Meta::Option>] An array of objects to define options for a `multi_choices` or `single_choice` t

          class Option < Nextbillionai::Internal::Type::BaseModel
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
            #   {Nextbillionai::Models::Fleetify::DocumentTemplateContentRequest::Meta::Option}
            #   for more details.
            #
            #   @param label [String] Specify the label or name for the option.
            #
            #   @param value [String] Specify the value associated with the option. This value will be submitted when
          end
        end

        # @see Nextbillionai::Models::Fleetify::DocumentTemplateContentRequest#validation
        class Validation < Nextbillionai::Internal::Type::BaseModel
          # @!attribute max
          #   Specifies the maximum allowed value for `number` type document field. Input
          #   values must be less than or equal to this threshold.
          #
          #   @return [Integer, nil]
          optional :max, Integer

          # @!attribute max_items
          #   Specifies the maximum number of items for `multi_choices`, `photos` type
          #   document fields. The number of provided input items must be less than or equal
          #   to this threshold.
          #
          #   @return [Integer, nil]
          optional :max_items, Integer

          # @!attribute min
          #   Specifies the minimum allowed value for `number` type document field. Input
          #   values must be greater than or equal to this threshold.
          #
          #   @return [Integer, nil]
          optional :min, Integer

          # @!attribute min_items
          #   Specifies the minimum number of items for `multi_choices`, `photos` type
          #   document fields. The number of provided input items must be greater than or
          #   equal to this threshold.
          #
          #   @return [Integer, nil]
          optional :min_items, Integer

          # @!method initialize(max: nil, max_items: nil, min: nil, min_items: nil)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::Fleetify::DocumentTemplateContentRequest::Validation}
          #   for more details.
          #
          #   Specify the validation rules for the field. This can be used to enforce data
          #   quality and integrity checks. For example, if the field is a number type,
          #   `validation` can define constraints like minimum / maximum number values.
          #
          #   @param max [Integer] Specifies the maximum allowed value for `number` type document field. Input valu
          #
          #   @param max_items [Integer] Specifies the maximum number of items for `multi_choices`, `photos` type documen
          #
          #   @param min [Integer] Specifies the minimum allowed value for `number` type document field. Input valu
          #
          #   @param min_items [Integer] Specifies the minimum number of items for `multi_choices`, `photos` type documen
        end
      end
    end
  end
end
