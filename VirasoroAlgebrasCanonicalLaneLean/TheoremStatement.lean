import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VirasoroAlgebrasCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  virasoroConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "virasoro-algebras-canonical-lane",
  theoremName := "Virasoro Algebras Canonical Lane",
  theoremObject := "Central extensions of the Witt algebra with admissible central charge",
  classicalBoundary := "Full classification of Virasoro modules remains classical.",
  virasoroConstrainedStatement := "bridgeClosed and gateClosed hold for admissible Virasoro objects",
  certificateLane := "virasoro_constrained",
  carriedRemainder := "Unrestricted classification of Virasoro modules is carried."
}

end VirasoroAlgebrasCanonicalLaneLean
end HautevilleHouse