import EarthScienceEngineeringGeologyFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyFoundationCanonicalLaneLean

def ConstrainedGeotechnicalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_geotechnical_endgame (A : AdmissibleClass) :
    ConstrainedGeotechnicalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EarthScienceEngineeringGeologyFoundationCanonicalLaneLean
end HautevilleHouse