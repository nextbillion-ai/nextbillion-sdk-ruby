# typed: strong

module NextbillionSDK
  module Models
    class MultigeocodeSearchResponse < NextbillionSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            NextbillionSDK::Models::MultigeocodeSearchResponse,
            NextbillionSDK::Internal::AnyHash
          )
        end

      # An array of objects containing the search result response. Each object
      # represents one place returned in the search response. An empty array would be
      # returned if no matching place is found.
      sig do
        returns(
          T.nilable(
            T::Array[NextbillionSDK::Models::MultigeocodeSearchResponse::Entity]
          )
        )
      end
      attr_reader :entities

      sig do
        params(
          entities:
            T::Array[
              NextbillionSDK::Models::MultigeocodeSearchResponse::Entity::OrHash
            ]
        ).void
      end
      attr_writer :entities

      sig do
        params(
          entities:
            T::Array[
              NextbillionSDK::Models::MultigeocodeSearchResponse::Entity::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(
        # An array of objects containing the search result response. Each object
        # represents one place returned in the search response. An empty array would be
        # returned if no matching place is found.
        entities: nil
      )
      end

      sig do
        override.returns(
          {
            entities:
              T::Array[
                NextbillionSDK::Models::MultigeocodeSearchResponse::Entity
              ]
          }
        )
      end
      def to_hash
      end

      class Entity < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Models::MultigeocodeSearchResponse::Entity,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # It contains information about the dataset that returns the specific result
        sig do
          returns(
            T.nilable(
              NextbillionSDK::Models::MultigeocodeSearchResponse::Entity::DataSource
            )
          )
        end
        attr_reader :data_source

        sig do
          params(
            data_source:
              NextbillionSDK::Models::MultigeocodeSearchResponse::Entity::DataSource::OrHash
          ).void
        end
        attr_writer :data_source

        # The unique NextBillion ID for the result item. This ID can be used as input in
        # “Get Place”, “Update Place”, “Delete Place” methods.
        sig { returns(T.nilable(String)) }
        attr_reader :doc_id

        sig { params(doc_id: String).void }
        attr_writer :doc_id

        # This parameter represents the place details, including geographical information,
        # address and other related information.
        sig do
          returns(T.nilable(T::Array[NextbillionSDK::Multigeocode::PlaceItem]))
        end
        attr_reader :place

        sig do
          params(
            place: T::Array[NextbillionSDK::Multigeocode::PlaceItem::OrHash]
          ).void
        end
        attr_writer :place

        # Integer value representing how good the result is. Higher score indicates a
        # better match between the search query and the result. This can be used to accept
        # or reject the results depending on how “relevant” a result is, for a given use
        # case
        sig { returns(T.nilable(Integer)) }
        attr_reader :score

        sig { params(score: Integer).void }
        attr_writer :score

        sig do
          params(
            data_source:
              NextbillionSDK::Models::MultigeocodeSearchResponse::Entity::DataSource::OrHash,
            doc_id: String,
            place: T::Array[NextbillionSDK::Multigeocode::PlaceItem::OrHash],
            score: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # It contains information about the dataset that returns the specific result
          data_source: nil,
          # The unique NextBillion ID for the result item. This ID can be used as input in
          # “Get Place”, “Update Place”, “Delete Place” methods.
          doc_id: nil,
          # This parameter represents the place details, including geographical information,
          # address and other related information.
          place: nil,
          # Integer value representing how good the result is. Higher score indicates a
          # better match between the search query and the result. This can be used to accept
          # or reject the results depending on how “relevant” a result is, for a given use
          # case
          score: nil
        )
        end

        sig do
          override.returns(
            {
              data_source:
                NextbillionSDK::Models::MultigeocodeSearchResponse::Entity::DataSource,
              doc_id: String,
              place: T::Array[NextbillionSDK::Multigeocode::PlaceItem],
              score: Integer
            }
          )
        end
        def to_hash
        end

        class DataSource < NextbillionSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                NextbillionSDK::Models::MultigeocodeSearchResponse::Entity::DataSource,
                NextbillionSDK::Internal::AnyHash
              )
            end

          # This parameter represents the unique reference ID associated with the data
          # source.
          sig { returns(T.nilable(String)) }
          attr_reader :ref_id

          sig { params(ref_id: String).void }
          attr_writer :ref_id

          # This parameter represents the source of the data.
          sig { returns(T.nilable(String)) }
          attr_reader :source

          sig { params(source: String).void }
          attr_writer :source

          # This parameter indicates if a place is searchable.
          sig do
            returns(
              T.nilable(
                NextbillionSDK::Models::MultigeocodeSearchResponse::Entity::DataSource::Status::TaggedSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                NextbillionSDK::Models::MultigeocodeSearchResponse::Entity::DataSource::Status::OrSymbol
            ).void
          end
          attr_writer :status

          # It contains information about the dataset that returns the specific result
          sig do
            params(
              ref_id: String,
              source: String,
              status:
                NextbillionSDK::Models::MultigeocodeSearchResponse::Entity::DataSource::Status::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # This parameter represents the unique reference ID associated with the data
            # source.
            ref_id: nil,
            # This parameter represents the source of the data.
            source: nil,
            # This parameter indicates if a place is searchable.
            status: nil
          )
          end

          sig do
            override.returns(
              {
                ref_id: String,
                source: String,
                status:
                  NextbillionSDK::Models::MultigeocodeSearchResponse::Entity::DataSource::Status::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          # This parameter indicates if a place is searchable.
          module Status
            extend NextbillionSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  NextbillionSDK::Models::MultigeocodeSearchResponse::Entity::DataSource::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ENABLE =
              T.let(
                :enable,
                NextbillionSDK::Models::MultigeocodeSearchResponse::Entity::DataSource::Status::TaggedSymbol
              )
            DISABLE =
              T.let(
                :disable,
                NextbillionSDK::Models::MultigeocodeSearchResponse::Entity::DataSource::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  NextbillionSDK::Models::MultigeocodeSearchResponse::Entity::DataSource::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
