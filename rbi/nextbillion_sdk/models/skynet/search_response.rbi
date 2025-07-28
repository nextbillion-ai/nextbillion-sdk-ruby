# typed: strong

module NextbillionSDK
  module Models
    module Skynet
      class SearchResponse < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Skynet::SearchResponse,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # A data object containing the search result.
        sig { returns(T.nilable(NextbillionSDK::Skynet::SearchResponse::Data)) }
        attr_reader :data

        sig do
          params(
            data: NextbillionSDK::Skynet::SearchResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        # Displays the error message in case of a failed request. If the request is
        # successful, this field is not present in the response.
        sig { returns(T.nilable(String)) }
        attr_reader :message

        sig { params(message: String).void }
        attr_writer :message

        # A string indicating the state of the response. On successful responses, the
        # value will be `Ok`. Indicative error messages are returned for different errors.
        # See the [API Error Codes](#api-error-codes) section below for more information.
        sig { returns(T.nilable(String)) }
        attr_reader :status

        sig { params(status: String).void }
        attr_writer :status

        sig do
          params(
            data: NextbillionSDK::Skynet::SearchResponse::Data::OrHash,
            message: String,
            status: String
          ).returns(T.attached_class)
        end
        def self.new(
          # A data object containing the search result.
          data: nil,
          # Displays the error message in case of a failed request. If the request is
          # successful, this field is not present in the response.
          message: nil,
          # A string indicating the state of the response. On successful responses, the
          # value will be `Ok`. Indicative error messages are returned for different errors.
          # See the [API Error Codes](#api-error-codes) section below for more information.
          status: nil
        )
        end

        sig do
          override.returns(
            {
              data: NextbillionSDK::Skynet::SearchResponse::Data,
              message: String,
              status: String
            }
          )
        end
        def to_hash
        end

        class Data < NextbillionSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                NextbillionSDK::Skynet::SearchResponse::Data,
                NextbillionSDK::Internal::AnyHash
              )
            end

          # An array of objects with details of the asset(s) returned in the search result.
          # Each object represents one `asset`
          sig do
            returns(
              T.nilable(
                T::Array[NextbillionSDK::Skynet::SearchResponse::Data::Asset]
              )
            )
          end
          attr_reader :assets

          sig do
            params(
              assets:
                T::Array[
                  NextbillionSDK::Skynet::SearchResponse::Data::Asset::OrHash
                ]
            ).void
          end
          attr_writer :assets

          # An object with pagination details of the search results. Use this object to
          # implement pagination in your application.
          sig { returns(T.nilable(NextbillionSDK::Skynet::Pagination)) }
          attr_reader :page

          sig { params(page: NextbillionSDK::Skynet::Pagination::OrHash).void }
          attr_writer :page

          # A data object containing the search result.
          sig do
            params(
              assets:
                T::Array[
                  NextbillionSDK::Skynet::SearchResponse::Data::Asset::OrHash
                ],
              page: NextbillionSDK::Skynet::Pagination::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # An array of objects with details of the asset(s) returned in the search result.
            # Each object represents one `asset`
            assets: nil,
            # An object with pagination details of the search results. Use this object to
            # implement pagination in your application.
            page: nil
          )
          end

          sig do
            override.returns(
              {
                assets:
                  T::Array[NextbillionSDK::Skynet::SearchResponse::Data::Asset],
                page: NextbillionSDK::Skynet::Pagination
              }
            )
          end
          def to_hash
          end

          class Asset < NextbillionSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  NextbillionSDK::Skynet::SearchResponse::Data::Asset,
                  NextbillionSDK::Internal::AnyHash
                )
              end

            # ID of `asset` which was last located inside the specified area in the input
            # request. This is the same ID that was generated/provided at the time of creating
            # the `asset`.
            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            # A UNIX timestamp in seconds representing the time at which the `asset` was
            # created.
            sig { returns(T.nilable(Integer)) }
            attr_reader :created_at

            sig { params(created_at: Integer).void }
            attr_writer :created_at

            # Description of the `asset`. The value would be the same as that provided for the
            # `description` parameter at the time of creating or updating the `asset`.
            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            # An object with details of the tracked location. Please note that if there are no
            # tracking records for an asset, no location data will be returned.
            sig do
              returns(T.nilable(NextbillionSDK::Skynet::Asset::TrackLocation))
            end
            attr_reader :latest_location

            sig do
              params(
                latest_location:
                  NextbillionSDK::Skynet::Asset::TrackLocation::OrHash
              ).void
            end
            attr_writer :latest_location

            # Any valid json object data. Can be used to save customized data. Max size is
            # 65kb.
            sig { returns(T.nilable(T.anything)) }
            attr_reader :meta_data

            sig { params(meta_data: T.anything).void }
            attr_writer :meta_data

            # Name of `asset`. The value would be the same as that provided for the `name`
            # parameter at the time of creating or updating the `asset`.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # An object returning the sorting details of the asset as per the configuration
            # specified in the input.
            sig do
              returns(
                T.nilable(
                  NextbillionSDK::Skynet::SearchResponse::Data::Asset::RankingInfo
                )
              )
            end
            attr_reader :ranking_info

            sig do
              params(
                ranking_info:
                  NextbillionSDK::Skynet::SearchResponse::Data::Asset::RankingInfo::OrHash
              ).void
            end
            attr_writer :ranking_info

            # **This parameter will be deprecated soon! Please move existing `tags` to
            # `attributes` parameter.**
            #
            # Tags associated with the `asset`.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :tags

            sig { params(tags: T::Array[String]).void }
            attr_writer :tags

            # A UNIX epoch timestamp in seconds representing the last time when the `asset`
            # was tracked.
            sig { returns(T.nilable(Integer)) }
            attr_reader :tracked_at

            sig { params(tracked_at: Integer).void }
            attr_writer :tracked_at

            # A UNIX timestamp in seconds representing the time at which the `asset` was last
            # updated.
            sig { returns(T.nilable(Integer)) }
            attr_reader :updated_at

            sig { params(updated_at: Integer).void }
            attr_writer :updated_at

            sig do
              params(
                id: String,
                created_at: Integer,
                description: String,
                latest_location:
                  NextbillionSDK::Skynet::Asset::TrackLocation::OrHash,
                meta_data: T.anything,
                name: String,
                ranking_info:
                  NextbillionSDK::Skynet::SearchResponse::Data::Asset::RankingInfo::OrHash,
                tags: T::Array[String],
                tracked_at: Integer,
                updated_at: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              # ID of `asset` which was last located inside the specified area in the input
              # request. This is the same ID that was generated/provided at the time of creating
              # the `asset`.
              id: nil,
              # A UNIX timestamp in seconds representing the time at which the `asset` was
              # created.
              created_at: nil,
              # Description of the `asset`. The value would be the same as that provided for the
              # `description` parameter at the time of creating or updating the `asset`.
              description: nil,
              # An object with details of the tracked location. Please note that if there are no
              # tracking records for an asset, no location data will be returned.
              latest_location: nil,
              # Any valid json object data. Can be used to save customized data. Max size is
              # 65kb.
              meta_data: nil,
              # Name of `asset`. The value would be the same as that provided for the `name`
              # parameter at the time of creating or updating the `asset`.
              name: nil,
              # An object returning the sorting details of the asset as per the configuration
              # specified in the input.
              ranking_info: nil,
              # **This parameter will be deprecated soon! Please move existing `tags` to
              # `attributes` parameter.**
              #
              # Tags associated with the `asset`.
              tags: nil,
              # A UNIX epoch timestamp in seconds representing the last time when the `asset`
              # was tracked.
              tracked_at: nil,
              # A UNIX timestamp in seconds representing the time at which the `asset` was last
              # updated.
              updated_at: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  created_at: Integer,
                  description: String,
                  latest_location: NextbillionSDK::Skynet::Asset::TrackLocation,
                  meta_data: T.anything,
                  name: String,
                  ranking_info:
                    NextbillionSDK::Skynet::SearchResponse::Data::Asset::RankingInfo,
                  tags: T::Array[String],
                  tracked_at: Integer,
                  updated_at: Integer
                }
              )
            end
            def to_hash
            end

            class RankingInfo < NextbillionSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    NextbillionSDK::Skynet::SearchResponse::Data::Asset::RankingInfo,
                    NextbillionSDK::Internal::AnyHash
                  )
                end

              # Driving distance between the asset and the `sort_destination`.
              sig { returns(T.nilable(Float)) }
              attr_reader :distance

              sig { params(distance: Float).void }
              attr_writer :distance

              # Driving duration between the asset and the `sort_destination`. Please note this
              # field in not returned in the response when `sort_by = straight_distance` .
              sig { returns(T.nilable(Float)) }
              attr_reader :duration

              sig { params(duration: Float).void }
              attr_writer :duration

              # Index of the ranked asset. The index value starts from 0.
              sig { returns(T.nilable(Integer)) }
              attr_reader :index

              sig { params(index: Integer).void }
              attr_writer :index

              # An object returning the sorting details of the asset as per the configuration
              # specified in the input.
              sig do
                params(
                  distance: Float,
                  duration: Float,
                  index: Integer
                ).returns(T.attached_class)
              end
              def self.new(
                # Driving distance between the asset and the `sort_destination`.
                distance: nil,
                # Driving duration between the asset and the `sort_destination`. Please note this
                # field in not returned in the response when `sort_by = straight_distance` .
                duration: nil,
                # Index of the ranked asset. The index value starts from 0.
                index: nil
              )
              end

              sig do
                override.returns(
                  { distance: Float, duration: Float, index: Integer }
                )
              end
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
