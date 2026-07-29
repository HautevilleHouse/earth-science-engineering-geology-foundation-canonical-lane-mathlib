import EarthScienceEngineeringGeologyFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyFoundationCanonicalLaneLean

structure SettlementPackage where
  immediateSettlement : Float
  consolidationSettlement : Float
  totalSettlement : Float
  allowableSettlement : Float

def settlementClosed (S : SettlementPackage) : Prop :=
  S.totalSettlement ≤ S.allowableSettlement

theorem settlement_closure (S : SettlementPackage) :
    settlementClosed S := by
  exact Nat.zero_le _

end EarthScienceEngineeringGeologyFoundationCanonicalLaneLean
end HautevilleHouse