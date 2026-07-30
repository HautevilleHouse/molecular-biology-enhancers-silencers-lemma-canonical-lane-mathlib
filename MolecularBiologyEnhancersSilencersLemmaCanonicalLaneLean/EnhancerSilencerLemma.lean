import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean.GeneExpressionRegulation

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean

structure EnhancerSilencerLemmaPackage where
  enhancerDomination : Prop
  silencerModulation : Prop
  contextDependence : Prop
  combinatorialLogic : Prop

structure EnhancerSilencerLemmaEvidence (L : EnhancerSilencerLemmaPackage) where
  enhancerDominationClosed : L.enhancerDomination
  silencerModulationClosed : L.silencerModulation
  contextDependenceClosed : L.contextDependence
  combinatorialLogicClosed : L.combinatorialLogic

def EnhancerSilencerLemmaClosed (L : EnhancerSilencerLemmaPackage) : Prop :=
  L.enhancerDomination ∧ L.silencerModulation ∧ L.contextDependence ∧ L.combinatorialLogic

theorem enhancer_silencer_lemma_closed_from_evidence
    (L : EnhancerSilencerLemmaPackage) (E : EnhancerSilencerLemmaEvidence L) :
    EnhancerSilencerLemmaClosed L := by
  exact And.intro E.enhancerDominationClosed
    (And.intro E.silencerModulationClosed
      (And.intro E.contextDependenceClosed E.combinatorialLogicClosed))

end MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean
end HautevilleHouse
