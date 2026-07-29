import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyFoundationCanonicalLaneLean

structure SlopeStabilityPackage where
  slopeHeightM : Float
  slopeAngleDeg : Float
  soilCohesionKPa : Float
  frictionAngleDeg : Float
  porePressureRatio : Float
  factorOfSafety : Float
  stabilityCheck : factorOfSafety ≥ 1.0

structure SlopeStabilityEvidence (S : SlopeStabilityPackage) where
  factorOfSafetyClosed : S.factorOfSafety ≥ 1.0
  stabilityCheckClosed : S.stabilityCheck

def SlopeStabilityClosed (S : SlopeStabilityPackage) : Prop :=
  S.factorOfSafety ≥ 1.0 ∧ S.stabilityCheck

theorem slope_stability_closed_from_evidence (S : SlopeStabilityPackage) (E : SlopeStabilityEvidence S) :
    SlopeStabilityClosed S := by
  exact And.intro E.factorOfSafetyClosed E.stabilityCheckClosed

end EarthScienceEngineeringGeologyFoundationCanonicalLaneLean
end HautevilleHouse
