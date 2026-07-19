import Erdos848.TailPrimeSquareBoundChecker

namespace Erdos848

def reciprocalSquareQ (n : ℕ) : ℚ := 1 / (n : ℚ) ^ 2

/-- Any finite subset of the checked leaves inherits the tree's fixed-scale
reciprocal-square bound. -/
theorem reciprocalSquare_sum_le_treeCost
    {start size count cutoff scale : ℕ}
    (tree : PrimeIntervalProofTree start size count)
    (s : Finset ℕ)
    (hsub : s ⊆ tree.listed.filter (cutoff < ·))
    (hscale : 0 < scale) :
    (∑ p ∈ s, reciprocalSquareQ p) ≤
      (tree.squareTailCost cutoff scale : ℚ) / scale := by
  calc
    (∑ p ∈ s, reciprocalSquareQ p) ≤
        ∑ p ∈ tree.listed.filter (cutoff < ·), reciprocalSquareQ p := by
      refine Finset.sum_le_sum_of_subset_of_nonneg hsub ?_
      intro p _hp _hnot
      simp [reciprocalSquareQ]
    _ = tree.squareTailWeight cutoff := by
      simpa [reciprocalSquareQ] using
        tree.squareTailWeight_eq_listed_sum.symm
    _ ≤ (tree.squareTailCost cutoff scale : ℚ) / scale :=
      tree.squareTailWeight_le_cost hscale

private theorem reciprocalSquareQ_le_telescoping
    {n : ℕ} (hn : 1 < n) :
    reciprocalSquareQ n ≤
      1 / ((n - 1 : ℕ) : ℚ) - 1 / (n : ℚ) := by
  have hnPos : 0 < n := by omega
  have hnPredPos : 0 < n - 1 := Nat.sub_pos_of_lt hn
  have hcastPred : ((n - 1 : ℕ) : ℚ) = (n : ℚ) - 1 := by
    rw [Nat.cast_sub (by omega)]
    norm_num
  have hprodPos :
      (0 : ℚ) < ((n - 1 : ℕ) : ℚ) * (n : ℚ) := by positivity
  have hprodLe :
      ((n - 1 : ℕ) : ℚ) * (n : ℚ) ≤ (n : ℚ) ^ 2 := by
    rw [hcastPred]
    nlinarith
  calc
    reciprocalSquareQ n = 1 / (n : ℚ) ^ 2 := rfl
    _ ≤ 1 / (((n - 1 : ℕ) : ℚ) * (n : ℚ)) :=
      one_div_le_one_div_of_le hprodPos hprodLe
    _ = 1 / ((n - 1 : ℕ) : ℚ) - 1 / (n : ℚ) := by
      have hnq : (1 : ℚ) < (n : ℚ) := by exact_mod_cast hn
      rw [hcastPred]
      field_simp [ne_of_gt (sub_pos.mpr hnq),
        ne_of_gt (lt_trans zero_lt_one hnq)]
      ring

private theorem telescoping_Ico
    (m r : ℕ) (hm : 0 < m) :
    (∑ n ∈ Finset.Ico (m + 1) (m + 1 + r),
        (1 / ((n - 1 : ℕ) : ℚ) - 1 / (n : ℚ))) =
      1 / (m : ℚ) - 1 / ((m + r : ℕ) : ℚ) := by
  induction r with
  | zero => simp
  | succ r ih =>
      rw [show m + 1 + (r + 1) = (m + 1 + r) + 1 by omega]
      rw [Finset.sum_Ico_succ_top (by omega), ih]
      rw [show m + 1 + r - 1 = m + r by omega]
      rw [show m + (r + 1) = m + r + 1 by omega]
      ring

