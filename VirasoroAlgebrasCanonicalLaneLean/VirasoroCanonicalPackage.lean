import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VirasoroAlgebrasCanonicalLaneLean.VirasoroAlgebraDefinition
import HautevilleHouse.VirasoroAlgebrasCanonicalLaneLean.VirasoroRepresentation
import HautevilleHouse.VirasoroAlgebrasCanonicalLaneLean.VermaModule
import HautevilleHouse.VirasoroAlgebrasCanonicalLaneLean.VirasoroSingularVectors
import HautevilleHouse.VirasoroAlgebrasCanonicalLaneLean.VirasoroMinimalModels

namespace HautevilleHouse
namespace VirasoroAlgebrasCanonicalLaneLean

structure VirasoroCanonicalPackage where
  algebra : VirasoroAlgebra
  representation : VirasoroRepresentation algebra
  verma : VermaModule algebra
  singular : SingularVector algebra verma
  minimal : MinimalModel algebra

def VirasoroCanonicalPackageClosed (V : VirasoroCanonicalPackage) : Prop :=
  VirasoroAlgebraClosed V.algebra ∧
  VirasoroRepresentationClosed V.algebra V.representation ∧
  VermaModuleClosed V.algebra V.verma ∧
  SingularVectorClosed V.algebra V.verma V.singular ∧
  MinimalModelClosed V.algebra V.minimal

theorem virasoro_canonical_package_closed (V : VirasoroCanonicalPackage) : VirasoroCanonicalPackageClosed V := by
  exact And.intro (virasoro_algebra_defined V.algebra)
    (And.intro (virasoro_representation_defined V.algebra V.representation)
      (And.intro (verma_module_defined V.algebra V.verma)
        (And.intro (singular_vector_defined V.algebra V.verma V.singular)
          (minimal_model_defined V.algebra V.minimal))))

end VirasoroAlgebrasCanonicalLaneLean
end HautevilleHouse