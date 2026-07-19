import Erdos848.TailPrimeSquareFinite
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0098

namespace Erdos848

/-- Kernel-only prime-square tail at the archived cutoff `47`.  The finite
part is the generated exact prime tree through `204081`; the remaining finite
set is bounded by the telescoping integer tail. -/
theorem finitePrimeSquareTail47_lt
    (s : Finset ℕ)
    (hprime : ∀ p ∈ s, Nat.Prime p)
    (hcut : ∀ p ∈ s, 47 < p) :
    (∑ p ∈ s, reciprocalSquareQ p) < primeSquareTail47Envelope := by
  apply finitePrimeSquareTail47_lt_of_tree
    GeneratedTailPrimeSquareCoverage.costTreeNode0098
  · exact PrimeIntervalProofTree.listed_eq_primesLE
      (bound := 204081) (count := 18311) (by decide)
      GeneratedTailPrimeSquareCoverage.costTreeNode0098
  · exact GeneratedTailPrimeSquareCoverage.costTreeNode0098_cost
  · exact hprime
  · exact hcut

/-- The exact cutoff-seven envelope used by the five-million mixed-cell row. -/
theorem finitePrimeSquareTail7_lt
    (s : Finset ℕ)
    (hprime : ∀ p ∈ s, Nat.Prime p)
    (hcut : ∀ p ∈ s, 7 < p) :
    (∑ p ∈ s, reciprocalSquareQ p) < primeSquareTail7Envelope :=
  finitePrimeSquareTail7_lt_of_tail47 finitePrimeSquareTail47_lt
    s hprime hcut

theorem finitePrimeSquareTail7_le
    (s : Finset ℕ)
    (hprime : ∀ p ∈ s, Nat.Prime p)
    (hcut : ∀ p ∈ s, 7 < p) :
    (∑ p ∈ s, reciprocalSquareQ p) ≤ primeSquareTail7Envelope :=
  (finitePrimeSquareTail7_lt s hprime hcut).le

end Erdos848
