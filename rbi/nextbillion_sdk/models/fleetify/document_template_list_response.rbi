# typed: strong

module NextbillionSDK
  module Models
    module Fleetify
      class DocumentTemplateListResponse < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Models::Fleetify::DocumentTemplateListResponse,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # An array of objects returning the details of each document template associated
        # with the specified API key. Each object represents one document template. In
        # case there are no templates associated with the given key, a blank array is
        # returned.
        sig do
          returns(
            T.nilable(
              T::Array[
                NextbillionSDK::Models::Fleetify::DocumentTemplateListResponse::Data
              ]
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              T::Array[
                NextbillionSDK::Models::Fleetify::DocumentTemplateListResponse::Data::OrHash
              ]
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
              T::Array[
                NextbillionSDK::Models::Fleetify::DocumentTemplateListResponse::Data::OrHash
              ],
            msg: String,
            status: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # An array of objects returning the details of each document template associated
          # with the specified API key. Each object represents one document template. In
          # case there are no templates associated with the given key, a blank array is
          # returned.
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
                T::Array[
                  NextbillionSDK::Models::Fleetify::DocumentTemplateListResponse::Data
                ],
              msg: String,
              status: Integer
            }
          )
        end
        def to_hash
        end

        class Data < NextbillionSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                NextbillionSDK::Models::Fleetify::DocumentTemplateListResponse::Data,
                NextbillionSDK::Internal::AnyHash
              )
            end

          # Returns the unique ID of the document template.
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
                  NextbillionSDK::Fleetify::DocumentTemplateContentResponse
                ]
              )
            )
          end
          attr_reader :content

          sig do
            params(
              content:
                T::Array[
                  NextbillionSDK::Fleetify::DocumentTemplateContentResponse::OrHash
                ]
            ).void
          end
          attr_writer :content

          # Returns the name of the document template.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # An array of objects returning the details of each document template associated
          # with the specified API key. Each object represents one document template. In
          # case there are no templates associated with the given key, a blank array is
          # returned.
          sig do
            params(
              id: String,
              content:
                T::Array[
                  NextbillionSDK::Fleetify::DocumentTemplateContentResponse::OrHash
                ],
              name: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Returns the unique ID of the document template.
            id: nil,
            # An array of objects returning the details of data structures and validation
            # rules and other properties of all document fields. Each object represents one
            # document field.
            content: nil,
            # Returns the name of the document template.
            name: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                content:
                  T::Array[
                    NextbillionSDK::Fleetify::DocumentTemplateContentResponse
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
