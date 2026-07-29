import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyFoundationCanonicalLaneLean

structure GeotechnicalParameterizationPackage where
  soilType : String
  density : Float
  cohesion : Float
  frictionAngle : Float
  bearingCapacity : Prop

structure GeotechnicalParameterizationEvidence (G : GeotechnicalParameterizationPackage) where
  densityClosed : G.density > 0
  cohesionClosed : G.cohesion ≥ 0
  frictionAngleClosed : G.frictionAngle ≥ 0
  bearingCapacityClosed : G.bearingCapacity

def GeotechnicalParameterizationClosed (G : GeotechnicalParameterizationPackage) : Prop :=
  G.density > 0 ∧ G.cohesion ≥ 0 ∧ G.frictionAngle ≥ 0 ∧ G.bearingCapacity

theorem geotechnical_parameterization_closed_from_evidence
    (G : GeotechnicalParameterizationPackage) (E : GeotechnicalParameterizationEvidence G) :
    GeotechnicalParameterizationClosed G := by
  exact And.intro E.densityClosed (And.intro E.cohesionClosed (And.intro E.frictionAngleClosed E.bearingCapacityClosed))

end EarthScienceEngineeringGeologyFoundationCanonicalLaneLean
end HautevilleHouse