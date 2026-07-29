import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyFoundationCanonicalLaneLean

structure AdmissibleClass where
  rockFormation : Type
  bearingCapacity : Prop
  settlementTolerance : Prop
  groundwaterCondition : Prop
  seismicStability : Prop
  bearingCapacityTerm : bearingCapacity
  settlementToleranceTerm : settlementTolerance
  groundwaterConditionTerm : groundwaterCondition
  seismicStabilityTerm : seismicStability

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.bearingCapacity ∧ A.settlementTolerance ∧ A.groundwaterCondition ∧ A.seismicStability

end EarthScienceEngineeringGeologyFoundationCanonicalLaneLean
end HautevilleHouse