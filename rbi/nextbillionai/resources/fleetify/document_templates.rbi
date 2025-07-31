# typed: strong

module Nextbillionai
  module Resources
    class Fleetify
      class DocumentTemplates
        # Create Document template
        sig do
          params(
            key: String,
            content:
              T::Array[
                Nextbillionai::Fleetify::DocumentTemplateContentRequest::OrHash
              ],
            name: String,
            request_options: Nextbillionai::RequestOptions::OrHash
          ).returns(
            Nextbillionai::Models::Fleetify::DocumentTemplateCreateResponse
          )
        end
        def create(
          # Query param: A key is a unique identifier that is required to authenticate a
          # request to the API.
          key:,
          # Body param: A form field that drivers must complete when executing a route step.
          # Defines the data structure and validation rules for collecting required
          # information during route execution.
          content:,
          # Body param: Specify a name for the document template to be created.
          name:,
          request_options: {}
        )
        end

        # Retrieve template by ID
        sig do
          params(
            id: String,
            key: String,
            request_options: Nextbillionai::RequestOptions::OrHash
          ).returns(
            Nextbillionai::Models::Fleetify::DocumentTemplateRetrieveResponse
          )
        end
        def retrieve(
          # Specify the unique identifier of the document template.
          id,
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          request_options: {}
        )
        end

        # Update a document template
        sig do
          params(
            id: String,
            key: String,
            content:
              T::Array[
                Nextbillionai::Fleetify::DocumentTemplateContentRequest::OrHash
              ],
            name: String,
            request_options: Nextbillionai::RequestOptions::OrHash
          ).returns(
            Nextbillionai::Models::Fleetify::DocumentTemplateUpdateResponse
          )
        end
        def update(
          # Path param: Specify the unique identifier of the document template.
          id,
          # Query param: A key is a unique identifier that is required to authenticate a
          # request to the API.
          key:,
          # Body param: An object to collect the details of form fields to be updated - data
          # structures, validation rules. Please note that the details provided here will
          # overwrite any existing document fields in the given template.
          content: nil,
          # Body param: Specify the document template name to be updated.
          name: nil,
          request_options: {}
        )
        end

        # Get all document templates
        sig do
          params(
            key: String,
            request_options: Nextbillionai::RequestOptions::OrHash
          ).returns(
            Nextbillionai::Models::Fleetify::DocumentTemplateListResponse
          )
        end
        def list(
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          request_options: {}
        )
        end

        # Delete a document template
        sig do
          params(
            id: String,
            key: String,
            request_options: Nextbillionai::RequestOptions::OrHash
          ).returns(
            Nextbillionai::Models::Fleetify::DocumentTemplateDeleteResponse
          )
        end
        def delete(
          # Specify the unique identifier of the document template.
          id,
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Nextbillionai::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
