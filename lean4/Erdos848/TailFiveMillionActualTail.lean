import Erdos848.TailFiveMillionHallBridge
import Erdos848.TailFiveMillionFiveTwistSupport
import Erdos848.TailFiveMillionRootProfileComplete
import Erdos848.TailPrimeProgressionCounting
import Erdos848.TailFiveMillionActualSupportCore
import Erdos848.TailFiveMillionHallTailCore

namespace Erdos848

/-!
# Actual one-pivot tail split on the two sharp base progressions

This file replaces the abstract one-form tail input by a split of the literal
`tailSquarePrimeEvent` set.  Every actual Hall-base point is sent either to a
certified CRT progression for a prime in `(cutoff, upper]`, or to the actual
high-prime point set above `upper`.
-/

/- Moved to `TailFiveMillionHallTailCore`.
noncomputable def hallBaseTailSquarePoints
    (N : ℕ) (B : Finset ℕ) (cutoff pivot : ℕ) : Finset ℕ := by
  classical
  exact (hallBasePart N B).filter (tailSquarePrimeEvent cutoff pivot)

-/

/- Moved to `TailFiveMillionActualSupportCore` so the all-`N` global support
chain does not import the finite-prefix diagonal certificate.
noncomputable def twoBaseHighTailSquarePoints
    (N pivot upper : ℕ) : Finset ℕ := by
  classical
  exact (lowBaseSet N).filter (tailSquarePrimeEvent upper pivot)

def fiveMillionPivotSupportFinset (pivot : ℕ) : Finset ℕ :=
  pivot.primeFactors.filter fun q => q ≠ 2 ∧ q ≠ 5

def fiveMillionPivotSupport (pivot : ℕ) : List ℕ :=
  (fiveMillionPivotSupportFinset pivot).sort

lemma fiveMillionPivotSupport_primes (pivot : ℕ) :
    ∀ q ∈ fiveMillionPivotSupport pivot, FiveMillionSupportPrime q := by
  intro q hq
  have hqFin : q ∈ fiveMillionPivotSupportFinset pivot := by
    simpa [fiveMillionPivotSupport] using hq
  have hparts := Finset.mem_filter.mp hqFin
  have hprime := Nat.prime_of_mem_primeFactors hparts.1
  exact ⟨hprime, hprime.odd_of_ne_two hparts.2.1, hparts.2.2⟩

lemma fiveMillionPivotSupport_dvd
    {pivot q : ℕ} (hq : q ∈ fiveMillionPivotSupport pivot) :
    q ∣ pivot := by
  have hqFin : q ∈ fiveMillionPivotSupportFinset pivot := by
    simpa [fiveMillionPivotSupport] using hq
  exact Nat.dvd_of_mem_primeFactors (Finset.mem_filter.mp hqFin).1

lemma fiveMillionPivotSupport_increasing (pivot : ℕ) :
    (fiveMillionPivotSupport pivot).Pairwise (· < ·) := by
  exact (Finset.sortedLT_sort
    (fiveMillionPivotSupportFinset pivot)).pairwise

lemma fiveMillionPivotSupport_prod_dvd (pivot : ℕ) :
    (fiveMillionPivotSupport pivot).prod ∣ pivot := by
  let support := fiveMillionPivotSupportFinset pivot
  have hsubset : support ⊆ pivot.primeFactors := by
    exact Finset.filter_subset _ _
  have hsortProd : (support.sort).prod = ∏ q ∈ support, q := by
    calc
      (support.sort).prod = support.toList.prod :=
        (Finset.sort_perm_toList support _).prod_eq
      _ = ∏ q ∈ support, q := Finset.prod_toList support
  have hfiltered : (∏ q ∈ support, q) ∣
      ∏ q ∈ pivot.primeFactors, q := by
    simpa using
      (Finset.prod_dvd_prod_of_subset support pivot.primeFactors id hsubset)
  rw [fiveMillionPivotSupport, hsortProd]
  exact hfiltered.trans (Nat.prod_primeFactors_dvd pivot)

