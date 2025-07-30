# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Skynet
      # @see NextbillionSDK::Resources::Skynet::Monitor#create
      class MonitorCreateParams < NextbillionSDK::Internal::Type::BaseModel
        extend NextbillionSDK::Internal::Type::RequestParameters::Converter
        include NextbillionSDK::Internal::Type::RequestParameters

        # @!attribute key
        #   A key is a unique identifier that is required to authenticate a request to the
        #   API.
        #
        #   @return [String]
        required :key, String

        # @!attribute tags
        #   Use this parameter to add tags to the monitor. tags can be used for filtering
        #   monitors in the _Get Monitor List_ operation. They can also be used for easy
        #   identification of monitors.
        #
        #   Please note that valid tags are strings, consisting of alphanumeric characters
        #   (A-Z, a-z, 0-9) along with the underscore ('\_') and hyphen ('-') symbols.
        #
        #   @return [Array<String>]
        required :tags, NextbillionSDK::Internal::Type::ArrayOf[String]

        # @!attribute type
        #   Specify the type of activity the monitor would detect.
        #
        #   The monitor will be able to detect the specified type of activity and create
        #   events for eligible asset. A monitor can detect following types of asset
        #   activity:
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
        #   @return [Symbol, NextbillionSDK::Models::Skynet::MonitorCreateParams::Type]
        required :type, enum: -> { NextbillionSDK::Skynet::MonitorCreateParams::Type }

        # @!attribute cluster
        #   the cluster of the region you want to use
        #
        #   @return [Symbol, NextbillionSDK::Models::Skynet::MonitorCreateParams::Cluster, nil]
        optional :cluster, enum: -> { NextbillionSDK::Skynet::MonitorCreateParams::Cluster }

        # @!attribute custom_id
        #   Set a unique ID for the new monitor. If not provided, an ID will be
        #   automatically generated in UUID format. A valid custom*id can contain letters,
        #   numbers, "-", & "*" only.
        #
        #   Please note that the ID of an monitor can not be changed once it is created.
        #
        #   @return [String, nil]
        optional :custom_id, String

        # @!attribute description
        #   Add a description for your monitor using this parameter.
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute geofence_config
        #   Geofences are geographic boundaries surrounding an area of interest.
        #   geofence_config is used to specify the geofences for creating enter or exit type
        #   of events based on the asset's location. When an asset associated with the
        #   monitor enters the given geofence, an enter type event is created, whereas when
        #   the asset moves out of the geofence an exit type event is created.
        #
        #   Please note that this object is mandatory when the monitor type belongs to one
        #   of enter, exit or enter_and_exit.
        #
        #   @return [NextbillionSDK::Models::Skynet::MonitorCreateParams::GeofenceConfig, nil]
        optional :geofence_config, -> { NextbillionSDK::Skynet::MonitorCreateParams::GeofenceConfig }

        # @!attribute geofence_ids
        #   **Deprecated. Please use the geofence_config to specify the geofence_ids for
        #   this monitor.**
        #
        #   An array of strings to collect the geofence IDs that should be linked to the
        #   monitor. Geofences are geographic boundaries that can be used to trigger events
        #   based on an asset's location.
        #
        #   @return [Array<String>, nil]
        optional :geofence_ids, NextbillionSDK::Internal::Type::ArrayOf[String]

        # @!attribute idle_config
        #   idle_config is used to set up constraints for creating idle events. When an
        #   asset associated with the monitor has not moved a given distance within a given
        #   time, the Live Tracking API can create events to denote such instances. Please
        #   note that this object is mandatory when the monitor type is idle.
        #
        #   Let's look at the properties of this object.
        #
        #   @return [NextbillionSDK::Models::Skynet::MonitorCreateParams::IdleConfig, nil]
        optional :idle_config, -> { NextbillionSDK::Skynet::MonitorCreateParams::IdleConfig }

        # @!attribute match_filter
        #   This object is used to identify the asset(s) on which the monitor would be
        #   applied.
        #
        #   @return [NextbillionSDK::Models::Skynet::MonitorCreateParams::MatchFilter, nil]
        optional :match_filter, -> { NextbillionSDK::Skynet::MonitorCreateParams::MatchFilter }

        # @!attribute meta_data
        #   Any valid json object data. Can be used to save customized data. Max size is
        #   65kb.
        #
        #   @return [Object, nil]
        optional :meta_data, NextbillionSDK::Internal::Type::Unknown

        # @!attribute name
        #   Name of the monitor. Use this field to assign a meaningful, custom name to the
        #   monitor being created.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute speeding_config
        #   speeding_config is used to set up constraints for creating over-speed events.
        #   When an asset associated with a monitor is traveling at a speed above the given
        #   limits, the Live Tracking API can create events to denote such instances. There
        #   is also an option to set up a tolerance before creating an event. Please note
        #   that this object is mandatory when type=speeding.
        #
        #   Let's look at the properties of this object.
        #
        #   @return [NextbillionSDK::Models::Skynet::MonitorCreateParams::SpeedingConfig, nil]
        optional :speeding_config, -> { NextbillionSDK::Skynet::MonitorCreateParams::SpeedingConfig }

        # @!method initialize(key:, tags:, type:, cluster: nil, custom_id: nil, description: nil, geofence_config: nil, geofence_ids: nil, idle_config: nil, match_filter: nil, meta_data: nil, name: nil, speeding_config: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::Skynet::MonitorCreateParams} for more details.
        #
        #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        #   @param tags [Array<String>] Use this parameter to add tags to the monitor. tags can be used for filtering mo
        #
        #   @param type [Symbol, NextbillionSDK::Models::Skynet::MonitorCreateParams::Type] Specify the type of activity the monitor would detect.
        #
        #   @param cluster [Symbol, NextbillionSDK::Models::Skynet::MonitorCreateParams::Cluster] the cluster of the region you want to use
        #
        #   @param custom_id [String] Set a unique ID for the new monitor. If not provided, an ID will be automaticall
        #
        #   @param description [String] Add a description for your monitor using this parameter.
        #
        #   @param geofence_config [NextbillionSDK::Models::Skynet::MonitorCreateParams::GeofenceConfig] Geofences are geographic boundaries surrounding an area of interest. geofence_co
        #
        #   @param geofence_ids [Array<String>] \*\*Deprecated. Please use the geofence_config to specify the geofence_ids for
        #   thi
        #
        #   @param idle_config [NextbillionSDK::Models::Skynet::MonitorCreateParams::IdleConfig] idle_config is used to set up constraints for creating idle events. When an asse
        #
        #   @param match_filter [NextbillionSDK::Models::Skynet::MonitorCreateParams::MatchFilter] This object is used to identify the asset(s) on which the monitor would be appli
        #
        #   @param meta_data [Object] Any valid json object data. Can be used to save customized data. Max size is 65k
        #
        #   @param name [String] Name of the monitor. Use this field to assign a meaningful, custom name to the m
        #
        #   @param speeding_config [NextbillionSDK::Models::Skynet::MonitorCreateParams::SpeedingConfig] speeding_config is used to set up constraints for creating over-speed events. Wh
        #
        #   @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}]

        # Specify the type of activity the monitor would detect.
        #
        # The monitor will be able to detect the specified type of activity and create
        # events for eligible asset. A monitor can detect following types of asset
        # activity:
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

        # the cluster of the region you want to use
        module Cluster
          extend NextbillionSDK::Internal::Type::Enum

          AMERICA = :america

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class GeofenceConfig < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute geofence_ids
          #   An array of strings to collect the geofence IDs that should be linked to the
          #   monitor. Please note geofence_ids are mandatory when using the geofence_config
          #   attribute.
          #
          #   @return [Array<String>]
          required :geofence_ids, NextbillionSDK::Internal::Type::ArrayOf[String]

          # @!method initialize(geofence_ids:)
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::Skynet::MonitorCreateParams::GeofenceConfig} for more
          #   details.
          #
          #   Geofences are geographic boundaries surrounding an area of interest.
          #   geofence_config is used to specify the geofences for creating enter or exit type
          #   of events based on the asset's location. When an asset associated with the
          #   monitor enters the given geofence, an enter type event is created, whereas when
          #   the asset moves out of the geofence an exit type event is created.
          #
          #   Please note that this object is mandatory when the monitor type belongs to one
          #   of enter, exit or enter_and_exit.
          #
          #   @param geofence_ids [Array<String>] An array of strings to collect the geofence IDs that should be linked to the mon
        end

        class IdleConfig < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute distance_tolerance
          #   Use this parameter to configure a distance threshold that will be used to
          #   determine if the asset was idle or not. If the asset moves by a distance less
          #   than the value of this parameter within a certain time period, the monitor would
          #   create an idle event against the asset. The distance_tolerance should be
          #   provided in meters.
          #
          #   Users can set an appropriate value for this parameter, along with appropriate
          #   time_tolerance value, to avoid triggering idle events when the asset is crossing
          #   a busy intersection or waiting at the traffic lights.
          #
          #   @return [Float]
          required :distance_tolerance, Float

          # @!attribute time_tolerance
          #   Use this parameter to configure a time duration for which the monitor would
          #   track the distance covered by an asset before triggering an idle event. The
          #   time_tolerance should be provided in milliseconds.
          #
          #   If the distance covered by the asset during a time_tolerance is less than that
          #   specified in distance_tolerance the asset will be assumed to be idle.
          #
          #   Please observe that this attribute along with distance_tolerance parameter can
          #   be used to control the "sensitivity" of the monitor with respect to idle alerts.
          #   If the distance_tolerance is set a high value, then setting time_tolerance to a
          #   low value may result in a situation where asset is always judged as idle. On the
          #   contrary, it might never be judged as idle if distance_tolerance is set to a low
          #   value but time_tolerance is set to a high value.
          #
          #   It is recommended to use these properties with appropriate values to trigger
          #   genuine idle events. The appropriate values might depend on the traffic
          #   conditions, nature of operations that the asset is involved in, type of asset
          #   and other factors.
          #
          #   @return [Integer, nil]
          optional :time_tolerance, Integer

          # @!method initialize(distance_tolerance:, time_tolerance: nil)
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::Skynet::MonitorCreateParams::IdleConfig} for more
          #   details.
          #
          #   idle_config is used to set up constraints for creating idle events. When an
          #   asset associated with the monitor has not moved a given distance within a given
          #   time, the Live Tracking API can create events to denote such instances. Please
          #   note that this object is mandatory when the monitor type is idle.
          #
          #   Let's look at the properties of this object.
          #
          #   @param distance_tolerance [Float] Use this parameter to configure a distance threshold that will be used to determ
          #
          #   @param time_tolerance [Integer] Use this parameter to configure a time duration for which the monitor would trac
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
          #   {NextbillionSDK::Models::Skynet::MonitorCreateParams::MatchFilter} for more
          #   details.
          #
          #   This object is used to identify the asset(s) on which the monitor would be
          #   applied.
          #
          #   @param include_all_of_attributes [Object] A string type dictionary object to specify the attributes. Only the assets havin
          #
          #   @param include_any_of_attributes [Object] A string type dictionary object to specify the attributes. The assets having at
        end

        class SpeedingConfig < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute customer_speed_limit
          #   Use this parameter to establish the speed limit that will allow the monitor to
          #   create events, depending on the time_tolerance value, when an asset's tracked
          #   speed exceeds it. The speed limit should be specified in meters per second.
          #
          #   Please note that customer_speed_limit is mandatory when use_admin_speed_limit is
          #   false. However, when use_admin_speed_limit is true, customer_speed_limit is
          #   ineffective.
          #
          #   @return [Integer, nil]
          optional :customer_speed_limit, Integer

          # @!attribute time_tolerance
          #   Use this parameter to configure a time tolerance before triggering an event.
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
          #   A boolean attribute to indicate which speed limit values should be used by the
          #   monitor. When use_admin_speed_limit is true, the administrative speed limit of
          #   the road on which the asset is located, will be used to generate events when the
          #   asset’s tracked speed exceeds it. Whereas, when use_admin_speed_limit is false,
          #   the customer_speed_limit specified will be used to generate events when the
          #   asset's tracked speed exceeds it.
          #
          #   Please note that if use_admin_speed_limit is false, customer_speed_limit is
          #   mandatory, however, when use_admin_speed_limit is true then customer_speed_limit
          #   is ineffective.
          #
          #   @return [Boolean, nil]
          optional :use_admin_speed_limit, NextbillionSDK::Internal::Type::Boolean

          # @!method initialize(customer_speed_limit: nil, time_tolerance: nil, use_admin_speed_limit: nil)
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::Skynet::MonitorCreateParams::SpeedingConfig} for more
          #   details.
          #
          #   speeding_config is used to set up constraints for creating over-speed events.
          #   When an asset associated with a monitor is traveling at a speed above the given
          #   limits, the Live Tracking API can create events to denote such instances. There
          #   is also an option to set up a tolerance before creating an event. Please note
          #   that this object is mandatory when type=speeding.
          #
          #   Let's look at the properties of this object.
          #
          #   @param customer_speed_limit [Integer] Use this parameter to establish the speed limit that will allow the monitor to c
          #
          #   @param time_tolerance [Integer] Use this parameter to configure a time tolerance before triggering an event. Add
          #
          #   @param use_admin_speed_limit [Boolean] A boolean attribute to indicate which speed limit values should be used by the m
        end
      end
    end
  end
end
