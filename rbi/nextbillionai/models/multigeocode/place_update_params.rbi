# typed: strong

module Nextbillionai
  module Models
    module Multigeocode
      class PlaceUpdateParams < Nextbillionai::Internal::Type::BaseModel
        extend Nextbillionai::Internal::Type::RequestParameters::Converter
        include Nextbillionai::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Multigeocode::PlaceUpdateParams,
              Nextbillionai::Internal::AnyHash
            )
          end

        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        sig { returns(String) }
        attr_accessor :key

        # dataSource values can be updated to enhance or prioritize the search results to
        # better suit specific business use cases.
        sig do
          returns(
            T.nilable(
              Nextbillionai::Multigeocode::PlaceUpdateParams::DataSource
            )
          )
        end
        attr_reader :data_source

        sig do
          params(
            data_source:
              Nextbillionai::Multigeocode::PlaceUpdateParams::DataSource::OrHash
          ).void
        end
        attr_writer :data_source

        # This parameter represents the place details, including geographical information,
        # address and other related information.
        sig do
          returns(T.nilable(T::Array[Nextbillionai::Multigeocode::PlaceItem]))
        end
        attr_reader :place

        sig do
          params(
            place: T::Array[Nextbillionai::Multigeocode::PlaceItem::OrHash]
          ).void
        end
        attr_writer :place

        # Search score of the place. This is calculated based on how ‘richly’ the place is
        # defined. For instance, a place with street name, city, state and country
        # attributes set might be ranked lower than a place which has values of house,
        # building, street name, city, state and country attributes set. The score
        # determines the rank of the place among search results. You can also use this
        # field to set a custom score as per its relevance to rank it among the search
        # results from multiple data sources.
        sig { returns(T.nilable(Integer)) }
        attr_reader :score

        sig { params(score: Integer).void }
        attr_writer :score

        sig do
          params(
            key: String,
            data_source:
              Nextbillionai::Multigeocode::PlaceUpdateParams::DataSource::OrHash,
            place: T::Array[Nextbillionai::Multigeocode::PlaceItem::OrHash],
            score: Integer,
            request_options: Nextbillionai::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          # dataSource values can be updated to enhance or prioritize the search results to
          # better suit specific business use cases.
          data_source: nil,
          # This parameter represents the place details, including geographical information,
          # address and other related information.
          place: nil,
          # Search score of the place. This is calculated based on how ‘richly’ the place is
          # defined. For instance, a place with street name, city, state and country
          # attributes set might be ranked lower than a place which has values of house,
          # building, street name, city, state and country attributes set. The score
          # determines the rank of the place among search results. You can also use this
          # field to set a custom score as per its relevance to rank it among the search
          # results from multiple data sources.
          score: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              key: String,
              data_source:
                Nextbillionai::Multigeocode::PlaceUpdateParams::DataSource,
              place: T::Array[Nextbillionai::Multigeocode::PlaceItem],
              score: Integer,
              request_options: Nextbillionai::RequestOptions
            }
          )
        end
        def to_hash
        end

        class DataSource < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Multigeocode::PlaceUpdateParams::DataSource,
                Nextbillionai::Internal::AnyHash
              )
            end

          # This parameter represents the unique reference ID associated with the data
          # source.
          sig { returns(T.nilable(String)) }
          attr_reader :ref_id

          sig { params(ref_id: String).void }
          attr_writer :ref_id

          # 1. Move the place to a new dataset by setting the value to a unique dataset
          #    name. You can also move the place to an existing dataset by using an existing
          #    dataset name other than the current one. In both cases, the current
          #    datasource will be replaced for the specified docID.
          #
          # 2. Update the place in an existing dataset by setting the name to the current
          #    value.
          sig { returns(T.nilable(String)) }
          attr_reader :source

          sig { params(source: String).void }
          attr_writer :source

          # Set this to either `enable` or `disable` to allow the place to be retrieved by a
          # search API or block it respectively.
          sig do
            returns(
              T.nilable(
                Nextbillionai::Multigeocode::PlaceUpdateParams::DataSource::Status::OrSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Nextbillionai::Multigeocode::PlaceUpdateParams::DataSource::Status::OrSymbol
            ).void
          end
          attr_writer :status

          # dataSource values can be updated to enhance or prioritize the search results to
          # better suit specific business use cases.
          sig do
            params(
              ref_id: String,
              source: String,
              status:
                Nextbillionai::Multigeocode::PlaceUpdateParams::DataSource::Status::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # This parameter represents the unique reference ID associated with the data
            # source.
            ref_id: nil,
            # 1. Move the place to a new dataset by setting the value to a unique dataset
            #    name. You can also move the place to an existing dataset by using an existing
            #    dataset name other than the current one. In both cases, the current
            #    datasource will be replaced for the specified docID.
            #
            # 2. Update the place in an existing dataset by setting the name to the current
            #    value.
            source: nil,
            # Set this to either `enable` or `disable` to allow the place to be retrieved by a
            # search API or block it respectively.
            status: nil
          )
          end

          sig do
            override.returns(
              {
                ref_id: String,
                source: String,
                status:
                  Nextbillionai::Multigeocode::PlaceUpdateParams::DataSource::Status::OrSymbol
              }
            )
          end
          def to_hash
          end

          # Set this to either `enable` or `disable` to allow the place to be retrieved by a
          # search API or block it respectively.
          module Status
            extend Nextbillionai::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Nextbillionai::Multigeocode::PlaceUpdateParams::DataSource::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ENABLE =
              T.let(
                :enable,
                Nextbillionai::Multigeocode::PlaceUpdateParams::DataSource::Status::TaggedSymbol
              )
            DISABLE =
              T.let(
                :disable,
                Nextbillionai::Multigeocode::PlaceUpdateParams::DataSource::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Nextbillionai::Multigeocode::PlaceUpdateParams::DataSource::Status::TaggedSymbol
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
