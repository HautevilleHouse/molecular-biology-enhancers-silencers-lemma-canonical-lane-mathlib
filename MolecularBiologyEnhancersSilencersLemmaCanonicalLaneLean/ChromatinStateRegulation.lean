import MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean

structure ChromatinState (A : AdmissibleClass) where
  histoneModifications : Prop
  dnaMethylation : Prop
  nucleosomePositioning : Prop
  localAccessibility : Prop

def ChromatinAccessible (C : ChromatinState A) : Prop :=
  C.histoneModifications ∧ C.dnaMethylation ∧ C.nucleosomePositioning ∧ C.localAccessibility

structure ChromatinEvidence (C : ChromatinState A) where
  histoneModificationsClosed : C.histoneModifications
  dnaMethylationClosed : C.dnaMethylation
  nucleosomePositioningClosed : C.nucleosomePositioning
  localAccessibilityClosed : C.localAccessibility

theorem chromatin_accessible_from_evidence (C : ChromatinState A) (E : ChromatinEvidence C) :
    ChromatinAccessible C := by
  exact And.intro E.histoneModificationsClosed (And.intro E.dnaMethylationClosed (And.intro E.nucleosomePositioningClosed E.localAccessibilityClosed))

end MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean
end HautevilleHouse