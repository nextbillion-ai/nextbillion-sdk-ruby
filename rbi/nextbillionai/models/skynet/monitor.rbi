# typed: strong

module Nextbillionai
  module Models
    module Skynet
      class SkynetMonitor < Nextbillionai::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Skynet::SkynetMonitor,
              Nextbillionai::Internal::AnyHash
            )
          end

        # Unique ID of the monitor. This is the same ID that was generated at the time of
        # creating the monitor.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # A UNIX epoch timestamp in seconds representing the time at which the monitor was
        # created.
        sig { returns(T.nilable(Integer)) }
        attr_reader :created_at

        sig { params(created_at: Integer).void }
        attr_writer :created_at

        # Description of the monitor. The value would be the same as that provided for the
        # description parameter at the time of creating or updating the monitor.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # An object returning the details of the geofence that are associated with the
        # monitor for an enter, exit or enter_and_exit type of monitor.
        sig do
          returns(
            T.nilable(Nextbillionai::Skynet::SkynetMonitor::GeofenceConfig)
          )
        end
        attr_reader :geofence_config

        sig do
          params(
            geofence_config:
              Nextbillionai::Skynet::SkynetMonitor::GeofenceConfig::OrHash
          ).void
        end
        attr_writer :geofence_config

        # Geofence IDs that are linked to the monitor. These IDs were associated with the
        # monitor at the time of creating or updating it.
        #
        # The monitor uses the geofences mentioned here to create events of type nature
        # for the eligible asset(s).
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :geofences

        sig { params(geofences: T::Array[String]).void }
        attr_writer :geofences

        # An object returning the details of the idle activity constraints for a idle type
        # of monitor.
        sig do
          returns(T.nilable(Nextbillionai::Skynet::SkynetMonitor::IdleConfig))
        end
        attr_reader :idle_config

        sig do
          params(
            idle_config:
              Nextbillionai::Skynet::SkynetMonitor::IdleConfig::OrHash
          ).void
        end
        attr_writer :idle_config

        # Use this object to update the attributes of the monitor.
        sig do
          returns(T.nilable(Nextbillionai::Skynet::SkynetMonitor::MatchFilter))
        end
        attr_reader :match_filter

        sig do
          params(
            match_filter:
              Nextbillionai::Skynet::SkynetMonitor::MatchFilter::OrHash
          ).void
        end
        attr_writer :match_filter

        # Any valid json object data. Can be used to save customized data. Max size is
        # 65kb.
        sig { returns(T.nilable(T.anything)) }
        attr_reader :meta_data

        sig { params(meta_data: T.anything).void }
        attr_writer :meta_data

        # Name of the monitor. The value would be the same as that provided for the name
        # parameter at the time of creating or updating the monitor.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # An object returning the details of the over-speeding constraints for a speeding
        # type of monitor.
        sig do
          returns(
            T.nilable(Nextbillionai::Skynet::SkynetMonitor::SpeedingConfig)
          )
        end
        attr_reader :speeding_config

        sig do
          params(
            speeding_config:
              Nextbillionai::Skynet::SkynetMonitor::SpeedingConfig::OrHash
          ).void
        end
        attr_writer :speeding_config

        # Tags of the monitor. The values would be the same as that provided for the tags
        # parameter at the time of creating or updating the monitor.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :tags

        sig { params(tags: T::Array[String]).void }
        attr_writer :tags

        # Type of the monitor. It represents the type of asset activity that the monitor
        # is configured to detect.
        sig do
          returns(
            T.nilable(Nextbillionai::Skynet::SkynetMonitor::Type::TaggedSymbol)
          )
        end
        attr_reader :type

        sig do
          params(
            type: Nextbillionai::Skynet::SkynetMonitor::Type::OrSymbol
          ).void
        end
        attr_writer :type

        # A UNIX epoch timestamp in seconds representing the time at which the monitor was
        # last updated.
        sig { returns(T.nilable(Integer)) }
        attr_reader :updated_at

        sig { params(updated_at: Integer).void }
        attr_writer :updated_at

        sig do
          params(
            id: String,
            created_at: Integer,
            description: String,
            geofence_config:
              Nextbillionai::Skynet::SkynetMonitor::GeofenceConfig::OrHash,
            geofences: T::Array[String],
            idle_config:
              Nextbillionai::Skynet::SkynetMonitor::IdleConfig::OrHash,
            match_filter:
              Nextbillionai::Skynet::SkynetMonitor::MatchFilter::OrHash,
            meta_data: T.anything,
            name: String,
            speeding_config:
              Nextbillionai::Skynet::SkynetMonitor::SpeedingConfig::OrHash,
            tags: T::Array[String],
            type: Nextbillionai::Skynet::SkynetMonitor::Type::OrSymbol,
            updated_at: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique ID of the monitor. This is the same ID that was generated at the time of
          # creating the monitor.
          id: nil,
          # A UNIX epoch timestamp in seconds representing the time at which the monitor was
          # created.
          created_at: nil,
          # Description of the monitor. The value would be the same as that provided for the
          # description parameter at the time of creating or updating the monitor.
          description: nil,
          # An object returning the details of the geofence that are associated with the
          # monitor for an enter, exit or enter_and_exit type of monitor.
          geofence_config: nil,
          # Geofence IDs that are linked to the monitor. These IDs were associated with the
          # monitor at the time of creating or updating it.
          #
          # The monitor uses the geofences mentioned here to create events of type nature
          # for the eligible asset(s).
          geofences: nil,
          # An object returning the details of the idle activity constraints for a idle type
          # of monitor.
          idle_config: nil,
          # Use this object to update the attributes of the monitor.
          match_filter: nil,
          # Any valid json object data. Can be used to save customized data. Max size is
          # 65kb.
          meta_data: nil,
          # Name of the monitor. The value would be the same as that provided for the name
          # parameter at the time of creating or updating the monitor.
          name: nil,
          # An object returning the details of the over-speeding constraints for a speeding
          # type of monitor.
          speeding_config: nil,
          # Tags of the monitor. The values would be the same as that provided for the tags
          # parameter at the time of creating or updating the monitor.
          tags: nil,
          # Type of the monitor. It represents the type of asset activity that the monitor
          # is configured to detect.
          type: nil,
          # A UNIX epoch timestamp in seconds representing the time at which the monitor was
          # last updated.
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Integer,
              description: String,
              geofence_config:
                Nextbillionai::Skynet::SkynetMonitor::GeofenceConfig,
              geofences: T::Array[String],
              idle_config: Nextbillionai::Skynet::SkynetMonitor::IdleConfig,
              match_filter: Nextbillionai::Skynet::SkynetMonitor::MatchFilter,
              meta_data: T.anything,
              name: String,
              speeding_config:
                Nextbillionai::Skynet::SkynetMonitor::SpeedingConfig,
              tags: T::Array[String],
              type: Nextbillionai::Skynet::SkynetMonitor::Type::TaggedSymbol,
              updated_at: Integer
            }
          )
        end
        def to_hash
        end

        class GeofenceConfig < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Skynet::SkynetMonitor::GeofenceConfig,
                Nextbillionai::Internal::AnyHash
              )
            end

          # An array of geofence IDs that are linked to the monitor. Geofences are
          # geographic boundaries that can be used to trigger events based on an asset's
          # location.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :geofence_ids

          sig { params(geofence_ids: T::Array[String]).void }
          attr_writer :geofence_ids

          # An object returning the details of the geofence that are associated with the
          # monitor for an enter, exit or enter_and_exit type of monitor.
          sig do
            params(geofence_ids: T::Array[String]).returns(T.attached_class)
          end
          def self.new(
            # An array of geofence IDs that are linked to the monitor. Geofences are
            # geographic boundaries that can be used to trigger events based on an asset's
            # location.
            geofence_ids: nil
          )
          end

          sig { override.returns({ geofence_ids: T::Array[String] }) }
          def to_hash
          end
        end

        class IdleConfig < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Skynet::SkynetMonitor::IdleConfig,
                Nextbillionai::Internal::AnyHash
              )
            end

          # This parameter returns the distance threshold that was used to determine if the
          # asset was idle or not. The value returned for this parameter is the same as that
          # provided while creating or updating a idle type monitor.
          sig { returns(T.nilable(Float)) }
          attr_reader :distance_tolerance

          sig { params(distance_tolerance: Float).void }
          attr_writer :distance_tolerance

          # This parameter returns the time duration for which the monitor tracks the
          # distance covered by an asset before triggering an idle event. The value returned
          # for this parameter is the same as that provided while creating or updating a
          # idle type monitor.
          sig { returns(T.nilable(Integer)) }
          attr_reader :time_tolerance

          sig { params(time_tolerance: Integer).void }
          attr_writer :time_tolerance

          # An object returning the details of the idle activity constraints for a idle type
          # of monitor.
          sig do
            params(distance_tolerance: Float, time_tolerance: Integer).returns(
              T.attached_class
            )
          end
          def self.new(
            # This parameter returns the distance threshold that was used to determine if the
            # asset was idle or not. The value returned for this parameter is the same as that
            # provided while creating or updating a idle type monitor.
            distance_tolerance: nil,
            # This parameter returns the time duration for which the monitor tracks the
            # distance covered by an asset before triggering an idle event. The value returned
            # for this parameter is the same as that provided while creating or updating a
            # idle type monitor.
            time_tolerance: nil
          )
          end

          sig do
            override.returns(
              { distance_tolerance: Float, time_tolerance: Integer }
            )
          end
          def to_hash
          end
        end

        class MatchFilter < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Skynet::SkynetMonitor::MatchFilter,
                Nextbillionai::Internal::AnyHash
              )
            end

          # A string type dictionary object to specify the attributes which will be used to
          # identify the asset(s) on which the monitor would be applied. Please note that
          # using this parameter overwrites the existing attributes of the monitor.
          #
          # If the attributes added to a monitor do not match fully with the attributes
          # added to any asset, the monitor will be ineffective.
          #
          # Please note that the maximum number of key:value pairs that
          # 'include_all_of_attributes' can take is 100. Also, the overall size of the
          # match_filter object should not exceed 65kb.
          sig { returns(T.nilable(T.anything)) }
          attr_reader :include_all_of_attributes

          sig { params(include_all_of_attributes: T.anything).void }
          attr_writer :include_all_of_attributes

          # A string dictionary object to specify the attributes, separated by a ,. Only the
          # assets with any one of the attributes added to this parameter will be linked to
          # this monitor. Once an asset and a monitor are linked, the monitor will be able
          # to create events for the asset when an activity specified in type is detected.
          #
          # If no input is provided for this object or if the attributes added here do not
          # match at least one of the attributes added to any asset, the monitor will be
          # ineffective.
          #
          # Please note that the maximum number of key:value pairs that
          # include_any_of_attributes can take is 100. Also, the overall size of
          # match_filter object should not exceed 65kb.
          sig { returns(T.nilable(T.anything)) }
          attr_reader :include_any_of_attributes

          sig { params(include_any_of_attributes: T.anything).void }
          attr_writer :include_any_of_attributes

          # Use this object to update the attributes of the monitor.
          sig do
            params(
              include_all_of_attributes: T.anything,
              include_any_of_attributes: T.anything
            ).returns(T.attached_class)
          end
          def self.new(
            # A string type dictionary object to specify the attributes which will be used to
            # identify the asset(s) on which the monitor would be applied. Please note that
            # using this parameter overwrites the existing attributes of the monitor.
            #
            # If the attributes added to a monitor do not match fully with the attributes
            # added to any asset, the monitor will be ineffective.
            #
            # Please note that the maximum number of key:value pairs that
            # 'include_all_of_attributes' can take is 100. Also, the overall size of the
            # match_filter object should not exceed 65kb.
            include_all_of_attributes: nil,
            # A string dictionary object to specify the attributes, separated by a ,. Only the
            # assets with any one of the attributes added to this parameter will be linked to
            # this monitor. Once an asset and a monitor are linked, the monitor will be able
            # to create events for the asset when an activity specified in type is detected.
            #
            # If no input is provided for this object or if the attributes added here do not
            # match at least one of the attributes added to any asset, the monitor will be
            # ineffective.
            #
            # Please note that the maximum number of key:value pairs that
            # include_any_of_attributes can take is 100. Also, the overall size of
            # match_filter object should not exceed 65kb.
            include_any_of_attributes: nil
          )
          end

          sig do
            override.returns(
              {
                include_all_of_attributes: T.anything,
                include_any_of_attributes: T.anything
              }
            )
          end
          def to_hash
          end
        end

        class SpeedingConfig < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Skynet::SkynetMonitor::SpeedingConfig,
                Nextbillionai::Internal::AnyHash
              )
            end

          # This property returns the actual speed limit that the monitor uses as a
          # threshold for generating a speed limit event. The value returned for this
          # parameter is the same as that provided while creating or updating a speeding
          # type monitor.
          sig { returns(T.nilable(Integer)) }
          attr_reader :customer_speed_limit

          sig { params(customer_speed_limit: Integer).void }
          attr_writer :customer_speed_limit

          # This property returns the time duration value, in milliseconds, for which the
          # monitor will track the speed of the asset. An event is triggered if the speed
          # remains higher than the specified limit for a duration more than the tolerance
          # value.
          #
          # The value returned for this parameter is the same as that provided while
          # creating or updating a speeding type monitor.
          sig { returns(T.nilable(Integer)) }
          attr_reader :time_tolerance

          sig { params(time_tolerance: Integer).void }
          attr_writer :time_tolerance

          # A boolean value denoting if the administrative speed limit of the road was used
          # as speed limit threshold for triggering events. The value returned for this
          # parameter is the same as that provided while creating or updating a speeding
          # type monitor.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :use_admin_speed_limit

          sig { params(use_admin_speed_limit: T::Boolean).void }
          attr_writer :use_admin_speed_limit

          # An object returning the details of the over-speeding constraints for a speeding
          # type of monitor.
          sig do
            params(
              customer_speed_limit: Integer,
              time_tolerance: Integer,
              use_admin_speed_limit: T::Boolean
            ).returns(T.attached_class)
          end
          def self.new(
            # This property returns the actual speed limit that the monitor uses as a
            # threshold for generating a speed limit event. The value returned for this
            # parameter is the same as that provided while creating or updating a speeding
            # type monitor.
            customer_speed_limit: nil,
            # This property returns the time duration value, in milliseconds, for which the
            # monitor will track the speed of the asset. An event is triggered if the speed
            # remains higher than the specified limit for a duration more than the tolerance
            # value.
            #
            # The value returned for this parameter is the same as that provided while
            # creating or updating a speeding type monitor.
            time_tolerance: nil,
            # A boolean value denoting if the administrative speed limit of the road was used
            # as speed limit threshold for triggering events. The value returned for this
            # parameter is the same as that provided while creating or updating a speeding
            # type monitor.
            use_admin_speed_limit: nil
          )
          end

          sig do
            override.returns(
              {
                customer_speed_limit: Integer,
                time_tolerance: Integer,
                use_admin_speed_limit: T::Boolean
              }
            )
          end
          def to_hash
          end
        end

        # Type of the monitor. It represents the type of asset activity that the monitor
        # is configured to detect.
        module Type
          extend Nextbillionai::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Nextbillionai::Skynet::SkynetMonitor::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ENTER =
            T.let(
              :enter,
              Nextbillionai::Skynet::SkynetMonitor::Type::TaggedSymbol
            )
          EXIT =
            T.let(
              :exit,
              Nextbillionai::Skynet::SkynetMonitor::Type::TaggedSymbol
            )
          ENTER_AND_EXIT =
            T.let(
              :enter_and_exit,
              Nextbillionai::Skynet::SkynetMonitor::Type::TaggedSymbol
            )
          SPEEDING =
            T.let(
              :speeding,
              Nextbillionai::Skynet::SkynetMonitor::Type::TaggedSymbol
            )
          IDLE =
            T.let(
              :idle,
              Nextbillionai::Skynet::SkynetMonitor::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Nextbillionai::Skynet::SkynetMonitor::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
