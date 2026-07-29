import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyFoundationCanonicalLaneLean

structure SoilLayer where
  layerName : String
  thicknessM : Float
  cohesionKPa : Float
  frictionAngleDeg : Float
  unitWeightKNm3 : Float

structure BearingCapacityPackage where
  soilProfile : List SoilLayer
  footingWidthM : Float
  footingDepthM : Float
  groundwaterAdjusted : Bool
  ultimateCapacityKPa : Float
  safetyFactor : Float
  allowableCapacityKPa : Float
  capacityCheck : allowableCapacityKPa > 0.0

structure BearingCapacityEvidence (B : BearingCapacityPackage) where
  soilProfileClosed : B.soilProfile.length > 0
  safetyFactorClosed : B.safetyFactor ≥ 1.0
  allowableCapacityClosed : B.allowableCapacityKPa = B.ultimateCapacityKPa / B.safetyFactor
  capacityCheckClosed : B.capacityCheck

def BearingCapacityClosed (B : BearingCapacityPackage) : Prop :=
  B.soilProfile.length > 0 ∧ B.safetyFactor ≥ 1.0 ∧ B.capacityCheck

theorem bearing_capacity_closed_from_evidence (B : BearingCapacityPackage) (E : BearingCapacityEvidence B) :
    BearingCapacityClosed B := by
  exact And.intro E.soilProfileClosed (And.intro E.safetyFactorClosed E.capacityCheckClosed)

end EarthScienceEngineeringGeologyFoundationCanonicalLaneLean
end HautevilleHouse
