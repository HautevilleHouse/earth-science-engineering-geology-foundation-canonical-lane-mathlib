import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyFoundationCanonicalLaneLean

structure SoilConsolidationSettlementPackage where
  compressionIndex : Prop
  preconsolidationPressure : Prop
  coefficientOfConsolidation : Prop
  timeFactor : Prop
  totalSettlement : Prop
  secondaryCompressionIndex : Prop

structure SoilConsolidationSettlementEvidence (P : SoilConsolidationSettlementPackage) where
  compressionIndexClosed : P.compressionIndex
  preconsolidationPressureClosed : P.preconsolidationPressure
  coefficientOfConsolidationClosed : P.coefficientOfConsolidation
  timeFactorClosed : P.timeFactor
  totalSettlementClosed : P.totalSettlement
  secondaryCompressionIndexClosed : P.secondaryCompressionIndex

def SoilConsolidationSettlementClosed (P : SoilConsolidationSettlementPackage) : Prop :=
  P.compressionIndex ∧ P.preconsolidationPressure ∧ P.coefficientOfConsolidation ∧ P.timeFactor ∧ P.totalSettlement ∧ P.secondaryCompressionIndex

theorem soil_consolidation_settlement_closed_from_evidence (P : SoilConsolidationSettlementPackage) (E : SoilConsolidationSettlementEvidence P) : SoilConsolidationSettlementClosed P := by
  exact And.intro E.compressionIndexClosed
    (And.intro E.preconsolidationPressureClosed
      (And.intro E.coefficientOfConsolidationClosed
        (And.intro E.timeFactorClosed
          (And.intro E.totalSettlementClosed E.secondaryCompressionIndexClosed))))

end EarthScienceEngineeringGeologyFoundationCanonicalLaneLean
end HautevilleHouse
