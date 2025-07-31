# frozen_string_literal: true

module Nextbillionai
  [
    Nextbillionai::Internal::Type::BaseModel,
    *Nextbillionai::Internal::Type::BaseModel.subclasses
  ].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, Nextbillionai::Internal::AnyHash) } }
  end

  Nextbillionai::Internal::Util.walk_namespaces(Nextbillionai::Models).each do |mod|
    case mod
    in Nextbillionai::Internal::Type::Enum | Nextbillionai::Internal::Type::Union
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

  Nextbillionai::Internal::Util.walk_namespaces(Nextbillionai::Models)
                               .lazy
                               .grep(Nextbillionai::Internal::Type::Union)
                               .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  Access = Nextbillionai::Models::Access

  Address = Nextbillionai::Models::Address

  AreaListParams = Nextbillionai::Models::AreaListParams

  AutocompleteSuggestParams = Nextbillionai::Models::AutocompleteSuggestParams

  AutosuggestSuggestParams = Nextbillionai::Models::AutosuggestSuggestParams

  BatchCreateParams = Nextbillionai::Models::BatchCreateParams

  BatchRetrieveParams = Nextbillionai::Models::BatchRetrieveParams

  BrowseSearchParams = Nextbillionai::Models::BrowseSearchParams

  Categories = Nextbillionai::Models::Categories

  ContactObject = Nextbillionai::Models::ContactObject

  Contacts = Nextbillionai::Models::Contacts

  DirectionComputeRouteParams = Nextbillionai::Models::DirectionComputeRouteParams

  DiscoverRetrieveParams = Nextbillionai::Models::DiscoverRetrieveParams

  DistanceMatrix = Nextbillionai::Models::DistanceMatrix

  Fleetify = Nextbillionai::Models::Fleetify

  GeocodeBatchCreateParams = Nextbillionai::Models::GeocodeBatchCreateParams

  GeocodeRetrieveParams = Nextbillionai::Models::GeocodeRetrieveParams

  GeocodeStructuredRetrieveParams = Nextbillionai::Models::GeocodeStructuredRetrieveParams

  Geofence = Nextbillionai::Models::Geofence

  GeofenceAPI = Nextbillionai::Models::GeofenceAPI

  GeofenceContainsParams = Nextbillionai::Models::GeofenceContainsParams

  GeofenceCreateParams = Nextbillionai::Models::GeofenceCreateParams

  GeofenceDeleteParams = Nextbillionai::Models::GeofenceDeleteParams

  GeofenceEntityCreate = Nextbillionai::Models::GeofenceEntityCreate

  GeofenceListParams = Nextbillionai::Models::GeofenceListParams

  GeofenceRetrieveParams = Nextbillionai::Models::GeofenceRetrieveParams

  GeofenceUpdateParams = Nextbillionai::Models::GeofenceUpdateParams

  IsochroneComputeParams = Nextbillionai::Models::IsochroneComputeParams

  LookupByIDParams = Nextbillionai::Models::LookupByIDParams

  MapCreateSegmentParams = Nextbillionai::Models::MapCreateSegmentParams

  MapView = Nextbillionai::Models::MapView

  MdmCreateDistanceMatrixParams = Nextbillionai::Models::MdmCreateDistanceMatrixParams

  MdmGetDistanceMatrixStatusParams = Nextbillionai::Models::MdmGetDistanceMatrixStatusParams

  Multigeocode = Nextbillionai::Models::Multigeocode

  MultigeocodeSearchParams = Nextbillionai::Models::MultigeocodeSearchParams

  NavigationRetrieveRouteParams = Nextbillionai::Models::NavigationRetrieveRouteParams

  Optimization = Nextbillionai::Models::Optimization

  OptimizationComputeParams = Nextbillionai::Models::OptimizationComputeParams

  OptimizationReOptimizeParams = Nextbillionai::Models::OptimizationReOptimizeParams

  Position = Nextbillionai::Models::Position

  PostalcodeRetrieveCoordinatesParams = Nextbillionai::Models::PostalcodeRetrieveCoordinatesParams

  PostResponse = Nextbillionai::Models::PostResponse

  RestrictionCreateParams = Nextbillionai::Models::RestrictionCreateParams

  RestrictionDeleteParams = Nextbillionai::Models::RestrictionDeleteParams

  RestrictionListByBboxParams = Nextbillionai::Models::RestrictionListByBboxParams

  RestrictionListParams = Nextbillionai::Models::RestrictionListParams

  RestrictionRetrieveParams = Nextbillionai::Models::RestrictionRetrieveParams

  RestrictionSetStateParams = Nextbillionai::Models::RestrictionSetStateParams

  RestrictionsItemListParams = Nextbillionai::Models::RestrictionsItemListParams

  RestrictionUpdateParams = Nextbillionai::Models::RestrictionUpdateParams

  RevgeocodeRetrieveParams = Nextbillionai::Models::RevgeocodeRetrieveParams

  RichGroupRequest = Nextbillionai::Models::RichGroupRequest

  RichGroupResponse = Nextbillionai::Models::RichGroupResponse

  RouteReportCreateParams = Nextbillionai::Models::RouteReportCreateParams

  Skynet = Nextbillionai::Models::Skynet

  SkynetSubscribeParams = Nextbillionai::Models::SkynetSubscribeParams

  SnapToRoadSnapParams = Nextbillionai::Models::SnapToRoadSnapParams
end