lemma fiveMillionPivotSupport_prod_le
    {pivot upper : ℕ} (hpivotPos : 0 < pivot) (hpivot : pivot ≤ upper) :
    (fiveMillionPivotSupport pivot).prod ≤ upper := by
  exact (Nat.le_of_dvd hpivotPos
    (fiveMillionPivotSupport_prod_dvd pivot)).trans hpivot

/-- Every retained (non-last) actual support prime lies in the generated mask
table.  The final larger prime is exactly the extension witness that forces
the retained one below `3137`. -/
lemma fiveMillionPivotSupport_dropLast_mem_table
    {N pivot q : ℕ} (hUpper : N < 10_000_000)
    (hpivotPos : 0 < pivot) (hpivot : pivot ≤ N)
    (hq : q ∈ (fiveMillionPivotSupport pivot).dropLast) :
    q ∈ GeneratedTailSupportCoverage.supportPrimes := by
  let support := fiveMillionPivotSupport pivot
  have hqSupport : q ∈ support := List.mem_of_mem_dropLast hq
  have hsupportNonempty : support ≠ [] := List.ne_nil_of_mem hqSupport
  let r := support.getLast hsupportNonempty
  have hrSupport : r ∈ support := List.getLast_mem hsupportNonempty
  have hqPrimeData := fiveMillionPivotSupport_primes pivot q hqSupport
  have hrPrimeData := fiveMillionPivotSupport_primes pivot r hrSupport
  have hqr : q < r :=
    (fiveMillionPivotSupport_increasing pivot).rel_dropLast_getLast hq
  have hqrDvd : q * r ∣ pivot :=
    Nat.Prime.dvd_mul_of_dvd_ne (ne_of_lt hqr) hqPrimeData.1
      hrPrimeData.1 (fiveMillionPivotSupport_dvd hqSupport)
      (fiveMillionPivotSupport_dvd hrSupport)
  have hqrLe : q * r ≤ 10_000_000 := by
    exact (Nat.le_of_dvd hpivotPos hqrDvd).trans
      (hpivot.trans (Nat.le_of_lt hUpper))
  exact mem_supportPrimes_of_supportPrime_le_3163 hqPrimeData
    ((supportPrime_left_le_3137 hqPrimeData hqr hqrLe).trans (by norm_num))

/-- A prime factor of the pivot forces the raw complementary quotient to be
a nonzero square modulo that prime.  This is the semantic input consumed by
the generated QR masks. -/
lemma quotient_modEq_square_of_prime_dvd_pivot
    {pivot point p m q : ℕ}
    (hqPrime : Nat.Prime q) (hqPivot : q ∣ pivot)
    (hequation : p ^ 2 * m = pivot * point + 1) :
    ¬ q ∣ m ∧ ∃ root : ℕ, root ^ 2 ≡ m [MOD q] := by
  letI : Fact (Nat.Prime q) := ⟨hqPrime⟩
  have heqZ : (p : ZMod q) ^ 2 * (m : ZMod q) = 1 := by
    have hcast := congrArg (fun value : ℕ => (value : ZMod q)) hequation
    have hpivotZ : (pivot : ZMod q) = 0 :=
      (ZMod.natCast_eq_zero_iff pivot q).mpr hqPivot
    push_cast at hcast
    rw [hpivotZ] at hcast
    simpa using hcast
  have hpZ : (p : ZMod q) ≠ 0 := by
    intro hpZero
    rw [hpZero] at heqZ
    simp at heqZ
  have hmNotDvd : ¬ q ∣ m := by
    intro hqm
    have hmZero : (m : ZMod q) = 0 :=
      (ZMod.natCast_eq_zero_iff m q).mpr hqm
    rw [hmZero] at heqZ
    simp at heqZ
  let rootZ : ZMod q := (p : ZMod q)⁻¹
  have hrootZ : rootZ ^ 2 = (m : ZMod q) := by
    have hinv : rootZ * (p : ZMod q) = 1 := by
      exact inv_mul_cancel₀ hpZ
    calc
      rootZ ^ 2 = rootZ ^ 2 * 1 := by ring
      _ = rootZ ^ 2 * ((p : ZMod q) ^ 2 * (m : ZMod q)) := by rw [heqZ]
      _ = (rootZ * (p : ZMod q)) ^ 2 * (m : ZMod q) := by ring
      _ = (m : ZMod q) := by rw [hinv]; simp
  let root := rootZ.val
  refine ⟨hmNotDvd, root, ?_⟩
  apply (ZMod.natCast_eq_natCast_iff (root ^ 2) m q).mp
  simp only [Nat.cast_pow]
  rw [show (root : ZMod q) = rootZ from ZMod.natCast_zmod_val rootZ]
  exact hrootZ
