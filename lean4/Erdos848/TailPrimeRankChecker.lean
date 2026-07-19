import Erdos848.TailPrimeIntervalTreeChecker

namespace Erdos848
namespace PrimeIntervalProofTree

/-! ## Rank-aware scans over an already classified interval -/

/-- One-based rank of a listed prime inside this interval.  The function is
logarithmic in a balanced proof tree because a whole left subtree is charged
at once when the target lies on the right. -/
def localRank {start size count : ℕ}
    (tree : PrimeIntervalProofTree start size count) (n : ℕ) : ℕ :=
  match tree with
  | .composite _ _ _ _ _ => 0
  | .prime _ _ => 1
  | @PrimeIntervalProofTree.node nodeStart leftSize _ leftCount _ left right =>
      if n < nodeStart + leftSize then left.localRank n
      else leftCount + right.localRank n

theorem localRank_eq_filter_card
    {start size count n : ℕ}
    (tree : PrimeIntervalProofTree start size count)
    (hn : n ∈ tree.listed) :
    tree.localRank n = (tree.listed.filter fun p => p ≤ n).card := by
  induction tree with
  | composite => simp [listed] at hn
  | prime leaf _ =>
      simp only [listed, Finset.mem_singleton] at hn
      subst n
      change 1 = (Finset.filter (fun p : ℕ => p ≤ leaf)
        ({leaf} : Finset ℕ)).card
      have hfilter :
          Finset.filter (fun p : ℕ => p ≤ leaf) ({leaf} : Finset ℕ) =
            {leaf} := by
        apply Finset.filter_eq_self.mpr
        intro p hp
        simp only [Finset.mem_singleton] at hp
        subst p
        exact le_rfl
      rw [hfilter]
      simpa using (Finset.card_singleton leaf).symm
  | @node nodeStart leftSize rightSize leftCount rightCount left right ihLeft ihRight =>
      simp only [listed, Finset.mem_union] at hn
      by_cases hleft : n < nodeStart + leftSize
      · have hnLeft : n ∈ left.listed := by
          rcases hn with hnLeft | hnRight
          · exact hnLeft
          · have hbounds := right.mem_listed_bounds hnRight
            omega
        have hrightEmpty :
            right.listed.filter (fun p => p ≤ n) = ∅ := by
          apply Finset.eq_empty_of_forall_notMem
          intro p hpRight
          rcases Finset.mem_filter.mp hpRight with ⟨hpRight, hpn⟩
          have hbounds := right.mem_listed_bounds hpRight
          omega
        rw [localRank, if_pos hleft, listed, Finset.filter_union,
          hrightEmpty, Finset.union_empty, ihLeft hnLeft]
      · have hnRight : n ∈ right.listed := by
          rcases hn with hnLeft | hnRight
          · have hbounds := left.mem_listed_bounds hnLeft
            omega
          · exact hnRight
        have hleftFull :
            left.listed.filter (fun p => p ≤ n) = left.listed := by
          apply Finset.filter_eq_self.mpr
          intro p hpLeft
          have hbounds := left.mem_listed_bounds hpLeft
          omega
        have hdisjoint :
            Disjoint left.listed (right.listed.filter fun p => p ≤ n) := by
          rw [Finset.disjoint_left]
          intro p hpLeft hpRight
          have hbase := listed_disjoint_of_adjacent left right
          rw [Finset.disjoint_left] at hbase
          have hpRightListed : p ∈ right.listed :=
            (Finset.mem_filter.mp hpRight).1
          exact hbase hpLeft hpRightListed
        rw [localRank, if_neg hleft, listed, Finset.filter_union,
          hleftFull, Finset.card_union_of_disjoint hdisjoint,
          left.listed_card, ihRight hnRight]

