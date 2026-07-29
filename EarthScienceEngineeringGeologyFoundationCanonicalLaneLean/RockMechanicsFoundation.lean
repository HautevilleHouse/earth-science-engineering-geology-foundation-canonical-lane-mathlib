import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyFoundationCanonicalLaneLean

structure RockMechanicsPackage where
  failureCriteria : Prop
  deformationModulus : Prop
  creepBehavior : Prop
  anisotropyModel : Prop

structure RockMechanicsEvidence (R : RockMechanicsPackage) where
  failureCriteriaClosed : R.failureCriteria
  deformationModulusClosed : R.deformationModulus
  creepBehaviorClosed : R.creepBehavior
  anisotropyModelClosed : R.anisotropyModel

def RockMechanicsClosed (R : RockMechanicsPackage) : Prop :=
  R.failureCriteria ∧ R.deformationModulus ∧ R.creepBehavior ∧ R.anisotropyModel

theorem rock_mechanics_closed_from_evidence (R : RockMechanicsPackage)
    (E : RockMechanicsEvidence R) : RockMechanicsClosed R := by
  exact And.intro E.failureCriteriaClosed
    (And.intro E.deformationModulusClosed
      (And.intro E.creepBehaviorClosed E.anisotropyModelClosed))

end EarthScienceEngineeringGeologyFoundationCanonicalLaneLean
end HautevilleHouse