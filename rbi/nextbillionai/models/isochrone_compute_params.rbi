# typed: strong

module Nextbillionai
  module Models
    class IsochroneComputeParams < Nextbillionai::Internal::Type::BaseModel
      extend Nextbillionai::Internal::Type::RequestParameters::Converter
      include Nextbillionai::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Nextbillionai::IsochroneComputeParams,
            Nextbillionai::Internal::AnyHash
          )
        end

      # The distances, in meters, to use for each isochrone contour. You can specify up
      # to four contours. Distances must be in increasing order. The maximum distance
      # that can be specified is 60000 meters (60 km).
      sig { returns(Integer) }
      attr_accessor :contours_meters

      # The times, in minutes, to use for each isochrone contour. You can specify up to
      # four contours. Times must be in increasing order. The maximum time that can be
      # specified is 40 minutes.
      sig { returns(Integer) }
      attr_accessor :contours_minutes

      # The coordinates of the location which acts as the starting point for which the
      # isochrone lines need to be determined.
      sig { returns(String) }
      attr_accessor :coordinates

      # A key is a unique identifier that is required to authenticate a request to the
      # API.
      sig { returns(String) }
      attr_accessor :key

      # The hex code of the color to fill isochrone contour. When requesting multiple
      # contours, it is recommended to provide color codes for each of the requested
      # contours, separated by a ",". If no colors are specified, the Isochrone API will
      # assign a random color scheme to the output.
      sig { returns(T.nilable(String)) }
      attr_reader :contours_colors

      sig { params(contours_colors: String).void }
      attr_writer :contours_colors

      # A floating point value from 0.0 to 1.0 can be used to remove smaller contours.
      # The default is 1.0. A value of 1.0 will only return the largest contour for a
      # given value. A value of 0.5 drops any contours that are less than half the area
      # of the largest contour in the set of contours for that same value.
      sig { returns(T.nilable(Float)) }
      attr_reader :denoise

      sig { params(denoise: Float).void }
      attr_writer :denoise

      # Use this parameter to set a departure time, expressed as UNIX epoch timestamp in
      # seconds, for calculating the isochrone contour. The response will consider the
      # typical traffic conditions at the given time and return a contour which can be
      # reached under those traffic conditions. Please note that if no input is provided
      # for this parameter then the traffic conditions at the time of making the request
      # are considered.
      sig { returns(T.nilable(Integer)) }
      attr_reader :departure_time

      sig { params(departure_time: Integer).void }
      attr_writer :departure_time

      # A positive floating point value, in meters, used as the tolerance for
      # Douglas-Peucker generalization. There is no upper bound. If no value is
      # specified in the request, the Isochrone API will choose the most optimized
      # generalization to use for the request. Note that the generalization of contours
      # can lead to self-intersections, as well as intersections of adjacent contours.
      sig { returns(T.nilable(Float)) }
      attr_reader :generalize

      sig { params(generalize: Float).void }
      attr_writer :generalize

      # Set which driving mode the service should use to determine the contour. For
      # example, if you use "car", the API will return an isochrone contour that a car
      # can reach within the specified time or after driving the specified distance.
      # Using "truck" will return a contour that a truck can reach after taking into
      # account appropriate truck routing restrictions.
      #
      # Note: Only the "car" profile is enabled by default. Please note that customized
      # profiles (including "truck") might not be available for all regions. Please
      # contact your [NextBillion.ai](http://NextBillion.ai) account manager, sales
      # representative or reach out at
      # [support@nextbillion.ai](mailto:support@nextbillion.ai) in case you need
      # additional profiles.
      sig do
        returns(
          T.nilable(Nextbillionai::IsochroneComputeParams::Mode::OrSymbol)
        )
      end
      attr_reader :mode

      sig do
        params(mode: Nextbillionai::IsochroneComputeParams::Mode::OrSymbol).void
      end
      attr_writer :mode

      # Specify whether to return the contours as GeoJSON polygons (true) or linestrings
      # (false, default). When polygons=true, any contour that forms a ring is returned
      # as a polygon.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :polygons

      sig { params(polygons: T::Boolean).void }
      attr_writer :polygons

      sig do
        params(
          contours_meters: Integer,
          contours_minutes: Integer,
          coordinates: String,
          key: String,
          contours_colors: String,
          denoise: Float,
          departure_time: Integer,
          generalize: Float,
          mode: Nextbillionai::IsochroneComputeParams::Mode::OrSymbol,
          polygons: T::Boolean,
          request_options: Nextbillionai::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The distances, in meters, to use for each isochrone contour. You can specify up
        # to four contours. Distances must be in increasing order. The maximum distance
        # that can be specified is 60000 meters (60 km).
        contours_meters:,
        # The times, in minutes, to use for each isochrone contour. You can specify up to
        # four contours. Times must be in increasing order. The maximum time that can be
        # specified is 40 minutes.
        contours_minutes:,
        # The coordinates of the location which acts as the starting point for which the
        # isochrone lines need to be determined.
        coordinates:,
        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        key:,
        # The hex code of the color to fill isochrone contour. When requesting multiple
        # contours, it is recommended to provide color codes for each of the requested
        # contours, separated by a ",". If no colors are specified, the Isochrone API will
        # assign a random color scheme to the output.
        contours_colors: nil,
        # A floating point value from 0.0 to 1.0 can be used to remove smaller contours.
        # The default is 1.0. A value of 1.0 will only return the largest contour for a
        # given value. A value of 0.5 drops any contours that are less than half the area
        # of the largest contour in the set of contours for that same value.
        denoise: nil,
        # Use this parameter to set a departure time, expressed as UNIX epoch timestamp in
        # seconds, for calculating the isochrone contour. The response will consider the
        # typical traffic conditions at the given time and return a contour which can be
        # reached under those traffic conditions. Please note that if no input is provided
        # for this parameter then the traffic conditions at the time of making the request
        # are considered.
        departure_time: nil,
        # A positive floating point value, in meters, used as the tolerance for
        # Douglas-Peucker generalization. There is no upper bound. If no value is
        # specified in the request, the Isochrone API will choose the most optimized
        # generalization to use for the request. Note that the generalization of contours
        # can lead to self-intersections, as well as intersections of adjacent contours.
        generalize: nil,
        # Set which driving mode the service should use to determine the contour. For
        # example, if you use "car", the API will return an isochrone contour that a car
        # can reach within the specified time or after driving the specified distance.
        # Using "truck" will return a contour that a truck can reach after taking into
        # account appropriate truck routing restrictions.
        #
        # Note: Only the "car" profile is enabled by default. Please note that customized
        # profiles (including "truck") might not be available for all regions. Please
        # contact your [NextBillion.ai](http://NextBillion.ai) account manager, sales
        # representative or reach out at
        # [support@nextbillion.ai](mailto:support@nextbillion.ai) in case you need
        # additional profiles.
        mode: nil,
        # Specify whether to return the contours as GeoJSON polygons (true) or linestrings
        # (false, default). When polygons=true, any contour that forms a ring is returned
        # as a polygon.
        polygons: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            contours_meters: Integer,
            contours_minutes: Integer,
            coordinates: String,
            key: String,
            contours_colors: String,
            denoise: Float,
            departure_time: Integer,
            generalize: Float,
            mode: Nextbillionai::IsochroneComputeParams::Mode::OrSymbol,
            polygons: T::Boolean,
            request_options: Nextbillionai::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Set which driving mode the service should use to determine the contour. For
      # example, if you use "car", the API will return an isochrone contour that a car
      # can reach within the specified time or after driving the specified distance.
      # Using "truck" will return a contour that a truck can reach after taking into
      # account appropriate truck routing restrictions.
      #
      # Note: Only the "car" profile is enabled by default. Please note that customized
      # profiles (including "truck") might not be available for all regions. Please
      # contact your [NextBillion.ai](http://NextBillion.ai) account manager, sales
      # representative or reach out at
      # [support@nextbillion.ai](mailto:support@nextbillion.ai) in case you need
      # additional profiles.
      module Mode
        extend Nextbillionai::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Nextbillionai::IsochroneComputeParams::Mode)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CAR =
          T.let(:car, Nextbillionai::IsochroneComputeParams::Mode::TaggedSymbol)
        TRUCK =
          T.let(
            :truck,
            Nextbillionai::IsochroneComputeParams::Mode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Nextbillionai::IsochroneComputeParams::Mode::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