-/

lemma exists_modFiveCosetAccepts_of_not_dvd
    {m : ℕ} (hfive : ¬ 5 ∣ m) :
    ∃ squareCoset : Bool, modFiveCosetAccepts squareCoset m = true := by
  have hmodLt : m % 5 < 5 := Nat.mod_lt _ (by norm_num)
  have hmodNe : m % 5 ≠ 0 := by
    exact fun h => hfive (Nat.dvd_iff_mod_eq_zero.mpr h)
  interval_cases hmod : m % 5 <;>
    simp [modFiveCosetAccepts, hmod] at hmodNe ⊢

lemma fiveMillionRawQuotient_support_bit
    {N pivot point p m q : ℕ}
    (hUpper : N < 10_000_000) (hpivotPos : 0 < pivot)
    (hpivot : pivot ≤ N)
    (hq : q ∈ (fiveMillionPivotSupport pivot).dropLast)
    (hmLower : 1 ≤ m) (hmUpper : m ≤ 2401)
    (hequation : p ^ 2 * m = pivot * point + 1) :
    wordMaskTestBit (GeneratedTailSupportCoverage.qrMaskWords q) (m - 1) =
      true := by
  have hqSupport : q ∈ fiveMillionPivotSupport pivot :=
    List.mem_of_mem_dropLast hq
  have hqPrime := (fiveMillionPivotSupport_primes pivot q hqSupport).1
  obtain ⟨hqNotDvd, root, hroot⟩ :=
    quotient_modEq_square_of_prime_dvd_pivot hqPrime
      (fiveMillionPivotSupport_dvd hqSupport) hequation
  exact GeneratedTailSupportCoverage.qrMask_contains_square
    (fiveMillionPivotSupport_dropLast_mem_table hUpper hpivotPos hpivot hq)
    hmLower hmUpper hqNotDvd hroot

lemma fiveMillionRawQuotient_support_all
    {N pivot point p m : ℕ}
    (hUpper : N < 10_000_000) (hpivotPos : 0 < pivot)
    (hpivot : pivot ≤ N) (hmLower : 1 ≤ m) (hmUpper : m ≤ 2401)
    (hequation : p ^ 2 * m = pivot * point + 1) :
    (fiveMillionPivotSupport pivot).dropLast.all (fun q =>
      wordMaskTestBit (GeneratedTailSupportCoverage.qrMaskWords q) (m - 1)) =
        true := by
  apply List.all_eq_true.mpr
  intro q hq
  exact fiveMillionRawQuotient_support_bit hUpper hpivotPos hpivot hq
    hmLower hmUpper hequation

lemma fiveMillionRawQuotient_normal_accepts
    {N pivot point p m : ℕ}
    (hUpper : N < 10_000_000) (hpivotPos : 0 < pivot)
    (hpivot : pivot ≤ N) (hmLower : 1 ≤ m) (hmUpper : m ≤ 2401)
    (hfive : ¬ 5 ∣ m)
    (hequation : p ^ 2 * m = pivot * point + 1) :
    ∃ squareCoset : Bool,
      oddRootWordPointAccepts (fiveMillionPivotSupport pivot).dropLast
        squareCoset m = true := by
  obtain ⟨squareCoset, hcoset⟩ :=
    exists_modFiveCosetAccepts_of_not_dvd hfive
  refine ⟨squareCoset, ?_⟩
  simp [oddRootWordPointAccepts, hcoset,
    fiveMillionRawQuotient_support_all hUpper hpivotPos hpivot
      hmLower hmUpper hequation]

