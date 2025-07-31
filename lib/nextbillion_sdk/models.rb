# frozen_string_literal: true

module NextbillionSDK
  [
    NextbillionSDK::Internal::Type::BaseModel,
    *NextbillionSDK::Internal::Type::BaseModel.subclasses
  ].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, NextbillionSDK::Internal::AnyHash) } }
  end

  NextbillionSDK::Internal::Util.walk_namespaces(NextbillionSDK::Models).each do |mod|
    case mod
    in NextbillionSDK::Internal::Type::Enum | NextbillionSDK::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  NextbillionSDK::Internal::Util.walk_namespaces(NextbillionSDK::Models)
                                .lazy
                                .grep(NextbillionSDK::Internal::Type::Union)
                                .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  Access = NextbillionSDK::Models::Access

  Address = NextbillionSDK::Models::Address

  AreaListParams = NextbillionSDK::Models::AreaListParams

  AutocompleteSuggestParams = NextbillionSDK::Models::AutocompleteSuggestParams

  AutosuggestSuggestParams = NextbillionSDK::Models::AutosuggestSuggestParams

  BatchCreateParams = NextbillionSDK::Models::BatchCreateParams

  BatchRetrieveParams = NextbillionSDK::Models::BatchRetrieveParams

  BrowseSearchParams = NextbillionSDK::Models::BrowseSearchParams

  Categories = NextbillionSDK::Models::Categories

  ContactObject = NextbillionSDK::Models::ContactObject

  Contacts = NextbillionSDK::Models::Contacts

  DirectionComputeRouteParams = NextbillionSDK::Models::DirectionComputeRouteParams

  DiscoverRetrieveParams = NextbillionSDK::Models::DiscoverRetrieveParams

  DistanceMatrix = NextbillionSDK::Models::DistanceMatrix

  Fleetify = NextbillionSDK::Models::Fleetify

  GeocodeBatchCreateParams = NextbillionSDK::Models::GeocodeBatchCreateParams

  GeocodeRetrieveParams = NextbillionSDK::Models::GeocodeRetrieveParams

  GeocodeStructuredRetrieveParams = NextbillionSDK::Models::GeocodeStructuredRetrieveParams

  Geofence = NextbillionSDK::Models::Geofence

  GeofenceAPI = NextbillionSDK::Models::GeofenceAPI

  GeofenceContainsParams = NextbillionSDK::Models::GeofenceContainsParams

  GeofenceCreateParams = NextbillionSDK::Models::GeofenceCreateParams

  GeofenceDeleteParams = NextbillionSDK::Models::GeofenceDeleteParams

  GeofenceEntityCreate = NextbillionSDK::Models::GeofenceEntityCreate

  GeofenceListParams = NextbillionSDK::Models::GeofenceListParams

  GeofenceRetrieveParams = NextbillionSDK::Models::GeofenceRetrieveParams

  GeofenceUpdateParams = NextbillionSDK::Models::GeofenceUpdateParams

  IsochroneComputeParams = NextbillionSDK::Models::IsochroneComputeParams

  LookupByIDParams = NextbillionSDK::Models::LookupByIDParams

  MapCreateSegmentParams = NextbillionSDK::Models::MapCreateSegmentParams

  MapView = NextbillionSDK::Models::MapView

  MdmCreateDistanceMatrixParams = NextbillionSDK::Models::MdmCreateDistanceMatrixParams

  MdmGetDistanceMatrixStatusParams = NextbillionSDK::Models::MdmGetDistanceMatrixStatusParams

  Multigeocode = NextbillionSDK::Models::Multigeocode

  MultigeocodeSearchParams = NextbillionSDK::Models::MultigeocodeSearchParams

  NavigationRetrieveRouteParams = NextbillionSDK::Models::NavigationRetrieveRouteParams

  Optimization = NextbillionSDK::Models::Optimization

  OptimizationComputeParams = NextbillionSDK::Models::OptimizationComputeParams

  OptimizationReOptimizeParams = NextbillionSDK::Models::OptimizationReOptimizeParams

  Position = NextbillionSDK::Models::Position

  PostalcodeRetrieveCoordinatesParams = NextbillionSDK::Models::PostalcodeRetrieveCoordinatesParams

  PostResponse = NextbillionSDK::Models::PostResponse

  RestrictionCreateParams = NextbillionSDK::Models::RestrictionCreateParams

  RestrictionDeleteParams = NextbillionSDK::Models::RestrictionDeleteParams

  RestrictionListByBboxParams = NextbillionSDK::Models::RestrictionListByBboxParams

  RestrictionListParams = NextbillionSDK::Models::RestrictionListParams

  RestrictionRetrieveParams = NextbillionSDK::Models::RestrictionRetrieveParams

  RestrictionSetStateParams = NextbillionSDK::Models::RestrictionSetStateParams

  RestrictionsItemListParams = NextbillionSDK::Models::RestrictionsItemListParams

  RestrictionUpdateParams = NextbillionSDK::Models::RestrictionUpdateParams

  RevgeocodeRetrieveParams = NextbillionSDK::Models::RevgeocodeRetrieveParams

  RichGroupRequest = NextbillionSDK::Models::RichGroupRequest

  RichGroupResponse = NextbillionSDK::Models::RichGroupResponse

  RouteReportCreateParams = NextbillionSDK::Models::RouteReportCreateParams

  Skynet = NextbillionSDK::Models::Skynet

  SkynetSubscribeParams = NextbillionSDK::Models::SkynetSubscribeParams

  SnapToRoadSnapParams = NextbillionSDK::Models::SnapToRoadSnapParams
end
