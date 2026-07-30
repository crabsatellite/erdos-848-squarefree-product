import Erdos848.TailPrimeCountingChecker

namespace Erdos848

/-!
# Balanced upper-bound prime-interval certificates

Unlike `PrimeIntervalProofTree`, a candidate leaf does not assert primality.
Only composite leaves carry proofs.  Consequently an untrusted producer may
over-classify integers as candidates, but it cannot omit a prime without
supplying a false proper-factor proof.  The kernel-checked conclusion is the
upper bound needed by the forty-million root checker, without constructing a
new Pratt table for every prime through `200_000_000 / 55`.
-/

inductive PrimeUpperIntervalProofTree : Nat -> Nat -> Nat -> Type
  | composite (n factor : Nat)
      (factor_two : 2 <= factor)
      (factor_lt : factor < n)
      (factor_dvd : factor ∣ n) :
      PrimeUpperIntervalProofTree n 1 0
  | candidate (n : Nat) :
      PrimeUpperIntervalProofTree n 1 1
  | node {start leftSize rightSize leftCount rightCount : Nat}
      (left : PrimeUpperIntervalProofTree start leftSize leftCount)
      (right : PrimeUpperIntervalProofTree
        (start + leftSize) rightSize rightCount) :
      PrimeUpperIntervalProofTree start
        (leftSize + rightSize) (leftCount + rightCount)

namespace PrimeUpperIntervalProofTree

theorem size_pos
    {start size count : Nat}
    (tree : PrimeUpperIntervalProofTree start size count) :
    0 < size := by
  induction tree with
  | composite => simp
  | candidate => simp
  | node left right ihLeft ihRight => omega

/-- A structural prime-count upper bound which never materializes the
candidate `Finset`.  This is equivalent to `primeCounting_endpoint_le`, but
its proof term stays linear when a generated interval tree is used as a
kernel certificate. -/
theorem primeCounting_endpoint_le_structural
    {start size count : Nat}
    (tree : PrimeUpperIntervalProofTree start size count) :
    Nat.primeCounting (start + size - 1) <=
      Nat.primeCounting (start - 1) + count := by
  induction tree with
  | composite n factor factorTwo factorLt factorDvd =>
      have hnNotPrime : ¬Nat.Prime n := by
        intro hnPrime
        rcases hnPrime.eq_one_or_self_of_dvd factor factorDvd with
          hOne | hSelf
        · omega
        · omega
      rw [Nat.primeCounting, Nat.primeCounting_sub_one]
      exact le_of_eq (Nat.count_succ_eq_count hnNotPrime)
  | candidate n =>
      rw [Nat.primeCounting, Nat.primeCounting_sub_one]
      have hEnd : n + 1 - 1 + 1 = n + 1 := by omega
      rw [hEnd]
      change Nat.count Nat.Prime (n + 1) <=
        Nat.count Nat.Prime n + 1
      rw [Nat.count_succ]
      split <;> omega
  | @node nodeStart leftSize rightSize leftCount rightCount
      left right ihLeft ihRight =>
      have hLeftSize := left.size_pos
      have hRightSize := right.size_pos
      have hEnd :
          nodeStart + (leftSize + rightSize) - 1 =
            (nodeStart + leftSize) + rightSize - 1 := by
        omega
      rw [hEnd]
      calc
        Nat.primeCounting ((nodeStart + leftSize) + rightSize - 1) <=
            Nat.primeCounting (nodeStart + leftSize - 1) + rightCount :=
          ihRight
        _ <= (Nat.primeCounting (nodeStart - 1) + leftCount) +
            rightCount := Nat.add_le_add_right ihLeft rightCount
        _ = Nat.primeCounting (nodeStart - 1) +
            (leftCount + rightCount) := by omega

def candidates {start size count : Nat}
    (tree : PrimeUpperIntervalProofTree start size count) : Finset Nat :=
  match tree with
  | .composite _ _ _ _ _ => ∅
  | .candidate n => {n}
  | .node left right => left.candidates ∪ right.candidates

