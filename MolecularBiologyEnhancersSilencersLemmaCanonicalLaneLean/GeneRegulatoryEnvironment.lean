import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean

structure GeneRegulatoryEnvironment where
  cellType : String
  transcriptionFactors : List String
  chromatinState : String
  enhancerRegions : List String
  silencerRegions : List String
  targetGenes : List String

def geneRegulatoryEnvironmentClosed (E : GeneRegulatoryEnvironment) : Prop :=
  E.enhancerRegions.length > 0 ∧ E.silencerRegions.length > 0 ∧ E.targetGenes.length > 0

end MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean
end HautevilleHouse
