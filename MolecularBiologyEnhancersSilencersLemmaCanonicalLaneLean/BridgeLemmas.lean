import MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MolecularBiologyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyEnhancersSilencersLemmaCanonicalLaneLean
end HautevilleHouse
