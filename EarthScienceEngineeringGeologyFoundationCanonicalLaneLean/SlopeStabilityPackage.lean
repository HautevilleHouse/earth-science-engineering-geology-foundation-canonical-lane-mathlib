import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyFoundationCanonicalLaneLean

structure SlopeStabilityPackage where
  limitEquilibrium : Prop
  factorOfSafety : Prop
  failureSurface : Prop
  reinforcementDesign : Prop

structure SlopeStabilityEvidence (S : SlopeStabilityPackage) where
  limitEquilibriumClosed : S.limitEquilibrium
  factorOfSafetyClosed : S.factorOfSafety
  failureSurfaceClosed : S.failureSurface
  reinforcementDesignClosed : S.reinforcementDesign

def SlopeStabilityClosed (S : SlopeStabilityPackage) : Prop :=
  S.limitEquilibrium ∧ S.factorOfSafety ∧ S.failureSurface ∧ S.reinforcementDesign

theorem slope_stability_closed_from_evidence (S : SlopeStabilityPackage)
    (E : SlopeStabilityEvidence S) : SlopeStabilityClosed S := by
  exact And.intro E.limitEquilibriumClosed
    (And.intro E.factorOfSafetyClosed
      (And.intro E.failureSurfaceClosed E.reinforcementDesignClosed))

end EarthScienceEngineeringGeologyFoundationCanonicalLaneLean
end HautevilleHouse