/-- A finite set of distinct integers strictly above `m` has reciprocal-square
sum at most `1/m`.  This is the finite telescoping form needed by the Hall
count, so no analytic infinite-series premise is introduced. -/
theorem reciprocalSquare_sum_above_le
    (m : ℕ) (hm : 0 < m) (s : Finset ℕ)
    (habove : ∀ n ∈ s, m < n) :
    (∑ n ∈ s, reciprocalSquareQ n) ≤ 1 / (m : ℚ) := by
  by_cases hs : s = ∅
  · subst s
    simp
  have hmtop : m ≤ s.sup id := by
    obtain ⟨n, hn⟩ := Finset.nonempty_iff_ne_empty.mpr hs
    apply (Nat.le_of_lt (habove n hn)).trans
    simpa using (Finset.le_sup (f := id) hn)
  obtain ⟨r, htop⟩ := Nat.exists_eq_add_of_le hmtop
  let ambient := Finset.Ico (m + 1) (m + r + 1)
  have hsub : s ⊆ ambient := by
    intro n hn
    have hnTop : n ≤ s.sup id := by
      simpa using (Finset.le_sup (f := id) hn)
    have hnTop' : n ≤ m + r := by simpa [htop] using hnTop
    apply Finset.mem_Ico.mpr
    constructor
    · exact Nat.succ_le_iff.mpr (habove n hn)
    · exact Nat.lt_succ_of_le hnTop'
  calc
    (∑ n ∈ s, reciprocalSquareQ n) ≤
        ∑ n ∈ ambient, reciprocalSquareQ n := by
      refine Finset.sum_le_sum_of_subset_of_nonneg hsub ?_
      intro n _hn _hnot
      simp [reciprocalSquareQ]
    _ ≤ ∑ n ∈ ambient,
        (1 / ((n - 1 : ℕ) : ℚ) - 1 / (n : ℚ)) := by
      apply Finset.sum_le_sum
      intro n hn
      have hnLower : m + 1 ≤ n := (Finset.mem_Ico.mp hn).1
      exact reciprocalSquareQ_le_telescoping (by omega)
    _ = 1 / (m : ℚ) - 1 / ((m + r : ℕ) : ℚ) := by
      simpa only [ambient, show m + r + 1 = m + 1 + r by omega] using
        telescoping_Ico m r hm
    _ ≤ 1 / (m : ℚ) := by
      have hnonneg : (0 : ℚ) ≤ 1 / ((m + r : ℕ) : ℚ) := by positivity
      linarith

def primeSquareTail47Envelope : ℚ := 3887 / 1_000_000

def primeSquareTail7Envelope : ℚ :=
  263529083909042886517376461184337967 /
    8573456796637692379906289787841000000

/-- The endpoint assembly is independent of the generated tree's internal
shape.  A heavy generated module only has to provide the two small premises
`hlisted` and `hcost`. -/
theorem finitePrimeSquareTail47_lt_of_tree
    {count : ℕ}
    (tree : PrimeIntervalProofTree 2 204080 count)
    (hlisted : tree.listed = Nat.primesLE 204081)
    (hcost : tree.squareTailCost 47 10_000_000_000 = 38_779_428)
    (s : Finset ℕ)
    (hprime : ∀ p ∈ s, Nat.Prime p)
    (hcut : ∀ p ∈ s, 47 < p) :
    (∑ p ∈ s, reciprocalSquareQ p) < primeSquareTail47Envelope := by
  let low := s.filter (· ≤ 204081)
  let high := s.filter (204081 < ·)
  have hdisjoint : Disjoint low high := by
    rw [Finset.disjoint_left]
    intro p hpLow hpHigh
    have hpLe : p ≤ 204081 := (Finset.mem_filter.mp hpLow).2
    have hpGt : 204081 < p := (Finset.mem_filter.mp hpHigh).2
    omega
  have hunion : low ∪ high = s := by
    ext p
    by_cases hp : p ≤ 204081
    · simp [low, high, hp, not_lt_of_ge hp]
    · have hpGt : 204081 < p := Nat.lt_of_not_ge hp
      simp [low, high, hp, hpGt]
  have hlowSub : low ⊆ tree.listed.filter (47 < ·) := by
    intro p hp
    rcases Finset.mem_filter.mp hp with ⟨hpS, hpLe⟩
    apply Finset.mem_filter.mpr
    constructor
    · rw [hlisted]
      exact Nat.mem_primesLE.mpr ⟨hpLe, hprime p hpS⟩
    · exact hcut p hpS
  have hlow :
      (∑ p ∈ low, reciprocalSquareQ p) ≤
        (38_779_428 : ℚ) / 10_000_000_000 := by
    calc
      (∑ p ∈ low, reciprocalSquareQ p) ≤
          (tree.squareTailCost 47 10_000_000_000 : ℚ) /
            10_000_000_000 :=
        reciprocalSquare_sum_le_treeCost tree low hlowSub (by norm_num)
      _ = (38_779_428 : ℚ) / 10_000_000_000 := by
        rw [hcost]
        norm_num
  have hhigh :
      (∑ p ∈ high, reciprocalSquareQ p) ≤ 1 / (204081 : ℚ) := by
    apply reciprocalSquare_sum_above_le 204081 (by norm_num) high
    intro p hp
    exact (Finset.mem_filter.mp hp).2
  calc
    (∑ p ∈ s, reciprocalSquareQ p) =
        (∑ p ∈ low, reciprocalSquareQ p) +
          ∑ p ∈ high, reciprocalSquareQ p := by
      rw [← Finset.sum_union hdisjoint, hunion]
    _ ≤ (38_779_428 : ℚ) / 10_000_000_000 + 1 / (204081 : ℚ) :=
      add_le_add hlow hhigh
    _ < primeSquareTail47Envelope := by
      norm_num [primeSquareTail47Envelope]

