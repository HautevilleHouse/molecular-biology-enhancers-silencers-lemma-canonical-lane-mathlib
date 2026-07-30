import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean

structure ChromatinLooping where
  anchorRegion1 : String
  anchorRegion2 : String
  loopingFactor : Float
  loopFormed : Prop
  factorPositive : loopingFactor > 0.0

structure ChromatinLoopingEvidence (C : ChromatinLooping) where
  loopFormedClosed : C.loopFormed
  factorPositiveClosed : C.factorPositive

def ChromatinLoopingClosed (C : ChromatinLooping) : Prop :=
  C.loopFormed ∧ C.factorPositive

theorem chromatin_looping_closed_from_evidence (C : ChromatinLooping) (Ev : ChromatinLoopingEvidence C) :
    ChromatinLoopingClosed C := by
  exact And.intro Ev.loopFormedClosed Ev.factorPositiveClosed

end MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean
end HautevilleHouse