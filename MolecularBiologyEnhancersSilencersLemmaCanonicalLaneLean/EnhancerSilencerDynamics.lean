import MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean

structure EnhancerSilencerDynamicsPackage where
  enhancerBindingAffinity : Prop
  silencerBindingAffinity : Prop
  chromatinStateModulation : Prop
  transcriptionFactorRecruitment : Prop
  positiveFeedbackLoop : Prop
  negativeFeedbackLoop : Prop
  enhancerSilencerInteraction : Prop
  dynamicEquilibrium : Prop

structure EnhancerSilencerDynamicsEvidence (D : EnhancerSilencerDynamicsPackage) where
  enhancerBindingAffinityClosed : D.enhancerBindingAffinity
  silencerBindingAffinityClosed : D.silencerBindingAffinity
  chromatinStateModulationClosed : D.chromatinStateModulation
  transcriptionFactorRecruitmentClosed : D.transcriptionFactorRecruitment
  positiveFeedbackLoopClosed : D.positiveFeedbackLoop
  negativeFeedbackLoopClosed : D.negativeFeedbackLoop
  enhancerSilencerInteractionClosed : D.enhancerSilencerInteraction
  dynamicEquilibriumClosed : D.dynamicEquilibrium

def EnhancerSilencerDynamicsClosed (D : EnhancerSilencerDynamicsPackage) : Prop :=
  D.enhancerBindingAffinity ∧ D.silencerBindingAffinity ∧
  D.chromatinStateModulation ∧ D.transcriptionFactorRecruitment ∧
  D.positiveFeedbackLoop ∧ D.negativeFeedbackLoop ∧
  D.enhancerSilencerInteraction ∧ D.dynamicEquilibrium

theorem enhancer_silencer_dynamics_closed_from_evidence
    (D : EnhancerSilencerDynamicsPackage) (E : EnhancerSilencerDynamicsEvidence D) :
    EnhancerSilencerDynamicsClosed D := by
  exact And.intro E.enhancerBindingAffinityClosed
    (And.intro E.silencerBindingAffinityClosed
      (And.intro E.chromatinStateModulationClosed
        (And.intro E.transcriptionFactorRecruitmentClosed
          (And.intro E.positiveFeedbackLoopClosed
            (And.intro E.negativeFeedbackLoopClosed
              (And.intro E.enhancerSilencerInteractionClosed E.dynamicEquilibriumClosed))))))

end MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean
end HautevilleHouse
