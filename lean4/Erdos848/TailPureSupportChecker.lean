import Erdos848.TailSupportWordBridge

namespace Erdos848

/-!
# Prefix QR-mask checker for the uniform pure matching endpoint

The existing support certificates store 2,401 QR bits in 64-bit words.  The
five-million pure matching calculation only consumes the first 676 quotient
values.  The checker below reads that literal prefix, including the final
partial word, and therefore reuses the already kernel-validated masks without
introducing a second factorisation or modular-power oracle.
-/

def pureFiveMillionSupportPrefixPasses
    (bound : ℕ) (support : List ℕ) : Bool :=
  oddRootWordSurvivorCountThrough support true 676 ≤ bound &&
    oddRootWordSurvivorCountThrough support false 676 ≤ bound

set_option maxRecDepth 1000000 in
theorem pureFiveMillionEmptySupport_prefix_exact :
    oddRootWordSurvivorCountThrough [] true 676 = 135 ∧
      oddRootWordSurvivorCountThrough [] false 676 = 135 := by
  decide

end Erdos848
