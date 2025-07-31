# typed: strong

module Nextbillionai
  module Resources
    class Optimization
      class V2
        # Flexible GET
        sig do
          params(
            id: String,
            key: String,
            request_options: Nextbillionai::RequestOptions::OrHash
          ).returns(
            Nextbillionai::Models::Optimization::V2RetrieveResultResponse
          )
        end
        def retrieve_result(
          # The unique ID that was returned on successful submission of the Optimization
          # POST request.
          id:,
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          request_options: {}
        )
        end

        # Flexible POST
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
          ).returns(Nextbillionai::PostResponse)
        end
        def submit(
          # Query param: A key is a unique identifier that is required to authenticate a
          # request to the API.
          key:,
          # Body param: The locations object is used to define all the locations that will
          # be used during the optimization process. Read more about this attribute in the
          # [Location Object](#location-object) section.
          locations:,
          # Body param: The vehicles attribute describes the characteristics and constraints
          # of the vehicles that will be used for fulfilling the tasks. Read more about this
          # attribute in the [Vehicle Object](#vehicle-object) section.
          vehicles:,
          # Body param: An array of arrays to denote the user-defined costs of traveling
          # between each pair of geographic coordinates mentioned in the location array. The
          # number of arrays should be equal to the number of coordinate points mentioned in
          # the location array and each array should contain the same number of elements as
          # well. Please note that cost_matrix is effective only when
          # travel_cost=customized. Read more about this attribute in the
          # [Custom Cost Matrix](#custom-cost-matrix) section.
          cost_matrix: nil,
          # Body param: depots object is used to collect the details of a depot. Depots can
          # be used as a starting point and/or ending point for the routes and vehicles.
          # They also can be used to fulfil pickup and delivery typejobs . The loads which
          # are to be delivered at task locations will be picked from depots and loads
          # picked-up from task locations will be delivered back to the depots. A depot can
          # be configured using the following fields:
          depots: nil,
          # Body param: Define the optimization job using any custom message. This
          # description is returned as is in the response.
          description: nil,
          # Body param: An array of arrays to denote the user-defined distances, in meters,
          # for travelling between each pair of geographic coordinates mentioned in the
          # location array. When this input is provided, actual distances between the
          # locations will be ignored in favor of the values provided in this input for any
          # distance calculations during the optimization process. The values provided here
          # will also be used for cost calculations when travel_cost is “distance”.
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
          # Body param: An array of arrays to denote the user-defined durations, in seconds,
          # for travelling between each pair of geographic coordinates mentioned in the
          # location array. When this input is provided, actual durations between the
          # locations will be ignored in favor of the values provided in the matrix for any
          # ETA calculations during the optimization process. The values provided in the
          # matrix will also be used for cost calculations when travel_cost is “duration”.
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
          # Body param: The previous optimization request id used to retrieve solution for
          # reoptimization
          existing_solution_id: nil,
          # Body param: jobs object is used to collect the details of a particular job or
          # task that needs to be completed as part of the optimization process. Each job
          # can have either a pickup or delivery step, but not both. Read more about this
          # attribute in the [Job Object](#job-object) section.
          #
          # Please note that either the jobs or the shipments attribute should be specified
          # to build a valid request.
          jobs: nil,
          # Body param: It represents the set of options that can be used to configure
          # optimization algorithms so that the solver provides a solution that meets the
          # desired business objectives.
          options: nil,
          # Body param: relations attribute is an array of individual relation objects. type
          # parameter and steps object are mandatory when using this attribute.
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
          # Body param: The shipments object is used to collect the details of shipments
          # that need to be completed as part of the optimization process.
          #
          # Each shipment should have a pickup and the corresponding delivery step.
          #
          # Please note that either the jobs or the shipments attribute should be specified
          # to build a valid request.
          shipments: nil,
          # Body param: This attribute is related to the re-optimization feature. It allows
          # for the previous optimization result to be provided in case new orders are
          # received and the solution needs to be re-planned. The solution attribute should
          # contain the same routes as the previous optimization result. solution attribute
          # is an array of objects with each object corresponding to one route.
          solution: nil,
          # Body param: unassigned attribute is related to the re-optimization feature. This
          # attribute should contain the tasks that were not assigned during an earlier
          # optimization process. Please note that the unassigned part in request should be
          # consistent with the unassigned part in the previous optimization result.
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
          # Body param: An array of objects to specify geometry of all the zones involved.
          # Each object corresponds to a single zone. A valid zone can be a
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

        # @api private
        sig { params(client: Nextbillionai::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
