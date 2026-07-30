import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean

structure TranscriptionalRegulationPackage where
  gene : Type
  transcriptionFactor : Type
  enhancerBound : Prop
  silencerBound : Prop
  rnaPolymeraseRecruited : Prop
  transcriptionInitiated : Prop
  transcriptionRepressed : Prop

structure TranscriptionalRegulationEvidence (T : TranscriptionalRegulationPackage) where
  enhancerBoundClosed : T.enhancerBound
  silencerBoundClosed : T.silencerBound
  transcriptionInitiatedClosed : T.transcriptionInitiated
  transcriptionRepressedClosed : T.transcriptionRepressed

def TranscriptionalRegulationClosed (T : TranscriptionalRegulationPackage) : Prop :=
  T.enhancerBound ∧ T.silencerBound ∧ T.transcriptionInitiated ∧ T.transcriptionRepressed

theorem transcriptional_regulation_closed_from_evidence
    (T : TranscriptionalRegulationPackage)
    (Ev : TranscriptionalRegulationEvidence T) : TranscriptionalRegulationClosed T := by
  exact And.intro Ev.enhancerBoundClosed
    (And.intro Ev.silencerBoundClosed
      (And.intro Ev.transcriptionInitiatedClosed Ev.transcriptionRepressedClosed))

end MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean
end HautevilleHouse
