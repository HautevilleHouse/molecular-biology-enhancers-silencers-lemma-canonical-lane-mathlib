import MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean.EnhancerSilencerDynamics

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean

structure GeneRegulationNetworkPackage (D : EnhancerSilencerDynamicsPackage) where
  genePromoterState : Prop
  transcriptionInitiation : Prop
  rnapRecruitment : Prop
  elongationProgression : Prop
  matureMRNAProduction : Prop
  epigeneticModifications : Prop
  feedbackSensitivity : Prop

def GeneRegulationNetworkClosed {D : EnhancerSilencerDynamicsPackage}
    (G : GeneRegulationNetworkPackage D) : Prop :=
  G.genePromoterState ∧ G.transcriptionInitiation ∧
  G.rnapRecruitment ∧ G.elongationProgression ∧
  G.matureMRNAProduction ∧ G.epigeneticModifications ∧
  G.feedbackSensitivity

structure GeneRegulationNetworkEvidence {D : EnhancerSilencerDynamicsPackage}
    (G : GeneRegulationNetworkPackage D) where
  genePromoterStateClosed : G.genePromoterState
  transcriptionInitiationClosed : G.transcriptionInitiation
  rnapRecruitmentClosed : G.rnapRecruitment
  elongationProgressionClosed : G.elongationProgression
  matureMRNAProductionClosed : G.matureMRNAProduction
  epigeneticModificationsClosed : G.epigeneticModifications
  feedbackSensitivityClosed : G.feedbackSensitivity

theorem gene_regulation_network_closed_from_evidence
    {D : EnhancerSilencerDynamicsPackage} (G : GeneRegulationNetworkPackage D)
    (E : GeneRegulationNetworkEvidence G) : GeneRegulationNetworkClosed G := by
  exact And.intro E.genePromoterStateClosed
    (And.intro E.transcriptionInitiationClosed
      (And.intro E.rnapRecruitmentClosed
        (And.intro E.elongationProgressionClosed
          (And.intro E.matureMRNAProductionClosed
            (And.intro E.epigeneticModificationsClosed E.feedbackSensitivityClosed)))))

end MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean
end HautevilleHouse
