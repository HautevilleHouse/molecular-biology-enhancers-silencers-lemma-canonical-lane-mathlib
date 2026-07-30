import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean

structure ChromatinAccessibilityPackage where
  dnaiMethylationStatus : Prop
  histoneModifications : Prop
  nucleosomeOccupancy : Prop
  atacSeqSignal : Prop

structure ChromatinAccessibilityEvidence (C : ChromatinAccessibilityPackage) where
  dnaiMethylationStatusClosed : C.dnaiMethylationStatus
  histoneModificationsClosed : C.histoneModifications
  nucleosomeOccupancyClosed : C.nucleosomeOccupancy
  atacSeqSignalClosed : C.atacSeqSignal

def ChromatinAccessibilityClosed (C : ChromatinAccessibilityPackage) : Prop :=
  C.dnaiMethylationStatus ∧ C.histoneModifications ∧ C.nucleosomeOccupancy ∧ C.atacSeqSignal

theorem chromatin_accessibility_closed_from_evidence
    (C : ChromatinAccessibilityPackage) (E : ChromatinAccessibilityEvidence C) :
    ChromatinAccessibilityClosed C := by
  exact And.intro E.dnaiMethylationStatusClosed
    (And.intro E.histoneModificationsClosed
      (And.intro E.nucleosomeOccupancyClosed E.atacSeqSignalClosed))

end MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean
end HautevilleHouse
