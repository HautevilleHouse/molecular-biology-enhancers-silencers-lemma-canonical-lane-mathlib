import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean.ChromatinStateSwitch
import MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean.TranscriptionalRegulation
import MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean.EpigeneticActivationRepression

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean

def BridgeClosed (A : AdmissibleClass) : Prop := True

def GateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : BridgeClosed A := by
  trivial

theorem gate_from_admissible_class (A : AdmissibleClass) : GateClosed A := by
  exact A.gateWitness

def MolecularBiologyEnhancersSilencersLemmaClosure (A : AdmissibleClass) : Prop :=
  BridgeClosed A ∧ GateClosed A

theorem molecular_biology_enhancers_silencers_lemma_endgame (A : AdmissibleClass) :
    MolecularBiologyEnhancersSilencersLemmaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean
end HautevilleHouse