lemma fiveMillionRawQuotient_fiveTwist_accepts
    {N pivot point p m : ℕ}
    (hUpper : N < 10_000_000) (hpivotPos : 0 < pivot)
    (hpivot : pivot ≤ N) (hmLower : 1 ≤ m) (hmUpper : m ≤ 2401)
    (hfive : 5 ∣ m) (hnotTwentyFive : ¬ 25 ∣ m)
    (hequation : p ^ 2 * m = pivot * point + 1) :
    ∃ squareCoset : Bool,
      oddRootFiveTwistSupportAccepts
          (fiveMillionPivotSupport pivot).dropLast squareCoset (m / 5) = true ∧
        1 ≤ m / 5 ∧ m / 5 ≤ 480 := by
  have hmEq : 5 * (m / 5) = m := Nat.mul_div_cancel' hfive
  have hmDivPos : 1 ≤ m / 5 := by
    by_contra hzero
    have hquotZero : m / 5 = 0 := by omega
    omega
  have hmDivUpper : m / 5 ≤ 480 := by omega
  have hfiveQuot : ¬ 5 ∣ m / 5 := by
    intro hdiv
    obtain ⟨k, hk⟩ := hdiv
    apply hnotTwentyFive
    refine ⟨k, ?_⟩
    omega
  obtain ⟨squareCoset, hcoset⟩ :=
    exists_modFiveCosetAccepts_of_not_dvd hfiveQuot
  have hallBits :
      (fiveMillionPivotSupport pivot).dropLast.all (fun q =>
        wordMaskTestBit (GeneratedTailSupportCoverage.qrMaskWords q)
          (5 * (m / 5) - 1)) = true := by
    simpa [hmEq] using fiveMillionRawQuotient_support_all hUpper hpivotPos
      hpivot hmLower hmUpper hequation
  refine ⟨squareCoset, ?_, hmDivPos, hmDivUpper⟩
  simp [oddRootFiveTwistSupportAccepts, hcoset, hallBits]

/-- The existing seven-row profile is therefore an unconditional numerical
bound for the actual non-five odd support of a pivot in this interval. -/
theorem fiveMillionPivotSupport_rootProfile_le
    {N pivot : ℕ} (squareCoset : Bool)
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hpivotPos : 0 < pivot) (hpivot : pivot ≤ N) :
    transformedRootRow N (N / 49)
        (Nat.primeCounting (N / 49) - 4)
        (2 ^ ((fiveMillionPivotSupport pivot).length + 1))
        (oddRootWordSurvivorCount
          (fiveMillionPivotSupport pivot).dropLast squareCoset) ≤
      fiveMillionOddRoot7Envelope := by
  apply fiveMillionOddRootSupport_kernel_close
  · exact hLower
  · exact hUpper
  · exact fiveMillionPivotSupport_primes pivot
  · exact fiveMillionPivotSupport_increasing pivot
  · exact fiveMillionPivotSupport_prod_le hpivotPos
      (hpivot.trans (Nat.le_of_lt hUpper))

