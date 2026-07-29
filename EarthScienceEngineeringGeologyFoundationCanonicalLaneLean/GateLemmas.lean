import EarthScienceEngineeringGeologyFoundationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyFoundationCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.groundwaterCondition ∧ A.seismicStability

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact And.intro A.groundwaterConditionTerm A.seismicStabilityTerm

end EarthScienceEngineeringGeologyFoundationCanonicalLaneLean
end HautevilleHouse