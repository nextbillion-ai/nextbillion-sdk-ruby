# typed: strong

module NextbillionSDK
  module Models
    module Skynet
      class MonitorCreateParams < NextbillionSDK::Internal::Type::BaseModel
        extend NextbillionSDK::Internal::Type::RequestParameters::Converter
        include NextbillionSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Skynet::MonitorCreateParams,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        sig { returns(String) }
        attr_accessor :key

        # Use this parameter to add `tags` to the `monitor`. `tags` can be used for
        # filtering monitors in the _Get Monitor List_ operation. They can also be used
        # for easy identification of monitors.
        #
        # Please note that valid `tags` are strings, consisting of alphanumeric characters
        # (A-Z, a-z, 0-9) along with the underscore ('\_') and hyphen ('-') symbols.
        sig { returns(T::Array[String]) }
        attr_accessor :tags

        # Specify the type of activity the `monitor` would detect.
        #
        # The `monitor` will be able to detect the specified `type` of activity and create
        # events for eligible `asset`. A `monitor` can detect following types of asset
        # activity:
        #
        # - `enter`: The `monitor` will create an event when a linked `asset` enters into
        #   the specified geofence.
        #
        # - `exit`: The `monitor` will create an event when a linked `asset` exits the
        #   specified geofence.
        #
        # - `enter_and_exit`: The `monitor` will create an event when a linked `asset`
        #   either enters or exits the specified geofence.
        #
        # - `speeding`: The `monitor` will create an event when a linked `asset` exceeds a
        #   given speed limit.
        #
        # - `idle`: The `monitor` will create an event when a linked `asset` exhibits idle
        #   activity.
        #
        # Please note that `assets` and geofences can be linked to a `monitor` using the
        # `match_filter` and `geofence_config` attributes respectively.
        sig do
          returns(NextbillionSDK::Skynet::MonitorCreateParams::Type::OrSymbol)
        end
        attr_accessor :type

        # the cluster of the region you want to use
        sig do
          returns(
            T.nilable(
              NextbillionSDK::Skynet::MonitorCreateParams::Cluster::OrSymbol
            )
          )
        end
        attr_reader :cluster

        sig do
          params(
            cluster:
              NextbillionSDK::Skynet::MonitorCreateParams::Cluster::OrSymbol
          ).void
        end
        attr_writer :cluster

        # Set a unique ID for the new `monitor`. If not provided, an ID will be
        # automatically generated in UUID format. A valid `custom_id` can contain letters,
        # numbers, "-", & "\_" only.
        #
        # Please note that the ID of an `monitor` can not be changed once it is created.
        sig { returns(T.nilable(String)) }
        attr_reader :custom_id

        sig { params(custom_id: String).void }
        attr_writer :custom_id

        # Add a description for your `monitor` using this parameter.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # Geofences are geographic boundaries surrounding an area of interest.
        # `geofence_config` is used to specify the geofences for creating `enter` or
        # `exit` type of events based on the asset's location. When an asset associated
        # with the `monitor` enters the given geofence, an `enter` type event is created,
        # whereas when the asset moves out of the geofence an `exit` type event is
        # created.
        #
        # Please note that this object is mandatory when the monitor `type` belongs to one
        # of `enter`, `exit` or `enter_and_exit`.
        sig do
          returns(
            T.nilable(
              NextbillionSDK::Skynet::MonitorCreateParams::GeofenceConfig
            )
          )
        end
        attr_reader :geofence_config

        sig do
          params(
            geofence_config:
              NextbillionSDK::Skynet::MonitorCreateParams::GeofenceConfig::OrHash
          ).void
        end
        attr_writer :geofence_config

        # **Deprecated. Please use the `geofence_config` to specify the geofence_ids for
        # this monitor.**
        #
        # An array of strings to collect the geofence IDs that should be linked to the
        # `monitor`. Geofences are geographic boundaries that can be used to trigger
        # events based on an asset's location.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :geofence_ids

        sig { params(geofence_ids: T::Array[String]).void }
        attr_writer :geofence_ids

        # `idle_config` is used to set up constraints for creating idle events. When an
        # asset associated with the `monitor` has not moved a given distance within a
        # given time, the Live Tracking API can create events to denote such instances.
        # Please note that this object is mandatory when the monitor `type` is `idle`.
        #
        # Let's look at the properties of this object.
        sig do
          returns(
            T.nilable(NextbillionSDK::Skynet::MonitorCreateParams::IdleConfig)
          )
        end
        attr_reader :idle_config

        sig do
          params(
            idle_config:
              NextbillionSDK::Skynet::MonitorCreateParams::IdleConfig::OrHash
          ).void
        end
        attr_writer :idle_config

        # This object is used to identify the asset(s) on which the `monitor` would be
        # applied.
        sig do
          returns(
            T.nilable(NextbillionSDK::Skynet::MonitorCreateParams::MatchFilter)
          )
        end
        attr_reader :match_filter

        sig do
          params(
            match_filter:
              NextbillionSDK::Skynet::MonitorCreateParams::MatchFilter::OrHash
          ).void
        end
        attr_writer :match_filter

        # Any valid json object data. Can be used to save customized data. Max size is
        # 65kb.
        sig { returns(T.nilable(T.anything)) }
        attr_reader :meta_data

        sig { params(meta_data: T.anything).void }
        attr_writer :meta_data

        # Name of the `monitor`. Use this field to assign a meaningful, custom name to the
        # `monitor` being created.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # `speeding_config` is used to set up constraints for creating over-speed events.
        # When an `asset` associated with a `monitor` is traveling at a speed above the
        # given limits, the Live Tracking API can create events to denote such instances.
        # There is also an option to set up a tolerance before creating an event. Please
        # note that this object is mandatory when `type=speeding`.
        #
        # Let's look at the properties of this object.
        sig do
          returns(
            T.nilable(
              NextbillionSDK::Skynet::MonitorCreateParams::SpeedingConfig
            )
          )
        end
        attr_reader :speeding_config

        sig do
          params(
            speeding_config:
              NextbillionSDK::Skynet::MonitorCreateParams::SpeedingConfig::OrHash
          ).void
        end
        attr_writer :speeding_config

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
          ).returns(T.attached_class)
        end
        def self.new(
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          # Use this parameter to add `tags` to the `monitor`. `tags` can be used for
          # filtering monitors in the _Get Monitor List_ operation. They can also be used
          # for easy identification of monitors.
          #
          # Please note that valid `tags` are strings, consisting of alphanumeric characters
          # (A-Z, a-z, 0-9) along with the underscore ('\_') and hyphen ('-') symbols.
          tags:,
          # Specify the type of activity the `monitor` would detect.
          #
          # The `monitor` will be able to detect the specified `type` of activity and create
          # events for eligible `asset`. A `monitor` can detect following types of asset
          # activity:
          #
          # - `enter`: The `monitor` will create an event when a linked `asset` enters into
          #   the specified geofence.
          #
          # - `exit`: The `monitor` will create an event when a linked `asset` exits the
          #   specified geofence.
          #
          # - `enter_and_exit`: The `monitor` will create an event when a linked `asset`
          #   either enters or exits the specified geofence.
          #
          # - `speeding`: The `monitor` will create an event when a linked `asset` exceeds a
          #   given speed limit.
          #
          # - `idle`: The `monitor` will create an event when a linked `asset` exhibits idle
          #   activity.
          #
          # Please note that `assets` and geofences can be linked to a `monitor` using the
          # `match_filter` and `geofence_config` attributes respectively.
          type:,
          # the cluster of the region you want to use
          cluster: nil,
          # Set a unique ID for the new `monitor`. If not provided, an ID will be
          # automatically generated in UUID format. A valid `custom_id` can contain letters,
          # numbers, "-", & "\_" only.
          #
          # Please note that the ID of an `monitor` can not be changed once it is created.
          custom_id: nil,
          # Add a description for your `monitor` using this parameter.
          description: nil,
          # Geofences are geographic boundaries surrounding an area of interest.
          # `geofence_config` is used to specify the geofences for creating `enter` or
          # `exit` type of events based on the asset's location. When an asset associated
          # with the `monitor` enters the given geofence, an `enter` type event is created,
          # whereas when the asset moves out of the geofence an `exit` type event is
          # created.
          #
          # Please note that this object is mandatory when the monitor `type` belongs to one
          # of `enter`, `exit` or `enter_and_exit`.
          geofence_config: nil,
          # **Deprecated. Please use the `geofence_config` to specify the geofence_ids for
          # this monitor.**
          #
          # An array of strings to collect the geofence IDs that should be linked to the
          # `monitor`. Geofences are geographic boundaries that can be used to trigger
          # events based on an asset's location.
          geofence_ids: nil,
          # `idle_config` is used to set up constraints for creating idle events. When an
          # asset associated with the `monitor` has not moved a given distance within a
          # given time, the Live Tracking API can create events to denote such instances.
          # Please note that this object is mandatory when the monitor `type` is `idle`.
          #
          # Let's look at the properties of this object.
          idle_config: nil,
          # This object is used to identify the asset(s) on which the `monitor` would be
          # applied.
          match_filter: nil,
          # Any valid json object data. Can be used to save customized data. Max size is
          # 65kb.
          meta_data: nil,
          # Name of the `monitor`. Use this field to assign a meaningful, custom name to the
          # `monitor` being created.
          name: nil,
          # `speeding_config` is used to set up constraints for creating over-speed events.
          # When an `asset` associated with a `monitor` is traveling at a speed above the
          # given limits, the Live Tracking API can create events to denote such instances.
          # There is also an option to set up a tolerance before creating an event. Please
          # note that this object is mandatory when `type=speeding`.
          #
          # Let's look at the properties of this object.
          speeding_config: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              key: String,
              tags: T::Array[String],
              type: NextbillionSDK::Skynet::MonitorCreateParams::Type::OrSymbol,
              cluster:
                NextbillionSDK::Skynet::MonitorCreateParams::Cluster::OrSymbol,
              custom_id: String,
              description: String,
              geofence_config:
                NextbillionSDK::Skynet::MonitorCreateParams::GeofenceConfig,
              geofence_ids: T::Array[String],
              idle_config:
                NextbillionSDK::Skynet::MonitorCreateParams::IdleConfig,
              match_filter:
                NextbillionSDK::Skynet::MonitorCreateParams::MatchFilter,
              meta_data: T.anything,
              name: String,
              speeding_config:
                NextbillionSDK::Skynet::MonitorCreateParams::SpeedingConfig,
              request_options: NextbillionSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Specify the type of activity the `monitor` would detect.
        #
        # The `monitor` will be able to detect the specified `type` of activity and create
        # events for eligible `asset`. A `monitor` can detect following types of asset
        # activity:
        #
        # - `enter`: The `monitor` will create an event when a linked `asset` enters into
        #   the specified geofence.
        #
        # - `exit`: The `monitor` will create an event when a linked `asset` exits the
        #   specified geofence.
        #
        # - `enter_and_exit`: The `monitor` will create an event when a linked `asset`
        #   either enters or exits the specified geofence.
        #
        # - `speeding`: The `monitor` will create an event when a linked `asset` exceeds a
        #   given speed limit.
        #
        # - `idle`: The `monitor` will create an event when a linked `asset` exhibits idle
        #   activity.
        #
        # Please note that `assets` and geofences can be linked to a `monitor` using the
        # `match_filter` and `geofence_config` attributes respectively.
        module Type
          extend NextbillionSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, NextbillionSDK::Skynet::MonitorCreateParams::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ENTER =
            T.let(
              :"`enter`",
              NextbillionSDK::Skynet::MonitorCreateParams::Type::TaggedSymbol
            )
          EXIT =
            T.let(
              :"`exit`",
              NextbillionSDK::Skynet::MonitorCreateParams::Type::TaggedSymbol
            )
          ENTER_AND_EXIT =
            T.let(
              :"`enter_and_exit`",
              NextbillionSDK::Skynet::MonitorCreateParams::Type::TaggedSymbol
            )
          SPEEDING =
            T.let(
              :"`speeding`",
              NextbillionSDK::Skynet::MonitorCreateParams::Type::TaggedSymbol
            )
          IDLE =
            T.let(
              :"`idle`",
              NextbillionSDK::Skynet::MonitorCreateParams::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                NextbillionSDK::Skynet::MonitorCreateParams::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # the cluster of the region you want to use
        module Cluster
          extend NextbillionSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                NextbillionSDK::Skynet::MonitorCreateParams::Cluster
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AMERICA =
            T.let(
              :america,
              NextbillionSDK::Skynet::MonitorCreateParams::Cluster::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                NextbillionSDK::Skynet::MonitorCreateParams::Cluster::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class GeofenceConfig < NextbillionSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                NextbillionSDK::Skynet::MonitorCreateParams::GeofenceConfig,
                NextbillionSDK::Internal::AnyHash
              )
            end

          # An array of strings to collect the geofence IDs that should be linked to the
          # `monitor`. Please note `geofence_ids` are mandatory when using the
          # `geofence_config` attribute.
          sig { returns(T::Array[String]) }
          attr_accessor :geofence_ids

          # Geofences are geographic boundaries surrounding an area of interest.
          # `geofence_config` is used to specify the geofences for creating `enter` or
          # `exit` type of events based on the asset's location. When an asset associated
          # with the `monitor` enters the given geofence, an `enter` type event is created,
          # whereas when the asset moves out of the geofence an `exit` type event is
          # created.
          #
          # Please note that this object is mandatory when the monitor `type` belongs to one
          # of `enter`, `exit` or `enter_and_exit`.
          sig do
            params(geofence_ids: T::Array[String]).returns(T.attached_class)
          end
          def self.new(
            # An array of strings to collect the geofence IDs that should be linked to the
            # `monitor`. Please note `geofence_ids` are mandatory when using the
            # `geofence_config` attribute.
            geofence_ids:
          )
          end

          sig { override.returns({ geofence_ids: T::Array[String] }) }
          def to_hash
          end
        end

        class IdleConfig < NextbillionSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                NextbillionSDK::Skynet::MonitorCreateParams::IdleConfig,
                NextbillionSDK::Internal::AnyHash
              )
            end

          # Use this parameter to configure a distance threshold that will be used to
          # determine if the asset was idle or not. If the asset moves by a distance less
          # than the value of this parameter within a certain time period, the `monitor`
          # would create an idle event against the asset. The `distance_tolerance` should be
          # provided in meters.
          #
          # Users can set an appropriate value for this parameter, along with appropriate
          # `time_tolerance` value, to avoid triggering idle events when the asset is
          # crossing a busy intersection or waiting at the traffic lights.
          sig { returns(Float) }
          attr_accessor :distance_tolerance

          # Use this parameter to configure a time duration for which the `monitor` would
          # track the distance covered by an asset before triggering an idle event. The
          # `time_tolerance` should be provided in milliseconds.
          #
          # If the distance covered by the asset during a `time_tolerance` is less than that
          # specified in `distance_tolerance` the asset will be assumed to be idle.
          #
          # Please observe that this attribute along with `distance_tolerance` parameter can
          # be used to control the "sensitivity" of the `monitor` with respect to idle
          # alerts. If the `distance_tolerance` is set a high value, then setting
          # `time_tolerance` to a low value may result in a situation where asset is always
          # judged as idle. On the contrary, it might never be judged as idle if
          # `distance_tolerance` is set to a low value but `time_tolerance` is set to a high
          # value.
          #
          # It is recommended to use these properties with appropriate values to trigger
          # genuine idle events. The appropriate values might depend on the traffic
          # conditions, nature of operations that the asset is involved in, type of asset
          # and other factors.
          sig { returns(T.nilable(Integer)) }
          attr_reader :time_tolerance

          sig { params(time_tolerance: Integer).void }
          attr_writer :time_tolerance

          # `idle_config` is used to set up constraints for creating idle events. When an
          # asset associated with the `monitor` has not moved a given distance within a
          # given time, the Live Tracking API can create events to denote such instances.
          # Please note that this object is mandatory when the monitor `type` is `idle`.
          #
          # Let's look at the properties of this object.
          sig do
            params(distance_tolerance: Float, time_tolerance: Integer).returns(
              T.attached_class
            )
          end
          def self.new(
            # Use this parameter to configure a distance threshold that will be used to
            # determine if the asset was idle or not. If the asset moves by a distance less
            # than the value of this parameter within a certain time period, the `monitor`
            # would create an idle event against the asset. The `distance_tolerance` should be
            # provided in meters.
            #
            # Users can set an appropriate value for this parameter, along with appropriate
            # `time_tolerance` value, to avoid triggering idle events when the asset is
            # crossing a busy intersection or waiting at the traffic lights.
            distance_tolerance:,
            # Use this parameter to configure a time duration for which the `monitor` would
            # track the distance covered by an asset before triggering an idle event. The
            # `time_tolerance` should be provided in milliseconds.
            #
            # If the distance covered by the asset during a `time_tolerance` is less than that
            # specified in `distance_tolerance` the asset will be assumed to be idle.
            #
            # Please observe that this attribute along with `distance_tolerance` parameter can
            # be used to control the "sensitivity" of the `monitor` with respect to idle
            # alerts. If the `distance_tolerance` is set a high value, then setting
            # `time_tolerance` to a low value may result in a situation where asset is always
            # judged as idle. On the contrary, it might never be judged as idle if
            # `distance_tolerance` is set to a low value but `time_tolerance` is set to a high
            # value.
            #
            # It is recommended to use these properties with appropriate values to trigger
            # genuine idle events. The appropriate values might depend on the traffic
            # conditions, nature of operations that the asset is involved in, type of asset
            # and other factors.
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

        class MatchFilter < NextbillionSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                NextbillionSDK::Skynet::MonitorCreateParams::MatchFilter,
                NextbillionSDK::Internal::AnyHash
              )
            end

          # A string type dictionary object to specify the `attributes`. Only the assets
          # having all of the `attributes` added to this parameter will be linked to this
          # `monitor`. Once an `asset` is linked to a `monitor`, the `monitor` will be able
          # to create events for that `asset` whenever an activity specified in `type` is
          # detected. Multiple attributes should be separated by a comma `,`.
          #
          # Please note that this parameter can not be used in conjunction with
          # `include_any_of_attributes`. Also, the maximum number of `key`:`value` pairs
          # that this parameter can take is 100 and the overall size of the `match_filter`
          # object should not exceed 65kb.
          sig { returns(T.nilable(T.anything)) }
          attr_reader :include_all_of_attributes

          sig { params(include_all_of_attributes: T.anything).void }
          attr_writer :include_all_of_attributes

          # A string type dictionary object to specify the `attributes`. The assets having
          # at least one of the `attributes` added to this parameter will be linked to this
          # `monitor`. Once an `asset` is linked to a `monitor`, the `monitor` will be able
          # to create events for that `asset` whenever an activity specified in `type` is
          # detected. Multiple attributes should be separated by a comma `,`.
          #
          # Please note that this parameter can not be used in conjunction with
          # `include_all_of_attributes`. Also, the maximum number of `key`:`value` pairs
          # that this parameter can take is 100 and the overall size of the `match_filter`
          # object should not exceed 65kb.
          sig { returns(T.nilable(T.anything)) }
          attr_reader :include_any_of_attributes

          sig { params(include_any_of_attributes: T.anything).void }
          attr_writer :include_any_of_attributes

          # This object is used to identify the asset(s) on which the `monitor` would be
          # applied.
          sig do
            params(
              include_all_of_attributes: T.anything,
              include_any_of_attributes: T.anything
            ).returns(T.attached_class)
          end
          def self.new(
            # A string type dictionary object to specify the `attributes`. Only the assets
            # having all of the `attributes` added to this parameter will be linked to this
            # `monitor`. Once an `asset` is linked to a `monitor`, the `monitor` will be able
            # to create events for that `asset` whenever an activity specified in `type` is
            # detected. Multiple attributes should be separated by a comma `,`.
            #
            # Please note that this parameter can not be used in conjunction with
            # `include_any_of_attributes`. Also, the maximum number of `key`:`value` pairs
            # that this parameter can take is 100 and the overall size of the `match_filter`
            # object should not exceed 65kb.
            include_all_of_attributes: nil,
            # A string type dictionary object to specify the `attributes`. The assets having
            # at least one of the `attributes` added to this parameter will be linked to this
            # `monitor`. Once an `asset` is linked to a `monitor`, the `monitor` will be able
            # to create events for that `asset` whenever an activity specified in `type` is
            # detected. Multiple attributes should be separated by a comma `,`.
            #
            # Please note that this parameter can not be used in conjunction with
            # `include_all_of_attributes`. Also, the maximum number of `key`:`value` pairs
            # that this parameter can take is 100 and the overall size of the `match_filter`
            # object should not exceed 65kb.
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

        class SpeedingConfig < NextbillionSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                NextbillionSDK::Skynet::MonitorCreateParams::SpeedingConfig,
                NextbillionSDK::Internal::AnyHash
              )
            end

          # Use this parameter to establish the speed limit that will allow the `monitor` to
          # create events, depending on the `time_tolerance` value, when an asset's tracked
          # speed exceeds it. The speed limit should be specified in meters per second.
          #
          # Please note that `customer_speed_limit` is mandatory when
          # `use_admin_speed_limit` is false. However, when `use_admin_speed_limit` is true,
          # `customer_speed_limit` is ineffective.
          sig { returns(T.nilable(Integer)) }
          attr_reader :customer_speed_limit

          sig { params(customer_speed_limit: Integer).void }
          attr_writer :customer_speed_limit

          # Use this parameter to configure a time tolerance before triggering an event.
          # Adding a tolerance would make the Tracking service wait for the specified time
          # before triggering the event. Consequently, an event is triggered only when the
          # time for which the `asset` has been over-speeding continuously, exceeds the
          # configured tolerance time. The unit for this parameter is milliseconds.
          #
          # It can be seen that this attribute is used to control the "sensitivity" of the
          # `monitor` with respect to speed alerts. Higher the value of `time_tolerance` the
          # less sensitive the `monitor` would be to instances of over-speeding. Conversely,
          # if 'time_tolerance' is set to 0, the `monitor` will be extremely sensitive and
          # will create an event as soon as tracking information with a speed value greater
          # than the specified limit is received.
          sig { returns(T.nilable(Integer)) }
          attr_reader :time_tolerance

          sig { params(time_tolerance: Integer).void }
          attr_writer :time_tolerance

          # A boolean attribute to indicate which speed limit values should be used by the
          # `monitor`. When `use_admin_speed_limit` is true, the administrative speed limit
          # of the road on which the asset is located, will be used to generate events when
          # the asset’s tracked speed exceeds it. Whereas, when `use_admin_speed_limit` is
          # false, the `customer_speed_limit` specified will be used to generate events when
          # the asset's tracked speed exceeds it.
          #
          # Please note that if `use_admin_speed_limit` is false, `customer_speed_limit` is
          # mandatory, however, when `use_admin_speed_limit` is true then
          # `customer_speed_limit` is ineffective.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :use_admin_speed_limit

          sig { params(use_admin_speed_limit: T::Boolean).void }
          attr_writer :use_admin_speed_limit

          # `speeding_config` is used to set up constraints for creating over-speed events.
          # When an `asset` associated with a `monitor` is traveling at a speed above the
          # given limits, the Live Tracking API can create events to denote such instances.
          # There is also an option to set up a tolerance before creating an event. Please
          # note that this object is mandatory when `type=speeding`.
          #
          # Let's look at the properties of this object.
          sig do
            params(
              customer_speed_limit: Integer,
              time_tolerance: Integer,
              use_admin_speed_limit: T::Boolean
            ).returns(T.attached_class)
          end
          def self.new(
            # Use this parameter to establish the speed limit that will allow the `monitor` to
            # create events, depending on the `time_tolerance` value, when an asset's tracked
            # speed exceeds it. The speed limit should be specified in meters per second.
            #
            # Please note that `customer_speed_limit` is mandatory when
            # `use_admin_speed_limit` is false. However, when `use_admin_speed_limit` is true,
            # `customer_speed_limit` is ineffective.
            customer_speed_limit: nil,
            # Use this parameter to configure a time tolerance before triggering an event.
            # Adding a tolerance would make the Tracking service wait for the specified time
            # before triggering the event. Consequently, an event is triggered only when the
            # time for which the `asset` has been over-speeding continuously, exceeds the
            # configured tolerance time. The unit for this parameter is milliseconds.
            #
            # It can be seen that this attribute is used to control the "sensitivity" of the
            # `monitor` with respect to speed alerts. Higher the value of `time_tolerance` the
            # less sensitive the `monitor` would be to instances of over-speeding. Conversely,
            # if 'time_tolerance' is set to 0, the `monitor` will be extremely sensitive and
            # will create an event as soon as tracking information with a speed value greater
            # than the specified limit is received.
            time_tolerance: nil,
            # A boolean attribute to indicate which speed limit values should be used by the
            # `monitor`. When `use_admin_speed_limit` is true, the administrative speed limit
            # of the road on which the asset is located, will be used to generate events when
            # the asset’s tracked speed exceeds it. Whereas, when `use_admin_speed_limit` is
            # false, the `customer_speed_limit` specified will be used to generate events when
            # the asset's tracked speed exceeds it.
            #
            # Please note that if `use_admin_speed_limit` is false, `customer_speed_limit` is
            # mandatory, however, when `use_admin_speed_limit` is true then
            # `customer_speed_limit` is ineffective.
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
      end
    end
  end
end
