import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyFoundationCanonicalLaneLean

structure SoilMechanicsPackage where
  shearStrength : Prop
  effectiveStressPrinciple : Prop
  consolidationTheory : Prop
  bearingCapacity : Prop

structure SoilMechanicsEvidence (S : SoilMechanicsPackage) where
  shearStrengthClosed : S.shearStrength
  effectiveStressPrincipleClosed : S.effectiveStressPrinciple
  consolidationTheoryClosed : S.consolidationTheory
  bearingCapacityClosed : S.bearingCapacity

def SoilMechanicsClosed (S : SoilMechanicsPackage) : Prop :=
  S.shearStrength ∧ S.effectiveStressPrinciple ∧ S.consolidationTheory ∧ S.bearingCapacity

theorem soil_mechanics_closed_from_evidence (S : SoilMechanicsPackage)
    (E : SoilMechanicsEvidence S) : SoilMechanicsClosed S := by
  exact And.intro E.shearStrengthClosed
    (And.intro E.effectiveStressPrincipleClosed
      (And.intro E.consolidationTheoryClosed E.bearingCapacityClosed))

end EarthScienceEngineeringGeologyFoundationCanonicalLaneLean
end HautevilleHouse