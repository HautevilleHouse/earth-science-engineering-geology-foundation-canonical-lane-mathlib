import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyFoundationCanonicalLaneLean

structure SubsurfaceStressStrainPackage where
  elasticModulus : Prop
  poissonRatio : Prop
  overburdenStress : Prop
  tectonicStrain : Prop
  failureCriterion : Prop

structure SubsurfaceStressStrainEvidence (S : SubsurfaceStressStrainPackage) where
  elasticModulusClosed : S.elasticModulus
  poissonRatioClosed : S.poissonRatio
  overburdenStressClosed : S.overburdenStress
  tectonicStrainClosed : S.tectonicStrain
  failureCriterionClosed : S.failureCriterion

def SubsurfaceStressStrainClosed (S : SubsurfaceStressStrainPackage) : Prop :=
  S.elasticModulus ∧ S.poissonRatio ∧ S.overburdenStress ∧ S.tectonicStrain ∧ S.failureCriterion

theorem subsurface_stress_strain_closed_from_evidence (S : SubsurfaceStressStrainPackage)
    (E : SubsurfaceStressStrainEvidence S) : SubsurfaceStressStrainClosed S := by
  exact And.intro E.elasticModulusClosed
    (And.intro E.poissonRatioClosed
      (And.intro E.overburdenStressClosed
        (And.intro E.tectonicStrainClosed E.failureCriterionClosed)))

end EarthScienceEngineeringGeologyFoundationCanonicalLaneLean
end HautevilleHouse