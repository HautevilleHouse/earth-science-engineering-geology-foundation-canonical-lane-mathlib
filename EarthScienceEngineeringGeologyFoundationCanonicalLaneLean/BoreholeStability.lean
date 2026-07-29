import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyFoundationCanonicalLaneLean

structure BoreholeStabilityPackage where
  inSituStress : Prop
  rockStrength : Prop
  mudWeight : Prop
  failureSurface : Prop
  breakoutPrediction : Prop

structure BoreholeStabilityEvidence (B : BoreholeStabilityPackage) where
  inSituStressClosed : B.inSituStress
  rockStrengthClosed : B.rockStrength
  mudWeightClosed : B.mudWeight
  failureSurfaceClosed : B.failureSurface
  breakoutPredictionClosed : B.breakoutPrediction

def BoreholeStabilityClosed (B : BoreholeStabilityPackage) : Prop :=
  B.inSituStress ∧ B.rockStrength ∧ B.mudWeight ∧ B.failureSurface ∧ B.breakoutPrediction

theorem borehole_stability_closed_from_evidence (B : BoreholeStabilityPackage)
    (E : BoreholeStabilityEvidence B) : BoreholeStabilityClosed B := by
  exact And.intro E.inSituStressClosed
    (And.intro E.rockStrengthClosed
      (And.intro E.mudWeightClosed
        (And.intro E.failureSurfaceClosed E.breakoutPredictionClosed)))

end EarthScienceEngineeringGeologyFoundationCanonicalLaneLean
end HautevilleHouse