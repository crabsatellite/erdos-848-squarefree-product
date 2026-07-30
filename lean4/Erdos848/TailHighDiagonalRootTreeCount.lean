import Erdos848.GeneratedTailDiagonalCoverage.TailCoverageAggregate
import Erdos848.TailHighDiagonalPrimeUnion

namespace Erdos848

open PrimeRootCoverageData

namespace GeneratedTailDiagonalCoverage

theorem primeRootCoverage_root_size :
    primeRootCoverage.roots.size = 332180 := by
  rfl

theorem primeRootCoverage_limit :
    primeRootCoverage.limit = 9999999 := by
  rfl

end GeneratedTailDiagonalCoverage

open GeneratedTailDiagonalCoverage

/--
Choose the already certified sparse-root slot belonging to a genuine
`p ≡ 1 (mod 4)` below the old ten-million cutoff.  The fallback branch is
irrelevant to all uses below; it merely makes the map total.
-/
noncomputable def highDiagonalRootIndex (p : Nat) : Nat :=
  if h :
      Nat.Prime p ∧
        p ≤ primeRootCoverage.limit ∧
        p % 4 = 1 then
    Classical.choose <|
      primeRootCoverage.rootPairAtPrime primeRootCoverageValid
        h.1 h.2.1 h.2.2
  else
    0

theorem highDiagonalRootIndex_lt
    {p : Nat} (hp : Nat.Prime p)
    (hpLimit : p ≤ primeRootCoverage.limit)
    (hpMod : p % 4 = 1) :
    highDiagonalRootIndex p < primeRootCoverage.roots.size := by
  rw [highDiagonalRootIndex, dif_pos ⟨hp, hpLimit, hpMod⟩]
  exact (Classical.choose_spec <|
    primeRootCoverage.rootPairAtPrime primeRootCoverageValid
      hp hpLimit hpMod).1

theorem highDiagonalRootIndex_prime
    {p : Nat} (hp : Nat.Prime p)
    (hpLimit : p ≤ primeRootCoverage.limit)
    (hpMod : p % 4 = 1) :
    (primeRootCoverage.rootAt (highDiagonalRootIndex p)).prime = p := by
  rw [highDiagonalRootIndex, dif_pos ⟨hp, hpLimit, hpMod⟩]
  exact (Classical.choose_spec <|
    primeRootCoverage.rootPairAtPrime primeRootCoverageValid
      hp hpLimit hpMod).2

/--
Every diagonal prime below any cutoff covered by the old tree injects into
one of its existing sparse-root slots.  No root generation, sorting, or
primality replay is performed here.
-/
theorem highDiagonalPrimes_card_le_rootTree
    {cutoff : Nat} (hcutoff : cutoff ≤ primeRootCoverage.limit) :
    (highDiagonalPrimes cutoff).card ≤ 332180 := by
  classical
  have hmap :
      ∀ p ∈ highDiagonalPrimes cutoff,
        highDiagonalRootIndex p ∈
          Finset.range primeRootCoverage.roots.size := by
    intro p hp
    have hpParts := (Finset.mem_filter.mp hp).2
    have hpCutoff : p ≤ cutoff := by
      have := Finset.mem_range.mp (Finset.mem_filter.mp hp).1
      omega
    exact Finset.mem_range.mpr <|
      highDiagonalRootIndex_lt hpParts.1
        (hpCutoff.trans hcutoff) hpParts.2.1
  have hinjective :
      Set.InjOn highDiagonalRootIndex
        (highDiagonalPrimes cutoff : Set Nat) := by
    intro p hp q hq heq
    have hpParts := (Finset.mem_filter.mp hp).2
    have hqParts := (Finset.mem_filter.mp hq).2
    have hpCutoff : p ≤ cutoff := by
      have := Finset.mem_range.mp (Finset.mem_filter.mp hp).1
      omega
    have hqCutoff : q ≤ cutoff := by
      have := Finset.mem_range.mp (Finset.mem_filter.mp hq).1
      omega
    have hpPrime :=
      highDiagonalRootIndex_prime hpParts.1
        (hpCutoff.trans hcutoff) hpParts.2.1
    have hqPrime :=
      highDiagonalRootIndex_prime hqParts.1
        (hqCutoff.trans hcutoff) hqParts.2.1
    rw [heq] at hpPrime
    exact hpPrime.symm.trans hqPrime
  have hcard :=
    Finset.card_le_card_of_injOn highDiagonalRootIndex hmap hinjective
  simpa [primeRootCoverage_root_size] using hcard

theorem highDiagonalPrimes_tenMillion_card_le :
    (highDiagonalPrimes 9999999).card ≤ 332180 := by
  apply highDiagonalPrimes_card_le_rootTree
  rw [primeRootCoverage_limit]

theorem highDiagonalPrimes_card_cast_le_rootTree
    {cutoff : Nat} (hcutoff : cutoff ≤ 9999999) :
    ((highDiagonalPrimes cutoff).card : Rat) ≤ 332180 := by
  exact_mod_cast highDiagonalPrimes_card_le_rootTree <|
    primeRootCoverage_limit.symm ▸ hcutoff

end Erdos848
