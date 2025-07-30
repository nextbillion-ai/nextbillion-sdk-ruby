# typed: strong

module NextbillionSDK
  module Resources
    class Skynet
      class Monitor
        # Create a Monitor
        sig do
          params(
            key: String,
            tags: T::Array[String],
            type: NextbillionSDK::Skynet::MonitorCreateParams::Type::OrSymbol,
            cluster:
              NextbillionSDK::Skynet::MonitorCreateParams::Cluster::OrSymbol,
            custom_id: String,
            description: String,
            geofence_config:
              NextbillionSDK::Skynet::MonitorCreateParams::GeofenceConfig::OrHash,
            geofence_ids: T::Array[String],
            idle_config:
              NextbillionSDK::Skynet::MonitorCreateParams::IdleConfig::OrHash,
            match_filter:
              NextbillionSDK::Skynet::MonitorCreateParams::MatchFilter::OrHash,
            meta_data: T.anything,
            name: String,
            speeding_config:
              NextbillionSDK::Skynet::MonitorCreateParams::SpeedingConfig::OrHash,
            request_options: NextbillionSDK::RequestOptions::OrHash
          ).returns(NextbillionSDK::Models::Skynet::MonitorCreateResponse)
        end
        def create(
          # Query param: A key is a unique identifier that is required to authenticate a
          # request to the API.
          key:,
          # Body param: Use this parameter to add tags to the monitor. tags can be used for
          # filtering monitors in the _Get Monitor List_ operation. They can also be used
          # for easy identification of monitors.
          #
          # Please note that valid tags are strings, consisting of alphanumeric characters
          # (A-Z, a-z, 0-9) along with the underscore ('\_') and hyphen ('-') symbols.
          tags:,
          # Body param: Specify the type of activity the monitor would detect.
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
          type:,
          # Query param: the cluster of the region you want to use
          cluster: nil,
          # Body param: Set a unique ID for the new monitor. If not provided, an ID will be
          # automatically generated in UUID format. A valid custom*id can contain letters,
          # numbers, "-", & "*" only.
          #
          # Please note that the ID of an monitor can not be changed once it is created.
          custom_id: nil,
          # Body param: Add a description for your monitor using this parameter.
          description: nil,
          # Body param: Geofences are geographic boundaries surrounding an area of interest.
          # geofence_config is used to specify the geofences for creating enter or exit type
          # of events based on the asset's location. When an asset associated with the
          # monitor enters the given geofence, an enter type event is created, whereas when
          # the asset moves out of the geofence an exit type event is created.
          #
          # Please note that this object is mandatory when the monitor type belongs to one
          # of enter, exit or enter_and_exit.
          geofence_config: nil,
          # Body param: **Deprecated. Please use the geofence_config to specify the
          # geofence_ids for this monitor.**
          #
          # An array of strings to collect the geofence IDs that should be linked to the
          # monitor. Geofences are geographic boundaries that can be used to trigger events
          # based on an asset's location.
          geofence_ids: nil,
          # Body param: idle_config is used to set up constraints for creating idle events.
          # When an asset associated with the monitor has not moved a given distance within
          # a given time, the Live Tracking API can create events to denote such instances.
          # Please note that this object is mandatory when the monitor type is idle.
          #
          # Let's look at the properties of this object.
          idle_config: nil,
          # Body param: This object is used to identify the asset(s) on which the monitor
          # would be applied.
          match_filter: nil,
          # Body param: Any valid json object data. Can be used to save customized data. Max
          # size is 65kb.
          meta_data: nil,
          # Body param: Name of the monitor. Use this field to assign a meaningful, custom
          # name to the monitor being created.
          name: nil,
          # Body param: speeding_config is used to set up constraints for creating
          # over-speed events. When an asset associated with a monitor is traveling at a
          # speed above the given limits, the Live Tracking API can create events to denote
          # such instances. There is also an option to set up a tolerance before creating an
          # event. Please note that this object is mandatory when type=speeding.
          #
          # Let's look at the properties of this object.
          speeding_config: nil,
          request_options: {}
        )
        end

        # Get a Monitor
        sig do
          params(
            id: String,
            key: String,
            request_options: NextbillionSDK::RequestOptions::OrHash
          ).returns(NextbillionSDK::Models::Skynet::MonitorRetrieveResponse)
        end
        def retrieve(
          # ID of the monitor to be fetched. This is the same ID that was generated at the
          # time of creating the monitor.
          id,
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          request_options: {}
        )
        end

        # Update a Monitor
        sig do
          params(
            id: String,
            key: String,
            description: String,
            geofence_config:
              NextbillionSDK::Skynet::MonitorUpdateParams::GeofenceConfig::OrHash,
            geofence_ids: T::Array[String],
            idle_config:
              NextbillionSDK::Skynet::MonitorUpdateParams::IdleConfig::OrHash,
            match_filter:
              NextbillionSDK::Skynet::MonitorUpdateParams::MatchFilter::OrHash,
            meta_data: T.anything,
            name: String,
            speeding_config:
              NextbillionSDK::Skynet::MonitorUpdateParams::SpeedingConfig::OrHash,
            tags: T::Array[String],
            type: NextbillionSDK::Skynet::MonitorUpdateParams::Type::OrSymbol,
            request_options: NextbillionSDK::RequestOptions::OrHash
          ).returns(NextbillionSDK::Skynet::SimpleResp)
        end
        def update(
          # Path param: ID of the monitor to be updated. This is the same ID that was
          # generated at the time of creating the monitor.
          id,
          # Query param: A key is a unique identifier that is required to authenticate a
          # request to the API.
          key:,
          # Body param: Use this parameter to update the description of the monitor.
          description: nil,
          # Body param: geofence_config is used to update the set of geofences linked to the
          # monitor for creating enter or exit type of events based on the asset's location.
          # Please note that this object is mandatory when the monitor type belongs to one
          # of enter, exit or enter_and_exit.
          geofence_config: nil,
          # Body param: Use this parameter to update the geofences linked to the monitor by
          # providing the geofence id as , separated strings. Geofences are geographic
          # boundaries that can be used to trigger events based on an asset's location.
          geofence_ids: nil,
          # Body param: idle_config is used to update the constraints for creating idle
          # events. When an asset associated with the monitor has not moved a given distance
          # within a given time, the Live Tracking API can create events to denote such
          # instances.
          #
          # Please note that this object is mandatory when the monitor type is idle.
          idle_config: nil,
          # Body param: Use this object to update the attributes of the monitor. Please note
          # that using this property will overwrite the existing attributes that the monitor
          # might be using currently to match any asset(s).
          match_filter: nil,
          # Body param: Any valid json object data. Can be used to save customized data. Max
          # size is 65kb.
          meta_data: nil,
          # Body param: Use this parameter to update the name of the monitor. Users can add
          # meaningful names to the monitors like "warehouse_exit", "depot_entry" etc.
          name: nil,
          # Body param: speeding_config is used to update the tolerance values for creating
          # over-speed events. When an asset associated with a monitor is traveling at a
          # speed above the given limits, Live Tracking API creates events to indicate such
          # instances.
          #
          # Please note that this object is mandatory when the monitor type is speeding.
          speeding_config: nil,
          # Body param: Use this parameter to update the tags of the monitor. tags can be
          # used for filtering monitors in the _Get Monitor List_ operation. They can also
          # be used for easy identification of monitors. Using this parameter overwrites the
          # existing tags of the monitor.
          #
          # Please note that valid tags are strings, consisting of alphanumeric characters
          # (A-Z, a-z, 0-9) along with the underscore ('\_') and hyphen ('-') symbols.
          tags: nil,
          # Body param: Use this parameter to update the type of the monitor. The monitor
          # will be able to detect the specified type of activity and create events for
          # eligible asset. A monitor can detect following types of asset activity:
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
          type: nil,
          request_options: {}
        )
        end

        # Get Monitor List
        sig do
          params(
            key: String,
            cluster:
              NextbillionSDK::Skynet::MonitorListParams::Cluster::OrSymbol,
            pn: Integer,
            ps: Integer,
            sort: String,
            tags: String,
            request_options: NextbillionSDK::RequestOptions::OrHash
          ).returns(NextbillionSDK::Models::Skynet::MonitorListResponse)
        end
        def list(
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          # the cluster of the region you want to use
          cluster: nil,
          # Denotes page number. Use this along with the ps parameter to implement
          # pagination for your searched results. This parameter does not have a maximum
          # limit but would return an empty response in case a higher value is provided when
          # the result-set itself is smaller.
          pn: nil,
          # Denotes number of search results per page. Use this along with the pn parameter
          # to implement pagination for your searched results.
          ps: nil,
          # Provide a single field to sort the results by. Only updated_at or created_at
          # fields can be selected for ordering the results.
          #
          # By default, the result is sorted by created_at field in the descending order.
          # Allowed values for specifying the order are asc for ascending order and desc for
          # descending order.
          sort: nil,
          # tags can be used to filter the monitors. Only those monitors which have all the
          # tags provided here, will be included in the search result. In case multiple tags
          # need to be specified, use , to separate them.
          tags: nil,
          request_options: {}
        )
        end

        # Delete a Monitor
        sig do
          params(
            id: String,
            key: String,
            request_options: NextbillionSDK::RequestOptions::OrHash
          ).returns(NextbillionSDK::Skynet::SimpleResp)
        end
        def delete(
          # D of the monitor to be deleted. This is the same ID that was generated at the
          # time of creating the monitor.
          id,
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: NextbillionSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
