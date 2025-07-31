# typed: strong

module NextbillionSDK
  module Models
    class OptimizationReOptimizeParams < NextbillionSDK::Internal::Type::BaseModel
      extend NextbillionSDK::Internal::Type::RequestParameters::Converter
      include NextbillionSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            NextbillionSDK::OptimizationReOptimizeParams,
            NextbillionSDK::Internal::AnyHash
          )
        end

      # A key is a unique identifier that is required to authenticate a request to the
      # API.
      sig { returns(String) }
      attr_accessor :key

      # Specify the unique request ID that needs to be re-optimized.
      sig { returns(String) }
      attr_accessor :existing_request_id

      # This section gathers information on modifications to the number of jobs or their
      # individual requirements for re-optimization. Any job from the original solution
      # not specified here will be re-planned without alteration during the
      # re-optimization process.
      sig do
        returns(
          T.nilable(NextbillionSDK::OptimizationReOptimizeParams::JobChanges)
        )
      end
      attr_reader :job_changes

      sig do
        params(
          job_changes:
            NextbillionSDK::OptimizationReOptimizeParams::JobChanges::OrHash
        ).void
      end
      attr_writer :job_changes

      # Provide the list of locations to be used during re-optimization process. Please
      # note that
      #
      # - Providing the location input overwrites the list of locations used in the
      #   original request.
      # - The location_indexes associated with all tasks and vehicles (both from the
      #   original and new re-optimization input requests) will follow the updated list
      #   of locations.
      #
      # As a best practice:
      #
      # 1.  Don't provide the `locations` input when re-optimizing, if the original set
      #     contains all the required location coordinates.
      # 2.  If any new location coordinates are required for re-optimization, copy the
      #     full, original location list and update it in the following manner before
      #     adding it to the re-optimization input:
      #
      #     1.  Ensure to not update the indexes of locations which just need to be
      #         "modified".
      #     2.  Add new location coordinates towards the end of the list.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :locations

      sig { params(locations: T::Array[String]).void }
      attr_writer :locations

      # This section gathers information on modifications to the number of shipments or
      # their individual requirements for re-optimization. Any shipment from the
      # original solution not specified here will be re-planned without alteration
      # during the re-optimization process.
      sig do
        returns(
          T.nilable(
            NextbillionSDK::OptimizationReOptimizeParams::ShipmentChanges
          )
        )
      end
      attr_reader :shipment_changes

      sig do
        params(
          shipment_changes:
            NextbillionSDK::OptimizationReOptimizeParams::ShipmentChanges::OrHash
        ).void
      end
      attr_writer :shipment_changes

      # This section gathers information on modifications to the number of vehicles or
      # individual vehicle configurations for re-optimizing an existing solution. Any
      # vehicle from the original solution not specified here will be reused without
      # alteration during the re-optimization process.
      sig do
        returns(
          T.nilable(
            NextbillionSDK::OptimizationReOptimizeParams::VehicleChanges
          )
        )
      end
      attr_reader :vehicle_changes

      sig do
        params(
          vehicle_changes:
            NextbillionSDK::OptimizationReOptimizeParams::VehicleChanges::OrHash
        ).void
      end
      attr_writer :vehicle_changes

      sig do
        params(
          key: String,
          existing_request_id: String,
          job_changes:
            NextbillionSDK::OptimizationReOptimizeParams::JobChanges::OrHash,
          locations: T::Array[String],
          shipment_changes:
            NextbillionSDK::OptimizationReOptimizeParams::ShipmentChanges::OrHash,
          vehicle_changes:
            NextbillionSDK::OptimizationReOptimizeParams::VehicleChanges::OrHash,
          request_options: NextbillionSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        key:,
        # Specify the unique request ID that needs to be re-optimized.
        existing_request_id:,
        # This section gathers information on modifications to the number of jobs or their
        # individual requirements for re-optimization. Any job from the original solution
        # not specified here will be re-planned without alteration during the
        # re-optimization process.
        job_changes: nil,
        # Provide the list of locations to be used during re-optimization process. Please
        # note that
        #
        # - Providing the location input overwrites the list of locations used in the
        #   original request.
        # - The location_indexes associated with all tasks and vehicles (both from the
        #   original and new re-optimization input requests) will follow the updated list
        #   of locations.
        #
        # As a best practice:
        #
        # 1.  Don't provide the `locations` input when re-optimizing, if the original set
        #     contains all the required location coordinates.
        # 2.  If any new location coordinates are required for re-optimization, copy the
        #     full, original location list and update it in the following manner before
        #     adding it to the re-optimization input:
        #
        #     1.  Ensure to not update the indexes of locations which just need to be
        #         "modified".
        #     2.  Add new location coordinates towards the end of the list.
        locations: nil,
        # This section gathers information on modifications to the number of shipments or
        # their individual requirements for re-optimization. Any shipment from the
        # original solution not specified here will be re-planned without alteration
        # during the re-optimization process.
        shipment_changes: nil,
        # This section gathers information on modifications to the number of vehicles or
        # individual vehicle configurations for re-optimizing an existing solution. Any
        # vehicle from the original solution not specified here will be reused without
        # alteration during the re-optimization process.
        vehicle_changes: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            key: String,
            existing_request_id: String,
            job_changes:
              NextbillionSDK::OptimizationReOptimizeParams::JobChanges,
            locations: T::Array[String],
            shipment_changes:
              NextbillionSDK::OptimizationReOptimizeParams::ShipmentChanges,
            vehicle_changes:
              NextbillionSDK::OptimizationReOptimizeParams::VehicleChanges,
            request_options: NextbillionSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class JobChanges < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::OptimizationReOptimizeParams::JobChanges,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # An array of objects to collect the details of the new jobs to be added during
        # re-optimization. Each object represents one job. Please make sure the IDs
        # provided for new jobs are unique with respect to the IDs of the jobs in the
        # original request.
        sig { returns(T.nilable(T::Array[NextbillionSDK::Optimization::Job])) }
        attr_reader :add

        sig do
          params(add: T::Array[NextbillionSDK::Optimization::Job::OrHash]).void
        end
        attr_writer :add

        # An array of objects to collect the modified details of existing jobs used in the
        # original request. Each object represents one job. Please make sure all the job
        # IDs provided here are same as the ones in the original request.
        sig { returns(T.nilable(T::Array[NextbillionSDK::Optimization::Job])) }
        attr_reader :modify

        sig do
          params(
            modify: T::Array[NextbillionSDK::Optimization::Job::OrHash]
          ).void
        end
        attr_writer :modify

        # An array of job IDs to be removed when during re-optimization. All job IDs
        # provided must have been part of the original request.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :remove

        sig { params(remove: T::Array[String]).void }
        attr_writer :remove

        # This section gathers information on modifications to the number of jobs or their
        # individual requirements for re-optimization. Any job from the original solution
        # not specified here will be re-planned without alteration during the
        # re-optimization process.
        sig do
          params(
            add: T::Array[NextbillionSDK::Optimization::Job::OrHash],
            modify: T::Array[NextbillionSDK::Optimization::Job::OrHash],
            remove: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # An array of objects to collect the details of the new jobs to be added during
          # re-optimization. Each object represents one job. Please make sure the IDs
          # provided for new jobs are unique with respect to the IDs of the jobs in the
          # original request.
          add: nil,
          # An array of objects to collect the modified details of existing jobs used in the
          # original request. Each object represents one job. Please make sure all the job
          # IDs provided here are same as the ones in the original request.
          modify: nil,
          # An array of job IDs to be removed when during re-optimization. All job IDs
          # provided must have been part of the original request.
          remove: nil
        )
        end

        sig do
          override.returns(
            {
              add: T::Array[NextbillionSDK::Optimization::Job],
              modify: T::Array[NextbillionSDK::Optimization::Job],
              remove: T::Array[String]
            }
          )
        end
        def to_hash
        end
      end

      class ShipmentChanges < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::OptimizationReOptimizeParams::ShipmentChanges,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # An array of objects to collect the details of the new shipments to be added
        # during re-optimization. Each object represents one shipment. Please make sure
        # the IDs provided for new shipments are unique with respect to the IDs of the
        # shipments in the original request.
        sig do
          returns(T.nilable(T::Array[NextbillionSDK::Optimization::Shipment]))
        end
        attr_reader :add

        sig do
          params(
            add: T::Array[NextbillionSDK::Optimization::Shipment::OrHash]
          ).void
        end
        attr_writer :add

        # An array of objects to collect the modified details of existing shipments used
        # in the original request. Each object represents one shipment. Please make sure
        # all the shipment IDs provided here are same as the ones in the original request.
        sig do
          returns(T.nilable(T::Array[NextbillionSDK::Optimization::Shipment]))
        end
        attr_reader :modify

        sig do
          params(
            modify: T::Array[NextbillionSDK::Optimization::Shipment::OrHash]
          ).void
        end
        attr_writer :modify

        # An array of shipment IDs to be removed when during re-optimization. All shipment
        # IDs provided must have been part of the original request.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :remove

        sig { params(remove: T::Array[String]).void }
        attr_writer :remove

        # This section gathers information on modifications to the number of shipments or
        # their individual requirements for re-optimization. Any shipment from the
        # original solution not specified here will be re-planned without alteration
        # during the re-optimization process.
        sig do
          params(
            add: T::Array[NextbillionSDK::Optimization::Shipment::OrHash],
            modify: T::Array[NextbillionSDK::Optimization::Shipment::OrHash],
            remove: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # An array of objects to collect the details of the new shipments to be added
          # during re-optimization. Each object represents one shipment. Please make sure
          # the IDs provided for new shipments are unique with respect to the IDs of the
          # shipments in the original request.
          add: nil,
          # An array of objects to collect the modified details of existing shipments used
          # in the original request. Each object represents one shipment. Please make sure
          # all the shipment IDs provided here are same as the ones in the original request.
          modify: nil,
          # An array of shipment IDs to be removed when during re-optimization. All shipment
          # IDs provided must have been part of the original request.
          remove: nil
        )
        end

        sig do
          override.returns(
            {
              add: T::Array[NextbillionSDK::Optimization::Shipment],
              modify: T::Array[NextbillionSDK::Optimization::Shipment],
              remove: T::Array[String]
            }
          )
        end
        def to_hash
        end
      end

      class VehicleChanges < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::OptimizationReOptimizeParams::VehicleChanges,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # An array of objects to collect the details of the new vehicles to be added for
        # re-optimization. Each object represents one vehicle. Please make sure the IDs
        # provided for new vehicles are unique with respect to the IDs of the vehicles in
        # the original request.
        sig do
          returns(T.nilable(T::Array[NextbillionSDK::Optimization::Vehicle]))
        end
        attr_reader :add

        sig do
          params(
            add: T::Array[NextbillionSDK::Optimization::Vehicle::OrHash]
          ).void
        end
        attr_writer :add

        sig { returns(T.nilable(NextbillionSDK::Optimization::Vehicle)) }
        attr_reader :modify

        sig do
          params(modify: NextbillionSDK::Optimization::Vehicle::OrHash).void
        end
        attr_writer :modify

        # An array of vehicle IDs to be removed when during re-optimization. All vehicle
        # IDs provided must have been part of the original request.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :remove

        sig { params(remove: T::Array[String]).void }
        attr_writer :remove

        # This section gathers information on modifications to the number of vehicles or
        # individual vehicle configurations for re-optimizing an existing solution. Any
        # vehicle from the original solution not specified here will be reused without
        # alteration during the re-optimization process.
        sig do
          params(
            add: T::Array[NextbillionSDK::Optimization::Vehicle::OrHash],
            modify: NextbillionSDK::Optimization::Vehicle::OrHash,
            remove: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # An array of objects to collect the details of the new vehicles to be added for
          # re-optimization. Each object represents one vehicle. Please make sure the IDs
          # provided for new vehicles are unique with respect to the IDs of the vehicles in
          # the original request.
          add: nil,
          modify: nil,
          # An array of vehicle IDs to be removed when during re-optimization. All vehicle
          # IDs provided must have been part of the original request.
          remove: nil
        )
        end

        sig do
          override.returns(
            {
              add: T::Array[NextbillionSDK::Optimization::Vehicle],
              modify: NextbillionSDK::Optimization::Vehicle,
              remove: T::Array[String]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
