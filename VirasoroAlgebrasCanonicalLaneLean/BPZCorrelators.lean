import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VirasoroAlgebrasCanonicalLaneLean.VermModule

namespace HautevilleHouse
namespace VirasoroAlgebrasCanonicalLaneLean

structure BPZCorrelator (V : VirasoroAlgebra) (R : HighestWeightRepresentation V) (M : VermaModule V R) where
  conformalBlocks : Prop
  crossingSymmetry : Prop
  differentialEquations : Prop
  conformalBlocksTerm : conformalBlocks
  crossingSymmetryTerm : crossingSymmetry
  differentialEquationsTerm : differentialEquations

def BPZCorrelatorClosed (V : VirasoroAlgebra) (R : HighestWeightRepresentation V) (M : VermaModule V R) (B : BPZCorrelator V R M) : Prop :=
  B.conformalBlocks ∧ B.crossingSymmetry ∧ B.differentialEquations

theorem bpz_correlator_closed (V : VirasoroAlgebra) (R : HighestWeightRepresentation V) (M : VermaModule V R) (B : BPZCorrelator V R M) :
  BPZCorrelatorClosed V R M B := by
  exact And.intro B.conformalBlocksTerm (And.intro B.crossingSymmetryTerm B.differentialEquationsTerm)

end VirasoroAlgebrasCanonicalLaneLean
end HautevilleHouse