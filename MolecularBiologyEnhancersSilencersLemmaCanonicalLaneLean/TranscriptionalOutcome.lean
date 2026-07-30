import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean

structure TranscriptionalOutcome where
  geneName : String
  enhancerActivity : Float
  silencerActivity : Float
  netExpression : Float
  outcomeDetermined : Prop
  netExpressionCorrect : netExpression = enhancerActivity - silencerActivity

structure TranscriptionalOutcomeEvidence (O : TranscriptionalOutcome) where
  outcomeDeterminedClosed : O.outcomeDetermined
  netExpressionCorrectClosed : O.netExpressionCorrect

def TranscriptionalOutcomeClosed (O : TranscriptionalOutcome) : Prop :=
  O.outcomeDetermined ∧ O.netExpressionCorrect

theorem transcriptional_outcome_closed_from_evidence (O : TranscriptionalOutcome) (Ev : TranscriptionalOutcomeEvidence O) :
    TranscriptionalOutcomeClosed O := by
  exact And.intro Ev.outcomeDeterminedClosed Ev.netExpressionCorrectClosed

end MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean
end HautevilleHouse