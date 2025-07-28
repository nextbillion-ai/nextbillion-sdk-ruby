# typed: strong

module NextbillionSDK
  module Models
    module Skynet
      class MonitorUpdateParams < NextbillionSDK::Internal::Type::BaseModel
        extend NextbillionSDK::Internal::Type::RequestParameters::Converter
        include NextbillionSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Skynet::MonitorUpdateParams,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        sig { returns(String) }
        attr_accessor :key

        # Use this parameter to update the `description` of the `monitor`.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # `geofence_config` is used to update the set of geofences linked to the `monitor`
        # for creating `enter` or `exit` type of events based on the asset's location.
        # Please note that this object is mandatory when the monitor `type` belongs to one
        # of `enter`, `exit` or `enter_and_exit`.
        sig do
          returns(
            T.nilable(
              NextbillionSDK::Skynet::MonitorUpdateParams::GeofenceConfig
            )
          )
        end
        attr_reader :geofence_config

        sig do
          params(
            geofence_config:
              NextbillionSDK::Skynet::MonitorUpdateParams::GeofenceConfig::OrHash
          ).void
        end
        attr_writer :geofence_config

        # Use this parameter to update the geofences linked to the `monitor` by providing
        # the geofence `id` as `,` separated strings. Geofences are geographic boundaries
        # that can be used to trigger events based on an asset's location.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :geofence_ids

        sig { params(geofence_ids: T::Array[String]).void }
        attr_writer :geofence_ids

        # `idle_config` is used to update the constraints for creating idle events. When
        # an asset associated with the `monitor` has not moved a given distance within a
        # given time, the Live Tracking API can create events to denote such instances.
        #
        # Please note that this object is mandatory when the monitor `type` is `idle`.
        sig do
          returns(
            T.nilable(NextbillionSDK::Skynet::MonitorUpdateParams::IdleConfig)
          )
        end
        attr_reader :idle_config

        sig do
          params(
            idle_config:
              NextbillionSDK::Skynet::MonitorUpdateParams::IdleConfig::OrHash
          ).void
        end
        attr_writer :idle_config

        # Use this object to update the `attributes` of the `monitor`. Please note that
        # using this property will overwrite the existing `attributes` that the monitor
        # might be using currently to match any asset(s).
        sig do
          returns(
            T.nilable(NextbillionSDK::Skynet::MonitorUpdateParams::MatchFilter)
          )
        end
        attr_reader :match_filter

        sig do
          params(
            match_filter:
              NextbillionSDK::Skynet::MonitorUpdateParams::MatchFilter::OrHash
          ).void
        end
        attr_writer :match_filter

        # Any valid json object data. Can be used to save customized data. Max size is
        # 65kb.
        sig { returns(T.nilable(T.anything)) }
        attr_reader :meta_data

        sig { params(meta_data: T.anything).void }
        attr_writer :meta_data

        # Use this parameter to update the `name` of the `monitor`. Users can add
        # meaningful names to the monitors like "warehouse_exit", "depot_entry" etc.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # `speeding_config` is used to update the tolerance values for creating over-speed
        # events. When an asset associated with a `monitor` is traveling at a speed above
        # the given limits, Live Tracking API creates events to indicate such instances.
        #
        # Please note that this object is mandatory when the monitor `type` is `speeding`.
        sig do
          returns(
            T.nilable(
              NextbillionSDK::Skynet::MonitorUpdateParams::SpeedingConfig
            )
          )
        end
        attr_reader :speeding_config

        sig do
          params(
            speeding_config:
              NextbillionSDK::Skynet::MonitorUpdateParams::SpeedingConfig::OrHash
          ).void
        end
        attr_writer :speeding_config

        # Use this parameter to update the `tags` of the `monitor`. `tags` can be used for
        # filtering monitors in the _Get Monitor List_ operation. They can also be used
        # for easy identification of monitors. Using this parameter overwrites the
        # existing `tags` of the monitor.
        #
        # Please note that valid `tags` are strings, consisting of alphanumeric characters
        # (A-Z, a-z, 0-9) along with the underscore ('\_') and hyphen ('-') symbols.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :tags

        sig { params(tags: T::Array[String]).void }
        attr_writer :tags

        # Use this parameter to update the `type` of the `monitor`. The `monitor` will be
        # able to detect the specified `type` of activity and create events for eligible
        # `asset`. A `monitor` can detect following types of asset activity:
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
          returns(
            T.nilable(
              NextbillionSDK::Skynet::MonitorUpdateParams::Type::OrSymbol
            )
          )
        end
        attr_reader :type

        sig do
          params(
            type: NextbillionSDK::Skynet::MonitorUpdateParams::Type::OrSymbol
          ).void
        end
        attr_writer :type

        sig do
          params(
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
          ).returns(T.attached_class)
        end
        def self.new(
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          # Use this parameter to update the `description` of the `monitor`.
          description: nil,
          # `geofence_config` is used to update the set of geofences linked to the `monitor`
          # for creating `enter` or `exit` type of events based on the asset's location.
          # Please note that this object is mandatory when the monitor `type` belongs to one
          # of `enter`, `exit` or `enter_and_exit`.
          geofence_config: nil,
          # Use this parameter to update the geofences linked to the `monitor` by providing
          # the geofence `id` as `,` separated strings. Geofences are geographic boundaries
          # that can be used to trigger events based on an asset's location.
          geofence_ids: nil,
          # `idle_config` is used to update the constraints for creating idle events. When
          # an asset associated with the `monitor` has not moved a given distance within a
          # given time, the Live Tracking API can create events to denote such instances.
          #
          # Please note that this object is mandatory when the monitor `type` is `idle`.
          idle_config: nil,
          # Use this object to update the `attributes` of the `monitor`. Please note that
          # using this property will overwrite the existing `attributes` that the monitor
          # might be using currently to match any asset(s).
          match_filter: nil,
          # Any valid json object data. Can be used to save customized data. Max size is
          # 65kb.
          meta_data: nil,
          # Use this parameter to update the `name` of the `monitor`. Users can add
          # meaningful names to the monitors like "warehouse_exit", "depot_entry" etc.
          name: nil,
          # `speeding_config` is used to update the tolerance values for creating over-speed
          # events. When an asset associated with a `monitor` is traveling at a speed above
          # the given limits, Live Tracking API creates events to indicate such instances.
          #
          # Please note that this object is mandatory when the monitor `type` is `speeding`.
          speeding_config: nil,
          # Use this parameter to update the `tags` of the `monitor`. `tags` can be used for
          # filtering monitors in the _Get Monitor List_ operation. They can also be used
          # for easy identification of monitors. Using this parameter overwrites the
          # existing `tags` of the monitor.
          #
          # Please note that valid `tags` are strings, consisting of alphanumeric characters
          # (A-Z, a-z, 0-9) along with the underscore ('\_') and hyphen ('-') symbols.
          tags: nil,
          # Use this parameter to update the `type` of the `monitor`. The `monitor` will be
          # able to detect the specified `type` of activity and create events for eligible
          # `asset`. A `monitor` can detect following types of asset activity:
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
          type: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              key: String,
              description: String,
              geofence_config:
                NextbillionSDK::Skynet::MonitorUpdateParams::GeofenceConfig,
              geofence_ids: T::Array[String],
              idle_config:
                NextbillionSDK::Skynet::MonitorUpdateParams::IdleConfig,
              match_filter:
                NextbillionSDK::Skynet::MonitorUpdateParams::MatchFilter,
              meta_data: T.anything,
              name: String,
              speeding_config:
                NextbillionSDK::Skynet::MonitorUpdateParams::SpeedingConfig,
              tags: T::Array[String],
              type: NextbillionSDK::Skynet::MonitorUpdateParams::Type::OrSymbol,
              request_options: NextbillionSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        class GeofenceConfig < NextbillionSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                NextbillionSDK::Skynet::MonitorUpdateParams::GeofenceConfig,
                NextbillionSDK::Internal::AnyHash
              )
            end

          # Use this array to update the geofence IDs that should be linked to the
          # `monitor`. Please note `geofence_ids` are mandatory when using the
          # `geofence_config` attribute.
          sig { returns(T::Array[String]) }
          attr_accessor :geofence_ids

          # `geofence_config` is used to update the set of geofences linked to the `monitor`
          # for creating `enter` or `exit` type of events based on the asset's location.
          # Please note that this object is mandatory when the monitor `type` belongs to one
          # of `enter`, `exit` or `enter_and_exit`.
          sig do
            params(geofence_ids: T::Array[String]).returns(T.attached_class)
          end
          def self.new(
            # Use this array to update the geofence IDs that should be linked to the
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
                NextbillionSDK::Skynet::MonitorUpdateParams::IdleConfig,
                NextbillionSDK::Internal::AnyHash
              )
            end

          # Use this parameter to update the distance threshold that will be used to
          # determine if the asset was idle or not. When the asset, within `time_tolerance`
          # duration, moves less than the value for this parameter, the `monitor` creates an
          # idle event against the `asset`. The `distance_tolerance` should be provided in
          # meters.
          #
          # Please note `distance_tolerance` is mandatory when `idle_config` attribute is
          # used.
          sig { returns(Float) }
          attr_accessor :distance_tolerance

          # Use this parameter to update the time duration for which the `monitor` would
          # track the distance covered by an asset before triggering an idle event. The
          # `time_tolerance` should be provided in milliseconds.
          #
          # If the distance covered by the asset during a `time_tolerance` is less than that
          # specified in `distance_tolerance` the asset will be assumed to be idle.
          #
          # This attribute along with `distance_tolerance` parameter can be used to control
          # the "sensitivity" of the `monitor` with respect to idle alerts. It is
          # recommended to use these properties with appropriate values to trigger genuine
          # idle events. The appropriate values might depend on the traffic conditions,
          # nature of operations that the asset is involved in, type of asset and other
          # factors.
          sig { returns(T.nilable(Integer)) }
          attr_reader :time_tolerance

          sig { params(time_tolerance: Integer).void }
          attr_writer :time_tolerance

          # `idle_config` is used to update the constraints for creating idle events. When
          # an asset associated with the `monitor` has not moved a given distance within a
          # given time, the Live Tracking API can create events to denote such instances.
          #
          # Please note that this object is mandatory when the monitor `type` is `idle`.
          sig do
            params(distance_tolerance: Float, time_tolerance: Integer).returns(
              T.attached_class
            )
          end
          def self.new(
            # Use this parameter to update the distance threshold that will be used to
            # determine if the asset was idle or not. When the asset, within `time_tolerance`
            # duration, moves less than the value for this parameter, the `monitor` creates an
            # idle event against the `asset`. The `distance_tolerance` should be provided in
            # meters.
            #
            # Please note `distance_tolerance` is mandatory when `idle_config` attribute is
            # used.
            distance_tolerance:,
            # Use this parameter to update the time duration for which the `monitor` would
            # track the distance covered by an asset before triggering an idle event. The
            # `time_tolerance` should be provided in milliseconds.
            #
            # If the distance covered by the asset during a `time_tolerance` is less than that
            # specified in `distance_tolerance` the asset will be assumed to be idle.
            #
            # This attribute along with `distance_tolerance` parameter can be used to control
            # the "sensitivity" of the `monitor` with respect to idle alerts. It is
            # recommended to use these properties with appropriate values to trigger genuine
            # idle events. The appropriate values might depend on the traffic conditions,
            # nature of operations that the asset is involved in, type of asset and other
            # factors.
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
                NextbillionSDK::Skynet::MonitorUpdateParams::MatchFilter,
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

          # Use this object to update the `attributes` of the `monitor`. Please note that
          # using this property will overwrite the existing `attributes` that the monitor
          # might be using currently to match any asset(s).
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
                NextbillionSDK::Skynet::MonitorUpdateParams::SpeedingConfig,
                NextbillionSDK::Internal::AnyHash
              )
            end

          # Use this parameter to update the speed limit value that the `monitor` will use
          # to create events, depending on the `time_tolerance` value. The speed limit
          # should be specified in meters per second.
          #
          # Please note that `customer_speed_limit` is mandatory when
          # `use_admin_speed_limit` is false. However, when `use_admin_speed_limit` is true,
          # `customer_speed_limit` is ineffective.
          sig { returns(T.nilable(String)) }
          attr_reader :customer_speed_limit

          sig { params(customer_speed_limit: String).void }
          attr_writer :customer_speed_limit

          # Use this parameter to update the time tolerance before triggering an event.
          # Adding a tolerance would make the Tracking service wait for the specified time
          # before triggering the event. Consequently, an event is triggered only when the
          # time for which the asset has been over-speeding continuously, exceeds the
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

          # Use this attribute to update which speed limit values will be used by the
          # `monitor`. When `use_admin_speed_limit` is true, the administrative speed limit
          # of the road on which the asset is located, is used to generate events when the
          # asset’s tracked speed exceeds it. Whereas, when `use_admin_speed_limit` is
          # false, the `customer_speed_limit` specified will be used to generate events when
          # the asset's tracked speed exceeds it.
          #
          # Please note that if `use_admin_speed_limit` is false, `customer_speed_limit` is
          # mandatory, otherwise when `use_admin_speed_limit` is true then
          # `customer_speed_limit` is ineffective.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :use_admin_speed_limit

          sig { params(use_admin_speed_limit: T::Boolean).void }
          attr_writer :use_admin_speed_limit

          # `speeding_config` is used to update the tolerance values for creating over-speed
          # events. When an asset associated with a `monitor` is traveling at a speed above
          # the given limits, Live Tracking API creates events to indicate such instances.
          #
          # Please note that this object is mandatory when the monitor `type` is `speeding`.
          sig do
            params(
              customer_speed_limit: String,
              time_tolerance: Integer,
              use_admin_speed_limit: T::Boolean
            ).returns(T.attached_class)
          end
          def self.new(
            # Use this parameter to update the speed limit value that the `monitor` will use
            # to create events, depending on the `time_tolerance` value. The speed limit
            # should be specified in meters per second.
            #
            # Please note that `customer_speed_limit` is mandatory when
            # `use_admin_speed_limit` is false. However, when `use_admin_speed_limit` is true,
            # `customer_speed_limit` is ineffective.
            customer_speed_limit: nil,
            # Use this parameter to update the time tolerance before triggering an event.
            # Adding a tolerance would make the Tracking service wait for the specified time
            # before triggering the event. Consequently, an event is triggered only when the
            # time for which the asset has been over-speeding continuously, exceeds the
            # configured tolerance time. The unit for this parameter is milliseconds.
            #
            # It can be seen that this attribute is used to control the "sensitivity" of the
            # `monitor` with respect to speed alerts. Higher the value of `time_tolerance` the
            # less sensitive the `monitor` would be to instances of over-speeding. Conversely,
            # if 'time_tolerance' is set to 0, the `monitor` will be extremely sensitive and
            # will create an event as soon as tracking information with a speed value greater
            # than the specified limit is received.
            time_tolerance: nil,
            # Use this attribute to update which speed limit values will be used by the
            # `monitor`. When `use_admin_speed_limit` is true, the administrative speed limit
            # of the road on which the asset is located, is used to generate events when the
            # asset’s tracked speed exceeds it. Whereas, when `use_admin_speed_limit` is
            # false, the `customer_speed_limit` specified will be used to generate events when
            # the asset's tracked speed exceeds it.
            #
            # Please note that if `use_admin_speed_limit` is false, `customer_speed_limit` is
            # mandatory, otherwise when `use_admin_speed_limit` is true then
            # `customer_speed_limit` is ineffective.
            use_admin_speed_limit: nil
          )
          end

          sig do
            override.returns(
              {
                customer_speed_limit: String,
                time_tolerance: Integer,
                use_admin_speed_limit: T::Boolean
              }
            )
          end
          def to_hash
          end
        end

        # Use this parameter to update the `type` of the `monitor`. The `monitor` will be
        # able to detect the specified `type` of activity and create events for eligible
        # `asset`. A `monitor` can detect following types of asset activity:
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
              T.all(Symbol, NextbillionSDK::Skynet::MonitorUpdateParams::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ENTER =
            T.let(
              :"`enter`",
              NextbillionSDK::Skynet::MonitorUpdateParams::Type::TaggedSymbol
            )
          EXIT =
            T.let(
              :"`exit`",
              NextbillionSDK::Skynet::MonitorUpdateParams::Type::TaggedSymbol
            )
          ENTER_AND_EXIT =
            T.let(
              :"`enter_and_exit`",
              NextbillionSDK::Skynet::MonitorUpdateParams::Type::TaggedSymbol
            )
          SPEEDING =
            T.let(
              :"`speeding`",
              NextbillionSDK::Skynet::MonitorUpdateParams::Type::TaggedSymbol
            )
          IDLE =
            T.let(
              :"`idle`",
              NextbillionSDK::Skynet::MonitorUpdateParams::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                NextbillionSDK::Skynet::MonitorUpdateParams::Type::TaggedSymbol
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
