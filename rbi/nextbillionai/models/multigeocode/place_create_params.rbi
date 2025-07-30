# typed: strong

module Nextbillionai
  module Models
    module Multigeocode
      class PlaceCreateParams < Nextbillionai::Internal::Type::BaseModel
        extend Nextbillionai::Internal::Type::RequestParameters::Converter
        include Nextbillionai::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Multigeocode::PlaceCreateParams,
              Nextbillionai::Internal::AnyHash
            )
          end

        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        sig { returns(String) }
        attr_accessor :key

        # This parameter represents the place details, including geographical information,
        # address and other related information.
        sig do
          returns(
            T::Array[Nextbillionai::Multigeocode::PlaceCreateParams::Place]
          )
        end
        attr_accessor :place

        # It contains information about the dataset that returns the specific result
        sig do
          returns(
            T.nilable(
              Nextbillionai::Multigeocode::PlaceCreateParams::DataSource
            )
          )
        end
        attr_reader :data_source

        sig do
          params(
            data_source:
              Nextbillionai::Multigeocode::PlaceCreateParams::DataSource::OrHash
          ).void
        end
        attr_writer :data_source

        # When 2 places are located within 100 meters of each other and have more than 90%
        # of matching attributes (at least 11 out of 12 attributes in the “place” object),
        # they will be considered duplicates and any requests to add such a new place
        # would be rejected. Set `force=true` to override this duplicate check. You can
        # use this to create closely located POIs. For instance, places inside a mall,
        # university or a government building etc.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :force

        sig { params(force: T::Boolean).void }
        attr_writer :force

        # Search score of the place. This is calculated based on how ‘richly’ the place is
        # defined. For instance, a place with - street name, city, state and country
        # attributes set might be ranked lower than a place which has values of - house,
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
            place:
              T::Array[
                Nextbillionai::Multigeocode::PlaceCreateParams::Place::OrHash
              ],
            data_source:
              Nextbillionai::Multigeocode::PlaceCreateParams::DataSource::OrHash,
            force: T::Boolean,
            score: Integer,
            request_options: Nextbillionai::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          # This parameter represents the place details, including geographical information,
          # address and other related information.
          place:,
          # It contains information about the dataset that returns the specific result
          data_source: nil,
          # When 2 places are located within 100 meters of each other and have more than 90%
          # of matching attributes (at least 11 out of 12 attributes in the “place” object),
          # they will be considered duplicates and any requests to add such a new place
          # would be rejected. Set `force=true` to override this duplicate check. You can
          # use this to create closely located POIs. For instance, places inside a mall,
          # university or a government building etc.
          force: nil,
          # Search score of the place. This is calculated based on how ‘richly’ the place is
          # defined. For instance, a place with - street name, city, state and country
          # attributes set might be ranked lower than a place which has values of - house,
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
              place:
                T::Array[Nextbillionai::Multigeocode::PlaceCreateParams::Place],
              data_source:
                Nextbillionai::Multigeocode::PlaceCreateParams::DataSource,
              force: T::Boolean,
              score: Integer,
              request_options: Nextbillionai::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Place < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Multigeocode::PlaceCreateParams::Place,
                Nextbillionai::Internal::AnyHash
              )
            end

          # This parameter represents the geographical coordinates of the place. It includes
          # the latitude and longitude values.
          sig do
            returns(
              Nextbillionai::Multigeocode::PlaceCreateParams::Place::Geopoint
            )
          end
          attr_reader :geopoint

          sig do
            params(
              geopoint:
                Nextbillionai::Multigeocode::PlaceCreateParams::Place::Geopoint::OrHash
            ).void
          end
          attr_writer :geopoint

          # This parameter represents the complete address of the place, including the
          # street, city, state, postal code and country.
          sig { returns(T.nilable(String)) }
          attr_reader :address

          sig { params(address: String).void }
          attr_writer :address

          # This parameter represents additional building information if applicable.
          sig { returns(T.nilable(String)) }
          attr_reader :building

          sig { params(building: String).void }
          attr_writer :building

          # This parameter represents the city or town of the place.
          sig { returns(T.nilable(String)) }
          attr_reader :city

          sig { params(city: String).void }
          attr_writer :city

          # Country of the search context provided as comma-separated
          # [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country
          # codes.
          #
          # Note: Country codes should be provided in uppercase.
          sig { returns(T.nilable(String)) }
          attr_reader :country

          sig { params(country: String).void }
          attr_writer :country

          # This parameter represents the district of the place.
          sig { returns(T.nilable(String)) }
          attr_reader :district

          sig { params(district: String).void }
          attr_writer :district

          # This parameter represents the house or building number of the place.
          sig { returns(T.nilable(String)) }
          attr_reader :house

          sig { params(house: String).void }
          attr_writer :house

          # This parameter represents a point of interest within the place. A Point of
          # Interest (POI) refers to a specific location or area that is of interest to
          # individuals for various reasons. It could be a landmark, tourist attraction,
          # business, or any other location that people might find important or intriguing.
          sig do
            returns(
              T.nilable(
                Nextbillionai::Multigeocode::PlaceCreateParams::Place::Poi
              )
            )
          end
          attr_reader :poi

          sig do
            params(
              poi:
                Nextbillionai::Multigeocode::PlaceCreateParams::Place::Poi::OrHash
            ).void
          end
          attr_writer :poi

          # This parameter represents the postal code or ZIP code of the place.
          sig { returns(T.nilable(String)) }
          attr_reader :postal_code

          sig { params(postal_code: String).void }
          attr_writer :postal_code

          # This parameter represents the state or region of the place.
          sig { returns(T.nilable(String)) }
          attr_reader :state

          sig { params(state: String).void }
          attr_writer :state

          # This parameter represents the street name of the place.
          sig { returns(T.nilable(String)) }
          attr_reader :street

          sig { params(street: String).void }
          attr_writer :street

          # This parameter represents the sub-district or locality of the place.
          sig { returns(T.nilable(String)) }
          attr_reader :sub_district

          sig { params(sub_district: String).void }
          attr_writer :sub_district

          sig do
            params(
              geopoint:
                Nextbillionai::Multigeocode::PlaceCreateParams::Place::Geopoint::OrHash,
              address: String,
              building: String,
              city: String,
              country: String,
              district: String,
              house: String,
              poi:
                Nextbillionai::Multigeocode::PlaceCreateParams::Place::Poi::OrHash,
              postal_code: String,
              state: String,
              street: String,
              sub_district: String
            ).returns(T.attached_class)
          end
          def self.new(
            # This parameter represents the geographical coordinates of the place. It includes
            # the latitude and longitude values.
            geopoint:,
            # This parameter represents the complete address of the place, including the
            # street, city, state, postal code and country.
            address: nil,
            # This parameter represents additional building information if applicable.
            building: nil,
            # This parameter represents the city or town of the place.
            city: nil,
            # Country of the search context provided as comma-separated
            # [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country
            # codes.
            #
            # Note: Country codes should be provided in uppercase.
            country: nil,
            # This parameter represents the district of the place.
            district: nil,
            # This parameter represents the house or building number of the place.
            house: nil,
            # This parameter represents a point of interest within the place. A Point of
            # Interest (POI) refers to a specific location or area that is of interest to
            # individuals for various reasons. It could be a landmark, tourist attraction,
            # business, or any other location that people might find important or intriguing.
            poi: nil,
            # This parameter represents the postal code or ZIP code of the place.
            postal_code: nil,
            # This parameter represents the state or region of the place.
            state: nil,
            # This parameter represents the street name of the place.
            street: nil,
            # This parameter represents the sub-district or locality of the place.
            sub_district: nil
          )
          end

          sig do
            override.returns(
              {
                geopoint:
                  Nextbillionai::Multigeocode::PlaceCreateParams::Place::Geopoint,
                address: String,
                building: String,
                city: String,
                country: String,
                district: String,
                house: String,
                poi: Nextbillionai::Multigeocode::PlaceCreateParams::Place::Poi,
                postal_code: String,
                state: String,
                street: String,
                sub_district: String
              }
            )
          end
          def to_hash
          end

          class Geopoint < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Multigeocode::PlaceCreateParams::Place::Geopoint,
                  Nextbillionai::Internal::AnyHash
                )
              end

            # This parameter represents the latitude value of the place.
            sig { returns(T.nilable(Float)) }
            attr_reader :lat

            sig { params(lat: Float).void }
            attr_writer :lat

            # This parameter represents the longitude value of the place.
            sig { returns(T.nilable(Float)) }
            attr_reader :lng

            sig { params(lng: Float).void }
            attr_writer :lng

            # This parameter represents the geographical coordinates of the place. It includes
            # the latitude and longitude values.
            sig { params(lat: Float, lng: Float).returns(T.attached_class) }
            def self.new(
              # This parameter represents the latitude value of the place.
              lat: nil,
              # This parameter represents the longitude value of the place.
              lng: nil
            )
            end

            sig { override.returns({ lat: Float, lng: Float }) }
            def to_hash
            end
          end

          class Poi < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Multigeocode::PlaceCreateParams::Place::Poi,
                  Nextbillionai::Internal::AnyHash
                )
              end

            # A title that describes the point of interest.
            sig { returns(T.nilable(String)) }
            attr_reader :title

            sig { params(title: String).void }
            attr_writer :title

            # This parameter represents a point of interest within the place. A Point of
            # Interest (POI) refers to a specific location or area that is of interest to
            # individuals for various reasons. It could be a landmark, tourist attraction,
            # business, or any other location that people might find important or intriguing.
            sig { params(title: String).returns(T.attached_class) }
            def self.new(
              # A title that describes the point of interest.
              title: nil
            )
            end

            sig { override.returns({ title: String }) }
            def to_hash
            end
          end
        end

        class DataSource < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Multigeocode::PlaceCreateParams::DataSource,
                Nextbillionai::Internal::AnyHash
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
                Nextbillionai::Multigeocode::PlaceCreateParams::DataSource::Status::OrSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Nextbillionai::Multigeocode::PlaceCreateParams::DataSource::Status::OrSymbol
            ).void
          end
          attr_writer :status

          # It contains information about the dataset that returns the specific result
          sig do
            params(
              ref_id: String,
              source: String,
              status:
                Nextbillionai::Multigeocode::PlaceCreateParams::DataSource::Status::OrSymbol
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
                  Nextbillionai::Multigeocode::PlaceCreateParams::DataSource::Status::OrSymbol
              }
            )
          end
          def to_hash
          end

          # This parameter indicates if a place is searchable.
          module Status
            extend Nextbillionai::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Nextbillionai::Multigeocode::PlaceCreateParams::DataSource::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ENABLE =
              T.let(
                :enable,
                Nextbillionai::Multigeocode::PlaceCreateParams::DataSource::Status::TaggedSymbol
              )
            DISABLE =
              T.let(
                :disable,
                Nextbillionai::Multigeocode::PlaceCreateParams::DataSource::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Nextbillionai::Multigeocode::PlaceCreateParams::DataSource::Status::TaggedSymbol
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
