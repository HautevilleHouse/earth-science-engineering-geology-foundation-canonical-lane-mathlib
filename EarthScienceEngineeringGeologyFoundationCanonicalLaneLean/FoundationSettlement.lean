import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyFoundationCanonicalLaneLean

structure FoundationSettlementPackage where
  soilComposition : Prop
  footingGeometry : Prop
  loadDistribution : Prop
  consolidationTheory : Prop
  totalSettlement : Prop

structure FoundationSettlementEvidence (F : FoundationSettlementPackage) where
  soilCompositionClosed : F.soilComposition
  footingGeometryClosed : F.footingGeometry
  loadDistributionClosed : F.loadDistribution
  consolidationTheoryClosed : F.consolidationTheory
  totalSettlementClosed : F.totalSettlement

def FoundationSettlementClosed (F : FoundationSettlementPackage) : Prop :=
  F.soilComposition ∧ F.footingGeometry ∧ F.loadDistribution ∧ F.consolidationTheory ∧ F.totalSettlement

theorem foundation_settlement_closed_from_evidence (F : FoundationSettlementPackage)
    (E : FoundationSettlementEvidence F) : FoundationSettlementClosed F := by
  exact And.intro E.soilCompositionClosed
    (And.intro E.footingGeometryClosed
      (And.intro E.loadDistributionClosed
        (And.intro E.consolidationTheoryClosed E.totalSettlementClosed)))

end EarthScienceEngineeringGeologyFoundationCanonicalLaneLean
end HautevilleHouse