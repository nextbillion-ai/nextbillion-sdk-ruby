# frozen_string_literal: true

module Nextbillionai
  module Models
    # @see Nextbillionai::Resources::Optimization#re_optimize
    class OptimizationReOptimizeParams < Nextbillionai::Internal::Type::BaseModel
      extend Nextbillionai::Internal::Type::RequestParameters::Converter
      include Nextbillionai::Internal::Type::RequestParameters

      # @!attribute key
      #   A key is a unique identifier that is required to authenticate a request to the
      #   API.
      #
      #   @return [String]
      required :key, String

      # @!attribute existing_request_id
      #   Specify the unique request ID that needs to be re-optimized.
      #
      #   @return [String]
      required :existing_request_id, String

      # @!attribute job_changes
      #   This section gathers information on modifications to the number of jobs or their
      #   individual requirements for re-optimization. Any job from the original solution
      #   not specified here will be re-planned without alteration during the
      #   re-optimization process.
      #
      #   @return [Nextbillionai::Models::OptimizationReOptimizeParams::JobChanges, nil]
      optional :job_changes, -> { Nextbillionai::OptimizationReOptimizeParams::JobChanges }

      # @!attribute locations
      #   Provide the list of locations to be used during re-optimization process. Please
      #   note that
      #
      #   - Providing the location input overwrites the list of locations used in the
      #     original request.
      #   - The location_indexes associated with all tasks and vehicles (both from the
      #     original and new re-optimization input requests) will follow the updated list
      #     of locations.
      #
      #   As a best practice:
      #
      #   1.  Don't provide the `locations` input when re-optimizing, if the original set
      #       contains all the required location coordinates.
      #   2.  If any new location coordinates are required for re-optimization, copy the
      #       full, original location list and update it in the following manner before
      #       adding it to the re-optimization input:
      #
      #       1.  Ensure to not update the indexes of locations which just need to be
      #           "modified".
      #       2.  Add new location coordinates towards the end of the list.
      #
      #   @return [Array<String>, nil]
      optional :locations, Nextbillionai::Internal::Type::ArrayOf[String]

      # @!attribute shipment_changes
      #   This section gathers information on modifications to the number of shipments or
      #   their individual requirements for re-optimization. Any shipment from the
      #   original solution not specified here will be re-planned without alteration
      #   during the re-optimization process.
      #
      #   @return [Nextbillionai::Models::OptimizationReOptimizeParams::ShipmentChanges, nil]
      optional :shipment_changes, -> { Nextbillionai::OptimizationReOptimizeParams::ShipmentChanges }

      # @!attribute vehicle_changes
      #   This section gathers information on modifications to the number of vehicles or
      #   individual vehicle configurations for re-optimizing an existing solution. Any
      #   vehicle from the original solution not specified here will be reused without
      #   alteration during the re-optimization process.
      #
      #   @return [Nextbillionai::Models::OptimizationReOptimizeParams::VehicleChanges, nil]
      optional :vehicle_changes, -> { Nextbillionai::OptimizationReOptimizeParams::VehicleChanges }

      # @!method initialize(key:, existing_request_id:, job_changes: nil, locations: nil, shipment_changes: nil, vehicle_changes: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Nextbillionai::Models::OptimizationReOptimizeParams} for more details.
      #
      #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      #   @param existing_request_id [String] Specify the unique request ID that needs to be re-optimized.
      #
      #   @param job_changes [Nextbillionai::Models::OptimizationReOptimizeParams::JobChanges] This section gathers information on modifications to the number of jobs or their
      #
      #   @param locations [Array<String>] Provide the list of locations to be used during re-optimization process. Please
      #
      #   @param shipment_changes [Nextbillionai::Models::OptimizationReOptimizeParams::ShipmentChanges] This section gathers information on modifications to the number of shipments or
      #
      #   @param vehicle_changes [Nextbillionai::Models::OptimizationReOptimizeParams::VehicleChanges] This section gathers information on modifications to the number of vehicles or i
      #
      #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]

      class JobChanges < Nextbillionai::Internal::Type::BaseModel
        # @!attribute add
        #   An array of objects to collect the details of the new jobs to be added during
        #   re-optimization. Each object represents one job. Please make sure the IDs
        #   provided for new jobs are unique with respect to the IDs of the jobs in the
        #   original request.
        #
        #   @return [Array<Nextbillionai::Models::Optimization::Job>, nil]
        optional :add, -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Optimization::Job] }

        # @!attribute modify
        #   An array of objects to collect the modified details of existing jobs used in the
        #   original request. Each object represents one job. Please make sure all the job
        #   IDs provided here are same as the ones in the original request.
        #
        #   @return [Array<Nextbillionai::Models::Optimization::Job>, nil]
        optional :modify, -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Optimization::Job] }

        # @!attribute remove
        #   An array of job IDs to be removed when during re-optimization. All job IDs
        #   provided must have been part of the original request.
        #
        #   @return [Array<String>, nil]
        optional :remove, Nextbillionai::Internal::Type::ArrayOf[String]

        # @!method initialize(add: nil, modify: nil, remove: nil)
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::OptimizationReOptimizeParams::JobChanges} for more
        #   details.
        #
        #   This section gathers information on modifications to the number of jobs or their
        #   individual requirements for re-optimization. Any job from the original solution
        #   not specified here will be re-planned without alteration during the
        #   re-optimization process.
        #
        #   @param add [Array<Nextbillionai::Models::Optimization::Job>] An array of objects to collect the details of the new jobs to be added during re
        #
        #   @param modify [Array<Nextbillionai::Models::Optimization::Job>] An array of objects to collect the modified details of existing jobs used in the
        #
        #   @param remove [Array<String>] An array of job IDs to be removed when during re-optimization. All job IDs provi
      end

      class ShipmentChanges < Nextbillionai::Internal::Type::BaseModel
        # @!attribute add
        #   An array of objects to collect the details of the new shipments to be added
        #   during re-optimization. Each object represents one shipment. Please make sure
        #   the IDs provided for new shipments are unique with respect to the IDs of the
        #   shipments in the original request.
        #
        #   @return [Array<Nextbillionai::Models::Optimization::Shipment>, nil]
        optional :add, -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Optimization::Shipment] }

        # @!attribute modify
        #   An array of objects to collect the modified details of existing shipments used
        #   in the original request. Each object represents one shipment. Please make sure
        #   all the shipment IDs provided here are same as the ones in the original request.
        #
        #   @return [Array<Nextbillionai::Models::Optimization::Shipment>, nil]
        optional :modify, -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Optimization::Shipment] }

        # @!attribute remove
        #   An array of shipment IDs to be removed when during re-optimization. All shipment
        #   IDs provided must have been part of the original request.
        #
        #   @return [Array<String>, nil]
        optional :remove, Nextbillionai::Internal::Type::ArrayOf[String]

        # @!method initialize(add: nil, modify: nil, remove: nil)
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::OptimizationReOptimizeParams::ShipmentChanges} for more
        #   details.
        #
        #   This section gathers information on modifications to the number of shipments or
        #   their individual requirements for re-optimization. Any shipment from the
        #   original solution not specified here will be re-planned without alteration
        #   during the re-optimization process.
        #
        #   @param add [Array<Nextbillionai::Models::Optimization::Shipment>] An array of objects to collect the details of the new shipments to be added duri
        #
        #   @param modify [Array<Nextbillionai::Models::Optimization::Shipment>] An array of objects to collect the modified details of existing shipments used i
        #
        #   @param remove [Array<String>] An array of shipment IDs to be removed when during re-optimization. All shipment
      end

      class VehicleChanges < Nextbillionai::Internal::Type::BaseModel
        # @!attribute add
        #   An array of objects to collect the details of the new vehicles to be added for
        #   re-optimization. Each object represents one vehicle. Please make sure the IDs
        #   provided for new vehicles are unique with respect to the IDs of the vehicles in
        #   the original request.
        #
        #   @return [Array<Nextbillionai::Models::Optimization::Vehicle>, nil]
        optional :add, -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Optimization::Vehicle] }

        # @!attribute modify
        #
        #   @return [Nextbillionai::Models::Optimization::Vehicle, nil]
        optional :modify, -> { Nextbillionai::Optimization::Vehicle }

        # @!attribute remove
        #   An array of vehicle IDs to be removed when during re-optimization. All vehicle
        #   IDs provided must have been part of the original request.
        #
        #   @return [Array<String>, nil]
        optional :remove, Nextbillionai::Internal::Type::ArrayOf[String]

        # @!method initialize(add: nil, modify: nil, remove: nil)
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::OptimizationReOptimizeParams::VehicleChanges} for more
        #   details.
        #
        #   This section gathers information on modifications to the number of vehicles or
        #   individual vehicle configurations for re-optimizing an existing solution. Any
        #   vehicle from the original solution not specified here will be reused without
        #   alteration during the re-optimization process.
        #
        #   @param add [Array<Nextbillionai::Models::Optimization::Vehicle>] An array of objects to collect the details of the new vehicles to be added for r
        #
        #   @param modify [Nextbillionai::Models::Optimization::Vehicle]
        #
        #   @param remove [Array<String>] An array of vehicle IDs to be removed when during re-optimization. All vehicle I
      end
    end
  end
end
