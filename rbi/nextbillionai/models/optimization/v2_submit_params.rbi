# typed: strong

module Nextbillionai
  module Models
    module Optimization
      class V2SubmitParams < Nextbillionai::Internal::Type::BaseModel
        extend Nextbillionai::Internal::Type::RequestParameters::Converter
        include Nextbillionai::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Optimization::V2SubmitParams,
              Nextbillionai::Internal::AnyHash
            )
          end

        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        sig { returns(String) }
        attr_accessor :key

        # The locations object is used to define all the locations that will be used
        # during the optimization process. Read more about this attribute in the
        # [Location Object](#location-object) section.
        sig { returns(Nextbillionai::Optimization::V2SubmitParams::Locations) }
        attr_reader :locations

        sig do
          params(
            locations:
              Nextbillionai::Optimization::V2SubmitParams::Locations::OrHash
          ).void
        end
        attr_writer :locations

        # The vehicles attribute describes the characteristics and constraints of the
        # vehicles that will be used for fulfilling the tasks. Read more about this
        # attribute in the [Vehicle Object](#vehicle-object) section.
        sig { returns(T::Array[Nextbillionai::Optimization::Vehicle]) }
        attr_accessor :vehicles

        # An array of arrays to denote the user-defined costs of traveling between each
        # pair of geographic coordinates mentioned in the location array. The number of
        # arrays should be equal to the number of coordinate points mentioned in the
        # location array and each array should contain the same number of elements as
        # well. Please note that cost_matrix is effective only when
        # travel_cost=customized. Read more about this attribute in the
        # [Custom Cost Matrix](#custom-cost-matrix) section.
        sig { returns(T.nilable(T::Array[T::Array[Integer]])) }
        attr_reader :cost_matrix

        sig { params(cost_matrix: T::Array[T::Array[Integer]]).void }
        attr_writer :cost_matrix

        # depots object is used to collect the details of a depot. Depots can be used as a
        # starting point and/or ending point for the routes and vehicles. They also can be
        # used to fulfil pickup and delivery typejobs . The loads which are to be
        # delivered at task locations will be picked from depots and loads picked-up from
        # task locations will be delivered back to the depots. A depot can be configured
        # using the following fields:
        sig do
          returns(
            T.nilable(
              T::Array[Nextbillionai::Optimization::V2SubmitParams::Depot]
            )
          )
        end
        attr_reader :depots

        sig do
          params(
            depots:
              T::Array[
                Nextbillionai::Optimization::V2SubmitParams::Depot::OrHash
              ]
          ).void
        end
        attr_writer :depots

        # Define the optimization job using any custom message. This description is
        # returned as is in the response.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # An array of arrays to denote the user-defined distances, in meters, for
        # travelling between each pair of geographic coordinates mentioned in the location
        # array. When this input is provided, actual distances between the locations will
        # be ignored in favor of the values provided in this input for any distance
        # calculations during the optimization process. The values provided here will also
        # be used for cost calculations when travel_cost is “distance”.
        #
        # The number of arrays in the input should be equal to the number of coordinate
        # points mentioned in the location array and each array, in turn, should contain
        # the same number of elements as well.
        #
        # **Note:**
        #
        # - duration_matrix is mandatory when usingdistance_matrix.
        # - When using distance_matrix route geometry will not be available in the
        #   optimized solution.
        sig { returns(T.nilable(T::Array[T::Array[Integer]])) }
        attr_reader :distance_matrix

        sig { params(distance_matrix: T::Array[T::Array[Integer]]).void }
        attr_writer :distance_matrix

        # An array of arrays to denote the user-defined durations, in seconds, for
        # travelling between each pair of geographic coordinates mentioned in the location
        # array. When this input is provided, actual durations between the locations will
        # be ignored in favor of the values provided in the matrix for any ETA
        # calculations during the optimization process. The values provided in the matrix
        # will also be used for cost calculations when travel_cost is “duration”.
        #
        # The number of arrays in the input should be equal to the number of coordinate
        # points mentioned in the location array and each array, in turn, should contain
        # the same number of elements as well.
        #
        # Please note that, unlike distance_matrix, duration_matrix can be used
        # independently in following cases:
        #
        # - when travel_cost is “duration”
        # - when travel_cost is “customized” and a cost_matrix is provided
        #
        # Also, the route geometry will not be available in the optimized solution when
        # using duration_matrix.
        sig { returns(T.nilable(T::Array[T::Array[Integer]])) }
        attr_reader :duration_matrix

        sig { params(duration_matrix: T::Array[T::Array[Integer]]).void }
        attr_writer :duration_matrix

        # The previous optimization request id used to retrieve solution for
        # reoptimization
        sig { returns(T.nilable(String)) }
        attr_reader :existing_solution_id

        sig { params(existing_solution_id: String).void }
        attr_writer :existing_solution_id

        # jobs object is used to collect the details of a particular job or task that
        # needs to be completed as part of the optimization process. Each job can have
        # either a pickup or delivery step, but not both. Read more about this attribute
        # in the [Job Object](#job-object) section.
        #
        # Please note that either the jobs or the shipments attribute should be specified
        # to build a valid request.
        sig { returns(T.nilable(T::Array[Nextbillionai::Optimization::Job])) }
        attr_reader :jobs

        sig do
          params(jobs: T::Array[Nextbillionai::Optimization::Job::OrHash]).void
        end
        attr_writer :jobs

        # It represents the set of options that can be used to configure optimization
        # algorithms so that the solver provides a solution that meets the desired
        # business objectives.
        sig do
          returns(
            T.nilable(Nextbillionai::Optimization::V2SubmitParams::Options)
          )
        end
        attr_reader :options

        sig do
          params(
            options:
              Nextbillionai::Optimization::V2SubmitParams::Options::OrHash
          ).void
        end
        attr_writer :options

        # relations attribute is an array of individual relation objects. type parameter
        # and steps object are mandatory when using this attribute.
        #
        # Please note:
        #
        # - The soft constraints are **not** effective when using the relations attribute.
        # - In case a given relation can't be satisfied, the optimizer will flag all the
        #   tasks involved in that "relation" as unassigned.
        #
        # Read more about this attribute in the [Relations Object](#relations-object)
        # section.
        sig do
          returns(
            T.nilable(
              T::Array[Nextbillionai::Optimization::V2SubmitParams::Relation]
            )
          )
        end
        attr_reader :relations

        sig do
          params(
            relations:
              T::Array[
                Nextbillionai::Optimization::V2SubmitParams::Relation::OrHash
              ]
          ).void
        end
        attr_writer :relations

        # The shipments object is used to collect the details of shipments that need to be
        # completed as part of the optimization process.
        #
        # Each shipment should have a pickup and the corresponding delivery step.
        #
        # Please note that either the jobs or the shipments attribute should be specified
        # to build a valid request.
        sig do
          returns(T.nilable(T::Array[Nextbillionai::Optimization::Shipment]))
        end
        attr_reader :shipments

        sig do
          params(
            shipments: T::Array[Nextbillionai::Optimization::Shipment::OrHash]
          ).void
        end
        attr_writer :shipments

        # This attribute is related to the re-optimization feature. It allows for the
        # previous optimization result to be provided in case new orders are received and
        # the solution needs to be re-planned. The solution attribute should contain the
        # same routes as the previous optimization result. solution attribute is an array
        # of objects with each object corresponding to one route.
        sig do
          returns(
            T.nilable(
              T::Array[Nextbillionai::Optimization::V2SubmitParams::Solution]
            )
          )
        end
        attr_reader :solution

        sig do
          params(
            solution:
              T::Array[
                Nextbillionai::Optimization::V2SubmitParams::Solution::OrHash
              ]
          ).void
        end
        attr_writer :solution

        # unassigned attribute is related to the re-optimization feature. This attribute
        # should contain the tasks that were not assigned during an earlier optimization
        # process. Please note that the unassigned part in request should be consistent
        # with the unassigned part in the previous optimization result.
        #
        # Users can reduce the number of unassigned tasks in the re-optimized solution, by
        # following strategies such as:
        #
        # - Extending the time windows for vehicles or tasks to give more flexibility
        # - Adding more vehicles to the optimization problem
        # - Adjusting the priority of different tasks to balance the workload more evenly
        # - Modifying other constraints or parameters to make the problem more solvable
        #
        # Ultimately, the goal is to minimize the number of unassigned tasks while still
        # meeting all the necessary constraints and objectives.
        sig do
          returns(
            T.nilable(Nextbillionai::Optimization::V2SubmitParams::Unassigned)
          )
        end
        attr_reader :unassigned

        sig do
          params(
            unassigned:
              Nextbillionai::Optimization::V2SubmitParams::Unassigned::OrHash
          ).void
        end
        attr_writer :unassigned

        # An array of objects to specify geometry of all the zones involved. Each object
        # corresponds to a single zone. A valid zone can be a
        # [geoJSON](https://datatracker.ietf.org/doc/html/rfc7946#page-9) polygon,
        # multi-polygon or a geofence created using
        # [NextBillion.ai](http://NextBillion.ai)’s
        # [Geofence API](https://docs.nextbillion.ai/docs/tracking/api/geofence).
        #
        # Please note that
        #
        # - Each zone should have a geometry specified either throughgeometry or through
        #   the geofence_id parameter.
        # - When zone IDs are not provided for individual tasks (jobs or shipments) then
        #   the API will automatically allocate zones based on the task’s geolocation and
        #   the geometries of the zones provided here. Otherwise, if the zone IDs are
        #   provided while configuring individual tasks, the zone IDs will override the
        #   geometries provided here.
        sig do
          returns(
            T.nilable(
              T::Array[Nextbillionai::Optimization::V2SubmitParams::Zone]
            )
          )
        end
        attr_reader :zones

        sig do
          params(
            zones:
              T::Array[
                Nextbillionai::Optimization::V2SubmitParams::Zone::OrHash
              ]
          ).void
        end
        attr_writer :zones

        sig do
          params(
            key: String,
            locations:
              Nextbillionai::Optimization::V2SubmitParams::Locations::OrHash,
            vehicles: T::Array[Nextbillionai::Optimization::Vehicle::OrHash],
            cost_matrix: T::Array[T::Array[Integer]],
            depots:
              T::Array[
                Nextbillionai::Optimization::V2SubmitParams::Depot::OrHash
              ],
            description: String,
            distance_matrix: T::Array[T::Array[Integer]],
            duration_matrix: T::Array[T::Array[Integer]],
            existing_solution_id: String,
            jobs: T::Array[Nextbillionai::Optimization::Job::OrHash],
            options:
              Nextbillionai::Optimization::V2SubmitParams::Options::OrHash,
            relations:
              T::Array[
                Nextbillionai::Optimization::V2SubmitParams::Relation::OrHash
              ],
            shipments: T::Array[Nextbillionai::Optimization::Shipment::OrHash],
            solution:
              T::Array[
                Nextbillionai::Optimization::V2SubmitParams::Solution::OrHash
              ],
            unassigned:
              Nextbillionai::Optimization::V2SubmitParams::Unassigned::OrHash,
            zones:
              T::Array[
                Nextbillionai::Optimization::V2SubmitParams::Zone::OrHash
              ],
            request_options: Nextbillionai::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          # The locations object is used to define all the locations that will be used
          # during the optimization process. Read more about this attribute in the
          # [Location Object](#location-object) section.
          locations:,
          # The vehicles attribute describes the characteristics and constraints of the
          # vehicles that will be used for fulfilling the tasks. Read more about this
          # attribute in the [Vehicle Object](#vehicle-object) section.
          vehicles:,
          # An array of arrays to denote the user-defined costs of traveling between each
          # pair of geographic coordinates mentioned in the location array. The number of
          # arrays should be equal to the number of coordinate points mentioned in the
          # location array and each array should contain the same number of elements as
          # well. Please note that cost_matrix is effective only when
          # travel_cost=customized. Read more about this attribute in the
          # [Custom Cost Matrix](#custom-cost-matrix) section.
          cost_matrix: nil,
          # depots object is used to collect the details of a depot. Depots can be used as a
          # starting point and/or ending point for the routes and vehicles. They also can be
          # used to fulfil pickup and delivery typejobs . The loads which are to be
          # delivered at task locations will be picked from depots and loads picked-up from
          # task locations will be delivered back to the depots. A depot can be configured
          # using the following fields:
          depots: nil,
          # Define the optimization job using any custom message. This description is
          # returned as is in the response.
          description: nil,
          # An array of arrays to denote the user-defined distances, in meters, for
          # travelling between each pair of geographic coordinates mentioned in the location
          # array. When this input is provided, actual distances between the locations will
          # be ignored in favor of the values provided in this input for any distance
          # calculations during the optimization process. The values provided here will also
          # be used for cost calculations when travel_cost is “distance”.
          #
          # The number of arrays in the input should be equal to the number of coordinate
          # points mentioned in the location array and each array, in turn, should contain
          # the same number of elements as well.
          #
          # **Note:**
          #
          # - duration_matrix is mandatory when usingdistance_matrix.
          # - When using distance_matrix route geometry will not be available in the
          #   optimized solution.
          distance_matrix: nil,
          # An array of arrays to denote the user-defined durations, in seconds, for
          # travelling between each pair of geographic coordinates mentioned in the location
          # array. When this input is provided, actual durations between the locations will
          # be ignored in favor of the values provided in the matrix for any ETA
          # calculations during the optimization process. The values provided in the matrix
          # will also be used for cost calculations when travel_cost is “duration”.
          #
          # The number of arrays in the input should be equal to the number of coordinate
          # points mentioned in the location array and each array, in turn, should contain
          # the same number of elements as well.
          #
          # Please note that, unlike distance_matrix, duration_matrix can be used
          # independently in following cases:
          #
          # - when travel_cost is “duration”
          # - when travel_cost is “customized” and a cost_matrix is provided
          #
          # Also, the route geometry will not be available in the optimized solution when
          # using duration_matrix.
          duration_matrix: nil,
          # The previous optimization request id used to retrieve solution for
          # reoptimization
          existing_solution_id: nil,
          # jobs object is used to collect the details of a particular job or task that
          # needs to be completed as part of the optimization process. Each job can have
          # either a pickup or delivery step, but not both. Read more about this attribute
          # in the [Job Object](#job-object) section.
          #
          # Please note that either the jobs or the shipments attribute should be specified
          # to build a valid request.
          jobs: nil,
          # It represents the set of options that can be used to configure optimization
          # algorithms so that the solver provides a solution that meets the desired
          # business objectives.
          options: nil,
          # relations attribute is an array of individual relation objects. type parameter
          # and steps object are mandatory when using this attribute.
          #
          # Please note:
          #
          # - The soft constraints are **not** effective when using the relations attribute.
          # - In case a given relation can't be satisfied, the optimizer will flag all the
          #   tasks involved in that "relation" as unassigned.
          #
          # Read more about this attribute in the [Relations Object](#relations-object)
          # section.
          relations: nil,
          # The shipments object is used to collect the details of shipments that need to be
          # completed as part of the optimization process.
          #
          # Each shipment should have a pickup and the corresponding delivery step.
          #
          # Please note that either the jobs or the shipments attribute should be specified
          # to build a valid request.
          shipments: nil,
          # This attribute is related to the re-optimization feature. It allows for the
          # previous optimization result to be provided in case new orders are received and
          # the solution needs to be re-planned. The solution attribute should contain the
          # same routes as the previous optimization result. solution attribute is an array
          # of objects with each object corresponding to one route.
          solution: nil,
          # unassigned attribute is related to the re-optimization feature. This attribute
          # should contain the tasks that were not assigned during an earlier optimization
          # process. Please note that the unassigned part in request should be consistent
          # with the unassigned part in the previous optimization result.
          #
          # Users can reduce the number of unassigned tasks in the re-optimized solution, by
          # following strategies such as:
          #
          # - Extending the time windows for vehicles or tasks to give more flexibility
          # - Adding more vehicles to the optimization problem
          # - Adjusting the priority of different tasks to balance the workload more evenly
          # - Modifying other constraints or parameters to make the problem more solvable
          #
          # Ultimately, the goal is to minimize the number of unassigned tasks while still
          # meeting all the necessary constraints and objectives.
          unassigned: nil,
          # An array of objects to specify geometry of all the zones involved. Each object
          # corresponds to a single zone. A valid zone can be a
          # [geoJSON](https://datatracker.ietf.org/doc/html/rfc7946#page-9) polygon,
          # multi-polygon or a geofence created using
          # [NextBillion.ai](http://NextBillion.ai)’s
          # [Geofence API](https://docs.nextbillion.ai/docs/tracking/api/geofence).
          #
          # Please note that
          #
          # - Each zone should have a geometry specified either throughgeometry or through
          #   the geofence_id parameter.
          # - When zone IDs are not provided for individual tasks (jobs or shipments) then
          #   the API will automatically allocate zones based on the task’s geolocation and
          #   the geometries of the zones provided here. Otherwise, if the zone IDs are
          #   provided while configuring individual tasks, the zone IDs will override the
          #   geometries provided here.
          zones: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              key: String,
              locations: Nextbillionai::Optimization::V2SubmitParams::Locations,
              vehicles: T::Array[Nextbillionai::Optimization::Vehicle],
              cost_matrix: T::Array[T::Array[Integer]],
              depots:
                T::Array[Nextbillionai::Optimization::V2SubmitParams::Depot],
              description: String,
              distance_matrix: T::Array[T::Array[Integer]],
              duration_matrix: T::Array[T::Array[Integer]],
              existing_solution_id: String,
              jobs: T::Array[Nextbillionai::Optimization::Job],
              options: Nextbillionai::Optimization::V2SubmitParams::Options,
              relations:
                T::Array[Nextbillionai::Optimization::V2SubmitParams::Relation],
              shipments: T::Array[Nextbillionai::Optimization::Shipment],
              solution:
                T::Array[Nextbillionai::Optimization::V2SubmitParams::Solution],
              unassigned:
                Nextbillionai::Optimization::V2SubmitParams::Unassigned,
              zones:
                T::Array[Nextbillionai::Optimization::V2SubmitParams::Zone],
              request_options: Nextbillionai::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Locations < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Optimization::V2SubmitParams::Locations,
                Nextbillionai::Internal::AnyHash
              )
            end

          # Indicate all the location coordinates that will be used during optimization. The
          # coordinates should be specified in the format “latitude, longitude”. It is
          # recommended to avoid adding duplicate location coordinates to this array. In
          # case there are multiple tasks at the same location, users can repeat the index
          # of the location while configuring all such tasks.
          #
          # Please use this array to determine the index of a location when setting the
          # location_index parameter in jobs, shipments, vehicles or other parts of the
          # request. The length of this array determines the valid values for location_index
          # parameter.
          sig { returns(T::Array[String]) }
          attr_accessor :location

          # A unique ID for the set of locations. It should be a positive integer.
          sig { returns(T.nilable(Integer)) }
          attr_reader :id

          sig { params(id: Integer).void }
          attr_writer :id

          # Describe if the location is curbside. An array of strings indicates the side of
          # the road from which to approach the location in the calculated route. If
          # provided, the number of approaches must be equal to the number of locations.
          # However, you can skip a coordinate and show its position in the list using “”
          # (empty string). Please note these values are case-sensitive.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Nextbillionai::Optimization::V2SubmitParams::Locations::Approach::OrSymbol
                ]
              )
            )
          end
          attr_reader :approaches

          sig do
            params(
              approaches:
                T::Array[
                  Nextbillionai::Optimization::V2SubmitParams::Locations::Approach::OrSymbol
                ]
            ).void
          end
          attr_writer :approaches

          # The locations object is used to define all the locations that will be used
          # during the optimization process. Read more about this attribute in the
          # [Location Object](#location-object) section.
          sig do
            params(
              location: T::Array[String],
              id: Integer,
              approaches:
                T::Array[
                  Nextbillionai::Optimization::V2SubmitParams::Locations::Approach::OrSymbol
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Indicate all the location coordinates that will be used during optimization. The
            # coordinates should be specified in the format “latitude, longitude”. It is
            # recommended to avoid adding duplicate location coordinates to this array. In
            # case there are multiple tasks at the same location, users can repeat the index
            # of the location while configuring all such tasks.
            #
            # Please use this array to determine the index of a location when setting the
            # location_index parameter in jobs, shipments, vehicles or other parts of the
            # request. The length of this array determines the valid values for location_index
            # parameter.
            location:,
            # A unique ID for the set of locations. It should be a positive integer.
            id: nil,
            # Describe if the location is curbside. An array of strings indicates the side of
            # the road from which to approach the location in the calculated route. If
            # provided, the number of approaches must be equal to the number of locations.
            # However, you can skip a coordinate and show its position in the list using “”
            # (empty string). Please note these values are case-sensitive.
            approaches: nil
          )
          end

          sig do
            override.returns(
              {
                location: T::Array[String],
                id: Integer,
                approaches:
                  T::Array[
                    Nextbillionai::Optimization::V2SubmitParams::Locations::Approach::OrSymbol
                  ]
              }
            )
          end
          def to_hash
          end

          module Approach
            extend Nextbillionai::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Nextbillionai::Optimization::V2SubmitParams::Locations::Approach
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            UNRESTRICTED =
              T.let(
                :unrestricted,
                Nextbillionai::Optimization::V2SubmitParams::Locations::Approach::TaggedSymbol
              )
            CURB =
              T.let(
                :curb,
                Nextbillionai::Optimization::V2SubmitParams::Locations::Approach::TaggedSymbol
              )
            EMPTY_STRING =
              T.let(
                :"\"\"(empty string)",
                Nextbillionai::Optimization::V2SubmitParams::Locations::Approach::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Nextbillionai::Optimization::V2SubmitParams::Locations::Approach::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Depot < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Optimization::V2SubmitParams::Depot,
                Nextbillionai::Internal::AnyHash
              )
            end

          # Provide an unique ID for the depot. The IDs are case sensitive.
          sig { returns(String) }
          attr_accessor :id

          # Specify the index of coordinates (in the location array) denoting the depot’s
          # location. The valid range of values is \[0, length of location array). If the
          # location index exceeds the count of input locations in the location array, the
          # API will report an error.
          #
          # Please note the location_index is mandatory when using the depots object.
          sig { returns(Integer) }
          attr_accessor :location_index

          # Add a custom description for the depot.
          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          # Specify the time duration, in seconds, needed to load or unload the vehicle each
          # time it starts or arrives at a depot, respectively. Default value is 0.
          sig { returns(T.nilable(Integer)) }
          attr_reader :service

          sig { params(service: Integer).void }
          attr_writer :service

          # Specify the time-windows during which the depot is operational and allows
          # vehicles to be loaded / unloaded. The time periods should be expressed as a UNIX
          # timestamp in seconds.
          #
          # Please note that:
          #
          # - Multiple time-windows can be provided but those time windows should not
          #   overlap with each other.
          # - Time windows should always be specified in the format of \[start_timestamp,
          #   end_timestamp\].
          # - Depot's time-windows are ineffective used when max_activity_waiting_time is
          #   specified in the input.
          # - Using relations along with depot time-window is not allowed and the service
          #   will return an error.
          sig { returns(T.nilable(T::Array[T::Array[Integer]])) }
          attr_reader :time_windows

          sig { params(time_windows: T::Array[T::Array[Integer]]).void }
          attr_writer :time_windows

          sig do
            params(
              id: String,
              location_index: Integer,
              description: String,
              service: Integer,
              time_windows: T::Array[T::Array[Integer]]
            ).returns(T.attached_class)
          end
          def self.new(
            # Provide an unique ID for the depot. The IDs are case sensitive.
            id:,
            # Specify the index of coordinates (in the location array) denoting the depot’s
            # location. The valid range of values is \[0, length of location array). If the
            # location index exceeds the count of input locations in the location array, the
            # API will report an error.
            #
            # Please note the location_index is mandatory when using the depots object.
            location_index:,
            # Add a custom description for the depot.
            description: nil,
            # Specify the time duration, in seconds, needed to load or unload the vehicle each
            # time it starts or arrives at a depot, respectively. Default value is 0.
            service: nil,
            # Specify the time-windows during which the depot is operational and allows
            # vehicles to be loaded / unloaded. The time periods should be expressed as a UNIX
            # timestamp in seconds.
            #
            # Please note that:
            #
            # - Multiple time-windows can be provided but those time windows should not
            #   overlap with each other.
            # - Time windows should always be specified in the format of \[start_timestamp,
            #   end_timestamp\].
            # - Depot's time-windows are ineffective used when max_activity_waiting_time is
            #   specified in the input.
            # - Using relations along with depot time-window is not allowed and the service
            #   will return an error.
            time_windows: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                location_index: Integer,
                description: String,
                service: Integer,
                time_windows: T::Array[T::Array[Integer]]
              }
            )
          end
          def to_hash
          end
        end

        class Options < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Optimization::V2SubmitParams::Options,
                Nextbillionai::Internal::AnyHash
              )
            end

          # This attribute defines both the soft and hard constraints for an optimization
          # job.
          #
          # Soft constraints are constraints that do not necessarily have to be satisfied,
          # but the optimization algorithm will try to satisfy them as much as possible.
          # Whereas the hard constraints are the constraints that will not be violated by
          # the solver. Users can use multiple constraints together.
          #
          # Please note that soft constraints are ineffective when using relations attribute
          # in a request. The hard constraint, max_activity_waiting_time, is effective only
          # when relation type is in_same_route and ineffective for all other types.
          sig do
            returns(
              T.nilable(
                Nextbillionai::Optimization::V2SubmitParams::Options::Constraint
              )
            )
          end
          attr_reader :constraint

          sig do
            params(
              constraint:
                Nextbillionai::Optimization::V2SubmitParams::Options::Constraint::OrHash
            ).void
          end
          attr_writer :constraint

          # Set grouping rules for the tasks and routes.
          #
          # - Use order_grouping to group nearby tasks
          # - Use route_grouping to control route sequencing.
          sig do
            returns(
              T.nilable(
                Nextbillionai::Optimization::V2SubmitParams::Options::Grouping
              )
            )
          end
          attr_reader :grouping

          sig do
            params(
              grouping:
                Nextbillionai::Optimization::V2SubmitParams::Options::Grouping::OrHash
            ).void
          end
          attr_writer :grouping

          # This attribute is used to configure the objective of the optimization job.
          sig do
            returns(
              T.nilable(
                Nextbillionai::Optimization::V2SubmitParams::Options::Objective
              )
            )
          end
          attr_reader :objective

          sig do
            params(
              objective:
                Nextbillionai::Optimization::V2SubmitParams::Options::Objective::OrHash
            ).void
          end
          attr_writer :objective

          # This attribute is used to define the routing configurations for the optimization
          # job.
          sig do
            returns(
              T.nilable(
                Nextbillionai::Optimization::V2SubmitParams::Options::Routing
              )
            )
          end
          attr_reader :routing

          sig do
            params(
              routing:
                Nextbillionai::Optimization::V2SubmitParams::Options::Routing::OrHash
            ).void
          end
          attr_writer :routing

          # It represents the set of options that can be used to configure optimization
          # algorithms so that the solver provides a solution that meets the desired
          # business objectives.
          sig do
            params(
              constraint:
                Nextbillionai::Optimization::V2SubmitParams::Options::Constraint::OrHash,
              grouping:
                Nextbillionai::Optimization::V2SubmitParams::Options::Grouping::OrHash,
              objective:
                Nextbillionai::Optimization::V2SubmitParams::Options::Objective::OrHash,
              routing:
                Nextbillionai::Optimization::V2SubmitParams::Options::Routing::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # This attribute defines both the soft and hard constraints for an optimization
            # job.
            #
            # Soft constraints are constraints that do not necessarily have to be satisfied,
            # but the optimization algorithm will try to satisfy them as much as possible.
            # Whereas the hard constraints are the constraints that will not be violated by
            # the solver. Users can use multiple constraints together.
            #
            # Please note that soft constraints are ineffective when using relations attribute
            # in a request. The hard constraint, max_activity_waiting_time, is effective only
            # when relation type is in_same_route and ineffective for all other types.
            constraint: nil,
            # Set grouping rules for the tasks and routes.
            #
            # - Use order_grouping to group nearby tasks
            # - Use route_grouping to control route sequencing.
            grouping: nil,
            # This attribute is used to configure the objective of the optimization job.
            objective: nil,
            # This attribute is used to define the routing configurations for the optimization
            # job.
            routing: nil
          )
          end

          sig do
            override.returns(
              {
                constraint:
                  Nextbillionai::Optimization::V2SubmitParams::Options::Constraint,
                grouping:
                  Nextbillionai::Optimization::V2SubmitParams::Options::Grouping,
                objective:
                  Nextbillionai::Optimization::V2SubmitParams::Options::Objective,
                routing:
                  Nextbillionai::Optimization::V2SubmitParams::Options::Routing
              }
            )
          end
          def to_hash
          end

          class Constraint < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Optimization::V2SubmitParams::Options::Constraint,
                  Nextbillionai::Internal::AnyHash
                )
              end

            # This is a hard constraint which specifies the maximum waiting time, in seconds,
            # for each step. It ensures that the vehicles do not have unreasonable wait times
            # between jobs or shipments. This feature is useful for use cases where avoiding
            # long wait times between jobs or shipments is a primary concern.
            #
            # Please note that the waiting time constraint applies to all tasks in the
            # optimization request, ensuring that no single task exceeds the specified maximum
            # waiting time. When being used together with relations attribute, this parameter
            # is effective only for in_same_route relation type.
            sig { returns(T.nilable(Integer)) }
            attr_reader :max_activity_waiting_time

            sig { params(max_activity_waiting_time: Integer).void }
            attr_writer :max_activity_waiting_time

            # This is a soft constraint for vehicle overtime. Overtime is defined as the time
            # that a vehicle spends to complete a set of jobs after its time window has ended.
            # max_vehicle_overtime attribute specifies the maximum amount of overtime a
            # vehicle can have, in seconds. If a vehicle’s overtime exceeds this value, it
            # will be considered a violation of this constraint.
            #
            # Please note that this constraint applies to all vehicles in the optimization
            # request.
            sig { returns(T.nilable(Integer)) }
            attr_reader :max_vehicle_overtime

            sig { params(max_vehicle_overtime: Integer).void }
            attr_writer :max_vehicle_overtime

            # This is a soft constraint for permissible delay, in seconds, to complete a job
            # or shipment after its time window is over. If a job or shipment’s lateness
            # exceeds this value, it will be considered a violation of this constraint.
            #
            # Please note that this constraint applies to all tasks in the optimization
            # request. In case lateness duration needs to be applied for individual tasks,
            # please use the max_visit_lateness parameter under jobs and shipments
            sig { returns(T.nilable(Integer)) }
            attr_reader :max_visit_lateness

            sig { params(max_visit_lateness: Integer).void }
            attr_writer :max_visit_lateness

            # This attribute defines both the soft and hard constraints for an optimization
            # job.
            #
            # Soft constraints are constraints that do not necessarily have to be satisfied,
            # but the optimization algorithm will try to satisfy them as much as possible.
            # Whereas the hard constraints are the constraints that will not be violated by
            # the solver. Users can use multiple constraints together.
            #
            # Please note that soft constraints are ineffective when using relations attribute
            # in a request. The hard constraint, max_activity_waiting_time, is effective only
            # when relation type is in_same_route and ineffective for all other types.
            sig do
              params(
                max_activity_waiting_time: Integer,
                max_vehicle_overtime: Integer,
                max_visit_lateness: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              # This is a hard constraint which specifies the maximum waiting time, in seconds,
              # for each step. It ensures that the vehicles do not have unreasonable wait times
              # between jobs or shipments. This feature is useful for use cases where avoiding
              # long wait times between jobs or shipments is a primary concern.
              #
              # Please note that the waiting time constraint applies to all tasks in the
              # optimization request, ensuring that no single task exceeds the specified maximum
              # waiting time. When being used together with relations attribute, this parameter
              # is effective only for in_same_route relation type.
              max_activity_waiting_time: nil,
              # This is a soft constraint for vehicle overtime. Overtime is defined as the time
              # that a vehicle spends to complete a set of jobs after its time window has ended.
              # max_vehicle_overtime attribute specifies the maximum amount of overtime a
              # vehicle can have, in seconds. If a vehicle’s overtime exceeds this value, it
              # will be considered a violation of this constraint.
              #
              # Please note that this constraint applies to all vehicles in the optimization
              # request.
              max_vehicle_overtime: nil,
              # This is a soft constraint for permissible delay, in seconds, to complete a job
              # or shipment after its time window is over. If a job or shipment’s lateness
              # exceeds this value, it will be considered a violation of this constraint.
              #
              # Please note that this constraint applies to all tasks in the optimization
              # request. In case lateness duration needs to be applied for individual tasks,
              # please use the max_visit_lateness parameter under jobs and shipments
              max_visit_lateness: nil
            )
            end

            sig do
              override.returns(
                {
                  max_activity_waiting_time: Integer,
                  max_vehicle_overtime: Integer,
                  max_visit_lateness: Integer
                }
              )
            end
            def to_hash
            end
          end

          class Grouping < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Optimization::V2SubmitParams::Options::Grouping,
                  Nextbillionai::Internal::AnyHash
                )
              end

            # Specify the criteria for grouping nearby tasks. The grouped tasks will be
            # treated as one stop by the optimizer and no cost would be incurred when driver
            # travels to different tasks within a group. Users can use this feature to model
            # use cases like multiple deliveries in a building complex or a condo.
            #
            # Please note that when the multiple tasks are grouped together, only one setup
            # time is considered for all such tasks. The durations of this setup time is equal
            # to maximum setup time among all grouped tasks, if provided. On the other hand,
            # the service time is applied to each task individually, as per the input provided
            # when configuring those tasks.
            sig do
              returns(
                T.nilable(
                  Nextbillionai::Optimization::V2SubmitParams::Options::Grouping::OrderGrouping
                )
              )
            end
            attr_reader :order_grouping

            sig do
              params(
                order_grouping:
                  Nextbillionai::Optimization::V2SubmitParams::Options::Grouping::OrderGrouping::OrHash
              ).void
            end
            attr_writer :order_grouping

            # When specified, routes are built taking into account the distance to the nearest
            # tasks. A higher proximity factor helps build routes with closer distances
            # between neighboring tasks, whereas a lower proximity factor helps build routes
            # with farther distances between neighboring tasks. As a result, the total number
            # of routes in the solution can vary based on the configured proximity factor -
            # more routes for higher factor and less routes with lower factor.
            #
            # In practice, such routes are more resistant to changes in task time windows:
            # when the time window is postponed, the driver can drive to the next task and
            # then return to the previous one.
            #
            # Please note that:
            #
            # - Valid values are \[0,10\]
            # - Default value is 0.0.
            # - It is recommended to use values lower values, in the range of \[0, 1\]. Higher
            #   values may adversely impact the solution metrics due to higher number of
            #   resulting routes: costs, mileage etc.
            sig { returns(T.nilable(Float)) }
            attr_reader :proximity_factor

            sig { params(proximity_factor: Float).void }
            attr_writer :proximity_factor

            # Specify the criteria for prioritising routes in a zone over routes that are part
            # of another zone. As a result, all the tasks falling in a zone will be fulfilled
            # before any tasks that are part of a different zone.
            sig do
              returns(
                T.nilable(
                  Nextbillionai::Optimization::V2SubmitParams::Options::Grouping::RouteGrouping
                )
              )
            end
            attr_reader :route_grouping

            sig do
              params(
                route_grouping:
                  Nextbillionai::Optimization::V2SubmitParams::Options::Grouping::RouteGrouping::OrHash
              ).void
            end
            attr_writer :route_grouping

            # Set grouping rules for the tasks and routes.
            #
            # - Use order_grouping to group nearby tasks
            # - Use route_grouping to control route sequencing.
            sig do
              params(
                order_grouping:
                  Nextbillionai::Optimization::V2SubmitParams::Options::Grouping::OrderGrouping::OrHash,
                proximity_factor: Float,
                route_grouping:
                  Nextbillionai::Optimization::V2SubmitParams::Options::Grouping::RouteGrouping::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # Specify the criteria for grouping nearby tasks. The grouped tasks will be
              # treated as one stop by the optimizer and no cost would be incurred when driver
              # travels to different tasks within a group. Users can use this feature to model
              # use cases like multiple deliveries in a building complex or a condo.
              #
              # Please note that when the multiple tasks are grouped together, only one setup
              # time is considered for all such tasks. The durations of this setup time is equal
              # to maximum setup time among all grouped tasks, if provided. On the other hand,
              # the service time is applied to each task individually, as per the input provided
              # when configuring those tasks.
              order_grouping: nil,
              # When specified, routes are built taking into account the distance to the nearest
              # tasks. A higher proximity factor helps build routes with closer distances
              # between neighboring tasks, whereas a lower proximity factor helps build routes
              # with farther distances between neighboring tasks. As a result, the total number
              # of routes in the solution can vary based on the configured proximity factor -
              # more routes for higher factor and less routes with lower factor.
              #
              # In practice, such routes are more resistant to changes in task time windows:
              # when the time window is postponed, the driver can drive to the next task and
              # then return to the previous one.
              #
              # Please note that:
              #
              # - Valid values are \[0,10\]
              # - Default value is 0.0.
              # - It is recommended to use values lower values, in the range of \[0, 1\]. Higher
              #   values may adversely impact the solution metrics due to higher number of
              #   resulting routes: costs, mileage etc.
              proximity_factor: nil,
              # Specify the criteria for prioritising routes in a zone over routes that are part
              # of another zone. As a result, all the tasks falling in a zone will be fulfilled
              # before any tasks that are part of a different zone.
              route_grouping: nil
            )
            end

            sig do
              override.returns(
                {
                  order_grouping:
                    Nextbillionai::Optimization::V2SubmitParams::Options::Grouping::OrderGrouping,
                  proximity_factor: Float,
                  route_grouping:
                    Nextbillionai::Optimization::V2SubmitParams::Options::Grouping::RouteGrouping
                }
              )
            end
            def to_hash
            end

            class OrderGrouping < Nextbillionai::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Nextbillionai::Optimization::V2SubmitParams::Options::Grouping::OrderGrouping,
                    Nextbillionai::Internal::AnyHash
                  )
                end

              # Specify the straight line distance, in meters, which will be used to identify
              # the tasks that should be grouped together. The default value is null.
              sig { returns(T.nilable(Float)) }
              attr_reader :grouping_diameter

              sig { params(grouping_diameter: Float).void }
              attr_writer :grouping_diameter

              # Specify the criteria for grouping nearby tasks. The grouped tasks will be
              # treated as one stop by the optimizer and no cost would be incurred when driver
              # travels to different tasks within a group. Users can use this feature to model
              # use cases like multiple deliveries in a building complex or a condo.
              #
              # Please note that when the multiple tasks are grouped together, only one setup
              # time is considered for all such tasks. The durations of this setup time is equal
              # to maximum setup time among all grouped tasks, if provided. On the other hand,
              # the service time is applied to each task individually, as per the input provided
              # when configuring those tasks.
              sig { params(grouping_diameter: Float).returns(T.attached_class) }
              def self.new(
                # Specify the straight line distance, in meters, which will be used to identify
                # the tasks that should be grouped together. The default value is null.
                grouping_diameter: nil
              )
              end

              sig { override.returns({ grouping_diameter: Float }) }
              def to_hash
              end
            end

            class RouteGrouping < Nextbillionai::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Nextbillionai::Optimization::V2SubmitParams::Options::Grouping::RouteGrouping,
                    Nextbillionai::Internal::AnyHash
                  )
                end

              # Specify a non-negative value which indicates the penalty of crossing zones on
              # the same route. Default penalty value is 0.
              #
              # A higher value, for example 30.0, will place a higher penalty on zone violations
              # and hence push the optimizer to prefer a solution without any zone violations,
              # where all tasks in a single region are fulfilled before any tasks in other
              # regions or outside the current region. Whereas a lower value, say 5.0, will
              # place a lower penalty allowing the optimizer to return solutions which may have
              # few violations, say a couple of routing zone violations in our example. A still
              # lower penalty factor, like 1.0, may have several zone violations.
              sig { returns(T.nilable(Float)) }
              attr_reader :penalty_factor

              sig { params(penalty_factor: Float).void }
              attr_writer :penalty_factor

              # Specify the diameter of the zone, routes within which will be prioritised before
              # routes falling in other zones. Please note that zone_diameter is the straight
              # line distance, in meters.
              sig { returns(T.nilable(Float)) }
              attr_reader :zone_diameter

              sig { params(zone_diameter: Float).void }
              attr_writer :zone_diameter

              # Specify the source for creating boundaries of the routing zones. The default
              # value is “system_generated”.
              #
              # - system_generated - Routing zone boundaries are created automatically by the
              #   optimizer based on the zone_diameter provided.
              # - custom_definition - Custom routing zone boundaries should be provided by the
              #   user in input using the zones attribute. An error would be returned if the
              #   zones attribute is null or missing in the input request.
              sig do
                returns(
                  T.nilable(
                    Nextbillionai::Optimization::V2SubmitParams::Options::Grouping::RouteGrouping::ZoneSource::OrSymbol
                  )
                )
              end
              attr_reader :zone_source

              sig do
                params(
                  zone_source:
                    Nextbillionai::Optimization::V2SubmitParams::Options::Grouping::RouteGrouping::ZoneSource::OrSymbol
                ).void
              end
              attr_writer :zone_source

              # Specify the criteria for prioritising routes in a zone over routes that are part
              # of another zone. As a result, all the tasks falling in a zone will be fulfilled
              # before any tasks that are part of a different zone.
              sig do
                params(
                  penalty_factor: Float,
                  zone_diameter: Float,
                  zone_source:
                    Nextbillionai::Optimization::V2SubmitParams::Options::Grouping::RouteGrouping::ZoneSource::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Specify a non-negative value which indicates the penalty of crossing zones on
                # the same route. Default penalty value is 0.
                #
                # A higher value, for example 30.0, will place a higher penalty on zone violations
                # and hence push the optimizer to prefer a solution without any zone violations,
                # where all tasks in a single region are fulfilled before any tasks in other
                # regions or outside the current region. Whereas a lower value, say 5.0, will
                # place a lower penalty allowing the optimizer to return solutions which may have
                # few violations, say a couple of routing zone violations in our example. A still
                # lower penalty factor, like 1.0, may have several zone violations.
                penalty_factor: nil,
                # Specify the diameter of the zone, routes within which will be prioritised before
                # routes falling in other zones. Please note that zone_diameter is the straight
                # line distance, in meters.
                zone_diameter: nil,
                # Specify the source for creating boundaries of the routing zones. The default
                # value is “system_generated”.
                #
                # - system_generated - Routing zone boundaries are created automatically by the
                #   optimizer based on the zone_diameter provided.
                # - custom_definition - Custom routing zone boundaries should be provided by the
                #   user in input using the zones attribute. An error would be returned if the
                #   zones attribute is null or missing in the input request.
                zone_source: nil
              )
              end

              sig do
                override.returns(
                  {
                    penalty_factor: Float,
                    zone_diameter: Float,
                    zone_source:
                      Nextbillionai::Optimization::V2SubmitParams::Options::Grouping::RouteGrouping::ZoneSource::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # Specify the source for creating boundaries of the routing zones. The default
              # value is “system_generated”.
              #
              # - system_generated - Routing zone boundaries are created automatically by the
              #   optimizer based on the zone_diameter provided.
              # - custom_definition - Custom routing zone boundaries should be provided by the
              #   user in input using the zones attribute. An error would be returned if the
              #   zones attribute is null or missing in the input request.
              module ZoneSource
                extend Nextbillionai::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Nextbillionai::Optimization::V2SubmitParams::Options::Grouping::RouteGrouping::ZoneSource
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                SYSTEM_GENERATED =
                  T.let(
                    :system_generated,
                    Nextbillionai::Optimization::V2SubmitParams::Options::Grouping::RouteGrouping::ZoneSource::TaggedSymbol
                  )
                CUSTOM_DEFINITION =
                  T.let(
                    :custom_definition,
                    Nextbillionai::Optimization::V2SubmitParams::Options::Grouping::RouteGrouping::ZoneSource::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Nextbillionai::Optimization::V2SubmitParams::Options::Grouping::RouteGrouping::ZoneSource::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class Objective < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Optimization::V2SubmitParams::Options::Objective,
                  Nextbillionai::Internal::AnyHash
                )
              end

            # Choose where the optimizer should schedule the driver’s wait time. When set to
            # true the driver waits at the location of the task until its time window allows
            # him to start the task. When set to false the driver waits at the location of the
            # previous task and starts driving only at such a time that makes him arrive at
            # the next task location in time to start the task as soon as he reaches.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :allow_early_arrival

            sig { params(allow_early_arrival: T::Boolean).void }
            attr_writer :allow_early_arrival

            # The custom parameter is used to define special objectives apart from the simpler
            # travel cost minimization objectives.
            sig do
              returns(
                T.nilable(
                  Nextbillionai::Optimization::V2SubmitParams::Options::Objective::Custom
                )
              )
            end
            attr_reader :custom

            sig do
              params(
                custom:
                  Nextbillionai::Optimization::V2SubmitParams::Options::Objective::Custom::OrHash
              ).void
            end
            attr_writer :custom

            # Specify whether to minimize the number of depots used in optimization routes.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :minimise_num_depots

            sig { params(minimise_num_depots: T::Boolean).void }
            attr_writer :minimise_num_depots

            # If the input doesn’t include features of soft constraints, customized
            # objectives, re-optimization, relations, max travel cost or automatic fixed cost,
            # then user can select “optimal” to achieve a higher-speed and higher-quality
            # optimization.
            #
            # If “optimal” mode is unable to process some features in the input, then it will
            # still goes to “flexible” mode.
            sig do
              returns(
                T.nilable(
                  Nextbillionai::Optimization::V2SubmitParams::Options::Objective::SolverMode::OrSymbol
                )
              )
            end
            attr_reader :solver_mode

            sig do
              params(
                solver_mode:
                  Nextbillionai::Optimization::V2SubmitParams::Options::Objective::SolverMode::OrSymbol
              ).void
            end
            attr_writer :solver_mode

            # Specify the number of seconds within which the optimizer should ideally solve
            # the optimization request.
            #
            # Please note that:
            #
            # - In case the specified time limit is not enough to generate a solution for a
            #   given problem set, the optimizer will continue processing until it arrives at
            #   a solution.
            # - It is recommended to specify a duration of at least 5-7 minutes in case the
            #   input problem contains a large set of tasks or vehicles.
            sig { returns(T.nilable(Integer)) }
            attr_reader :solving_time_limit

            sig { params(solving_time_limit: Integer).void }
            attr_writer :solving_time_limit

            # The travel_cost parameter specifies the type of cost used by the solver to
            # determine the routes.
            #
            # If the travel_cost parameter is set to distance, the solver will minimize the
            # total distance traveled by vehicles while determining a solution. This objective
            # would be useful in cases where the primary objective is to reduce fuel
            # consumption or travel expenses.
            #
            # If the travel_cost parameter is set to duration, the solver will minimize the
            # total time taken by the vehicles to complete all tasks while determining a
            # solution. This objective would be useful in cases where the primary objective is
            # to minimize completion time or maximize the number of orders fulfilled within a
            # given time window.
            #
            # If the travel_cost parameter is set to air_distance, the solver will try to
            # calculate the distance,in meters, between two points using the great-circle
            # distance formula (i.e., the shortest distance between two points on a sphere)
            # instead of the actual road distance. This would be useful in cases where the
            # delivery locations are far apart and the road distance between them is
            # significantly longer than the actual straight-line distance. For example, in
            # Drone Delivery services.
            #
            # If the travel_cost is set to customized the solver would use the custom cost
            # values provided by the user (in cost_matrix attribute) and prefer a solution
            # with lower overall cost. This enables the user to have greater control over the
            # routes preferred by the solver and hence the sequence in which the jobs are
            # completed.
            sig do
              returns(
                T.nilable(
                  Nextbillionai::Optimization::V2SubmitParams::Options::Objective::TravelCost::OrSymbol
                )
              )
            end
            attr_reader :travel_cost

            sig do
              params(
                travel_cost:
                  Nextbillionai::Optimization::V2SubmitParams::Options::Objective::TravelCost::OrSymbol
              ).void
            end
            attr_writer :travel_cost

            # This attribute is used to configure the objective of the optimization job.
            sig do
              params(
                allow_early_arrival: T::Boolean,
                custom:
                  Nextbillionai::Optimization::V2SubmitParams::Options::Objective::Custom::OrHash,
                minimise_num_depots: T::Boolean,
                solver_mode:
                  Nextbillionai::Optimization::V2SubmitParams::Options::Objective::SolverMode::OrSymbol,
                solving_time_limit: Integer,
                travel_cost:
                  Nextbillionai::Optimization::V2SubmitParams::Options::Objective::TravelCost::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Choose where the optimizer should schedule the driver’s wait time. When set to
              # true the driver waits at the location of the task until its time window allows
              # him to start the task. When set to false the driver waits at the location of the
              # previous task and starts driving only at such a time that makes him arrive at
              # the next task location in time to start the task as soon as he reaches.
              allow_early_arrival: nil,
              # The custom parameter is used to define special objectives apart from the simpler
              # travel cost minimization objectives.
              custom: nil,
              # Specify whether to minimize the number of depots used in optimization routes.
              minimise_num_depots: nil,
              # If the input doesn’t include features of soft constraints, customized
              # objectives, re-optimization, relations, max travel cost or automatic fixed cost,
              # then user can select “optimal” to achieve a higher-speed and higher-quality
              # optimization.
              #
              # If “optimal” mode is unable to process some features in the input, then it will
              # still goes to “flexible” mode.
              solver_mode: nil,
              # Specify the number of seconds within which the optimizer should ideally solve
              # the optimization request.
              #
              # Please note that:
              #
              # - In case the specified time limit is not enough to generate a solution for a
              #   given problem set, the optimizer will continue processing until it arrives at
              #   a solution.
              # - It is recommended to specify a duration of at least 5-7 minutes in case the
              #   input problem contains a large set of tasks or vehicles.
              solving_time_limit: nil,
              # The travel_cost parameter specifies the type of cost used by the solver to
              # determine the routes.
              #
              # If the travel_cost parameter is set to distance, the solver will minimize the
              # total distance traveled by vehicles while determining a solution. This objective
              # would be useful in cases where the primary objective is to reduce fuel
              # consumption or travel expenses.
              #
              # If the travel_cost parameter is set to duration, the solver will minimize the
              # total time taken by the vehicles to complete all tasks while determining a
              # solution. This objective would be useful in cases where the primary objective is
              # to minimize completion time or maximize the number of orders fulfilled within a
              # given time window.
              #
              # If the travel_cost parameter is set to air_distance, the solver will try to
              # calculate the distance,in meters, between two points using the great-circle
              # distance formula (i.e., the shortest distance between two points on a sphere)
              # instead of the actual road distance. This would be useful in cases where the
              # delivery locations are far apart and the road distance between them is
              # significantly longer than the actual straight-line distance. For example, in
              # Drone Delivery services.
              #
              # If the travel_cost is set to customized the solver would use the custom cost
              # values provided by the user (in cost_matrix attribute) and prefer a solution
              # with lower overall cost. This enables the user to have greater control over the
              # routes preferred by the solver and hence the sequence in which the jobs are
              # completed.
              travel_cost: nil
            )
            end

            sig do
              override.returns(
                {
                  allow_early_arrival: T::Boolean,
                  custom:
                    Nextbillionai::Optimization::V2SubmitParams::Options::Objective::Custom,
                  minimise_num_depots: T::Boolean,
                  solver_mode:
                    Nextbillionai::Optimization::V2SubmitParams::Options::Objective::SolverMode::OrSymbol,
                  solving_time_limit: Integer,
                  travel_cost:
                    Nextbillionai::Optimization::V2SubmitParams::Options::Objective::TravelCost::OrSymbol
                }
              )
            end
            def to_hash
            end

            class Custom < Nextbillionai::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Nextbillionai::Optimization::V2SubmitParams::Options::Objective::Custom,
                    Nextbillionai::Internal::AnyHash
                  )
                end

              # The type parameter accepts two inputs:
              #
              # - min: This type of customized objective will minimize the metric provided in
              #   the value parameter.
              # - min-max: This type of customized objective will approximate an even
              #   distribution of the metric provided in the value parameter, among all the
              #   routes in solution.
              #
              # Please note that type is mandatory only when using custom attribute.
              sig do
                returns(
                  Nextbillionai::Optimization::V2SubmitParams::Options::Objective::Custom::Type::OrSymbol
                )
              end
              attr_accessor :type

              # The value parameter accepts four inputs, two of them are valid for min type and
              # other two are valid for min-max type custom objective. Let’s look at the values
              # for min type objective:
              #
              # - vehicles: Solver will minimize the number of vehicles used in the solution.
              # - completion_time: Solver will minimize the total time taken to complete all
              #   tasks.
              #
              # The next set of values are acceptable when type is set to min-max.
              #
              # - tasks: Solver will evenly distribute the tasks on each route.
              # - travel_cost: Solver will assign tasks such that the traveling cost of each
              #   route is within a close range of other routes. The travel cost metric
              #   considered here is the one set using objective.travel_cost .
              #
              # Please note that value is mandatory only when using custom attribute. The above
              # values provide flexibility to tune the optimization algorithm to fulfill
              # practical objectives beyond the relatively simpler time or distance minimization
              # approaches.
              sig do
                returns(
                  Nextbillionai::Optimization::V2SubmitParams::Options::Objective::Custom::Value::OrSymbol
                )
              end
              attr_accessor :value

              # The custom parameter is used to define special objectives apart from the simpler
              # travel cost minimization objectives.
              sig do
                params(
                  type:
                    Nextbillionai::Optimization::V2SubmitParams::Options::Objective::Custom::Type::OrSymbol,
                  value:
                    Nextbillionai::Optimization::V2SubmitParams::Options::Objective::Custom::Value::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The type parameter accepts two inputs:
                #
                # - min: This type of customized objective will minimize the metric provided in
                #   the value parameter.
                # - min-max: This type of customized objective will approximate an even
                #   distribution of the metric provided in the value parameter, among all the
                #   routes in solution.
                #
                # Please note that type is mandatory only when using custom attribute.
                type:,
                # The value parameter accepts four inputs, two of them are valid for min type and
                # other two are valid for min-max type custom objective. Let’s look at the values
                # for min type objective:
                #
                # - vehicles: Solver will minimize the number of vehicles used in the solution.
                # - completion_time: Solver will minimize the total time taken to complete all
                #   tasks.
                #
                # The next set of values are acceptable when type is set to min-max.
                #
                # - tasks: Solver will evenly distribute the tasks on each route.
                # - travel_cost: Solver will assign tasks such that the traveling cost of each
                #   route is within a close range of other routes. The travel cost metric
                #   considered here is the one set using objective.travel_cost .
                #
                # Please note that value is mandatory only when using custom attribute. The above
                # values provide flexibility to tune the optimization algorithm to fulfill
                # practical objectives beyond the relatively simpler time or distance minimization
                # approaches.
                value:
              )
              end

              sig do
                override.returns(
                  {
                    type:
                      Nextbillionai::Optimization::V2SubmitParams::Options::Objective::Custom::Type::OrSymbol,
                    value:
                      Nextbillionai::Optimization::V2SubmitParams::Options::Objective::Custom::Value::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # The type parameter accepts two inputs:
              #
              # - min: This type of customized objective will minimize the metric provided in
              #   the value parameter.
              # - min-max: This type of customized objective will approximate an even
              #   distribution of the metric provided in the value parameter, among all the
              #   routes in solution.
              #
              # Please note that type is mandatory only when using custom attribute.
              module Type
                extend Nextbillionai::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Nextbillionai::Optimization::V2SubmitParams::Options::Objective::Custom::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MIN =
                  T.let(
                    :min,
                    Nextbillionai::Optimization::V2SubmitParams::Options::Objective::Custom::Type::TaggedSymbol
                  )
                MIN_MAX =
                  T.let(
                    :"min-max",
                    Nextbillionai::Optimization::V2SubmitParams::Options::Objective::Custom::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Nextbillionai::Optimization::V2SubmitParams::Options::Objective::Custom::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              # The value parameter accepts four inputs, two of them are valid for min type and
              # other two are valid for min-max type custom objective. Let’s look at the values
              # for min type objective:
              #
              # - vehicles: Solver will minimize the number of vehicles used in the solution.
              # - completion_time: Solver will minimize the total time taken to complete all
              #   tasks.
              #
              # The next set of values are acceptable when type is set to min-max.
              #
              # - tasks: Solver will evenly distribute the tasks on each route.
              # - travel_cost: Solver will assign tasks such that the traveling cost of each
              #   route is within a close range of other routes. The travel cost metric
              #   considered here is the one set using objective.travel_cost .
              #
              # Please note that value is mandatory only when using custom attribute. The above
              # values provide flexibility to tune the optimization algorithm to fulfill
              # practical objectives beyond the relatively simpler time or distance minimization
              # approaches.
              module Value
                extend Nextbillionai::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Nextbillionai::Optimization::V2SubmitParams::Options::Objective::Custom::Value
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                VEHICLES =
                  T.let(
                    :vehicles,
                    Nextbillionai::Optimization::V2SubmitParams::Options::Objective::Custom::Value::TaggedSymbol
                  )
                COMPLETION_TIME =
                  T.let(
                    :completion_time,
                    Nextbillionai::Optimization::V2SubmitParams::Options::Objective::Custom::Value::TaggedSymbol
                  )
                TRAVEL_COST =
                  T.let(
                    :travel_cost,
                    Nextbillionai::Optimization::V2SubmitParams::Options::Objective::Custom::Value::TaggedSymbol
                  )
                TASKS =
                  T.let(
                    :tasks,
                    Nextbillionai::Optimization::V2SubmitParams::Options::Objective::Custom::Value::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Nextbillionai::Optimization::V2SubmitParams::Options::Objective::Custom::Value::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            # If the input doesn’t include features of soft constraints, customized
            # objectives, re-optimization, relations, max travel cost or automatic fixed cost,
            # then user can select “optimal” to achieve a higher-speed and higher-quality
            # optimization.
            #
            # If “optimal” mode is unable to process some features in the input, then it will
            # still goes to “flexible” mode.
            module SolverMode
              extend Nextbillionai::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Nextbillionai::Optimization::V2SubmitParams::Options::Objective::SolverMode
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              FLEXIBLE =
                T.let(
                  :flexible,
                  Nextbillionai::Optimization::V2SubmitParams::Options::Objective::SolverMode::TaggedSymbol
                )
              FAST =
                T.let(
                  :fast,
                  Nextbillionai::Optimization::V2SubmitParams::Options::Objective::SolverMode::TaggedSymbol
                )
              INTERNAL =
                T.let(
                  :internal,
                  Nextbillionai::Optimization::V2SubmitParams::Options::Objective::SolverMode::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Nextbillionai::Optimization::V2SubmitParams::Options::Objective::SolverMode::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # The travel_cost parameter specifies the type of cost used by the solver to
            # determine the routes.
            #
            # If the travel_cost parameter is set to distance, the solver will minimize the
            # total distance traveled by vehicles while determining a solution. This objective
            # would be useful in cases where the primary objective is to reduce fuel
            # consumption or travel expenses.
            #
            # If the travel_cost parameter is set to duration, the solver will minimize the
            # total time taken by the vehicles to complete all tasks while determining a
            # solution. This objective would be useful in cases where the primary objective is
            # to minimize completion time or maximize the number of orders fulfilled within a
            # given time window.
            #
            # If the travel_cost parameter is set to air_distance, the solver will try to
            # calculate the distance,in meters, between two points using the great-circle
            # distance formula (i.e., the shortest distance between two points on a sphere)
            # instead of the actual road distance. This would be useful in cases where the
            # delivery locations are far apart and the road distance between them is
            # significantly longer than the actual straight-line distance. For example, in
            # Drone Delivery services.
            #
            # If the travel_cost is set to customized the solver would use the custom cost
            # values provided by the user (in cost_matrix attribute) and prefer a solution
            # with lower overall cost. This enables the user to have greater control over the
            # routes preferred by the solver and hence the sequence in which the jobs are
            # completed.
            module TravelCost
              extend Nextbillionai::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Nextbillionai::Optimization::V2SubmitParams::Options::Objective::TravelCost
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              DURATION =
                T.let(
                  :duration,
                  Nextbillionai::Optimization::V2SubmitParams::Options::Objective::TravelCost::TaggedSymbol
                )
              DISTANCE =
                T.let(
                  :distance,
                  Nextbillionai::Optimization::V2SubmitParams::Options::Objective::TravelCost::TaggedSymbol
                )
              AIR_DISTANCE =
                T.let(
                  :air_distance,
                  Nextbillionai::Optimization::V2SubmitParams::Options::Objective::TravelCost::TaggedSymbol
                )
              CUSTOMIZED =
                T.let(
                  :customized,
                  Nextbillionai::Optimization::V2SubmitParams::Options::Objective::TravelCost::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Nextbillionai::Optimization::V2SubmitParams::Options::Objective::TravelCost::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class Routing < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Optimization::V2SubmitParams::Options::Routing,
                  Nextbillionai::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  T::Array[
                    Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Allow::OrSymbol
                  ]
                )
              )
            end
            attr_reader :allow

            sig do
              params(
                allow:
                  T::Array[
                    Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Allow::OrSymbol
                  ]
              ).void
            end
            attr_writer :allow

            # Specify the type of objects/maneuvers that the route should avoid.
            #
            # Please note that:
            #
            # - The values are case-sensitive.
            # - When using avoid:bbox feature, users need to specify the boundaries of the
            #   bounding box to be avoided. Multiple bounding boxes can be provided
            #   simultaneously. Please note that bounding box is a hard filter and if it
            #   blocks all possible routes between given locations, a 4xx error is returned.
            #   Mention the bounding box boundaries in the following format: bbox:
            #   min_latitude,min_longitude,max_latitude,max_longitude.
            # - When using avoid=sharp_turn, the range of allowed turn angles is \[120,240\]
            #   in the clockwise direction from the current road. Any roads with turn angles
            #   outside the range will be avoided.
            # - If none is provided along with other values, an error is returned as a valid
            #   route is not feasible.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Avoid::OrSymbol
                  ]
                )
              )
            end
            attr_reader :avoid

            sig do
              params(
                avoid:
                  T::Array[
                    Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Avoid::OrSymbol
                  ]
              ).void
            end
            attr_writer :avoid

            # Use this parameter to apply a single speed value for all ETA and drive time
            # calculations. In case, the travel_cost is set to duration then setting this
            # parameter also impacts the cost of the solution.
            sig do
              returns(
                T.nilable(
                  Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Context::OrSymbol
                )
              )
            end
            attr_reader :context

            sig do
              params(
                context:
                  Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Context::OrSymbol
              ).void
            end
            attr_writer :context

            # Specify if crossing an international border is allowed for operations near
            # border areas. When set to false, the API will prohibit any routes crossing
            # international borders. When set to true, the service will return routes which
            # cross the borders between countries, if required for the given set locations
            #
            # This feature is available in North America region only. Please get in touch with
            # [support@nextbillion.ai](mailto:support@nextbillion.ai) to enquire/enable other
            # areas.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :cross_border

            sig { params(cross_border: T::Boolean).void }
            attr_writer :cross_border

            # Specify if the optimizer should cache the matrix result set (containing ETAs and
            # distances) for the given set of locations in the request. Once the results are
            # cached, the optimizer can use it during the next 60 mins if exactly the same set
            # of locations are provided again. Please note that if a cached result is
            # retrieved, the timer is reset and that result will be available for another 60
            # mins.
            #
            # If the users want to regenerate the result set, they can set this parameter to
            # true and optimizer will not use the cached results.
            #
            # This feature is helpful in expediting the optimization process and generate
            # results quickly. It also helps users to quickly simulate route plans for
            # different combinations of constraints for a given set of locations.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :disable_cache

            sig { params(disable_cache: T::Boolean).void }
            attr_writer :disable_cache

            # Specify the type of hazardous material being carried and the service will avoid
            # roads which are not suitable for the type of goods specified. Provide multiple
            # values separated by a comma , .
            #
            # Please note that this parameter is effective only when mode=truck.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Nextbillionai::Optimization::V2SubmitParams::Options::Routing::HazmatType::OrSymbol
                  ]
                )
              )
            end
            attr_reader :hazmat_type

            sig do
              params(
                hazmat_type:
                  T::Array[
                    Nextbillionai::Optimization::V2SubmitParams::Options::Routing::HazmatType::OrSymbol
                  ]
              ).void
            end
            attr_writer :hazmat_type

            # Define the traveling mode to be used for determining the optimized routes.
            sig do
              returns(
                T.nilable(
                  Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Mode::OrSymbol
                )
              )
            end
            attr_reader :mode

            sig do
              params(
                mode:
                  Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Mode::OrSymbol
              ).void
            end
            attr_writer :mode

            # Defines all the vehicle profiles. profiles is implemented as a dictionary of
            # objects where each profile name is the unique key and the associated value is an
            # object describing the routing properties of that profile. All routing properties
            # available in options.routing can be added as values for a given profile.
            #
            # Please note:
            #
            # - The routing properties configured using options.routing (and not part of any
            #   \profiles\) are considered as default route settings i.e. they are applied to
            #   vehicles which are not associated with any profile.
            # - The default route settings are independent from those defined for any profiles
            #   . Consequently, for vehicles which are tagged to a given profile, only the
            #   routing properties configured for the given profile will apply.
            # - If the "mode" is not specified for any profile, by default it is considered to
            #   be car .
            # - "default" is a reserved keyword and can not be used as the name for any custom
            #   profile.
            # - profiles can't be nested in other profiles.
            # - The number of profiles, including default route settings, are limited to
            #
            #   - 15, if 0 < number of location <= 100
            #   - 6, if 100 < number of location <= 600，
            #   - 2, if 600 < number of location <= 1200,
            #   - 1, if number of location > 1200
            #
            # Routing profiles attribute is useful for configuring fleets containing multiple
            # vehicles types. Check
            # [Routing Profiles](https://docs.nextbillion.ai/docs/optimization/api/route-optimization-flexible/tutorials/routing-profiles)
            # tutorial to learn more.
            sig { returns(T.nilable(T.anything)) }
            attr_reader :profiles

            sig { params(profiles: T.anything).void }
            attr_writer :profiles

            # Specify the general time when the job needs to be carried out. The time should
            # be expressed as an UNIX timestamp in seconds format. The solver will take into
            # account the general traffic conditions at the given time to determine the routes
            # and their ETAs.
            sig { returns(T.nilable(Integer)) }
            attr_reader :traffic_timestamp

            sig { params(traffic_timestamp: Integer).void }
            attr_writer :traffic_timestamp

            # Specify the total load per axle (including the weight of trailers and shipped
            # goods) of the truck, in tonnes. When used, the optimizer will use only those
            # routes which are legally allowed to carry the load specified per axle.
            #
            # Please note this parameter is effective only when mode=truck.
            sig { returns(T.nilable(Float)) }
            attr_reader :truck_axle_load

            sig { params(truck_axle_load: Float).void }
            attr_writer :truck_axle_load

            # Specify the truck dimensions, in centimeters, in the format of
            # “height,width,length”. Please note that this parameter is effective only when
            # mode=truck.
            sig { returns(T.nilable(String)) }
            attr_reader :truck_size

            sig { params(truck_size: String).void }
            attr_writer :truck_size

            # Specify the truck weight including the trailers and shipped goods, in kilograms.
            # Please note that this parameter is effective only when mode=truck.
            sig { returns(T.nilable(Integer)) }
            attr_reader :truck_weight

            sig { params(truck_weight: Integer).void }
            attr_writer :truck_weight

            # This attribute is used to define the routing configurations for the optimization
            # job.
            sig do
              params(
                allow:
                  T::Array[
                    Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Allow::OrSymbol
                  ],
                avoid:
                  T::Array[
                    Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Avoid::OrSymbol
                  ],
                context:
                  Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Context::OrSymbol,
                cross_border: T::Boolean,
                disable_cache: T::Boolean,
                hazmat_type:
                  T::Array[
                    Nextbillionai::Optimization::V2SubmitParams::Options::Routing::HazmatType::OrSymbol
                  ],
                mode:
                  Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Mode::OrSymbol,
                profiles: T.anything,
                traffic_timestamp: Integer,
                truck_axle_load: Float,
                truck_size: String,
                truck_weight: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              allow: nil,
              # Specify the type of objects/maneuvers that the route should avoid.
              #
              # Please note that:
              #
              # - The values are case-sensitive.
              # - When using avoid:bbox feature, users need to specify the boundaries of the
              #   bounding box to be avoided. Multiple bounding boxes can be provided
              #   simultaneously. Please note that bounding box is a hard filter and if it
              #   blocks all possible routes between given locations, a 4xx error is returned.
              #   Mention the bounding box boundaries in the following format: bbox:
              #   min_latitude,min_longitude,max_latitude,max_longitude.
              # - When using avoid=sharp_turn, the range of allowed turn angles is \[120,240\]
              #   in the clockwise direction from the current road. Any roads with turn angles
              #   outside the range will be avoided.
              # - If none is provided along with other values, an error is returned as a valid
              #   route is not feasible.
              avoid: nil,
              # Use this parameter to apply a single speed value for all ETA and drive time
              # calculations. In case, the travel_cost is set to duration then setting this
              # parameter also impacts the cost of the solution.
              context: nil,
              # Specify if crossing an international border is allowed for operations near
              # border areas. When set to false, the API will prohibit any routes crossing
              # international borders. When set to true, the service will return routes which
              # cross the borders between countries, if required for the given set locations
              #
              # This feature is available in North America region only. Please get in touch with
              # [support@nextbillion.ai](mailto:support@nextbillion.ai) to enquire/enable other
              # areas.
              cross_border: nil,
              # Specify if the optimizer should cache the matrix result set (containing ETAs and
              # distances) for the given set of locations in the request. Once the results are
              # cached, the optimizer can use it during the next 60 mins if exactly the same set
              # of locations are provided again. Please note that if a cached result is
              # retrieved, the timer is reset and that result will be available for another 60
              # mins.
              #
              # If the users want to regenerate the result set, they can set this parameter to
              # true and optimizer will not use the cached results.
              #
              # This feature is helpful in expediting the optimization process and generate
              # results quickly. It also helps users to quickly simulate route plans for
              # different combinations of constraints for a given set of locations.
              disable_cache: nil,
              # Specify the type of hazardous material being carried and the service will avoid
              # roads which are not suitable for the type of goods specified. Provide multiple
              # values separated by a comma , .
              #
              # Please note that this parameter is effective only when mode=truck.
              hazmat_type: nil,
              # Define the traveling mode to be used for determining the optimized routes.
              mode: nil,
              # Defines all the vehicle profiles. profiles is implemented as a dictionary of
              # objects where each profile name is the unique key and the associated value is an
              # object describing the routing properties of that profile. All routing properties
              # available in options.routing can be added as values for a given profile.
              #
              # Please note:
              #
              # - The routing properties configured using options.routing (and not part of any
              #   \profiles\) are considered as default route settings i.e. they are applied to
              #   vehicles which are not associated with any profile.
              # - The default route settings are independent from those defined for any profiles
              #   . Consequently, for vehicles which are tagged to a given profile, only the
              #   routing properties configured for the given profile will apply.
              # - If the "mode" is not specified for any profile, by default it is considered to
              #   be car .
              # - "default" is a reserved keyword and can not be used as the name for any custom
              #   profile.
              # - profiles can't be nested in other profiles.
              # - The number of profiles, including default route settings, are limited to
              #
              #   - 15, if 0 < number of location <= 100
              #   - 6, if 100 < number of location <= 600，
              #   - 2, if 600 < number of location <= 1200,
              #   - 1, if number of location > 1200
              #
              # Routing profiles attribute is useful for configuring fleets containing multiple
              # vehicles types. Check
              # [Routing Profiles](https://docs.nextbillion.ai/docs/optimization/api/route-optimization-flexible/tutorials/routing-profiles)
              # tutorial to learn more.
              profiles: nil,
              # Specify the general time when the job needs to be carried out. The time should
              # be expressed as an UNIX timestamp in seconds format. The solver will take into
              # account the general traffic conditions at the given time to determine the routes
              # and their ETAs.
              traffic_timestamp: nil,
              # Specify the total load per axle (including the weight of trailers and shipped
              # goods) of the truck, in tonnes. When used, the optimizer will use only those
              # routes which are legally allowed to carry the load specified per axle.
              #
              # Please note this parameter is effective only when mode=truck.
              truck_axle_load: nil,
              # Specify the truck dimensions, in centimeters, in the format of
              # “height,width,length”. Please note that this parameter is effective only when
              # mode=truck.
              truck_size: nil,
              # Specify the truck weight including the trailers and shipped goods, in kilograms.
              # Please note that this parameter is effective only when mode=truck.
              truck_weight: nil
            )
            end

            sig do
              override.returns(
                {
                  allow:
                    T::Array[
                      Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Allow::OrSymbol
                    ],
                  avoid:
                    T::Array[
                      Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Avoid::OrSymbol
                    ],
                  context:
                    Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Context::OrSymbol,
                  cross_border: T::Boolean,
                  disable_cache: T::Boolean,
                  hazmat_type:
                    T::Array[
                      Nextbillionai::Optimization::V2SubmitParams::Options::Routing::HazmatType::OrSymbol
                    ],
                  mode:
                    Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Mode::OrSymbol,
                  profiles: T.anything,
                  traffic_timestamp: Integer,
                  truck_axle_load: Float,
                  truck_size: String,
                  truck_weight: Integer
                }
              )
            end
            def to_hash
            end

            module Allow
              extend Nextbillionai::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Allow
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              TAXI =
                T.let(
                  :taxi,
                  Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Allow::TaggedSymbol
                )
              HOV =
                T.let(
                  :hov,
                  Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Allow::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Allow::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            module Avoid
              extend Nextbillionai::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Avoid
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              TOLL =
                T.let(
                  :toll,
                  Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Avoid::TaggedSymbol
                )
              HIGHWAY =
                T.let(
                  :highway,
                  Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Avoid::TaggedSymbol
                )
              BBOX =
                T.let(
                  :bbox,
                  Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Avoid::TaggedSymbol
                )
              LEFT_TURN =
                T.let(
                  :left_turn,
                  Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Avoid::TaggedSymbol
                )
              RIGHT_TURN =
                T.let(
                  :right_turn,
                  Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Avoid::TaggedSymbol
                )
              SHARP_TURN =
                T.let(
                  :sharp_turn,
                  Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Avoid::TaggedSymbol
                )
              UTURN =
                T.let(
                  :uturn,
                  Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Avoid::TaggedSymbol
                )
              SERVICE_ROAD =
                T.let(
                  :service_road,
                  Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Avoid::TaggedSymbol
                )
              FERRY =
                T.let(
                  :ferry,
                  Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Avoid::TaggedSymbol
                )
              NONE =
                T.let(
                  :"none ",
                  Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Avoid::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Avoid::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Use this parameter to apply a single speed value for all ETA and drive time
            # calculations. In case, the travel_cost is set to duration then setting this
            # parameter also impacts the cost of the solution.
            module Context
              extend Nextbillionai::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Context
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              AVGSPEED =
                T.let(
                  :avgspeed,
                  Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Context::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Context::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            module HazmatType
              extend Nextbillionai::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Nextbillionai::Optimization::V2SubmitParams::Options::Routing::HazmatType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              GENERAL =
                T.let(
                  :general,
                  Nextbillionai::Optimization::V2SubmitParams::Options::Routing::HazmatType::TaggedSymbol
                )
              CIRCUMSTANTIAL =
                T.let(
                  :circumstantial,
                  Nextbillionai::Optimization::V2SubmitParams::Options::Routing::HazmatType::TaggedSymbol
                )
              EXPLOSIVE =
                T.let(
                  :explosive,
                  Nextbillionai::Optimization::V2SubmitParams::Options::Routing::HazmatType::TaggedSymbol
                )
              HARMFUL_TO_WATER =
                T.let(
                  :harmful_to_water,
                  Nextbillionai::Optimization::V2SubmitParams::Options::Routing::HazmatType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Nextbillionai::Optimization::V2SubmitParams::Options::Routing::HazmatType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Define the traveling mode to be used for determining the optimized routes.
            module Mode
              extend Nextbillionai::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Mode
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CAR =
                T.let(
                  :car,
                  Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Mode::TaggedSymbol
                )
              TRUCK =
                T.let(
                  :truck,
                  Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Mode::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Mode::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        class Relation < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Optimization::V2SubmitParams::Relation,
                Nextbillionai::Internal::AnyHash
              )
            end

          # The steps property specifies the tasks or steps that are part of the relation
          # and must be carried out in a manner defined in the type parameter. Please note
          # you can add any number of steps here, except when relation type is precedence
          # where only 2 tasks can be added.
          sig do
            returns(
              T::Array[
                Nextbillionai::Optimization::V2SubmitParams::Relation::Step
              ]
            )
          end
          attr_accessor :steps

          # Specifies the type of relation constraint. The following types are supported:
          #
          # - in_same_route: Ensures that all steps are covered in the same route in
          #   solution.
          # - in_sequence: Ensures that all steps are in the same route and their sequence
          #   matches the order specified in the steps field. Insertion of new steps between
          #   the steps specified, is allowed.
          # - in_direct_sequence: Similar to in_sequence, but insertion of new steps is not
          #   allowed in the final route.
          # - precedence: Restricts the travel time between the first step and second step.
          #   If the precedence requirement cannot be satisfied, then the task specified at
          #   the second step will not be assigned. Only 2 steps can be specified in a
          #   single precedence type relations. Please use multiple precedence relations to
          #   apply restrictions on more than 2 tasks.
          #
          # If the vehicle field is specified in the relations input, all steps will be
          # served by that particular vehicle. Otherwise, the route can be allocated to any
          # feasible vehicle.
          #
          # Please note that the type field is mandatory when using the relations object.
          sig do
            returns(
              Nextbillionai::Optimization::V2SubmitParams::Relation::Type::OrSymbol
            )
          end
          attr_accessor :type

          # **Deprecated! Please use the** vehicle **parameter to specify the vehicle ID.**
          #
          # Specifies the ID of the vehicle that would fulfil the steps. ID should be
          # consistent with input IDs provided in the vehicles object.
          sig { returns(T.nilable(Integer)) }
          attr_reader :id

          sig { params(id: Integer).void }
          attr_writer :id

          # This attribute is effective only when precedence type relation is used.
          # max_duration restricts the travel time of the vehicle to go from location of
          # first task to the location of second task specified in steps object. The unit
          # for this parameter is seconds. It accepts values greater than 0 only.
          #
          # Please note that max_duration is a hard constraint. Hence, if aggressive
          # durations are provided such that the second task cannot be reached within the
          # specified max_duration, it might be done before the first task (usually in case
          # of jobs) or remain un-assigned (usually in case of shipments).
          sig { returns(T.nilable(Integer)) }
          attr_reader :max_duration

          sig { params(max_duration: Integer).void }
          attr_writer :max_duration

          # This attribute is effective only when precedence type relation is used. Use
          # min_duration to enforce a minimum time-gap between the two tasks specified in
          # steps object. When specified, the second task will get completed after a gap of
          # min_duration with respect to the first task. The unit for this parameter is
          # seconds.
          #
          # Please note that min_duration is implemented as a soft constraint and it can be
          # violated in presence of other relation types. The optimizer will tend to provide
          # solutions where min_duration is not violated, but it is not guaranteed.
          sig { returns(T.nilable(Integer)) }
          attr_reader :min_duration

          sig { params(min_duration: Integer).void }
          attr_writer :min_duration

          # Specifies the ID of the vehicle that would fulfill the steps. Providing the same
          # vehicle ID to multiple ‘relations’ is prohibited. The vehicle ID provided here
          # should be consistent with ID provided in the vehicles attribute.
          sig { returns(T.nilable(String)) }
          attr_reader :vehicle

          sig { params(vehicle: String).void }
          attr_writer :vehicle

          sig do
            params(
              steps:
                T::Array[
                  Nextbillionai::Optimization::V2SubmitParams::Relation::Step::OrHash
                ],
              type:
                Nextbillionai::Optimization::V2SubmitParams::Relation::Type::OrSymbol,
              id: Integer,
              max_duration: Integer,
              min_duration: Integer,
              vehicle: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The steps property specifies the tasks or steps that are part of the relation
            # and must be carried out in a manner defined in the type parameter. Please note
            # you can add any number of steps here, except when relation type is precedence
            # where only 2 tasks can be added.
            steps:,
            # Specifies the type of relation constraint. The following types are supported:
            #
            # - in_same_route: Ensures that all steps are covered in the same route in
            #   solution.
            # - in_sequence: Ensures that all steps are in the same route and their sequence
            #   matches the order specified in the steps field. Insertion of new steps between
            #   the steps specified, is allowed.
            # - in_direct_sequence: Similar to in_sequence, but insertion of new steps is not
            #   allowed in the final route.
            # - precedence: Restricts the travel time between the first step and second step.
            #   If the precedence requirement cannot be satisfied, then the task specified at
            #   the second step will not be assigned. Only 2 steps can be specified in a
            #   single precedence type relations. Please use multiple precedence relations to
            #   apply restrictions on more than 2 tasks.
            #
            # If the vehicle field is specified in the relations input, all steps will be
            # served by that particular vehicle. Otherwise, the route can be allocated to any
            # feasible vehicle.
            #
            # Please note that the type field is mandatory when using the relations object.
            type:,
            # **Deprecated! Please use the** vehicle **parameter to specify the vehicle ID.**
            #
            # Specifies the ID of the vehicle that would fulfil the steps. ID should be
            # consistent with input IDs provided in the vehicles object.
            id: nil,
            # This attribute is effective only when precedence type relation is used.
            # max_duration restricts the travel time of the vehicle to go from location of
            # first task to the location of second task specified in steps object. The unit
            # for this parameter is seconds. It accepts values greater than 0 only.
            #
            # Please note that max_duration is a hard constraint. Hence, if aggressive
            # durations are provided such that the second task cannot be reached within the
            # specified max_duration, it might be done before the first task (usually in case
            # of jobs) or remain un-assigned (usually in case of shipments).
            max_duration: nil,
            # This attribute is effective only when precedence type relation is used. Use
            # min_duration to enforce a minimum time-gap between the two tasks specified in
            # steps object. When specified, the second task will get completed after a gap of
            # min_duration with respect to the first task. The unit for this parameter is
            # seconds.
            #
            # Please note that min_duration is implemented as a soft constraint and it can be
            # violated in presence of other relation types. The optimizer will tend to provide
            # solutions where min_duration is not violated, but it is not guaranteed.
            min_duration: nil,
            # Specifies the ID of the vehicle that would fulfill the steps. Providing the same
            # vehicle ID to multiple ‘relations’ is prohibited. The vehicle ID provided here
            # should be consistent with ID provided in the vehicles attribute.
            vehicle: nil
          )
          end

          sig do
            override.returns(
              {
                steps:
                  T::Array[
                    Nextbillionai::Optimization::V2SubmitParams::Relation::Step
                  ],
                type:
                  Nextbillionai::Optimization::V2SubmitParams::Relation::Type::OrSymbol,
                id: Integer,
                max_duration: Integer,
                min_duration: Integer,
                vehicle: String
              }
            )
          end
          def to_hash
          end

          class Step < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Optimization::V2SubmitParams::Relation::Step,
                  Nextbillionai::Internal::AnyHash
                )
              end

            # Specifies the type of the step. The start and end step types have to be the
            # first and last steps, respectively, in a relation.
            #
            # Please note that the type is mandatory when using the relations object.
            sig do
              returns(
                Nextbillionai::Optimization::V2SubmitParams::Relation::Step::Type::OrSymbol
              )
            end
            attr_accessor :type

            # This represents the ID of the task and should be consistent with the input IDs
            # provided in the jobs or shipments objects for a given step. The id is required
            # for all steps other than start and end.
            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            sig do
              params(
                type:
                  Nextbillionai::Optimization::V2SubmitParams::Relation::Step::Type::OrSymbol,
                id: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Specifies the type of the step. The start and end step types have to be the
              # first and last steps, respectively, in a relation.
              #
              # Please note that the type is mandatory when using the relations object.
              type:,
              # This represents the ID of the task and should be consistent with the input IDs
              # provided in the jobs or shipments objects for a given step. The id is required
              # for all steps other than start and end.
              id: nil
            )
            end

            sig do
              override.returns(
                {
                  type:
                    Nextbillionai::Optimization::V2SubmitParams::Relation::Step::Type::OrSymbol,
                  id: String
                }
              )
            end
            def to_hash
            end

            # Specifies the type of the step. The start and end step types have to be the
            # first and last steps, respectively, in a relation.
            #
            # Please note that the type is mandatory when using the relations object.
            module Type
              extend Nextbillionai::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Nextbillionai::Optimization::V2SubmitParams::Relation::Step::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              START =
                T.let(
                  :start,
                  Nextbillionai::Optimization::V2SubmitParams::Relation::Step::Type::TaggedSymbol
                )
              END_ =
                T.let(
                  :end,
                  Nextbillionai::Optimization::V2SubmitParams::Relation::Step::Type::TaggedSymbol
                )
              JOB =
                T.let(
                  :job,
                  Nextbillionai::Optimization::V2SubmitParams::Relation::Step::Type::TaggedSymbol
                )
              PICKUP =
                T.let(
                  :pickup,
                  Nextbillionai::Optimization::V2SubmitParams::Relation::Step::Type::TaggedSymbol
                )
              DELIVERY =
                T.let(
                  :delivery,
                  Nextbillionai::Optimization::V2SubmitParams::Relation::Step::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Nextbillionai::Optimization::V2SubmitParams::Relation::Step::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          # Specifies the type of relation constraint. The following types are supported:
          #
          # - in_same_route: Ensures that all steps are covered in the same route in
          #   solution.
          # - in_sequence: Ensures that all steps are in the same route and their sequence
          #   matches the order specified in the steps field. Insertion of new steps between
          #   the steps specified, is allowed.
          # - in_direct_sequence: Similar to in_sequence, but insertion of new steps is not
          #   allowed in the final route.
          # - precedence: Restricts the travel time between the first step and second step.
          #   If the precedence requirement cannot be satisfied, then the task specified at
          #   the second step will not be assigned. Only 2 steps can be specified in a
          #   single precedence type relations. Please use multiple precedence relations to
          #   apply restrictions on more than 2 tasks.
          #
          # If the vehicle field is specified in the relations input, all steps will be
          # served by that particular vehicle. Otherwise, the route can be allocated to any
          # feasible vehicle.
          #
          # Please note that the type field is mandatory when using the relations object.
          module Type
            extend Nextbillionai::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Nextbillionai::Optimization::V2SubmitParams::Relation::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            IN_SAME_ROUTE =
              T.let(
                :in_same_route,
                Nextbillionai::Optimization::V2SubmitParams::Relation::Type::TaggedSymbol
              )
            IN_SEQUENCE =
              T.let(
                :in_sequence,
                Nextbillionai::Optimization::V2SubmitParams::Relation::Type::TaggedSymbol
              )
            IN_DIRECT_SEQUENCE =
              T.let(
                :in_direct_sequence,
                Nextbillionai::Optimization::V2SubmitParams::Relation::Type::TaggedSymbol
              )
            PRECEDENCE =
              T.let(
                :precedence,
                Nextbillionai::Optimization::V2SubmitParams::Relation::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Nextbillionai::Optimization::V2SubmitParams::Relation::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Solution < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Optimization::V2SubmitParams::Solution,
                Nextbillionai::Internal::AnyHash
              )
            end

          # Specify the cost of the route.
          sig { returns(Integer) }
          attr_accessor :cost

          # Describe the steps in this route.
          sig do
            returns(
              T::Array[
                Nextbillionai::Optimization::V2SubmitParams::Solution::Step
              ]
            )
          end
          attr_accessor :steps

          # Specify the ID of the vehicle that was assigned to the route. This field is
          # mandatory when using the solution attribute and providing an empty string would
          # result in error. The IDs are case-sensitive.
          #
          # **Note:** Since the vehicles can be configured using either a string or an
          # integer ID, please ensure that the same value type is provided for this field as
          # was used in the original request.
          sig { returns(String) }
          attr_accessor :vehicle

          # Specify the total quantities, for each dimension (or unit), of deliveries
          # performed in the route.
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :delivery

          sig { params(delivery: T::Array[Integer]).void }
          attr_writer :delivery

          # Specify the description of the assigned vehicle.
          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          # Specify the total distance of the route, in meters.
          sig { returns(T.nilable(Integer)) }
          attr_reader :distance

          sig { params(distance: Integer).void }
          attr_writer :distance

          # Specify the total drive duration of the route, in seconds.
          sig { returns(T.nilable(Integer)) }
          attr_reader :duration

          sig { params(duration: Integer).void }
          attr_writer :duration

          # Specify the geometry of this route encoded in polyline format.
          sig { returns(T.nilable(String)) }
          attr_reader :geometry

          sig { params(geometry: String).void }
          attr_writer :geometry

          # Specify the total quantities, for each dimension (or unit), of pickups performed
          # in the route.
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :pickup

          sig { params(pickup: T::Array[Integer]).void }
          attr_writer :pickup

          # Specify the sum of priorities of all tasks on the route.
          sig { returns(T.nilable(Integer)) }
          attr_reader :priority

          sig { params(priority: Integer).void }
          attr_writer :priority

          # Specify the total service time for the route, in seconds.
          sig { returns(T.nilable(Integer)) }
          attr_reader :service

          sig { params(service: Integer).void }
          attr_writer :service

          # Specify the total set-up duration, in seconds, needed for the tasks on the
          # route.
          sig { returns(T.nilable(Integer)) }
          attr_reader :setup

          sig { params(setup: Integer).void }
          attr_writer :setup

          # Specify the total waiting time of the vehicle on the route, in seconds.
          sig { returns(T.nilable(Integer)) }
          attr_reader :waiting_time

          sig { params(waiting_time: Integer).void }
          attr_writer :waiting_time

          sig do
            params(
              cost: Integer,
              steps:
                T::Array[
                  Nextbillionai::Optimization::V2SubmitParams::Solution::Step::OrHash
                ],
              vehicle: String,
              delivery: T::Array[Integer],
              description: String,
              distance: Integer,
              duration: Integer,
              geometry: String,
              pickup: T::Array[Integer],
              priority: Integer,
              service: Integer,
              setup: Integer,
              waiting_time: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # Specify the cost of the route.
            cost:,
            # Describe the steps in this route.
            steps:,
            # Specify the ID of the vehicle that was assigned to the route. This field is
            # mandatory when using the solution attribute and providing an empty string would
            # result in error. The IDs are case-sensitive.
            #
            # **Note:** Since the vehicles can be configured using either a string or an
            # integer ID, please ensure that the same value type is provided for this field as
            # was used in the original request.
            vehicle:,
            # Specify the total quantities, for each dimension (or unit), of deliveries
            # performed in the route.
            delivery: nil,
            # Specify the description of the assigned vehicle.
            description: nil,
            # Specify the total distance of the route, in meters.
            distance: nil,
            # Specify the total drive duration of the route, in seconds.
            duration: nil,
            # Specify the geometry of this route encoded in polyline format.
            geometry: nil,
            # Specify the total quantities, for each dimension (or unit), of pickups performed
            # in the route.
            pickup: nil,
            # Specify the sum of priorities of all tasks on the route.
            priority: nil,
            # Specify the total service time for the route, in seconds.
            service: nil,
            # Specify the total set-up duration, in seconds, needed for the tasks on the
            # route.
            setup: nil,
            # Specify the total waiting time of the vehicle on the route, in seconds.
            waiting_time: nil
          )
          end

          sig do
            override.returns(
              {
                cost: Integer,
                steps:
                  T::Array[
                    Nextbillionai::Optimization::V2SubmitParams::Solution::Step
                  ],
                vehicle: String,
                delivery: T::Array[Integer],
                description: String,
                distance: Integer,
                duration: Integer,
                geometry: String,
                pickup: T::Array[Integer],
                priority: Integer,
                service: Integer,
                setup: Integer,
                waiting_time: Integer
              }
            )
          end
          def to_hash
          end

          class Step < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Optimization::V2SubmitParams::Solution::Step,
                  Nextbillionai::Internal::AnyHash
                )
              end

            # The ID of the step. This field is mandatory for all steps except for start and
            # end type.
            #
            # Please note that the ID provided here must also be present in either the jobs or
            # the shipments objects.
            #
            # **Note:** We have modified the data type of this field. The latest change is
            # backward compatible and both integer and string type IDs are valid for this
            # field, as long as they match the IDs of the jobs or shipments already
            # configured.
            sig { returns(String) }
            attr_accessor :id

            # Specify the time at which the vehicle arrives at the step location. If
            # time_windows is provided, then arrival will be an UNIX timestamp expressed in
            # seconds. Otherwise, it will be the total duration, in seconds, elapsed since the
            # start of the route.
            #
            # Please note that arrival is mandatory when using the solution object.
            sig { returns(Integer) }
            attr_accessor :arrival

            # Specify the type of the step.
            sig do
              returns(
                Nextbillionai::Optimization::V2SubmitParams::Solution::Step::Type::OrSymbol
              )
            end
            attr_accessor :type

            # Specify the description of this step.
            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            # Specify the distance covered, in meters, from the start of the route up until
            # the current step.
            #
            # Please note that the value of this parameter accumulates with each step. In case
            # , the travel_cost: air_distance, then the distance here should be the straight
            # line distance.
            sig { returns(T.nilable(Integer)) }
            attr_reader :distance

            sig { params(distance: Integer).void }
            attr_writer :distance

            # Specify the drive time, in seconds, from the start of the route up until the
            # start of the step. Please note that the value of this parameter accumulates with
            # each step.
            sig { returns(T.nilable(Integer)) }
            attr_reader :duration

            sig { params(duration: Integer).void }
            attr_writer :duration

            # Specify the load on the vehicle after completing this step. In case of multiple
            # dimensions, please specify the load for each type.
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_reader :load_

            sig { params(load_: T::Array[Integer]).void }
            attr_writer :load_

            # Specify the location coordinates of the step in the \[latitude, longitude\]
            # format. Alternatively, location_index property can also be used to specify the
            # location of the step.
            #
            # Please note that either location or location_index is mandatory.
            sig { returns(T.nilable(T::Array[Float])) }
            attr_reader :location

            sig { params(location: T::Array[Float]).void }
            attr_writer :location

            # Specify the index (in the location array) of the location coordinates where the
            # step is performed. The valid range of values is \[0, length of location array).
            # Alternatively, location property can also be used to specify the location.
            #
            # Please note that either location or location_index is mandatory.
            sig { returns(T.nilable(Integer)) }
            attr_reader :location_index

            sig { params(location_index: Integer).void }
            attr_writer :location_index

            # Specify the service time, in seconds, at this step.
            sig { returns(T.nilable(Integer)) }
            attr_reader :service

            sig { params(service: Integer).void }
            attr_writer :service

            # Specify the set-up duration, in seconds, needed at the step.
            sig { returns(T.nilable(Integer)) }
            attr_reader :setup

            sig { params(setup: Integer).void }
            attr_writer :setup

            # Specify the wait time of the vehicle at this step, in seconds.
            sig { returns(T.nilable(Integer)) }
            attr_reader :waiting_time

            sig { params(waiting_time: Integer).void }
            attr_writer :waiting_time

            # Describe details about a step of a route
            sig do
              params(
                id: String,
                arrival: Integer,
                type:
                  Nextbillionai::Optimization::V2SubmitParams::Solution::Step::Type::OrSymbol,
                description: String,
                distance: Integer,
                duration: Integer,
                load_: T::Array[Integer],
                location: T::Array[Float],
                location_index: Integer,
                service: Integer,
                setup: Integer,
                waiting_time: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              # The ID of the step. This field is mandatory for all steps except for start and
              # end type.
              #
              # Please note that the ID provided here must also be present in either the jobs or
              # the shipments objects.
              #
              # **Note:** We have modified the data type of this field. The latest change is
              # backward compatible and both integer and string type IDs are valid for this
              # field, as long as they match the IDs of the jobs or shipments already
              # configured.
              id:,
              # Specify the time at which the vehicle arrives at the step location. If
              # time_windows is provided, then arrival will be an UNIX timestamp expressed in
              # seconds. Otherwise, it will be the total duration, in seconds, elapsed since the
              # start of the route.
              #
              # Please note that arrival is mandatory when using the solution object.
              arrival:,
              # Specify the type of the step.
              type:,
              # Specify the description of this step.
              description: nil,
              # Specify the distance covered, in meters, from the start of the route up until
              # the current step.
              #
              # Please note that the value of this parameter accumulates with each step. In case
              # , the travel_cost: air_distance, then the distance here should be the straight
              # line distance.
              distance: nil,
              # Specify the drive time, in seconds, from the start of the route up until the
              # start of the step. Please note that the value of this parameter accumulates with
              # each step.
              duration: nil,
              # Specify the load on the vehicle after completing this step. In case of multiple
              # dimensions, please specify the load for each type.
              load_: nil,
              # Specify the location coordinates of the step in the \[latitude, longitude\]
              # format. Alternatively, location_index property can also be used to specify the
              # location of the step.
              #
              # Please note that either location or location_index is mandatory.
              location: nil,
              # Specify the index (in the location array) of the location coordinates where the
              # step is performed. The valid range of values is \[0, length of location array).
              # Alternatively, location property can also be used to specify the location.
              #
              # Please note that either location or location_index is mandatory.
              location_index: nil,
              # Specify the service time, in seconds, at this step.
              service: nil,
              # Specify the set-up duration, in seconds, needed at the step.
              setup: nil,
              # Specify the wait time of the vehicle at this step, in seconds.
              waiting_time: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  arrival: Integer,
                  type:
                    Nextbillionai::Optimization::V2SubmitParams::Solution::Step::Type::OrSymbol,
                  description: String,
                  distance: Integer,
                  duration: Integer,
                  load_: T::Array[Integer],
                  location: T::Array[Float],
                  location_index: Integer,
                  service: Integer,
                  setup: Integer,
                  waiting_time: Integer
                }
              )
            end
            def to_hash
            end

            # Specify the type of the step.
            module Type
              extend Nextbillionai::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Nextbillionai::Optimization::V2SubmitParams::Solution::Step::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              START =
                T.let(
                  :start,
                  Nextbillionai::Optimization::V2SubmitParams::Solution::Step::Type::TaggedSymbol
                )
              END_ =
                T.let(
                  :end,
                  Nextbillionai::Optimization::V2SubmitParams::Solution::Step::Type::TaggedSymbol
                )
              JOB =
                T.let(
                  :job,
                  Nextbillionai::Optimization::V2SubmitParams::Solution::Step::Type::TaggedSymbol
                )
              PICKUP =
                T.let(
                  :pickup,
                  Nextbillionai::Optimization::V2SubmitParams::Solution::Step::Type::TaggedSymbol
                )
              DELIVERY =
                T.let(
                  :delivery,
                  Nextbillionai::Optimization::V2SubmitParams::Solution::Step::Type::TaggedSymbol
                )
              BREAK =
                T.let(
                  :break,
                  Nextbillionai::Optimization::V2SubmitParams::Solution::Step::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Nextbillionai::Optimization::V2SubmitParams::Solution::Step::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        class Unassigned < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Optimization::V2SubmitParams::Unassigned,
                Nextbillionai::Internal::AnyHash
              )
            end

          # Specify the unassigned job IDs from the previous optimization result. Please
          # note the IDs should also be present in the jobs part of the input.
          #
          # **Note:** We have modified the data type of this field. However, the latest
          # change is backward compatible and both integer and string type job IDs are valid
          # for this field, as long as they match the IDs of the jobs already configured.
          # Providing mixed value types in the array, will lead to an error.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :jobs

          sig { params(jobs: T::Array[String]).void }
          attr_writer :jobs

          # Specify the unassigned shipment pickup & delivery IDs from the previous
          # optimization result. Both the pickup & delivery steps of a shipment should be
          # part of the same array.
          #
          # **Note:** We have modified the data type of this field. However, the latest
          # change is backward compatible and both integer and string type shipment IDs are
          # valid for this field, as long as they match the IDs of the shipments already
          # configured. Providing mixed value types in the array, will lead to an error.
          sig { returns(T.nilable(T::Array[T::Array[String]])) }
          attr_reader :shipments

          sig { params(shipments: T::Array[T::Array[String]]).void }
          attr_writer :shipments

          # unassigned attribute is related to the re-optimization feature. This attribute
          # should contain the tasks that were not assigned during an earlier optimization
          # process. Please note that the unassigned part in request should be consistent
          # with the unassigned part in the previous optimization result.
          #
          # Users can reduce the number of unassigned tasks in the re-optimized solution, by
          # following strategies such as:
          #
          # - Extending the time windows for vehicles or tasks to give more flexibility
          # - Adding more vehicles to the optimization problem
          # - Adjusting the priority of different tasks to balance the workload more evenly
          # - Modifying other constraints or parameters to make the problem more solvable
          #
          # Ultimately, the goal is to minimize the number of unassigned tasks while still
          # meeting all the necessary constraints and objectives.
          sig do
            params(
              jobs: T::Array[String],
              shipments: T::Array[T::Array[String]]
            ).returns(T.attached_class)
          end
          def self.new(
            # Specify the unassigned job IDs from the previous optimization result. Please
            # note the IDs should also be present in the jobs part of the input.
            #
            # **Note:** We have modified the data type of this field. However, the latest
            # change is backward compatible and both integer and string type job IDs are valid
            # for this field, as long as they match the IDs of the jobs already configured.
            # Providing mixed value types in the array, will lead to an error.
            jobs: nil,
            # Specify the unassigned shipment pickup & delivery IDs from the previous
            # optimization result. Both the pickup & delivery steps of a shipment should be
            # part of the same array.
            #
            # **Note:** We have modified the data type of this field. However, the latest
            # change is backward compatible and both integer and string type shipment IDs are
            # valid for this field, as long as they match the IDs of the shipments already
            # configured. Providing mixed value types in the array, will lead to an error.
            shipments: nil
          )
          end

          sig do
            override.returns(
              { jobs: T::Array[String], shipments: T::Array[T::Array[String]] }
            )
          end
          def to_hash
          end
        end

        class Zone < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Optimization::V2SubmitParams::Zone,
                Nextbillionai::Internal::AnyHash
              )
            end

          # Provide an ID for the zone. This field is mandatory when adding zones.
          sig { returns(Integer) }
          attr_accessor :id

          # Provide the ID of a pre-created geofence using the
          # [Geofence API](https://docs.nextbillion.ai/docs/tracking/api/geofence).
          #
          # Please note that one of geometry or geofence_id should be provided.
          sig { returns(T.nilable(String)) }
          attr_reader :geofence_id

          sig { params(geofence_id: String).void }
          attr_writer :geofence_id

          # It is a [geoJSON object](https://datatracker.ietf.org/doc/html/rfc7946#page-9)
          # with details of the geographic boundaries of the zone. Only “Polygon” and
          # “MultiPolygon” geoJSON types are supported.
          #
          # Please note that one of geometry or geofence_id should be provided.
          sig do
            returns(
              T.nilable(
                Nextbillionai::Optimization::V2SubmitParams::Zone::Geometry
              )
            )
          end
          attr_reader :geometry

          sig do
            params(
              geometry:
                Nextbillionai::Optimization::V2SubmitParams::Zone::Geometry::OrHash
            ).void
          end
          attr_writer :geometry

          sig do
            params(
              id: Integer,
              geofence_id: String,
              geometry:
                Nextbillionai::Optimization::V2SubmitParams::Zone::Geometry::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Provide an ID for the zone. This field is mandatory when adding zones.
            id:,
            # Provide the ID of a pre-created geofence using the
            # [Geofence API](https://docs.nextbillion.ai/docs/tracking/api/geofence).
            #
            # Please note that one of geometry or geofence_id should be provided.
            geofence_id: nil,
            # It is a [geoJSON object](https://datatracker.ietf.org/doc/html/rfc7946#page-9)
            # with details of the geographic boundaries of the zone. Only “Polygon” and
            # “MultiPolygon” geoJSON types are supported.
            #
            # Please note that one of geometry or geofence_id should be provided.
            geometry: nil
          )
          end

          sig do
            override.returns(
              {
                id: Integer,
                geofence_id: String,
                geometry:
                  Nextbillionai::Optimization::V2SubmitParams::Zone::Geometry
              }
            )
          end
          def to_hash
          end

          class Geometry < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Optimization::V2SubmitParams::Zone::Geometry,
                  Nextbillionai::Internal::AnyHash
                )
              end

            # An array of coordinates in the \[longitude, latitude\] format, representing the
            # zone boundary.
            sig { returns(T.nilable(T::Array[T::Array[Float]])) }
            attr_reader :coordinates

            sig { params(coordinates: T::Array[T::Array[Float]]).void }
            attr_writer :coordinates

            # Provide a description to identify the zone
            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            # Type of the geoJSON geometry. Should always be Polygon or MultiPolygon.
            sig do
              returns(
                T.nilable(
                  Nextbillionai::Optimization::V2SubmitParams::Zone::Geometry::Type::OrSymbol
                )
              )
            end
            attr_reader :type

            sig do
              params(
                type:
                  Nextbillionai::Optimization::V2SubmitParams::Zone::Geometry::Type::OrSymbol
              ).void
            end
            attr_writer :type

            # It is a [geoJSON object](https://datatracker.ietf.org/doc/html/rfc7946#page-9)
            # with details of the geographic boundaries of the zone. Only “Polygon” and
            # “MultiPolygon” geoJSON types are supported.
            #
            # Please note that one of geometry or geofence_id should be provided.
            sig do
              params(
                coordinates: T::Array[T::Array[Float]],
                description: String,
                type:
                  Nextbillionai::Optimization::V2SubmitParams::Zone::Geometry::Type::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # An array of coordinates in the \[longitude, latitude\] format, representing the
              # zone boundary.
              coordinates: nil,
              # Provide a description to identify the zone
              description: nil,
              # Type of the geoJSON geometry. Should always be Polygon or MultiPolygon.
              type: nil
            )
            end

            sig do
              override.returns(
                {
                  coordinates: T::Array[T::Array[Float]],
                  description: String,
                  type:
                    Nextbillionai::Optimization::V2SubmitParams::Zone::Geometry::Type::OrSymbol
                }
              )
            end
            def to_hash
            end

            # Type of the geoJSON geometry. Should always be Polygon or MultiPolygon.
            module Type
              extend Nextbillionai::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Nextbillionai::Optimization::V2SubmitParams::Zone::Geometry::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              POLYGON =
                T.let(
                  :Polygon,
                  Nextbillionai::Optimization::V2SubmitParams::Zone::Geometry::Type::TaggedSymbol
                )
              MULTI_POLYGON =
                T.let(
                  :MultiPolygon,
                  Nextbillionai::Optimization::V2SubmitParams::Zone::Geometry::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Nextbillionai::Optimization::V2SubmitParams::Zone::Geometry::Type::TaggedSymbol
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
end
