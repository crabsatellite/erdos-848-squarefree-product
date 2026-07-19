import Erdos848.TailPrimeSquareBound
import Erdos848.TailTwentyMillionArithmetic

namespace Erdos848

/-! Exact cutoff-19 prime-square tail used in the twenty-million block. -/

def primesTwentyThrough47 : Finset ℕ :=
  [23, 29, 31, 37, 41, 43, 47].toFinset

def primeSquareTail19Envelope : ℚ :=
  41_495_942_097_528_637_097_197_527 /
    4_018_637_606_888_075_085_721_000_000

/-- Add the seven intervening prime squares to the kernel-checked cutoff-47
tail.  The conclusion applies to every finite prime set, so no producer-side
enumeration or project axiom is hidden here. -/
theorem finitePrimeSquareTail19_lt
    (s : Finset ℕ)
    (hprime : ∀ p ∈ s, Nat.Prime p)
    (hcut : ∀ p ∈ s, 19 < p) :
    (∑ p ∈ s, reciprocalSquareQ p) < primeSquareTail19Envelope := by
  let low := s.filter (· ≤ 47)
  let high := s.filter (47 < ·)
  have hdisjoint : Disjoint low high := by
    rw [Finset.disjoint_left]
    intro p hpLow hpHigh
    have hpLe : p ≤ 47 := (Finset.mem_filter.mp hpLow).2
    have hpGt : 47 < p := (Finset.mem_filter.mp hpHigh).2
    omega
  have hunion : low ∪ high = s := by
    ext p
    by_cases hp : p ≤ 47
    · simp [low, high, hp, not_lt_of_ge hp]
    · have hpGt : 47 < p := Nat.lt_of_not_ge hp
      simp [low, high, hp, hpGt]
  have hlowSub : low ⊆ primesTwentyThrough47 := by
    intro p hp
    rcases Finset.mem_filter.mp hp with ⟨hpS, hpLe⟩
    have hpPrime := hprime p hpS
    have hpGt := hcut p hpS
    interval_cases p <;>
      norm_num [primesTwentyThrough47] at hpPrime
    all_goals norm_num [primesTwentyThrough47]
  have hlow :
      (∑ p ∈ low, reciprocalSquareQ p) ≤
        ∑ p ∈ primesTwentyThrough47, reciprocalSquareQ p := by
    refine Finset.sum_le_sum_of_subset_of_nonneg hlowSub ?_
    intro p _hp _hnot
    simp [reciprocalSquareQ]
  have hhighPrime : ∀ p ∈ high, Nat.Prime p := by
    intro p hp
    exact hprime p (Finset.mem_filter.mp hp).1
  have hhighCut : ∀ p ∈ high, 47 < p := by
    intro p hp
    exact (Finset.mem_filter.mp hp).2
  have hhigh := finitePrimeSquareTail47_lt high hhighPrime hhighCut
  calc
    (∑ p ∈ s, reciprocalSquareQ p) =
        (∑ p ∈ low, reciprocalSquareQ p) +
          ∑ p ∈ high, reciprocalSquareQ p := by
      rw [← Finset.sum_union hdisjoint, hunion]
    _ < (∑ p ∈ primesTwentyThrough47, reciprocalSquareQ p) +
          primeSquareTail47Envelope :=
      add_lt_add_of_le_of_lt hlow hhigh
    _ = primeSquareTail19Envelope := by
      norm_num [primesTwentyThrough47, reciprocalSquareQ,
        primeSquareTail47Envelope, primeSquareTail19Envelope]

/-- The archived odd square payment is exactly `3/25` of this envelope. -/
theorem twentyMillionSquareOdd_eq_tail19 :
    3 * primeSquareTail19Envelope / 25 =
      twentyMillionSquareOdd := by
  norm_num [primeSquareTail19Envelope, twentyMillionSquareOdd]

theorem twentyMillionSquareEven_eq_tail47 :
    3 * primeSquareTail47Envelope / 25 =
      twentyMillionSquareEven := by
  norm_num [primeSquareTail47Envelope, twentyMillionSquareEven]

theorem twentyMillionSquareOdd_bound
    (s : Finset ℕ)
    (hprime : ∀ p ∈ s, Nat.Prime p)
    (hcut : ∀ p ∈ s, 19 < p) :
    3 * (∑ p ∈ s, reciprocalSquareQ p) / 25 <
      twentyMillionSquareOdd := by
  rw [← twentyMillionSquareOdd_eq_tail19]
  have h := finitePrimeSquareTail19_lt s hprime hcut
  linarith

theorem twentyMillionSquareEven_bound
    (s : Finset ℕ)
    (hprime : ∀ p ∈ s, Nat.Prime p)
    (hcut : ∀ p ∈ s, 47 < p) :
    3 * (∑ p ∈ s, reciprocalSquareQ p) / 25 <
      twentyMillionSquareEven := by
  rw [← twentyMillionSquareEven_eq_tail47]
  have h := finitePrimeSquareTail47_lt s hprime hcut
  linarith

end Erdos848
