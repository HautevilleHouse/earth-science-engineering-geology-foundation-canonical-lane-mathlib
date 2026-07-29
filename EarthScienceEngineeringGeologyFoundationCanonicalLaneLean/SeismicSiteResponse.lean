import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyFoundationCanonicalLaneLean

structure SoilColumn where
  layerThicknessM : List Float
  shearWaveVelocityMs : List Float
  densityKgm3 : List Float

structure SeismicResponsePackage where
  soilColumn : SoilColumn
  inputMotionPGA : Float
  amplificationFactor : Float
  responseSpectralAcceleration : Float
  hazardCheck : amplificationFactor > 0.0

structure SeismicResponseEvidence (S : SeismicResponsePackage) where
  soilColumnClosed : S.soilColumn.layerThicknessM.length > 0
  amplificationFactorClosed : S.amplificationFactor > 0.0
  hazardCheckClosed : S.hazardCheck

def SeismicResponseClosed (S : SeismicResponsePackage) : Prop :=
  S.soilColumn.layerThicknessM.length > 0 ∧ S.amplificationFactor > 0.0 ∧ S.hazardCheck

theorem seismic_response_closed_from_evidence (S : SeismicResponsePackage) (E : SeismicResponseEvidence S) :
    SeismicResponseClosed S := by
  exact And.intro E.soilColumnClosed (And.intro E.amplificationFactorClosed E.hazardCheckClosed)

end EarthScienceEngineeringGeologyFoundationCanonicalLaneLean
end HautevilleHouse