/-- Every actual high-prime point has the literal complementary quotient
`m = (pivot * point + 1) / p²`, and at the five-million split that quotient
lies in the complete scanned domain `1,…,2401`. -/
theorem twoBaseHighTailSquarePoint_has_bounded_quotient
    {N pivot point : ℕ}
    (hLower : 5_000_000 ≤ N) (hpivot : pivot ≤ N)
    (hpoint : point ∈ twoBaseHighTailSquarePoints N pivot (N / 49)) :
    ∃ p m : ℕ, Nat.Prime p ∧ N / 49 < p ∧
      p ^ 2 * m = pivot * point + 1 ∧ 1 ≤ m ∧ m ≤ 2401 := by
  classical
  have hparts := Finset.mem_filter.mp hpoint
  have hpointLe : point ≤ N :=
    (Finset.mem_Icc.mp (lowBaseSet_subset_Icc N hparts.1)).2
  obtain ⟨p, hpPrime, hpLarge, hpDiv⟩ := hparts.2
  obtain ⟨m, hm⟩ := hpDiv
  have hNp : N < p * 49 :=
    (Nat.div_lt_iff_lt_mul (by norm_num : 0 < 49)).mp hpLarge
  have hNsq : N * N < (p * 49) * (p * 49) :=
    mul_lt_mul hNp hNp.le (by omega) (Nat.zero_le (p * 49))
  have hNsq' : N ^ 2 + 1 ≤ 2401 * p ^ 2 := by
    nlinarith
  have hproduct : pivot * point ≤ N * N :=
    Nat.mul_le_mul hpivot hpointLe
  have hnumerator : pivot * point + 1 ≤ 2401 * p ^ 2 := by
    calc
      pivot * point + 1 ≤ N ^ 2 + 1 := by
        simpa [pow_two] using Nat.add_le_add_right hproduct 1
      _ ≤ 2401 * p ^ 2 := hNsq'
  have hmPos : 1 ≤ m := by
    apply Nat.one_le_iff_ne_zero.mpr
    intro hmZero
    subst m
    simp at hm
  have hmMul : p ^ 2 * m ≤ p ^ 2 * 2401 := by
    calc
      p ^ 2 * m = pivot * point + 1 := hm.symm
      _ ≤ 2401 * p ^ 2 := hnumerator
      _ = p ^ 2 * 2401 := by ring
  have hmUpper : m ≤ 2401 :=
    Nat.le_of_mul_le_mul_left hmMul (pow_pos hpPrime.pos _)
  exact ⟨p, m, hpPrime, hpLarge, hm.symm, hmPos, hmUpper⟩

/-- A residual pivot cannot produce a raw complementary quotient divisible
by `25` on either sharp base progression.  This is the semantic fact that
leaves exactly the ordinary `g = 1` branch and the corrected `g = 5` branch;
there is no hidden third transformed quotient. -/
lemma fiveMillionRawQuotient_not_twentyFive_dvd
    {N : ℕ} {B : Finset ℕ} {pivot point p m : ℕ}
    (hBout : Erdos848OutsideSet N B)
    (hpivot : pivot ∈ hallResidual N B)
    (hpoint : point ∈ lowBaseSet N)
    (hequation : p ^ 2 * m = pivot * point + 1) :
    ¬ 25 ∣ m := by
  intro hmTwentyFive
  have hevent : 5 ^ 2 ∣ pivot * point + 1 := by
    rw [← hequation]
    norm_num
    exact dvd_mul_of_dvd_right hmTwentyFive (p ^ 2)
  rcases Finset.mem_union.mp hpoint with hseven | heighteen
  · exact five_not_event_on_originalA7_from_residual
      hBout hpivot hseven hevent
  · exact five_not_event_on_originalA18_from_residual
      hBout hpivot heighteen hevent

/-- Every literal high-prime point for a residual pivot lands in one of the
two complete transformed-quotient scans.  In the valuation-one branch the
stored variable is `m / 5`, while its QR bits are tested at the raw index
`5 * (m / 5) - 1`; this is the correction that was absent from the archived
exploration script. -/
theorem twoBaseHighTailSquarePoint_accepts_normal_or_fiveTwist
    {N : ℕ} {B : Finset ℕ} {pivot point : ℕ}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpoint : point ∈ twoBaseHighTailSquarePoints N pivot (N / 49)) :
    ∃ p m : ℕ, Nat.Prime p ∧ N / 49 < p ∧
      p ^ 2 * m = pivot * point + 1 ∧ 1 ≤ m ∧ m ≤ 2401 ∧
      ((¬ 5 ∣ m ∧ ∃ squareCoset : Bool,
          oddRootWordPointAccepts
            (fiveMillionPivotSupport pivot).dropLast squareCoset m = true) ∨
        (5 ∣ m ∧ ∃ squareCoset : Bool,
          oddRootFiveTwistSupportAccepts
              (fiveMillionPivotSupport pivot).dropLast squareCoset (m / 5) =
             true ∧
          1 ≤ m / 5 ∧ m / 5 ≤ 480)) := by
  classical
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotBounds := hallCompletion_subset_Icc hBout hpivotCompletion
  have hpivotPos : 0 < pivot := (Finset.mem_Icc.mp hpivotBounds).1
  have hpivotUpper : pivot ≤ N := (Finset.mem_Icc.mp hpivotBounds).2
  obtain ⟨p, m, hpPrime, hpLarge, hequation, hmLower, hmUpper⟩ :=
    twoBaseHighTailSquarePoint_has_bounded_quotient
      hLower hpivotUpper hpoint
  have hpointLow : point ∈ lowBaseSet N :=
    (Finset.mem_filter.mp hpoint).1
  have hnotTwentyFive : ¬ 25 ∣ m :=
    fiveMillionRawQuotient_not_twentyFive_dvd
      hBout hpivotResidual hpointLow hequation
  refine ⟨p, m, hpPrime, hpLarge, hequation, hmLower, hmUpper, ?_⟩
  by_cases hfive : 5 ∣ m
  · right
    refine ⟨hfive, ?_⟩
    exact fiveMillionRawQuotient_fiveTwist_accepts hUpper hpivotPos
      hpivotUpper hmLower hmUpper hfive hnotTwentyFive hequation
  · left
    refine ⟨hfive, ?_⟩
    exact fiveMillionRawQuotient_normal_accepts hUpper hpivotPos
      hpivotUpper hmLower hmUpper hfive hequation

