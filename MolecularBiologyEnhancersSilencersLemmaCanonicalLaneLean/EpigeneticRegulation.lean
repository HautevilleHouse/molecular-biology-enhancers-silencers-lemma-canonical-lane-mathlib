import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean

structure EpigeneticRegulationPackage where
  dnaMethylation : Type u
  histoneAcetylation : Type v
  histoneMethylation : Type w
  enhancerMark : dnaMethylation -> Prop
  silencerMark : histoneMethylation -> Prop
  epigeneticMemory : Prop
  markMaintenance : Prop

structure EpigeneticRegulationEvidence (E : EpigeneticRegulationPackage) where
  enhancerMarkClosed : ∀ (m : E.dnaMethylation), E.enhancerMark m
  silencerMarkClosed : ∀ (m : E.histoneMethylation), E.silencerMark m
  epigeneticMemoryClosed : E.epigeneticMemory
  markMaintenanceClosed : E.markMaintenance

def EpigeneticRegulationClosed (E : EpigeneticRegulationPackage) : Prop :=
  (∀ (m : E.dnaMethylation), E.enhancerMark m) ∧ (∀ (m : E.histoneMethylation), E.silencerMark m) ∧
  E.epigeneticMemory ∧ E.markMaintenance

theorem epigenetic_regulation_closed_from_evidence (E : EpigeneticRegulationPackage)
    (Ev : EpigeneticRegulationEvidence E) : EpigeneticRegulationClosed E := by
  exact And.intro Ev.enhancerMarkClosed (And.intro Ev.silencerMarkClosed
    (And.intro Ev.epigeneticMemoryClosed Ev.markMaintenanceClosed))

end MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean
end HautevilleHouse