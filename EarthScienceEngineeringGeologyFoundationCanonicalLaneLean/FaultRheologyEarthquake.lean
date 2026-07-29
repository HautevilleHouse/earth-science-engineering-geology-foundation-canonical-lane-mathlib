import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyFoundationCanonicalLaneLean

structure FaultRheologyEarthquakePackage where
  frictionLaw : Prop
  nucleationZone : Prop
  stressDrop : Prop
  recurrenceInterval : Prop
  magnitudeScaling : Prop

structure FaultRheologyEarthquakeEvidence (P : FaultRheologyEarthquakePackage) where
  frictionLawClosed : P.frictionLaw
  nucleationZoneClosed : P.nucleationZone
  stressDropClosed : P.stressDrop
  recurrenceIntervalClosed : P.recurrenceInterval
  magnitudeScalingClosed : P.magnitudeScaling

def FaultRheologyEarthquakeClosed (P : FaultRheologyEarthquakePackage) : Prop :=
  P.frictionLaw ∧ P.nucleationZone ∧ P.stressDrop ∧ P.recurrenceInterval ∧ P.magnitudeScaling

theorem fault_rheology_earthquake_closed_from_evidence (P : FaultRheologyEarthquakePackage) (E : FaultRheologyEarthquakeEvidence P) : FaultRheologyEarthquakeClosed P := by
  exact And.intro E.frictionLawClosed
    (And.intro E.nucleationZoneClosed
      (And.intro E.stressDropClosed
        (And.intro E.recurrenceIntervalClosed E.magnitudeScalingClosed)))

end EarthScienceEngineeringGeologyFoundationCanonicalLaneLean
end HautevilleHouse