def primesEightThrough47 : Finset ℕ :=
  [11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47].toFinset

/-- Once the `p > 47` endpoint is known, the cutoff-seven envelope is obtained
by adding exactly the eleven intervening prime squares. -/
theorem finitePrimeSquareTail7_lt_of_tail47
    (tail47 :
      ∀ s : Finset ℕ,
        (∀ p ∈ s, Nat.Prime p) →
        (∀ p ∈ s, 47 < p) →
        (∑ p ∈ s, reciprocalSquareQ p) < primeSquareTail47Envelope)
    (s : Finset ℕ)
    (hprime : ∀ p ∈ s, Nat.Prime p)
    (hcut : ∀ p ∈ s, 7 < p) :
    (∑ p ∈ s, reciprocalSquareQ p) < primeSquareTail7Envelope := by
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
  have hlowSub : low ⊆ primesEightThrough47 := by
    intro p hp
    rcases Finset.mem_filter.mp hp with ⟨hpS, hpLe⟩
    have hpPrime := hprime p hpS
    have hpGt := hcut p hpS
    interval_cases p <;>
      norm_num [primesEightThrough47] at hpPrime
    all_goals norm_num [primesEightThrough47]
  have hlow :
      (∑ p ∈ low, reciprocalSquareQ p) ≤
        ∑ p ∈ primesEightThrough47, reciprocalSquareQ p := by
    refine Finset.sum_le_sum_of_subset_of_nonneg hlowSub ?_
    intro p _hp _hnot
    simp [reciprocalSquareQ]
  have hhighPrime : ∀ p ∈ high, Nat.Prime p := by
    intro p hp
    exact hprime p (Finset.mem_filter.mp hp).1
  have hhighCut : ∀ p ∈ high, 47 < p := by
    intro p hp
    exact (Finset.mem_filter.mp hp).2
  have hhigh := tail47 high hhighPrime hhighCut
  calc
    (∑ p ∈ s, reciprocalSquareQ p) =
        (∑ p ∈ low, reciprocalSquareQ p) +
          ∑ p ∈ high, reciprocalSquareQ p := by
      rw [← Finset.sum_union hdisjoint, hunion]
    _ < (∑ p ∈ primesEightThrough47, reciprocalSquareQ p) +
          primeSquareTail47Envelope :=
      add_lt_add_of_le_of_lt hlow hhigh
    _ = primeSquareTail7Envelope := by
      norm_num [primesEightThrough47, reciprocalSquareQ,
        primeSquareTail47Envelope, primeSquareTail7Envelope]

end Erdos848
