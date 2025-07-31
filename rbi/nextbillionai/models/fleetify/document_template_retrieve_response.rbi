# typed: strong

module Nextbillionai
  module Models
    module Fleetify
      class DocumentTemplateRetrieveResponse < Nextbillionai::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Models::Fleetify::DocumentTemplateRetrieveResponse,
              Nextbillionai::Internal::AnyHash
            )
          end

        # An object returning the details of the requested document template.
        sig do
          returns(
            T.nilable(
              Nextbillionai::Models::Fleetify::DocumentTemplateRetrieveResponse::Data
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Nextbillionai::Models::Fleetify::DocumentTemplateRetrieveResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        # Returns the error message in case of a failed request. If the request is
        # successful, this field is not present in the response.
        sig { returns(T.nilable(String)) }
        attr_reader :msg

        sig { params(msg: String).void }
        attr_writer :msg

        # Returns the HTTP response code.
        sig { returns(T.nilable(Integer)) }
        attr_reader :status

        sig { params(status: Integer).void }
        attr_writer :status

        sig do
          params(
            data:
              Nextbillionai::Models::Fleetify::DocumentTemplateRetrieveResponse::Data::OrHash,
            msg: String,
            status: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # An object returning the details of the requested document template.
          data: nil,
          # Returns the error message in case of a failed request. If the request is
          # successful, this field is not present in the response.
          msg: nil,
          # Returns the HTTP response code.
          status: nil
        )
        end

        sig do
          override.returns(
            {
              data:
                Nextbillionai::Models::Fleetify::DocumentTemplateRetrieveResponse::Data,
              msg: String,
              status: Integer
            }
          )
        end
        def to_hash
        end

        class Data < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Models::Fleetify::DocumentTemplateRetrieveResponse::Data,
                Nextbillionai::Internal::AnyHash
              )
            end

          # Returns the unique identifier of the document template.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # An array of objects returning the details of data structures and validation
          # rules and other properties of all document fields. Each object represents one
          # document field.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Nextbillionai::Fleetify::DocumentTemplateContentResponse
                ]
              )
            )
          end
          attr_reader :content

          sig do
            params(
              content:
                T::Array[
                  Nextbillionai::Fleetify::DocumentTemplateContentResponse::OrHash
                ]
            ).void
          end
          attr_writer :content

          # Returns the name of the document template as specified at the time of creating
          # the template.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # An object returning the details of the requested document template.
          sig do
            params(
              id: String,
              content:
                T::Array[
                  Nextbillionai::Fleetify::DocumentTemplateContentResponse::OrHash
                ],
              name: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Returns the unique identifier of the document template.
            id: nil,
            # An array of objects returning the details of data structures and validation
            # rules and other properties of all document fields. Each object represents one
            # document field.
            content: nil,
            # Returns the name of the document template as specified at the time of creating
            # the template.
            name: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                content:
                  T::Array[
                    Nextbillionai::Fleetify::DocumentTemplateContentResponse
                  ],
                name: String
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
