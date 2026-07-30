import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean

structure EnhancerSilencerPackage where
  enhancerRegion : Type
  silencerRegion : Type
  chromatinState : Type
  activationSignal : Prop
  repressionSignal : Prop
  enhancerActive : Prop
  silencerActive : Prop

structure EnhancerSilencerEvidence (E : EnhancerSilencerPackage) where
  enhancerActiveClosed : E.enhancerActive
  silencerActiveClosed : E.silencerActive

def EnhancerSilencerClosed (E : EnhancerSilencerPackage) : Prop :=
  E.enhancerActive ∧ E.silencerActive

theorem enhancer_silencer_closed_from_evidence (E : EnhancerSilencerPackage)
    (Ev : EnhancerSilencerEvidence E) : EnhancerSilencerClosed E := by
  exact And.intro Ev.enhancerActiveClosed Ev.silencerActiveClosed

end MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean
end HautevilleHouse
