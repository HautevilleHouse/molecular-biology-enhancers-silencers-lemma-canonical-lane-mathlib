import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean

structure EnhancerSilencerBinding where
  enhancerElement : String
  silencerElement : String
  transcriptionFactor : String
  bindingAffinity : Float
  competitionResolved : Prop
  bindingAffinityPositive : bindingAffinity > 0.0

structure EnhancerSilencerBindingEvidence (E : EnhancerSilencerBinding) where
  bindingAffinityClosed : E.bindingAffinityPositive
  competitionResolvedClosed : E.competitionResolved

def EnhancerSilencerBindingClosed (E : EnhancerSilencerBinding) : Prop :=
  E.bindingAffinityPositive ∧ E.competitionResolved

theorem enhancer_silencer_binding_closed_from_evidence (E : EnhancerSilencerBinding) (Ev : EnhancerSilencerBindingEvidence E) :
    EnhancerSilencerBindingClosed E := by
  exact And.intro Ev.bindingAffinityClosed Ev.competitionResolvedClosed

end MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean
end HautevilleHouse