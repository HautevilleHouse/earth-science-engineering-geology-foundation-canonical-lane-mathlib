import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyFoundationCanonicalLaneLean

structure FoundationGeometry where
  foundationType : String
  widthM : Float
  lengthM : Float
  depthM : Float
  allowableBearingCapacityKPa : Float
  totalLoadKN : Float
  bearingCheck : allowableBearingCapacityKPa * (widthM * lengthM) ≥ totalLoadKN

structure FoundationDesignPackage (F : FoundationGeometry) where
  geometryCheck : F.widthM > 0.0 ∧ F.lengthM > 0.0 ∧ F.depthM > 0.0
  bearingCheckClosed : F.bearingCheck
  settlementCalculated : Float
  settlementLimitM : Float
  settlementCheck : settlementCalculated ≤ settlementLimitM

structure FoundationDesignEvidence (F : FoundationGeometry) (D : FoundationDesignPackage F) where
  geometryCheckClosed : D.geometryCheck
  bearingCheckClosed : D.bearingCheckClosed
  settlementCheckClosed : D.settlementCheck

def FoundationDesignClosed (F : FoundationGeometry) (D : FoundationDesignPackage F) : Prop :=
  D.geometryCheck ∧ D.bearingCheckClosed ∧ D.settlementCheck

theorem foundation_design_closed_from_evidence (F : FoundationGeometry) (D : FoundationDesignPackage F) (E : FoundationDesignEvidence F D) :
    FoundationDesignClosed F D := by
  exact And.intro E.geometryCheckClosed (And.intro E.bearingCheckClosed E.settlementCheckClosed)

end EarthScienceEngineeringGeologyFoundationCanonicalLaneLean
end HautevilleHouse
