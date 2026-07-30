import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean

structure GeneExpressionRegulationPackage where
  activationThreshold : Prop
  repressionThreshold : Prop
  signalIntegration : Prop
  feedbackLoop : Prop

structure GeneExpressionRegulationEvidence (G : GeneExpressionRegulationPackage) where
  activationThresholdClosed : G.activationThreshold
  repressionThresholdClosed : G.repressionThreshold
  signalIntegrationClosed : G.signalIntegration
  feedbackLoopClosed : G.feedbackLoop

def GeneExpressionRegulationClosed (G : GeneExpressionRegulationPackage) : Prop :=
  G.activationThreshold ∧ G.repressionThreshold ∧ G.signalIntegration ∧ G.feedbackLoop

theorem gene_expression_regulation_closed_from_evidence
    (G : GeneExpressionRegulationPackage) (E : GeneExpressionRegulationEvidence G) :
    GeneExpressionRegulationClosed G := by
  exact And.intro E.activationThresholdClosed
    (And.intro E.repressionThresholdClosed
      (And.intro E.signalIntegrationClosed E.feedbackLoopClosed))

end MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean
end HautevilleHouse
