import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean

structure ChromatinStateSwitchPackage where
  openState : Prop
  closedState : Prop
  enhancerPromotesOpen : Prop
  silencerPromotesClosed : Prop
  switchIsReversible : Prop

structure ChromatinStateSwitchEvidence (C : ChromatinStateSwitchPackage) where
  openStateClosed : C.openState
  closedStateClosed : C.closedState
  enhancerPromotesOpenClosed : C.enhancerPromotesOpen
  silencerPromotesClosedClosed : C.silencerPromotesClosed
  switchIsReversibleClosed : C.switchIsReversible

def ChromatinStateSwitchClosed (C : ChromatinStateSwitchPackage) : Prop :=
  C.openState ∧ C.closedState ∧ C.enhancerPromotesOpen ∧ C.silencerPromotesClosed ∧ C.switchIsReversible

theorem chromatin_state_switch_closed_from_evidence
    (C : ChromatinStateSwitchPackage) (Ev : ChromatinStateSwitchEvidence C) :
    ChromatinStateSwitchClosed C := by
  exact And.intro Ev.openStateClosed
    (And.intro Ev.closedStateClosed
      (And.intro Ev.enhancerPromotesOpenClosed
        (And.intro Ev.silencerPromotesClosedClosed Ev.switchIsReversibleClosed)))

end MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean
end HautevilleHouse
