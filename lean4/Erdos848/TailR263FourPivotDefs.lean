import Erdos848.HallPartition
import Erdos848.TailHallSieveBridge

namespace Erdos848

/-!
# Lightweight definitions for the R263 four-pivot terminal

The exact finite triple payment is also used by later block-specific
certificates.  Keeping it separate from the full five-million terminal avoids
pulling the global mixed-support certificate graph into those arithmetic
modules.
-/

noncomputable def fiveMillionR263BaseFiniteTriplePayment
    (N : Nat) (B pivots : Finset Nat) (cutoff : Nat) : Rat := by
  classical
  exact (1 / 2 : Rat) *
    (∑ triple ∈ pivots.powersetCard 3,
      ((eventIntersection (hallBasePart N B)
        (finiteSquarePrimeEvent cutoff) triple).card : Rat))

end Erdos848
