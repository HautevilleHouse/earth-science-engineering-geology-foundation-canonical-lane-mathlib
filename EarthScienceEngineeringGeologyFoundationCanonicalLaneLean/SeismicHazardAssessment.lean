import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyFoundationCanonicalLaneLean

structure SeismicHazardAssessmentPackage where
  siteLocation : String
  peakGroundAcceleration : Float
  probabilisticSeismicMap : Prop
  spectralAcceleration : Float
  hazardCurve : Prop

structure SeismicHazardAssessmentEvidence (S : SeismicHazardAssessmentPackage) where
  pgaClosed : S.peakGroundAcceleration > 0
  probabilisticMapClosed : S.probabilisticSeismicMap
  spectralAccelerationClosed : S.spectralAcceleration > 0
  hazardCurveClosed : S.hazardCurve

def SeismicHazardAssessmentClosed (S : SeismicHazardAssessmentPackage) : Prop :=
  S.peakGroundAcceleration > 0 ∧ S.probabilisticSeismicMap ∧ S.spectralAcceleration > 0 ∧ S.hazardCurve

theorem seismic_hazard_assessment_closed_from_evidence
    (S : SeismicHazardAssessmentPackage) (E : SeismicHazardAssessmentEvidence S) :
    SeismicHazardAssessmentClosed S := by
  exact And.intro E.pgaClosed (And.intro E.probabilisticMapClosed (And.intro E.spectralAccelerationClosed E.hazardCurveClosed))

end EarthScienceEngineeringGeologyFoundationCanonicalLaneLean
end HautevilleHouse