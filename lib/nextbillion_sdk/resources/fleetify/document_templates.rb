# frozen_string_literal: true

module NextbillionSDK
  module Resources
    class Fleetify
      class DocumentTemplates
        # Some parameter documentations has been truncated, see
        # {NextbillionSDK::Models::Fleetify::DocumentTemplateCreateParams} for more
        # details.
        #
        # Create Document template
        #
        # @overload create(key:, content:, name:, request_options: {})
        #
        # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
        #
        # @param content [Array<NextbillionSDK::Models::Fleetify::DocumentTemplateContentRequest>] Body param: A form field that drivers must complete when executing a route step.
        #
        # @param name [String] Body param: Specify a name for the document template to be created.
        #
        # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [NextbillionSDK::Models::Fleetify::DocumentTemplateCreateResponse]
        #
        # @see NextbillionSDK::Models::Fleetify::DocumentTemplateCreateParams
        def create(params)
          parsed, options = NextbillionSDK::Fleetify::DocumentTemplateCreateParams.dump_request(params)
          query_params = [:key]
          @client.request(
            method: :post,
            path: "fleetify/document_templates",
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            model: NextbillionSDK::Models::Fleetify::DocumentTemplateCreateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {NextbillionSDK::Models::Fleetify::DocumentTemplateRetrieveParams} for more
        # details.
        #
        # Retrieve template by ID
        #
        # @overload retrieve(id, key:, request_options: {})
        #
        # @param id [String] Specify the unique identifier of the document template.
        #
        # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [NextbillionSDK::Models::Fleetify::DocumentTemplateRetrieveResponse]
        #
        # @see NextbillionSDK::Models::Fleetify::DocumentTemplateRetrieveParams
        def retrieve(id, params)
          parsed, options = NextbillionSDK::Fleetify::DocumentTemplateRetrieveParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["fleetify/document_templates/%1$s", id],
            query: parsed,
            model: NextbillionSDK::Models::Fleetify::DocumentTemplateRetrieveResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {NextbillionSDK::Models::Fleetify::DocumentTemplateUpdateParams} for more
        # details.
        #
        # Update a document template
        #
        # @overload update(id, key:, content: nil, name: nil, request_options: {})
        #
        # @param id [String] Path param: Specify the unique identifier of the document template.
        #
        # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
        #
        # @param content [Array<NextbillionSDK::Models::Fleetify::DocumentTemplateContentRequest>] Body param: An object to collect the details of form fields to be updated - data
        #
        # @param name [String] Body param: Specify the document template name to be updated.
        #
        # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [NextbillionSDK::Models::Fleetify::DocumentTemplateUpdateResponse]
        #
        # @see NextbillionSDK::Models::Fleetify::DocumentTemplateUpdateParams
        def update(id, params)
          parsed, options = NextbillionSDK::Fleetify::DocumentTemplateUpdateParams.dump_request(params)
          query_params = [:key]
          @client.request(
            method: :put,
            path: ["fleetify/document_templates/%1$s", id],
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            model: NextbillionSDK::Models::Fleetify::DocumentTemplateUpdateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {NextbillionSDK::Models::Fleetify::DocumentTemplateListParams} for more details.
        #
        # Get all document templates
        #
        # @overload list(key:, request_options: {})
        #
        # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [NextbillionSDK::Models::Fleetify::DocumentTemplateListResponse]
        #
        # @see NextbillionSDK::Models::Fleetify::DocumentTemplateListParams
        def list(params)
          parsed, options = NextbillionSDK::Fleetify::DocumentTemplateListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "fleetify/document_templates",
            query: parsed,
            model: NextbillionSDK::Models::Fleetify::DocumentTemplateListResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {NextbillionSDK::Models::Fleetify::DocumentTemplateDeleteParams} for more
        # details.
        #
        # Delete a document template
        #
        # @overload delete(id, key:, request_options: {})
        #
        # @param id [String] Specify the unique identifier of the document template.
        #
        # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [NextbillionSDK::Models::Fleetify::DocumentTemplateDeleteResponse]
        #
        # @see NextbillionSDK::Models::Fleetify::DocumentTemplateDeleteParams
        def delete(id, params)
          parsed, options = NextbillionSDK::Fleetify::DocumentTemplateDeleteParams.dump_request(params)
          @client.request(
            method: :delete,
            path: ["fleetify/document_templates/%1$s", id],
            query: parsed,
            model: NextbillionSDK::Models::Fleetify::DocumentTemplateDeleteResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [NextbillionSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
