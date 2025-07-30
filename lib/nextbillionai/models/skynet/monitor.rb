# frozen_string_literal: true

module Nextbillionai
  module Models
    module Skynet
      class SkynetMonitor < Nextbillionai::Internal::Type::BaseModel
        # @!attribute id
        #   Unique ID of the monitor. This is the same ID that was generated at the time of
        #   creating the monitor.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute created_at
        #   A UNIX epoch timestamp in seconds representing the time at which the monitor was
        #   created.
        #
        #   @return [Integer, nil]
        optional :created_at, Integer

        # @!attribute description
        #   Description of the monitor. The value would be the same as that provided for the
        #   description parameter at the time of creating or updating the monitor.
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute geofence_config
        #   An object returning the details of the geofence that are associated with the
        #   monitor for an enter, exit or enter_and_exit type of monitor.
        #
        #   @return [Nextbillionai::Models::Skynet::SkynetMonitor::GeofenceConfig, nil]
        optional :geofence_config, -> { Nextbillionai::Skynet::SkynetMonitor::GeofenceConfig }

        # @!attribute geofences
        #   Geofence IDs that are linked to the monitor. These IDs were associated with the
        #   monitor at the time of creating or updating it.
        #
        #   The monitor uses the geofences mentioned here to create events of type nature
        #   for the eligible asset(s).
        #
        #   @return [Array<String>, nil]
        optional :geofences, Nextbillionai::Internal::Type::ArrayOf[String]

        # @!attribute idle_config
        #   An object returning the details of the idle activity constraints for a idle type
        #   of monitor.
        #
        #   @return [Nextbillionai::Models::Skynet::SkynetMonitor::IdleConfig, nil]
        optional :idle_config, -> { Nextbillionai::Skynet::SkynetMonitor::IdleConfig }

        # @!attribute match_filter
        #   Use this object to update the attributes of the monitor.
        #
        #   @return [Nextbillionai::Models::Skynet::SkynetMonitor::MatchFilter, nil]
        optional :match_filter, -> { Nextbillionai::Skynet::SkynetMonitor::MatchFilter }

        # @!attribute meta_data
        #   Any valid json object data. Can be used to save customized data. Max size is
        #   65kb.
        #
        #   @return [Object, nil]
        optional :meta_data, Nextbillionai::Internal::Type::Unknown

        # @!attribute name
        #   Name of the monitor. The value would be the same as that provided for the name
        #   parameter at the time of creating or updating the monitor.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute speeding_config
        #   An object returning the details of the over-speeding constraints for a speeding
        #   type of monitor.
        #
        #   @return [Nextbillionai::Models::Skynet::SkynetMonitor::SpeedingConfig, nil]
        optional :speeding_config, -> { Nextbillionai::Skynet::SkynetMonitor::SpeedingConfig }

        # @!attribute tags
        #   Tags of the monitor. The values would be the same as that provided for the tags
        #   parameter at the time of creating or updating the monitor.
        #
        #   @return [Array<String>, nil]
        optional :tags, Nextbillionai::Internal::Type::ArrayOf[String]

        # @!attribute type
        #   Type of the monitor. It represents the type of asset activity that the monitor
        #   is configured to detect.
        #
        #   @return [Symbol, Nextbillionai::Models::Skynet::SkynetMonitor::Type, nil]
        optional :type, enum: -> { Nextbillionai::Skynet::SkynetMonitor::Type }

        # @!attribute updated_at
        #   A UNIX epoch timestamp in seconds representing the time at which the monitor was
        #   last updated.
        #
        #   @return [Integer, nil]
        optional :updated_at, Integer

        # @!method initialize(id: nil, created_at: nil, description: nil, geofence_config: nil, geofences: nil, idle_config: nil, match_filter: nil, meta_data: nil, name: nil, speeding_config: nil, tags: nil, type: nil, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::Skynet::SkynetMonitor} for more details.
        #
        #   @param id [String] Unique ID of the monitor. This is the same ID that was generated at the time of
        #
        #   @param created_at [Integer] A UNIX epoch timestamp in seconds representing the time at which the monitor was
        #
        #   @param description [String] Description of the monitor. The value would be the same as that provided for the
        #
        #   @param geofence_config [Nextbillionai::Models::Skynet::SkynetMonitor::GeofenceConfig] An object returning the details of the geofence that are associated with the mon
        #
        #   @param geofences [Array<String>] Geofence IDs that are linked to the monitor. These IDs were associated with the
        #
        #   @param idle_config [Nextbillionai::Models::Skynet::SkynetMonitor::IdleConfig] An object returning the details of the idle activity constraints for a idle type
        #
        #   @param match_filter [Nextbillionai::Models::Skynet::SkynetMonitor::MatchFilter] Use this object to update the attributes of the monitor.
        #
        #   @param meta_data [Object] Any valid json object data. Can be used to save customized data. Max size is 65k
        #
        #   @param name [String] Name of the monitor. The value would be the same as that provided for the name p
        #
        #   @param speeding_config [Nextbillionai::Models::Skynet::SkynetMonitor::SpeedingConfig] An object returning the details of the over-speeding constraints for a speeding
        #
        #   @param tags [Array<String>] Tags of the monitor. The values would be the same as that provided for the tags
        #
        #   @param type [Symbol, Nextbillionai::Models::Skynet::SkynetMonitor::Type] Type of the monitor. It represents the type of asset activity that the monitor i
        #
        #   @param updated_at [Integer] A UNIX epoch timestamp in seconds representing the time at which the monitor was

        # @see Nextbillionai::Models::Skynet::SkynetMonitor#geofence_config
        class GeofenceConfig < Nextbillionai::Internal::Type::BaseModel
          # @!attribute geofence_ids
          #   An array of geofence IDs that are linked to the monitor. Geofences are
          #   geographic boundaries that can be used to trigger events based on an asset's
          #   location.
          #
          #   @return [Array<String>, nil]
          optional :geofence_ids, Nextbillionai::Internal::Type::ArrayOf[String]

          # @!method initialize(geofence_ids: nil)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::Skynet::SkynetMonitor::GeofenceConfig} for more details.
          #
          #   An object returning the details of the geofence that are associated with the
          #   monitor for an enter, exit or enter_and_exit type of monitor.
          #
          #   @param geofence_ids [Array<String>] An array of geofence IDs that are linked to the monitor. Geofences are geographi
        end

        # @see Nextbillionai::Models::Skynet::SkynetMonitor#idle_config
        class IdleConfig < Nextbillionai::Internal::Type::BaseModel
          # @!attribute distance_tolerance
          #   This parameter returns the distance threshold that was used to determine if the
          #   asset was idle or not. The value returned for this parameter is the same as that
          #   provided while creating or updating a idle type monitor.
          #
          #   @return [Float, nil]
          optional :distance_tolerance, Float

          # @!attribute time_tolerance
          #   This parameter returns the time duration for which the monitor tracks the
          #   distance covered by an asset before triggering an idle event. The value returned
          #   for this parameter is the same as that provided while creating or updating a
          #   idle type monitor.
          #
          #   @return [Integer, nil]
          optional :time_tolerance, Integer

          # @!method initialize(distance_tolerance: nil, time_tolerance: nil)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::Skynet::SkynetMonitor::IdleConfig} for more details.
          #
          #   An object returning the details of the idle activity constraints for a idle type
          #   of monitor.
          #
          #   @param distance_tolerance [Float] This parameter returns the distance threshold that was used to determine if the
          #
          #   @param time_tolerance [Integer] This parameter returns the time duration for which the monitor tracks the distan
        end

        # @see Nextbillionai::Models::Skynet::SkynetMonitor#match_filter
        class MatchFilter < Nextbillionai::Internal::Type::BaseModel
          # @!attribute include_all_of_attributes
          #   A string type dictionary object to specify the attributes which will be used to
          #   identify the asset(s) on which the monitor would be applied. Please note that
          #   using this parameter overwrites the existing attributes of the monitor.
          #
          #   If the attributes added to a monitor do not match fully with the attributes
          #   added to any asset, the monitor will be ineffective.
          #
          #   Please note that the maximum number of key:value pairs that
          #   'include_all_of_attributes' can take is 100. Also, the overall size of the
          #   match_filter object should not exceed 65kb.
          #
          #   @return [Object, nil]
          optional :include_all_of_attributes, Nextbillionai::Internal::Type::Unknown

          # @!attribute include_any_of_attributes
          #   A string dictionary object to specify the attributes, separated by a ,. Only the
          #   assets with any one of the attributes added to this parameter will be linked to
          #   this monitor. Once an asset and a monitor are linked, the monitor will be able
          #   to create events for the asset when an activity specified in type is detected.
          #
          #   If no input is provided for this object or if the attributes added here do not
          #   match at least one of the attributes added to any asset, the monitor will be
          #   ineffective.
          #
          #   Please note that the maximum number of key:value pairs that
          #   include_any_of_attributes can take is 100. Also, the overall size of
          #   match_filter object should not exceed 65kb.
          #
          #   @return [Object, nil]
          optional :include_any_of_attributes, Nextbillionai::Internal::Type::Unknown

          # @!method initialize(include_all_of_attributes: nil, include_any_of_attributes: nil)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::Skynet::SkynetMonitor::MatchFilter} for more details.
          #
          #   Use this object to update the attributes of the monitor.
          #
          #   @param include_all_of_attributes [Object] A string type dictionary object to specify the attributes which will be used to
          #
          #   @param include_any_of_attributes [Object] A string dictionary object to specify the attributes, separated by a ,. Only the
        end

        # @see Nextbillionai::Models::Skynet::SkynetMonitor#speeding_config
        class SpeedingConfig < Nextbillionai::Internal::Type::BaseModel
          # @!attribute customer_speed_limit
          #   This property returns the actual speed limit that the monitor uses as a
          #   threshold for generating a speed limit event. The value returned for this
          #   parameter is the same as that provided while creating or updating a speeding
          #   type monitor.
          #
          #   @return [Integer, nil]
          optional :customer_speed_limit, Integer

          # @!attribute time_tolerance
          #   This property returns the time duration value, in milliseconds, for which the
          #   monitor will track the speed of the asset. An event is triggered if the speed
          #   remains higher than the specified limit for a duration more than the tolerance
          #   value.
          #
          #   The value returned for this parameter is the same as that provided while
          #   creating or updating a speeding type monitor.
          #
          #   @return [Integer, nil]
          optional :time_tolerance, Integer

          # @!attribute use_admin_speed_limit
          #   A boolean value denoting if the administrative speed limit of the road was used
          #   as speed limit threshold for triggering events. The value returned for this
          #   parameter is the same as that provided while creating or updating a speeding
          #   type monitor.
          #
          #   @return [Boolean, nil]
          optional :use_admin_speed_limit, Nextbillionai::Internal::Type::Boolean

          # @!method initialize(customer_speed_limit: nil, time_tolerance: nil, use_admin_speed_limit: nil)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::Skynet::SkynetMonitor::SpeedingConfig} for more details.
          #
          #   An object returning the details of the over-speeding constraints for a speeding
          #   type of monitor.
          #
          #   @param customer_speed_limit [Integer] This property returns the actual speed limit that the monitor uses as a threshol
          #
          #   @param time_tolerance [Integer] This property returns the time duration value, in milliseconds, for which the mo
          #
          #   @param use_admin_speed_limit [Boolean] A boolean value denoting if the administrative speed limit of the road was used
        end

        # Type of the monitor. It represents the type of asset activity that the monitor
        # is configured to detect.
        #
        # @see Nextbillionai::Models::Skynet::SkynetMonitor#type
        module Type
          extend Nextbillionai::Internal::Type::Enum

          ENTER = :enter
          EXIT = :exit
          ENTER_AND_EXIT = :enter_and_exit
          SPEEDING = :speeding
          IDLE = :idle

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
