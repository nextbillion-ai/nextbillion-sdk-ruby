# typed: strong

module NextbillionSDK
  module Models
    module Multigeocode
      class PlaceRetrieveResponse < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Models::Multigeocode::PlaceRetrieveResponse,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # It displays the information about the current source and current status of the
        # place. Use the “Update Place” method to change these values, as needed.
        sig do
          returns(
            T.nilable(
              NextbillionSDK::Models::Multigeocode::PlaceRetrieveResponse::DataSorce
            )
          )
        end
        attr_reader :data_sorce

        sig do
          params(
            data_sorce:
              NextbillionSDK::Models::Multigeocode::PlaceRetrieveResponse::DataSorce::OrHash
          ).void
        end
        attr_writer :data_sorce

        # The unique NextBillion ID for the result item.
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

        # It returns the system calculated weighted score of the place. It depends on how
        # ‘richly’ the place was defined at the time of creation. In order to modify the
        # score, use “Update Place” method and update information for parameters which are
        # not set currently. As an alternative, you can directly update the `score` to a
        # custom value.
        sig { returns(T.nilable(Integer)) }
        attr_reader :score

        sig { params(score: Integer).void }
        attr_writer :score

        sig do
          params(
            data_sorce:
              NextbillionSDK::Models::Multigeocode::PlaceRetrieveResponse::DataSorce::OrHash,
            doc_id: String,
            place: T::Array[NextbillionSDK::Multigeocode::PlaceItem::OrHash],
            score: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # It displays the information about the current source and current status of the
          # place. Use the “Update Place” method to change these values, as needed.
          data_sorce: nil,
          # The unique NextBillion ID for the result item.
          doc_id: nil,
          # This parameter represents the place details, including geographical information,
          # address and other related information.
          place: nil,
          # It returns the system calculated weighted score of the place. It depends on how
          # ‘richly’ the place was defined at the time of creation. In order to modify the
          # score, use “Update Place” method and update information for parameters which are
          # not set currently. As an alternative, you can directly update the `score` to a
          # custom value.
          score: nil
        )
        end

        sig do
          override.returns(
            {
              data_sorce:
                NextbillionSDK::Models::Multigeocode::PlaceRetrieveResponse::DataSorce,
              doc_id: String,
              place: T::Array[NextbillionSDK::Multigeocode::PlaceItem],
              score: Integer
            }
          )
        end
        def to_hash
        end

        class DataSorce < NextbillionSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                NextbillionSDK::Models::Multigeocode::PlaceRetrieveResponse::DataSorce,
                NextbillionSDK::Internal::AnyHash
              )
            end

          # This parameter represents the unique reference ID associated with the data
          # source.
          sig { returns(T.nilable(String)) }
          attr_reader :ref_id

          sig { params(ref_id: String).void }
          attr_writer :ref_id

          # This parameter represents the current dataset source of the information returned
          # in the result.
          sig { returns(T.nilable(String)) }
          attr_reader :source

          sig { params(source: String).void }
          attr_writer :source

          # This parameter indicates if a place is currently discoverable by search API or
          # not.
          sig do
            returns(
              T.nilable(
                NextbillionSDK::Models::Multigeocode::PlaceRetrieveResponse::DataSorce::Status::TaggedSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                NextbillionSDK::Models::Multigeocode::PlaceRetrieveResponse::DataSorce::Status::OrSymbol
            ).void
          end
          attr_writer :status

          # It displays the information about the current source and current status of the
          # place. Use the “Update Place” method to change these values, as needed.
          sig do
            params(
              ref_id: String,
              source: String,
              status:
                NextbillionSDK::Models::Multigeocode::PlaceRetrieveResponse::DataSorce::Status::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # This parameter represents the unique reference ID associated with the data
            # source.
            ref_id: nil,
            # This parameter represents the current dataset source of the information returned
            # in the result.
            source: nil,
            # This parameter indicates if a place is currently discoverable by search API or
            # not.
            status: nil
          )
          end

          sig do
            override.returns(
              {
                ref_id: String,
                source: String,
                status:
                  NextbillionSDK::Models::Multigeocode::PlaceRetrieveResponse::DataSorce::Status::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          # This parameter indicates if a place is currently discoverable by search API or
          # not.
          module Status
            extend NextbillionSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  NextbillionSDK::Models::Multigeocode::PlaceRetrieveResponse::DataSorce::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ENABLE =
              T.let(
                :enable,
                NextbillionSDK::Models::Multigeocode::PlaceRetrieveResponse::DataSorce::Status::TaggedSymbol
              )
            DISABLE =
              T.let(
                :disable,
                NextbillionSDK::Models::Multigeocode::PlaceRetrieveResponse::DataSorce::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  NextbillionSDK::Models::Multigeocode::PlaceRetrieveResponse::DataSorce::Status::TaggedSymbol
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
