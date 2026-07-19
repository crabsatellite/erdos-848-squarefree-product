import Erdos848.TailPrimeCountingChecker

namespace Erdos848

/-!
## Balanced exact prime-interval certificates

Every leaf classifies one consecutive integer either by a kernel proof of
primality or by a proper factor.  Node indices record interval length and the
exact number of prime leaves.  Generated certificates therefore avoid both a
large global lookup table and a deep Boolean fold.
-/

inductive PrimeIntervalProofTree : ℕ → ℕ → ℕ → Type
  | composite (n factor : ℕ)
      (factor_two : 2 ≤ factor)
      (factor_lt : factor < n)
      (factor_dvd : factor ∣ n) :
      PrimeIntervalProofTree n 1 0
  | prime (n : ℕ) (isPrime : Nat.Prime n) :
      PrimeIntervalProofTree n 1 1
  | node {start leftSize rightSize leftCount rightCount : ℕ}
      (left : PrimeIntervalProofTree start leftSize leftCount)
      (right : PrimeIntervalProofTree
        (start + leftSize) rightSize rightCount) :
      PrimeIntervalProofTree start
        (leftSize + rightSize) (leftCount + rightCount)

namespace PrimeIntervalProofTree

def listed {start size count : ℕ}
    (tree : PrimeIntervalProofTree start size count) : Finset ℕ :=
  match tree with
  | .composite _ _ _ _ _ => ∅
  | .prime n _ => {n}
  | .node left right => left.listed ∪ right.listed

theorem mem_listed_bounds
    {start size count n : ℕ}
    (tree : PrimeIntervalProofTree start size count)
    (hn : n ∈ tree.listed) :
    start ≤ n ∧ n < start + size := by
  induction tree with
  | composite => simp [listed] at hn
  | prime leaf _ =>
      simp only [listed, Finset.mem_singleton] at hn
      subst n
      omega
  | @node nodeStart leftSize rightSize leftCount rightCount left right ihLeft ihRight =>
      simp only [listed, Finset.mem_union] at hn
      rcases hn with hn | hn
      · have hbounds := ihLeft hn
        omega
      · have hbounds := ihRight hn
        omega

theorem listed_prime
    {start size count n : ℕ}
    (tree : PrimeIntervalProofTree start size count)
    (hn : n ∈ tree.listed) : Nat.Prime n := by
  induction tree with
  | composite => simp [listed] at hn
  | prime leaf hprime =>
      simp only [listed, Finset.mem_singleton] at hn
      subst n
      exact hprime
  | node left right ihLeft ihRight =>
      simp only [listed, Finset.mem_union] at hn
      exact hn.elim ihLeft ihRight

theorem listed_disjoint_of_adjacent
    {start leftSize rightSize leftCount rightCount : ℕ}
    (left : PrimeIntervalProofTree start leftSize leftCount)
    (right : PrimeIntervalProofTree
      (start + leftSize) rightSize rightCount) :
    Disjoint left.listed right.listed := by
  rw [Finset.disjoint_left]
  intro n hnLeft hnRight
  have hLeft := left.mem_listed_bounds hnLeft
  have hRight := right.mem_listed_bounds hnRight
  omega

theorem listed_card
    {start size count : ℕ}
    (tree : PrimeIntervalProofTree start size count) :
    tree.listed.card = count := by
  induction tree with
  | composite => simp [listed]
  | prime => simp [listed]
  | node left right ihLeft ihRight =>
      rw [listed, Finset.card_union_of_disjoint
        (listed_disjoint_of_adjacent left right), ihLeft, ihRight]

theorem prime_mem_listed
    {start size count n : ℕ}
    (tree : PrimeIntervalProofTree start size count)
    (hstart : start ≤ n) (hstop : n < start + size)
    (hnPrime : Nat.Prime n) : n ∈ tree.listed := by
  induction tree with
  | composite leaf factor factorTwo factorLt factorDvd =>
      have hn : n = leaf := by omega
      subst n
      rcases hnPrime.eq_one_or_self_of_dvd factor factorDvd with hOne | hSelf
      · omega
      · omega
  | prime leaf _ =>
      have hn : n = leaf := by omega
      subst n
      simp [listed]
  | @node nodeStart leftSize rightSize leftCount rightCount left right ihLeft ihRight =>
      simp only [listed, Finset.mem_union]
      by_cases hleft : n < nodeStart + leftSize
      · exact Or.inl (ihLeft hstart hleft)
      · exact Or.inr (ihRight (Nat.le_of_not_gt hleft) (by omega))

theorem listed_eq_primesLE
    {bound count : ℕ} (hbound : 2 ≤ bound)
    (tree : PrimeIntervalProofTree 2 (bound - 1) count) :
    tree.listed = Nat.primesLE bound := by
  ext n
  constructor
  · intro hn
    have hbounds := tree.mem_listed_bounds hn
    exact Nat.mem_primesLE.mpr ⟨by omega, tree.listed_prime hn⟩
  · intro hn
    rcases Nat.mem_primesLE.mp hn with ⟨hnBound, hnPrime⟩
    exact tree.prime_mem_listed hnPrime.two_le (by omega) hnPrime

theorem primeCounting_eq
    {bound count : ℕ} (hbound : 2 ≤ bound)
    (tree : PrimeIntervalProofTree 2 (bound - 1) count) :
    bound.primeCounting = count := by
  rw [← Nat.primesLE_card_eq_primeCounting,
    ← tree.listed_eq_primesLE hbound, tree.listed_card]

end PrimeIntervalProofTree

end Erdos848
