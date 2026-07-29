import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyFoundationCanonicalLaneLean

structure SlopeStabilityAnalysisPackage where
  factorOfSafety : Prop
  slipSurfaceGeometry : Prop
  shearStrengthParameters : Prop
  poreWaterPressureEffect : Prop
  seismicLoadingFactor : Prop

structure SlopeStabilityAnalysisEvidence (P : SlopeStabilityAnalysisPackage) where
  factorOfSafetyClosed : P.factorOfSafety
  slipSurfaceGeometryClosed : P.slipSurfaceGeometry
  shearStrengthParametersClosed : P.shearStrengthParameters
  poreWaterPressureEffectClosed : P.poreWaterPressureEffect
  seismicLoadingFactorClosed : P.seismicLoadingFactor

def SlopeStabilityAnalysisClosed (P : SlopeStabilityAnalysisPackage) : Prop :=
  P.factorOfSafety ∧ P.slipSurfaceGeometry ∧ P.shearStrengthParameters ∧ P.poreWaterPressureEffect ∧ P.seismicLoadingFactor

theorem slope_stability_analysis_closed_from_evidence (P : SlopeStabilityAnalysisPackage) (E : SlopeStabilityAnalysisEvidence P) : SlopeStabilityAnalysisClosed P := by
  exact And.intro E.factorOfSafetyClosed
    (And.intro E.slipSurfaceGeometryClosed
      (And.intro E.shearStrengthParametersClosed
        (And.intro E.poreWaterPressureEffectClosed E.seismicLoadingFactorClosed)))

end EarthScienceEngineeringGeologyFoundationCanonicalLaneLean
end HautevilleHouse
