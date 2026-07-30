import MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean.GeneRegulationNetwork

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean

structure EpigeneticModulationPackage {D : EnhancerSilencerDynamicsPackage}
    (G : GeneRegulationNetworkPackage D) where
  dnaMethylationState : Prop
  histoneAcetylationPattern : Prop
  chromatinAccessibility : Prop
  nucleosomePositioning : Prop
  histoneVariantIncorporation : Prop
  longRangeLooping : Prop

def EpigeneticModulationClosed {D : EnhancerSilencerDynamicsPackage}
    {G : GeneRegulationNetworkPackage D} (E : EpigeneticModulationPackage G) : Prop :=
  E.dnaMethylationState ∧ E.histoneAcetylationPattern ∧
  E.chromatinAccessibility ∧ E.nucleosomePositioning ∧
  E.histoneVariantIncorporation ∧ E.longRangeLooping

structure EpigeneticModulationEvidence {D : EnhancerSilencerDynamicsPackage}
    {G : GeneRegulationNetworkPackage D} (E : EpigeneticModulationPackage G) where
  dnaMethylationStateClosed : E.dnaMethylationState
  histoneAcetylationPatternClosed : E.histoneAcetylationPattern
  chromatinAccessibilityClosed : E.chromatinAccessibility
  nucleosomePositioningClosed : E.nucleosomePositioning
  histoneVariantIncorporationClosed : E.histoneVariantIncorporation
  longRangeLoopingClosed : E.longRangeLooping

theorem epigenetic_modulation_closed_from_evidence
    {D : EnhancerSilencerDynamicsPackage} {G : GeneRegulationNetworkPackage D}
    (E : EpigeneticModulationPackage G) (Ev : EpigeneticModulationEvidence E) :
    EpigeneticModulationClosed E := by
  exact And.intro Ev.dnaMethylationStateClosed
    (And.intro Ev.histoneAcetylationPatternClosed
      (And.intro Ev.chromatinAccessibilityClosed
        (And.intro Ev.nucleosomePositioningClosed
          (And.intro Ev.histoneVariantIncorporationClosed Ev.longRangeLoopingClosed))))

end MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean
end HautevilleHouse
