# frozen_string_literal: true

module Nextbillionai
  module Models
    module Fleetify
      class DocumentTemplateContentResponse < Nextbillionai::Internal::Type::BaseModel
        # @!attribute label
        #   Returns the label of the document field.
        #
        #   @return [String, nil]
        optional :label, String

        # @!attribute meta
        #   Returns the options configured for single_choice or multi_choices type document
        #   items.
        #
        #   @return [Nextbillionai::Models::Fleetify::DocumentTemplateContentResponse::Meta, nil]
        optional :meta, -> { Nextbillionai::Fleetify::DocumentTemplateContentResponse::Meta }

        # @!attribute name
        #   Returns the name of the document field.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute required
        #   Indicates if the document field is mandatory or not.
        #
        #   @return [Boolean, nil]
        optional :required, Nextbillionai::Internal::Type::Boolean

        # @!attribute type
        #   Returns the data type of the document field. It will always belong to one of
        #   string, number, date_time, photos, multi_choices, signature, barcode, and
        #   single_choice.
        #
        #   @return [String, nil]
        optional :type, String

        # @!attribute validation
        #   Returns the validation rules for number , multi_choices , and photos document
        #   field types.
        #
        #   @return [Nextbillionai::Models::Fleetify::DocumentTemplateContentResponse::Validation, nil]
        optional :validation, -> { Nextbillionai::Fleetify::DocumentTemplateContentResponse::Validation }

        # @!method initialize(label: nil, meta: nil, name: nil, required: nil, type: nil, validation: nil)
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::Fleetify::DocumentTemplateContentResponse} for more
        #   details.
        #
        #   An array of objects returning the details of data structures and validation
        #   rules and other properties of all document fields. Each object represents one
        #   document field.
        #
        #   @param label [String] Returns the label of the document field.
        #
        #   @param meta [Nextbillionai::Models::Fleetify::DocumentTemplateContentResponse::Meta] Returns the options configured for single_choice or multi_choices type document
        #
        #   @param name [String] Returns the name of the document field.
        #
        #   @param required [Boolean] Indicates if the document field is mandatory or not.
        #
        #   @param type [String] Returns the data type of the document field. It will always belong to one of str
        #
        #   @param validation [Nextbillionai::Models::Fleetify::DocumentTemplateContentResponse::Validation] Returns the validation rules for number , multi_choices , and photos document fi

        # @see Nextbillionai::Models::Fleetify::DocumentTemplateContentResponse#meta
        class Meta < Nextbillionai::Internal::Type::BaseModel
          # @!attribute options
          #   An array of objects returning the options for multi_choices or single_choice
          #   type document field. Each object represents one configured option.
          #
          #   @return [Array<Nextbillionai::Models::Fleetify::DocumentTemplateContentResponse::Meta::Option>, nil]
          optional :options,
                   -> {
                     Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Fleetify::DocumentTemplateContentResponse::Meta::Option]
                   }

          # @!method initialize(options: nil)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::Fleetify::DocumentTemplateContentResponse::Meta} for
          #   more details.
          #
          #   Returns the options configured for single_choice or multi_choices type document
          #   items.
          #
          #   @param options [Array<Nextbillionai::Models::Fleetify::DocumentTemplateContentResponse::Meta::Option>] An array of objects returning the options for multi_choices or single_choice typ

          class Option < Nextbillionai::Internal::Type::BaseModel
            # @!attribute label
            #   Returns the label for the option.
            #
            #   @return [String, nil]
            optional :label, String

            # @!attribute value
            #   Returns the value associated with the option. This value gets submitted when the
            #   option is checked in the Driver app.
            #
            #   @return [String, nil]
            optional :value, String

            # @!method initialize(label: nil, value: nil)
            #   Some parameter documentations has been truncated, see
            #   {Nextbillionai::Models::Fleetify::DocumentTemplateContentResponse::Meta::Option}
            #   for more details.
            #
            #   @param label [String] Returns the label for the option.
            #
            #   @param value [String] Returns the value associated with the option. This value gets submitted when the
          end
        end

        # @see Nextbillionai::Models::Fleetify::DocumentTemplateContentResponse#validation
        class Validation < Nextbillionai::Internal::Type::BaseModel
          # @!attribute max
          #   Returns the maximum allowed value for number type document item, as specified at
          #   the time of configuring the field. This parameter is not present in the response
          #   if it was not provided in the input.
          #
          #   @return [Integer, nil]
          optional :max, Integer

          # @!attribute max_items
          #   Returns the maximum number of items required for multi_choices, photos type
          #   document items. This parameter will not be present in the response if it was not
          #   provided in the input.
          #
          #   @return [String, nil]
          optional :max_items, String

          # @!attribute min
          #   Returns the minimum allowed value for number type document item, as specified at
          #   the time of configuring the field. This parameter is not present in the response
          #   if it was not provided in the input.
          #
          #   @return [Integer, nil]
          optional :min, Integer

          # @!attribute min_items
          #   Returns the minimum number of items required for multi_choices, photos type
          #   document items. This parameter will not be present in the response if it was not
          #   provided in the input.
          #
          #   @return [String, nil]
          optional :min_items, String

          # @!method initialize(max: nil, max_items: nil, min: nil, min_items: nil)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::Fleetify::DocumentTemplateContentResponse::Validation}
          #   for more details.
          #
          #   Returns the validation rules for number , multi_choices , and photos document
          #   field types.
          #
          #   @param max [Integer] Returns the maximum allowed value for number type document item, as specified at
          #
          #   @param max_items [String] Returns the maximum number of items required for multi_choices, photos type docu
          #
          #   @param min [Integer] Returns the minimum allowed value for number type document item, as specified at
          #
          #   @param min_items [String] Returns the minimum number of items required for multi_choices, photos type docu
        end
      end
    end
  end
end
