import MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean.EnhancerSilencerLemma

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean

structure MolecularBiologySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MolecularBiologyAdmittedObject where
  space : MolecularBiologySpace
  enhancerBindingAffinity : Prop
  silencerBindingAffinity : Prop
  chromatinState : Prop
  geneExpressionLevel : Prop
  conclusion : geneExpressionLevel

def MolecularBiologyWitnessClosed (O : MolecularBiologyAdmittedObject) : Prop :=
  O.geneExpressionLevel

end MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean
end HautevilleHouse
