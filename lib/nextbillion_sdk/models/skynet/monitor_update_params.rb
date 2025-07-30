# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Skynet
      # @see NextbillionSDK::Resources::Skynet::Monitor#update
      class MonitorUpdateParams < NextbillionSDK::Internal::Type::BaseModel
        extend NextbillionSDK::Internal::Type::RequestParameters::Converter
        include NextbillionSDK::Internal::Type::RequestParameters

        # @!attribute key
        #   A key is a unique identifier that is required to authenticate a request to the
        #   API.
        #
        #   @return [String]
        required :key, String

        # @!attribute description
        #   Use this parameter to update the description of the monitor.
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute geofence_config
        #   geofence_config is used to update the set of geofences linked to the monitor for
        #   creating enter or exit type of events based on the asset's location. Please note
        #   that this object is mandatory when the monitor type belongs to one of enter,
        #   exit or enter_and_exit.
        #
        #   @return [NextbillionSDK::Models::Skynet::MonitorUpdateParams::GeofenceConfig, nil]
        optional :geofence_config, -> { NextbillionSDK::Skynet::MonitorUpdateParams::GeofenceConfig }

        # @!attribute geofence_ids
        #   Use this parameter to update the geofences linked to the monitor by providing
        #   the geofence id as , separated strings. Geofences are geographic boundaries that
        #   can be used to trigger events based on an asset's location.
        #
        #   @return [Array<String>, nil]
        optional :geofence_ids, NextbillionSDK::Internal::Type::ArrayOf[String]

        # @!attribute idle_config
        #   idle_config is used to update the constraints for creating idle events. When an
        #   asset associated with the monitor has not moved a given distance within a given
        #   time, the Live Tracking API can create events to denote such instances.
        #
        #   Please note that this object is mandatory when the monitor type is idle.
        #
        #   @return [NextbillionSDK::Models::Skynet::MonitorUpdateParams::IdleConfig, nil]
        optional :idle_config, -> { NextbillionSDK::Skynet::MonitorUpdateParams::IdleConfig }

        # @!attribute match_filter
        #   Use this object to update the attributes of the monitor. Please note that using
        #   this property will overwrite the existing attributes that the monitor might be
        #   using currently to match any asset(s).
        #
        #   @return [NextbillionSDK::Models::Skynet::MonitorUpdateParams::MatchFilter, nil]
        optional :match_filter, -> { NextbillionSDK::Skynet::MonitorUpdateParams::MatchFilter }

        # @!attribute meta_data
        #   Any valid json object data. Can be used to save customized data. Max size is
        #   65kb.
        #
        #   @return [Object, nil]
        optional :meta_data, NextbillionSDK::Internal::Type::Unknown

        # @!attribute name
        #   Use this parameter to update the name of the monitor. Users can add meaningful
        #   names to the monitors like "warehouse_exit", "depot_entry" etc.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute speeding_config
        #   speeding_config is used to update the tolerance values for creating over-speed
        #   events. When an asset associated with a monitor is traveling at a speed above
        #   the given limits, Live Tracking API creates events to indicate such instances.
        #
        #   Please note that this object is mandatory when the monitor type is speeding.
        #
        #   @return [NextbillionSDK::Models::Skynet::MonitorUpdateParams::SpeedingConfig, nil]
        optional :speeding_config, -> { NextbillionSDK::Skynet::MonitorUpdateParams::SpeedingConfig }

        # @!attribute tags
        #   Use this parameter to update the tags of the monitor. tags can be used for
        #   filtering monitors in the _Get Monitor List_ operation. They can also be used
        #   for easy identification of monitors. Using this parameter overwrites the
        #   existing tags of the monitor.
        #
        #   Please note that valid tags are strings, consisting of alphanumeric characters
        #   (A-Z, a-z, 0-9) along with the underscore ('\_') and hyphen ('-') symbols.
        #
        #   @return [Array<String>, nil]
        optional :tags, NextbillionSDK::Internal::Type::ArrayOf[String]

        # @!attribute type
        #   Use this parameter to update the type of the monitor. The monitor will be able
        #   to detect the specified type of activity and create events for eligible asset. A
        #   monitor can detect following types of asset activity:
        #
        #   - enter: The monitor will create an event when a linked asset enters into the
        #     specified geofence.
        #
        #   - exit: The monitor will create an event when a linked asset exits the specified
        #     geofence.
        #
        #   - enter_and_exit: The monitor will create an event when a linked asset either
        #     enters or exits the specified geofence.
        #
        #   - speeding: The monitor will create an event when a linked asset exceeds a given
        #     speed limit.
        #
        #   - idle: The monitor will create an event when a linked asset exhibits idle
        #     activity.
        #
        #   Please note that assets and geofences can be linked to a monitor using the
        #   match_filter and geofence_config attributes respectively.
        #
        #   @return [Symbol, NextbillionSDK::Models::Skynet::MonitorUpdateParams::Type, nil]
        optional :type, enum: -> { NextbillionSDK::Skynet::MonitorUpdateParams::Type }

        # @!method initialize(key:, description: nil, geofence_config: nil, geofence_ids: nil, idle_config: nil, match_filter: nil, meta_data: nil, name: nil, speeding_config: nil, tags: nil, type: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::Skynet::MonitorUpdateParams} for more details.
        #
        #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        #   @param description [String] Use this parameter to update the description of the monitor.
        #
        #   @param geofence_config [NextbillionSDK::Models::Skynet::MonitorUpdateParams::GeofenceConfig] geofence_config is used to update the set of geofences linked to the monitor for
        #
        #   @param geofence_ids [Array<String>] Use this parameter to update the geofences linked to the monitor by providing th
        #
        #   @param idle_config [NextbillionSDK::Models::Skynet::MonitorUpdateParams::IdleConfig] idle_config is used to update the constraints for creating idle events. When an
        #
        #   @param match_filter [NextbillionSDK::Models::Skynet::MonitorUpdateParams::MatchFilter] Use this object to update the attributes of the monitor. Please note that using
        #
        #   @param meta_data [Object] Any valid json object data. Can be used to save customized data. Max size is 65k
        #
        #   @param name [String] Use this parameter to update the name of the monitor. Users can add meaningful n
        #
        #   @param speeding_config [NextbillionSDK::Models::Skynet::MonitorUpdateParams::SpeedingConfig] speeding_config is used to update the tolerance values for creating over-speed e
        #
        #   @param tags [Array<String>] Use this parameter to update the tags of the monitor. tags can be used for filte
        #
        #   @param type [Symbol, NextbillionSDK::Models::Skynet::MonitorUpdateParams::Type] Use this parameter to update the type of the monitor. The monitor will be able t
        #
        #   @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}]

        class GeofenceConfig < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute geofence_ids
          #   Use this array to update the geofence IDs that should be linked to the monitor.
          #   Please note geofence_ids are mandatory when using the geofence_config attribute.
          #
          #   @return [Array<String>]
          required :geofence_ids, NextbillionSDK::Internal::Type::ArrayOf[String]

          # @!method initialize(geofence_ids:)
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::Skynet::MonitorUpdateParams::GeofenceConfig} for more
          #   details.
          #
          #   geofence_config is used to update the set of geofences linked to the monitor for
          #   creating enter or exit type of events based on the asset's location. Please note
          #   that this object is mandatory when the monitor type belongs to one of enter,
          #   exit or enter_and_exit.
          #
          #   @param geofence_ids [Array<String>] Use this array to update the geofence IDs that should be linked to the monitor.
        end

        class IdleConfig < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute distance_tolerance
          #   Use this parameter to update the distance threshold that will be used to
          #   determine if the asset was idle or not. When the asset, within time_tolerance
          #   duration, moves less than the value for this parameter, the monitor creates an
          #   idle event against the asset. The distance_tolerance should be provided in
          #   meters.
          #
          #   Please note distance_tolerance is mandatory when idle_config attribute is used.
          #
          #   @return [Float]
          required :distance_tolerance, Float

          # @!attribute time_tolerance
          #   Use this parameter to update the time duration for which the monitor would track
          #   the distance covered by an asset before triggering an idle event. The
          #   time_tolerance should be provided in milliseconds.
          #
          #   If the distance covered by the asset during a time_tolerance is less than that
          #   specified in distance_tolerance the asset will be assumed to be idle.
          #
          #   This attribute along with distance_tolerance parameter can be used to control
          #   the "sensitivity" of the monitor with respect to idle alerts. It is recommended
          #   to use these properties with appropriate values to trigger genuine idle events.
          #   The appropriate values might depend on the traffic conditions, nature of
          #   operations that the asset is involved in, type of asset and other factors.
          #
          #   @return [Integer, nil]
          optional :time_tolerance, Integer

          # @!method initialize(distance_tolerance:, time_tolerance: nil)
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::Skynet::MonitorUpdateParams::IdleConfig} for more
          #   details.
          #
          #   idle_config is used to update the constraints for creating idle events. When an
          #   asset associated with the monitor has not moved a given distance within a given
          #   time, the Live Tracking API can create events to denote such instances.
          #
          #   Please note that this object is mandatory when the monitor type is idle.
          #
          #   @param distance_tolerance [Float] Use this parameter to update the distance threshold that will be used to determi
          #
          #   @param time_tolerance [Integer] Use this parameter to update the time duration for which the monitor would track
        end

        class MatchFilter < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute include_all_of_attributes
          #   A string type dictionary object to specify the attributes. Only the assets
          #   having all of the attributes added to this parameter will be linked to this
          #   monitor. Once an asset is linked to a monitor, the monitor will be able to
          #   create events for that asset whenever an activity specified in type is detected.
          #   Multiple attributes should be separated by a comma ,.
          #
          #   Please note that this parameter can not be used in conjunction with
          #   include_any_of_attributes. Also, the maximum number of key:value pairs that this
          #   parameter can take is 100 and the overall size of the match_filter object should
          #   not exceed 65kb.
          #
          #   @return [Object, nil]
          optional :include_all_of_attributes, NextbillionSDK::Internal::Type::Unknown

          # @!attribute include_any_of_attributes
          #   A string type dictionary object to specify the attributes. The assets having at
          #   least one of the attributes added to this parameter will be linked to this
          #   monitor. Once an asset is linked to a monitor, the monitor will be able to
          #   create events for that asset whenever an activity specified in type is detected.
          #   Multiple attributes should be separated by a comma ,.
          #
          #   Please note that this parameter can not be used in conjunction with
          #   include_all_of_attributes. Also, the maximum number of key:value pairs that this
          #   parameter can take is 100 and the overall size of the match_filter object should
          #   not exceed 65kb.
          #
          #   @return [Object, nil]
          optional :include_any_of_attributes, NextbillionSDK::Internal::Type::Unknown

          # @!method initialize(include_all_of_attributes: nil, include_any_of_attributes: nil)
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::Skynet::MonitorUpdateParams::MatchFilter} for more
          #   details.
          #
          #   Use this object to update the attributes of the monitor. Please note that using
          #   this property will overwrite the existing attributes that the monitor might be
          #   using currently to match any asset(s).
          #
          #   @param include_all_of_attributes [Object] A string type dictionary object to specify the attributes. Only the assets havin
          #
          #   @param include_any_of_attributes [Object] A string type dictionary object to specify the attributes. The assets having at
        end

        class SpeedingConfig < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute customer_speed_limit
          #   Use this parameter to update the speed limit value that the monitor will use to
          #   create events, depending on the time_tolerance value. The speed limit should be
          #   specified in meters per second.
          #
          #   Please note that customer_speed_limit is mandatory when use_admin_speed_limit is
          #   false. However, when use_admin_speed_limit is true, customer_speed_limit is
          #   ineffective.
          #
          #   @return [String, nil]
          optional :customer_speed_limit, String

          # @!attribute time_tolerance
          #   Use this parameter to update the time tolerance before triggering an event.
          #   Adding a tolerance would make the Tracking service wait for the specified time
          #   before triggering the event. Consequently, an event is triggered only when the
          #   time for which the asset has been over-speeding continuously, exceeds the
          #   configured tolerance time. The unit for this parameter is milliseconds.
          #
          #   It can be seen that this attribute is used to control the "sensitivity" of the
          #   monitor with respect to speed alerts. Higher the value of time_tolerance the
          #   less sensitive the monitor would be to instances of over-speeding. Conversely,
          #   if 'time_tolerance' is set to 0, the monitor will be extremely sensitive and
          #   will create an event as soon as tracking information with a speed value greater
          #   than the specified limit is received.
          #
          #   @return [Integer, nil]
          optional :time_tolerance, Integer

          # @!attribute use_admin_speed_limit
          #   Use this attribute to update which speed limit values will be used by the
          #   monitor. When use_admin_speed_limit is true, the administrative speed limit of
          #   the road on which the asset is located, is used to generate events when the
          #   asset’s tracked speed exceeds it. Whereas, when use_admin_speed_limit is false,
          #   the customer_speed_limit specified will be used to generate events when the
          #   asset's tracked speed exceeds it.
          #
          #   Please note that if use_admin_speed_limit is false, customer_speed_limit is
          #   mandatory, otherwise when use_admin_speed_limit is true then
          #   customer_speed_limit is ineffective.
          #
          #   @return [Boolean, nil]
          optional :use_admin_speed_limit, NextbillionSDK::Internal::Type::Boolean

          # @!method initialize(customer_speed_limit: nil, time_tolerance: nil, use_admin_speed_limit: nil)
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::Skynet::MonitorUpdateParams::SpeedingConfig} for more
          #   details.
          #
          #   speeding_config is used to update the tolerance values for creating over-speed
          #   events. When an asset associated with a monitor is traveling at a speed above
          #   the given limits, Live Tracking API creates events to indicate such instances.
          #
          #   Please note that this object is mandatory when the monitor type is speeding.
          #
          #   @param customer_speed_limit [String] Use this parameter to update the speed limit value that the monitor will use to
          #
          #   @param time_tolerance [Integer] Use this parameter to update the time tolerance before triggering an event. Addi
          #
          #   @param use_admin_speed_limit [Boolean] Use this attribute to update which speed limit values will be used by the monito
        end

        # Use this parameter to update the type of the monitor. The monitor will be able
        # to detect the specified type of activity and create events for eligible asset. A
        # monitor can detect following types of asset activity:
        #
        # - enter: The monitor will create an event when a linked asset enters into the
        #   specified geofence.
        #
        # - exit: The monitor will create an event when a linked asset exits the specified
        #   geofence.
        #
        # - enter_and_exit: The monitor will create an event when a linked asset either
        #   enters or exits the specified geofence.
        #
        # - speeding: The monitor will create an event when a linked asset exceeds a given
        #   speed limit.
        #
        # - idle: The monitor will create an event when a linked asset exhibits idle
        #   activity.
        #
        # Please note that assets and geofences can be linked to a monitor using the
        # match_filter and geofence_config attributes respectively.
        module Type
          extend NextbillionSDK::Internal::Type::Enum

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