/- Moved to `TailFiveMillionHallTailCore`.
lemma hallBaseTailSquareCount_eq_card
    (N : ℕ) (B : Finset ℕ) (cutoff pivot : ℕ) :
    hallBaseTailSquareCount N B cutoff pivot =
      ((hallBaseTailSquarePoints N B cutoff pivot).card : ℚ) := by
  classical
  simp [hallBaseTailSquareCount, hallBaseTailSquarePoints]

/-- Literal set inclusion behind the intermediate/high-prime split. -/
theorem hallBaseTailSquarePoints_subset_intermediate_union_high
    (N : ℕ) (B : Finset ℕ) (pivot cutoff upper : ℕ) :
    hallBaseTailSquarePoints N B cutoff pivot ⊆
      twoBasePrimeSquareUnion N pivot
          (tailIntermediatePrimes cutoff upper) ∪
        twoBaseHighTailSquarePoints N pivot upper := by
  classical
  intro point hpoint
  have hparts := Finset.mem_filter.mp hpoint
  have hbase : point ∈ lowBaseSet N :=
    (Finset.mem_inter.mp hparts.1).2
  obtain ⟨p, hpPrime, hpCutoff, hpDiv⟩ := hparts.2
  by_cases hpUpper : p ≤ upper
  · apply Finset.mem_union_left
    exact Finset.mem_biUnion.mpr ⟨p,
      mem_tailIntermediatePrimes.mpr
        ⟨hpPrime, hpCutoff, hpUpper⟩,
      Finset.mem_filter.mpr ⟨hbase, hpDiv⟩⟩
  · apply Finset.mem_union_right
    exact Finset.mem_filter.mpr ⟨hbase,
      ⟨p, hpPrime, Nat.lt_of_not_ge hpUpper, hpDiv⟩⟩

theorem hallBaseTailSquarePoints_card_le_intermediate_add_high
    (N : ℕ) (B : Finset ℕ) (pivot cutoff upper : ℕ) :
    (hallBaseTailSquarePoints N B cutoff pivot).card ≤
      (twoBasePrimeSquareUnion N pivot
        (tailIntermediatePrimes cutoff upper)).card +
        (twoBaseHighTailSquarePoints N pivot upper).card := by
  exact (Finset.card_le_card
    (hallBaseTailSquarePoints_subset_intermediate_union_high
      N B pivot cutoff upper)).trans (Finset.card_union_le _ _)

