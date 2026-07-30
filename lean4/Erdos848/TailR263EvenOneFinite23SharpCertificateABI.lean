import Erdos848.TailR263EvenOneFinite23SharpChecker

namespace Erdos848

/-!
# Certificate ABI for the sharp first-block cutoff-23 enumeration

The mathematical consumer is parameterized only by the truth of the finite
`5^4` Boolean leaves.  A generated provider may prove these equalities by
kernel reduction, by a checked table, or by a future LRAT-style backend.
No interval theorem or semantic statement is admitted through this boundary.
-/

class E1Finite23SharpCertificate : Prop where
  fourLeaf :
    ∀ (p3 p7 p11 : E1FiniteRootPattern),
      p3 ≠ .allEqual →
      e1FiniteSharpFourLeafPasses p3 p7 p11 = true

theorem e1FiniteSharpFour_all
    [E1Finite23SharpCertificate]
    (p3 p7 p11 p13 p17 p19 p23 : E1FiniteRootPattern)
    (hp3 : p3 ≠ .allEqual) :
    e1FiniteSharpFourPaymentCrossInequality
      p3 p7 p11 p13 p17 p19 p23 :=
  e1FiniteSharpFourLeafPasses_sound
    (E1Finite23SharpCertificate.fourLeaf p3 p7 p11 hp3)
    p13 p17 p19 p23

#print axioms e1FiniteSharpFour_all

end Erdos848