theorem localRank_eq_primeCounting_of_start_two
    {size count n : ℕ}
    (tree : PrimeIntervalProofTree 2 size count)
    (hn : n ∈ tree.listed) :
    tree.localRank n = Nat.primeCounting n := by
  have hbounds := tree.mem_listed_bounds hn
  have hsize : 1 ≤ size := by omega
  have hlisted : tree.listed = Nat.primesLE (size + 1) := by
    simpa using tree.listed_eq_primesLE (bound := size + 1) (by omega)
  rw [tree.localRank_eq_filter_card hn, hlisted,
    ← Nat.primesLE_card_eq_primeCounting]
  congr 1
  ext p
  simp only [Finset.mem_filter, Nat.mem_primesLE]
  constructor
  · rintro ⟨⟨pBound, hp⟩, pn⟩
    exact ⟨pn, hp⟩
  · rintro ⟨pn, hp⟩
    exact ⟨⟨by omega, hp⟩, pn⟩

/-- Check a predicate at every prime leaf while carrying the number of prime
leaves preceding the current interval. -/
def allPrimeRanks {start size count : ℕ}
    (tree : PrimeIntervalProofTree start size count)
    (before : ℕ) (predicate : ℕ → ℕ → Bool) : Bool :=
  match tree with
  | .composite _ _ _ _ _ => true
  | .prime n _ => predicate n (before + 1)
  | @PrimeIntervalProofTree.node _ _ _ leftCount _ left right =>
      allPrimeRanks left before predicate &&
        allPrimeRanks right (before + leftCount) predicate

theorem allPrimeRanks_holds
    {start size count before n : ℕ}
    {predicate : ℕ → ℕ → Bool}
    (tree : PrimeIntervalProofTree start size count)
    (hchecked : allPrimeRanks tree before predicate = true)
    (hn : n ∈ tree.listed) :
    predicate n (before + tree.localRank n) = true := by
  induction tree generalizing before with
  | composite => simp [listed] at hn
  | prime leaf _ =>
      simp only [listed, Finset.mem_singleton] at hn
      subst n
      simpa [allPrimeRanks, localRank] using hchecked
  | @node nodeStart leftSize rightSize leftCount rightCount left right ihLeft ihRight =>
      have hparts := Bool.and_eq_true_iff.mp hchecked
      simp only [listed, Finset.mem_union] at hn
      rcases hn with hnLeft | hnRight
      · have hbounds := left.mem_listed_bounds hnLeft
        have hlocal :
            (PrimeIntervalProofTree.node left right).localRank n =
              left.localRank n := by
          simp [localRank, show n < nodeStart + leftSize by omega]
        rw [hlocal]
        exact ihLeft hparts.1 hnLeft
      · have hbounds := right.mem_listed_bounds hnRight
        have hlocal :
            (PrimeIntervalProofTree.node left right).localRank n =
              leftCount + right.localRank n := by
          simp [localRank, show ¬ n < nodeStart + leftSize by omega]
        rw [hlocal]
        simpa [Nat.add_assoc] using ihRight hparts.2 hnRight

/-- A classified initial interval converts a block-local prime rank into the
global prime-counting value. -/
theorem primeCounting_eq_initial_add_localRank
    {initialSize before blockSize blockCount n : ℕ}
    (initial : PrimeIntervalProofTree 2 initialSize before)
    (block : PrimeIntervalProofTree (2 + initialSize) blockSize blockCount)
    (hn : n ∈ block.listed) :
    Nat.primeCounting n = before + block.localRank n := by
  let combined : PrimeIntervalProofTree 2
      (initialSize + blockSize) (before + blockCount) :=
    .node initial block
  have hnCombined : n ∈ combined.listed := by
    simp only [combined, listed, Finset.mem_union]
    exact Or.inr hn
  have hglobal := combined.localRank_eq_primeCounting_of_start_two hnCombined
  have hbounds := block.mem_listed_bounds hn
  have hlocal : combined.localRank n = before + block.localRank n := by
    simp [combined, localRank, show ¬ n < 2 + initialSize by omega]
  rw [hlocal] at hglobal
  exact hglobal.symm

end PrimeIntervalProofTree
end Erdos848