/-- Normalized semantic split.  No numerical envelope appears here. -/
theorem hallBaseTailSquareCount_ratio_le_intermediate_add_high
    {N : ℕ} (B : Finset ℕ) (pivot cutoff upper : ℕ)
    (hN : 0 < N) :
    hallBaseTailSquareCount N B cutoff pivot / N ≤
      ((twoBasePrimeSquareUnion N pivot
        (tailIntermediatePrimes cutoff upper)).card : ℚ) / N +
        ((twoBaseHighTailSquarePoints N pivot upper).card : ℚ) / N := by
  have hcard :
      ((hallBaseTailSquarePoints N B cutoff pivot).card : ℚ) ≤
        ((twoBasePrimeSquareUnion N pivot
          (tailIntermediatePrimes cutoff upper)).card : ℚ) +
          ((twoBaseHighTailSquarePoints N pivot upper).card : ℚ) := by
    exact_mod_cast hallBaseTailSquarePoints_card_le_intermediate_add_high
      N B pivot cutoff upper
  rw [hallBaseTailSquareCount_eq_card, ← add_div]
  exact div_le_div_of_nonneg_right hcard (by positivity)

/-- At the five-million split, the reciprocal-square part is already closed.
The sole remaining one-pivot obligation is now the displayed bound on the
*actual* high-prime point set together with the exact prime-count endpoint.
-/
-/

theorem hallBaseTailSquareCount_ratio_le_fiveMillion_of_high
    {N : ℕ} (B : Finset ℕ) (pivot : ℕ)
    (hLower : 5_000_000 ≤ N)
    (hhigh :
      ((twoBaseHighTailSquarePoints N pivot (N / 49)).card : ℚ) / N +
          2 * ((Nat.primeCounting (N / 49) -
            Nat.primeCounting 7 : ℕ) : ℚ) / N ≤
        fiveMillionOddRoot7Envelope / 3) :
    hallBaseTailSquareCount N B 7 pivot / N ≤
      (fiveMillionOddRoot7Envelope +
        6 * fiveMillionSquareTail7Envelope / 25) / 3 := by
  have hN : 0 < N := lt_of_lt_of_le (by norm_num) hLower
  have hcutUpper : 7 ≤ N / 49 := by omega
  let primes := tailIntermediatePrimes 7 (N / 49)
  have hmedium := twoBaseIntermediatePrimeSquareUnion_ratio_le
    (pivot := pivot) hN hcutUpper (by norm_num : 5 ≤ 7)
  have hprime : ∀ p ∈ primes, Nat.Prime p := by
    intro p hp
    exact (mem_tailIntermediatePrimes.mp hp).1
  have hcut : ∀ p ∈ primes, 7 < p := by
    intro p hp
    exact (mem_tailIntermediatePrimes.mp hp).2.1
  have hsquare := fiveMillionSquareTail7_kernel_close primes hprime hcut
  have hmain :
      2 * (∑ p ∈ primes, reciprocalSquareQ p) / 25 ≤
        2 * fiveMillionSquareTail7Envelope / 25 := by
    gcongr
  have hsplit := hallBaseTailSquareCount_ratio_le_intermediate_add_high
    B pivot 7 (N / 49) hN
  dsimp [primes] at hmedium hsquare hmain
  calc
    hallBaseTailSquareCount N B 7 pivot / N ≤
        ((twoBasePrimeSquareUnion N pivot
          (tailIntermediatePrimes 7 (N / 49))).card : ℚ) / N +
          ((twoBaseHighTailSquarePoints N pivot (N / 49)).card : ℚ) / N :=
      hsplit
    _ ≤
        (2 * (∑ p ∈ tailIntermediatePrimes 7 (N / 49),
          reciprocalSquareQ p) / 25 +
          2 * ((Nat.primeCounting (N / 49) -
            Nat.primeCounting 7 : ℕ) : ℚ) / N) +
          ((twoBaseHighTailSquarePoints N pivot (N / 49)).card : ℚ) / N := by
      gcongr
    _ ≤ 2 * fiveMillionSquareTail7Envelope / 25 +
        fiveMillionOddRoot7Envelope / 3 := by
      linarith
    _ = (fiveMillionOddRoot7Envelope +
        6 * fiveMillionSquareTail7Envelope / 25) / 3 := by
      ring

#print axioms hallBaseTailSquarePoints_subset_intermediate_union_high
#print axioms twoBaseHighTailSquarePoint_accepts_normal_or_fiveTwist
#print axioms hallBaseTailSquareCount_ratio_le_fiveMillion_of_high

end Erdos848
