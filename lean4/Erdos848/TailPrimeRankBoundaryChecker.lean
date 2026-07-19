import Erdos848.TailPrimeRankChecker

namespace Erdos848
namespace PrimeIntervalProofTree

/-!
## Convert a boundary prime count into global ranks inside one interval

This version of the rank bridge keeps the classified prefix out of downstream
certificates.  A single exact boundary count is enough: the primes up to `n`
split into the primes before the interval and the listed primes in the interval
which are at most `n`.
-/

theorem primeCounting_eq_before_add_localRank
    {start size count before n : ℕ}
    (tree : PrimeIntervalProofTree start size count)
    (hstart : 2 ≤ start)
    (hbefore : Nat.primeCounting (start - 1) = before)
    (hn : n ∈ tree.listed) :
    Nat.primeCounting n = before + tree.localRank n := by
  have hbounds := tree.mem_listed_bounds hn
  have hdecomp :
      Nat.primesLE n =
        Nat.primesLE (start - 1) ∪
          tree.listed.filter (fun p => p ≤ n) := by
    ext p
    simp only [Finset.mem_union, Nat.mem_primesLE, Finset.mem_filter]
    constructor
    · rintro ⟨hpn, hpPrime⟩
      by_cases hpStart : p < start
      · exact Or.inl ⟨by omega, hpPrime⟩
      · exact Or.inr ⟨
          tree.prime_mem_listed (Nat.le_of_not_gt hpStart) (by omega) hpPrime,
          hpn⟩
    · rintro (hpBefore | hpHere)
      · exact ⟨by omega, hpBefore.2⟩
      · exact ⟨hpHere.2, tree.listed_prime hpHere.1⟩
  have hdisjoint :
      Disjoint (Nat.primesLE (start - 1))
        (tree.listed.filter fun p => p ≤ n) := by
    rw [Finset.disjoint_left]
    intro p hpBefore hpHere
    have hpUpper := (Nat.mem_primesLE.mp hpBefore).1
    have hpLower := tree.mem_listed_bounds (Finset.mem_filter.mp hpHere).1
    omega
  rw [← Nat.primesLE_card_eq_primeCounting, hdecomp,
    Finset.card_union_of_disjoint hdisjoint,
    Nat.primesLE_card_eq_primeCounting, hbefore,
    ← tree.localRank_eq_filter_card hn]

theorem primeCounting_interval_end_eq
    {start size count before : ℕ}
    (tree : PrimeIntervalProofTree start size count)
    (hstart : 2 ≤ start)
    (hsize : 0 < size)
    (hbefore : Nat.primeCounting (start - 1) = before) :
    Nat.primeCounting (start + size - 1) = before + count := by
  have hdecomp :
      Nat.primesLE (start + size - 1) =
        Nat.primesLE (start - 1) ∪ tree.listed := by
    ext p
    simp only [Finset.mem_union, Nat.mem_primesLE]
    constructor
    · rintro ⟨hpUpper, hpPrime⟩
      by_cases hpStart : p < start
      · exact Or.inl ⟨by omega, hpPrime⟩
      · exact Or.inr <|
          tree.prime_mem_listed (Nat.le_of_not_gt hpStart) (by omega) hpPrime
    · rintro (hpBefore | hpHere)
      · exact ⟨by omega, hpBefore.2⟩
      · have hpBounds := tree.mem_listed_bounds hpHere
        exact ⟨by omega, tree.listed_prime hpHere⟩
  have hdisjoint :
      Disjoint (Nat.primesLE (start - 1)) tree.listed := by
    rw [Finset.disjoint_left]
    intro p hpBefore hpHere
    have hpUpper := (Nat.mem_primesLE.mp hpBefore).1
    have hpLower := tree.mem_listed_bounds hpHere
    omega
  rw [← Nat.primesLE_card_eq_primeCounting, hdecomp,
    Finset.card_union_of_disjoint hdisjoint,
    Nat.primesLE_card_eq_primeCounting, hbefore, tree.listed_card]

end PrimeIntervalProofTree
end Erdos848
