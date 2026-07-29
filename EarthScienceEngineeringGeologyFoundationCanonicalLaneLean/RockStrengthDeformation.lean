import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyFoundationCanonicalLaneLean

structure RockStrengthDeformationPackage where
  unconfinedCompressiveStrength : Prop
  youngsModulus : Prop
  poissonRatio : Prop
  failureCriterion : Prop
  brittleDuctileTransition : Prop

structure RockStrengthDeformationEvidence (P : RockStrengthDeformationPackage) where
  unconfinedCompressiveStrengthClosed : P.unconfinedCompressiveStrength
  youngsModulusClosed : P.youngsModulus
  poissonRatioClosed : P.poissonRatio
  failureCriterionClosed : P.failureCriterion
  brittleDuctileTransitionClosed : P.brittleDuctileTransition

def RockStrengthDeformationClosed (P : RockStrengthDeformationPackage) : Prop :=
  P.unconfinedCompressiveStrength ∧ P.youngsModulus ∧ P.poissonRatio ∧ P.failureCriterion ∧ P.brittleDuctileTransition

theorem rock_strength_deformation_closed_from_evidence (P : RockStrengthDeformationPackage) (E : RockStrengthDeformationEvidence P) : RockStrengthDeformationClosed P := by
  exact And.intro E.unconfinedCompressiveStrengthClosed
    (And.intro E.youngsModulusClosed
      (And.intro E.poissonRatioClosed
        (And.intro E.failureCriterionClosed E.brittleDuctileTransitionClosed)))

end EarthScienceEngineeringGeologyFoundationCanonicalLaneLean
end HautevilleHouse
