import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean

structure TranscriptionFactorBindingPackage where
  bindingAffinity : Prop
  motifPresence : Prop
  cooperativity : Prop
  competition : Prop

structure TranscriptionFactorBindingEvidence (T : TranscriptionFactorBindingPackage) where
  bindingAffinityClosed : T.bindingAffinity
  motifPresenceClosed : T.motifPresence
  cooperativityClosed : T.cooperativity
  competitionClosed : T.competition

def TranscriptionFactorBindingClosed (T : TranscriptionFactorBindingPackage) : Prop :=
  T.bindingAffinity ∧ T.motifPresence ∧ T.cooperativity ∧ T.competition

theorem transcription_factor_binding_closed_from_evidence
    (T : TranscriptionFactorBindingPackage) (E : TranscriptionFactorBindingEvidence T) :
    TranscriptionFactorBindingClosed T := by
  exact And.intro E.bindingAffinityClosed
    (And.intro E.motifPresenceClosed
      (And.intro E.cooperativityClosed E.competitionClosed))

end MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean
end HautevilleHouse
