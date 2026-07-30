import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean

structure EnhancerSilencerInteractionPackage where
  longRangeInteraction : Prop
  insulatorBoundary : Prop
  loopingFactor : Prop
  competitionForTarget : Prop

structure EnhancerSilencerInteractionEvidence (E : EnhancerSilencerInteractionPackage) where
  longRangeInteractionClosed : E.longRangeInteraction
  insulatorBoundaryClosed : E.insulatorBoundary
  loopingFactorClosed : E.loopingFactor
  competitionForTargetClosed : E.competitionForTarget

def EnhancerSilencerInteractionClosed (E : EnhancerSilencerInteractionPackage) : Prop :=
  E.longRangeInteraction ∧ E.insulatorBoundary ∧ E.loopingFactor ∧ E.competitionForTarget

theorem enhancer_silencer_interaction_closed_from_evidence
    (E : EnhancerSilencerInteractionPackage) (Ev : EnhancerSilencerInteractionEvidence E) :
    EnhancerSilencerInteractionClosed E := by
  exact And.intro Ev.longRangeInteractionClosed
    (And.intro Ev.insulatorBoundaryClosed
      (And.intro Ev.loopingFactorClosed Ev.competitionForTargetClosed))

end MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean
end HautevilleHouse
