import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

def gateClosed (A : AdmissibleClass) : Prop :=
  A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.endpointSatisfied

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.remainderRecorded

end MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean
end HautevilleHouse