theorem mem_candidates_bounds
    {start size count n : Nat}
    (tree : PrimeUpperIntervalProofTree start size count)
    (hn : n ∈ tree.candidates) :
    start <= n ∧ n < start + size := by
  induction tree with
  | composite => simp [candidates] at hn
  | candidate leaf =>
      simp only [candidates, Finset.mem_singleton] at hn
      subst n
      omega
  | @node nodeStart leftSize rightSize leftCount rightCount
      left right ihLeft ihRight =>
      simp only [candidates, Finset.mem_union] at hn
      rcases hn with hn | hn
      · have hbounds := ihLeft hn
        omega
      · have hbounds := ihRight hn
        omega

theorem candidates_disjoint_of_adjacent
    {start leftSize rightSize leftCount rightCount : Nat}
    (left : PrimeUpperIntervalProofTree start leftSize leftCount)
    (right : PrimeUpperIntervalProofTree
      (start + leftSize) rightSize rightCount) :
    Disjoint left.candidates right.candidates := by
  rw [Finset.disjoint_left]
  intro n hnLeft hnRight
  have hLeft := left.mem_candidates_bounds hnLeft
  have hRight := right.mem_candidates_bounds hnRight
  omega

theorem candidates_card
    {start size count : Nat}
    (tree : PrimeUpperIntervalProofTree start size count) :
    tree.candidates.card = count := by
  induction tree with
  | composite => simp [candidates]
  | candidate => simp [candidates]
  | node left right ihLeft ihRight =>
      rw [candidates, Finset.card_union_of_disjoint
        (candidates_disjoint_of_adjacent left right), ihLeft, ihRight]

theorem prime_mem_candidates
    {start size count n : Nat}
    (tree : PrimeUpperIntervalProofTree start size count)
    (hstart : start <= n) (hstop : n < start + size)
    (hnPrime : Nat.Prime n) : n ∈ tree.candidates := by
  induction tree with
  | composite leaf factor factorTwo factorLt factorDvd =>
      have hn : n = leaf := by omega
      subst n
      rcases hnPrime.eq_one_or_self_of_dvd factor factorDvd with hOne | hSelf
      · omega
      · omega
  | candidate leaf =>
      have hn : n = leaf := by omega
      subst n
      simp [candidates]
  | @node nodeStart leftSize rightSize leftCount rightCount
      left right ihLeft ihRight =>
      simp only [candidates, Finset.mem_union]
      by_cases hleft : n < nodeStart + leftSize
      · exact Or.inl (ihLeft hstart hleft)
      · exact Or.inr (ihRight (Nat.le_of_not_gt hleft) (by omega))

/-- A classification of one interval gives a prime-count increment upper
bound.  No candidate leaf is trusted to be prime. -/
theorem primeCounting_endpoint_le
    {start size count : Nat}
    (tree : PrimeUpperIntervalProofTree start size count)
    (hsize : 0 < size) :
    Nat.primeCounting (start + size - 1) <=
      Nat.primeCounting (start - 1) + count := by
  have hsubset :
      Nat.primesLE (start + size - 1) ⊆
        Nat.primesLE (start - 1) ∪ tree.candidates := by
    intro p hp
    rcases Nat.mem_primesLE.mp hp with ⟨hpUpper, hpPrime⟩
    by_cases hpStart : p < start
    · exact Finset.mem_union.mpr <| Or.inl <|
        Nat.mem_primesLE.mpr ⟨by omega, hpPrime⟩
    · exact Finset.mem_union.mpr <| Or.inr <|
        tree.prime_mem_candidates (Nat.le_of_not_gt hpStart)
          (by omega) hpPrime
  have hcard := Finset.card_le_card hsubset
  calc
    Nat.primeCounting (start + size - 1) =
        (Nat.primesLE (start + size - 1)).card := by simp
    _ <= (Nat.primesLE (start - 1) ∪ tree.candidates).card := hcard
    _ <= (Nat.primesLE (start - 1)).card + tree.candidates.card :=
      Finset.card_union_le _ _
    _ = Nat.primeCounting (start - 1) + count := by
      rw [Nat.primesLE_card_eq_primeCounting, tree.candidates_card]

#print axioms PrimeUpperIntervalProofTree.primeCounting_endpoint_le

end PrimeUpperIntervalProofTree

end Erdos848
