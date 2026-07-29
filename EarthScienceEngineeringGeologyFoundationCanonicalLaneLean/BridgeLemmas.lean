import EarthScienceEngineeringGeologyFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.bearingCapacity ∧ A.settlementTolerance

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact And.intro A.bearingCapacityTerm A.settlementToleranceTerm

end EarthScienceEngineeringGeologyFoundationCanonicalLaneLean
end HautevilleHouse