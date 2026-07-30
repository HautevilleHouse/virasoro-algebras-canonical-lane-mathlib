import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VirasoroAlgebrasCanonicalLaneLean

structure VirasoroAlgebra where
  underlyingSpace : Type u
  basis : List (underlyingSpace)
  commutationRelations : Prop
  centralCharge : ℤ
  basisAlgebraClosed : commutationRelations

def virasoroBasisClosed (V : VirasoroAlgebra) : Prop :=
  V.commutationRelations

theorem virasoro_basis_closed_from_algebra (V : VirasoroAlgebra) :
  virasoroBasisClosed V := by
  exact V.basisAlgebraClosed

end VirasoroAlgebrasCanonicalLaneLean
end HautevilleHouse