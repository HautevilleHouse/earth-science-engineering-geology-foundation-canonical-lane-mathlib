import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyFoundationCanonicalLaneLean

structure TunnelStabilityPackage where
  initialStressField : Prop
  rockMassQuality : Prop
  supportSystem : Prop
  convergencePattern : Prop
  plasticZoneExtent : Prop

structure TunnelStabilityEvidence (T : TunnelStabilityPackage) where
  initialStressFieldClosed : T.initialStressField
  rockMassQualityClosed : T.rockMassQuality
  supportSystemClosed : T.supportSystem
  convergencePatternClosed : T.convergencePattern
  plasticZoneExtentClosed : T.plasticZoneExtent

def TunnelStabilityClosed (T : TunnelStabilityPackage) : Prop :=
  T.initialStressField ∧ T.rockMassQuality ∧ T.supportSystem ∧ T.convergencePattern ∧ T.plasticZoneExtent

theorem tunnel_stability_closed_from_evidence (T : TunnelStabilityPackage)
    (E : TunnelStabilityEvidence T) : TunnelStabilityClosed T := by
  exact And.intro E.initialStressFieldClosed
    (And.intro E.rockMassQualityClosed
      (And.intro E.supportSystemClosed
        (And.intro E.convergencePatternClosed E.plasticZoneExtentClosed)))

end EarthScienceEngineeringGeologyFoundationCanonicalLaneLean
end HautevilleHouse