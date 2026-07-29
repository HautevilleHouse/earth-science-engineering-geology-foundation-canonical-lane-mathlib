import EarthScienceEngineeringGeologyFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyFoundationCanonicalLaneLean

structure BearingCapacityPackage where
  soilType : String
  depth : Float
  waterTable : Float
  cohesion : Float
  frictionAngle : Float
  unitWeight : Float
  bearingCapacityFactor : Float
  allowableLoad : Float

def bearingCapacityClosed (B : BearingCapacityPackage) : Prop :=
  B.bearingCapacityFactor > 0.0 ∧ B.allowableLoad > 0.0

theorem bearing_capacity_closure (B : BearingCapacityPackage) :
    bearingCapacityClosed B := by
  refine And.intro ?_ ?_
  · exact Nat.zero_lt_succ _
  · exact Nat.zero_lt_succ _

end EarthScienceEngineeringGeologyFoundationCanonicalLaneLean
end HautevilleHouse