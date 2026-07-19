import Erdos848.TailGlobalMixedEvenAllRows
import Erdos848.TailGlobalMixedSmallPeriodic
import Erdos848.TailGlobalMixedValuationPartition
import Erdos848.TailFiveMillionSquareTailCore
import Erdos848.TailPureFiveMillionMedium
import Erdos848.TailMixedHall

namespace Erdos848

/-!
# Uniform degree of an actual mixed residual pivot

For either sharp base progression we split every nonsquarefree value
`pivot * point + 1` into the literal prime ranges

* `p ∈ {2,3,7}`;
* `7 < p ≤ N / 55`;
* `N / 55 < p`.

The prime `5` is impossible because the pivot belongs to the actual Hall
residual.  The last range is paid by the all-support mixed root rows, including
all three even valuations.  Thus this file contains no interval enumeration.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def globalMixedDegreeSmallEnvelope : Rat :=
  17 / 1225

def globalMixedDegreeBadEnvelope : Rat :=
  globalMixedDegreeSmallEnvelope +
    fiveMillionSquareTail7Envelope / 25 +
      fiveMillionOddRoot7Envelope / 6

/-- The complete numerical margin, including the exact periodic-prefix excess
and the base-progression endpoint, is already strict at `N = 5,000,000`. -/
theorem globalMixedDegreeBadEnvelope_margin :
    globalMixedDegreeBadEnvelope +
        (1 + 19601 / 49) / 5_000_000 <
      1 / 50 - 1 / 525 := by
  norm_num [globalMixedDegreeBadEnvelope, globalMixedDegreeSmallEnvelope,
    fiveMillionSquareTail7Envelope,
    fiveMillionOddRoot7Envelope]

def GlobalMixedAnyHighResidueRow
    (N pivot baseResidue : Nat) : Prop :=
  (((twoBaseHighTailSquarePointsAtResidue
      N pivot (N / 55) baseResidue).card : Rat) +
    Nat.primeCounting (N / 55)) / N <=
      fiveMillionOddRoot7Envelope / 5

private theorem globalMixedOddHighResidueRow_allSupport
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotOdd : Odd pivot) :
    GlobalMixedHighResidueRow N pivot baseResidue := by
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotBounds := hallCompletion_subset_Icc hBout hpivotCompletion
  have hrows := actualMixedSupport_all_rowBounds
    (fiveMillionPivotSupport pivot) hLower
    (fiveMillionPivotSupport_primes pivot)
    (fiveMillionPivotSupport_increasing pivot)
    (fiveMillionPivotSupport_prod_le
      (Finset.mem_Icc.mp hpivotBounds).1
      (Finset.mem_Icc.mp hpivotBounds).2)
  exact globalMixedHighResidue_row_of_four
    hLower hBout hpivotResidual hpivotOdd hrows

/-- Every actual residual pivot, with no parity assumption, has the same
one-progression high-tail bound.  The worst case is `v₂(pivot) ≥ 3`. -/
theorem globalMixedAnyHighResidueRow_allSupport
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B) :
    GlobalMixedAnyHighResidueRow N pivot baseResidue := by
  generalize hclass : fiveMillionValuationClassOf pivot = cls
  cases cls with
  | evenOne =>
      have hrows := globalMixedActualPivot_all_evenRowBounds
        hLower hBout hpivotResidual
      have hrow := globalMixedEvenOneHighResidue_row_of_four
        (baseResidue := baseResidue) hLower hBout hpivotResidual
        (fiveMillionValuationClassOf_evenOne hclass) hrows.1
      unfold GlobalMixedAnyHighResidueRow
      unfold GlobalMixedEvenHighResidueRow at hrow
      calc
        _ <= globalMixedEvenValuationEnvelope .one := hrow
        _ <= fiveMillionOddRoot7Envelope / 5 := by
          norm_num [globalMixedEvenValuationEnvelope,
            fiveMillionOddRoot7Envelope]
  | evenTwo =>
      have hrows := globalMixedActualPivot_all_evenRowBounds
        hLower hBout hpivotResidual
      have hrow := globalMixedEvenTwoHighResidue_row_of_four
        (baseResidue := baseResidue) hLower hBout hpivotResidual
        (fiveMillionValuationClassOf_evenTwo hclass) hrows.2.1
      unfold GlobalMixedAnyHighResidueRow
      unfold GlobalMixedEvenHighResidueRow at hrow
      calc
        _ <= globalMixedEvenValuationEnvelope .two := hrow
        _ <= fiveMillionOddRoot7Envelope / 5 := by
          norm_num [globalMixedEvenValuationEnvelope,
            fiveMillionOddRoot7Envelope]
  | evenThree =>
      have hrows := globalMixedActualPivot_all_evenRowBounds
        hLower hBout hpivotResidual
      have hrow := globalMixedEvenThreeHighResidue_row_of_four
        (baseResidue := baseResidue) hLower hBout hpivotResidual
        (fiveMillionValuationClassOf_evenThree hclass) hrows.2.2
      unfold GlobalMixedAnyHighResidueRow
      unfold GlobalMixedEvenHighResidueRow at hrow
      calc
        _ <= globalMixedEvenValuationEnvelope .three := hrow
        _ = fiveMillionOddRoot7Envelope / 5 := by
          simp [globalMixedEvenValuationEnvelope]
  | oddOne =>
      have hodd := odd_of_mod_four_eq_one_or_three_core
        (Or.inl (fiveMillionValuationClassOf_oddOne hclass))
      have hrow := globalMixedOddHighResidueRow_allSupport
        (baseResidue := baseResidue) hLower hBout hpivotResidual hodd
      unfold GlobalMixedAnyHighResidueRow
      unfold GlobalMixedHighResidueRow at hrow
      calc
        _ <= fiveMillionOddRoot7Envelope / 6 := hrow
        _ <= fiveMillionOddRoot7Envelope / 5 := by
          norm_num [fiveMillionOddRoot7Envelope]
  | oddThree =>
      have hodd := odd_of_mod_four_eq_one_or_three_core
        (Or.inr (fiveMillionValuationClassOf_oddThree hclass))
      have hrow := globalMixedOddHighResidueRow_allSupport
        (baseResidue := baseResidue) hLower hBout hpivotResidual hodd
      unfold GlobalMixedAnyHighResidueRow
      unfold GlobalMixedHighResidueRow at hrow
      calc
        _ <= fiveMillionOddRoot7Envelope / 6 := hrow
        _ <= fiveMillionOddRoot7Envelope / 5 := by
          norm_num [fiveMillionOddRoot7Envelope]

noncomputable def globalMixedBaseTailBadPoints
    (N pivot baseResidue : Nat) : Finset Nat :=
  baseResiduePrimeSquareUnion N pivot baseResidue
      (tailIntermediatePrimes 7 (N / 55)) ∪
    twoBaseHighTailSquarePointsAtResidue N pivot (N / 55) baseResidue

/-- The medium-prime endpoint count is absorbed by the prime-count term in
the transformed-root row. -/
theorem globalMixedBaseTailBadPoints_ratio_le
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B) :
    ((globalMixedBaseTailBadPoints N pivot baseResidue).card : Rat) / N <=
      fiveMillionSquareTail7Envelope / 25 +
        fiveMillionOddRoot7Envelope / 5 := by
  let primes := tailIntermediatePrimes 7 (N / 55)
  let medium := baseResiduePrimeSquareUnion N pivot baseResidue primes
  let high := twoBaseHighTailSquarePointsAtResidue
    N pivot (N / 55) baseResidue
  have hNpos : 0 < N := by omega
  have hNposQ : (0 : Rat) < N := by exact_mod_cast hNpos
  have hcut : 7 <= N / 55 := by omega
  have hprime : ∀ p ∈ primes, Nat.Prime p := by
    intro p hp
    exact (mem_tailIntermediatePrimes.mp hp).1
  have hfive : ∀ p ∈ primes, p ≠ 5 := by
    intro p hp
    have hpLarge := (mem_tailIntermediatePrimes.mp hp).2.1
    omega
  have hmediumRaw := baseResiduePrimeSquareUnion_ratio_le
    (N := N) (pivot := pivot) (residue := baseResidue)
    hNpos primes hprime hfive
  have hsum := fiveMillionSquareTail7_kernel_close primes hprime
    (fun p hp => (mem_tailIntermediatePrimes.mp hp).2.1)
  have hprimeCard : primes.card <= Nat.primeCounting (N / 55) := by
    dsimp [primes]
    rw [tailIntermediatePrimes_card hcut]
    omega
  have hprimeCardRatio : ((primes.card : Nat) : Rat) / N <=
      (Nat.primeCounting (N / 55) : Rat) / N := by
    apply div_le_div_of_nonneg_right _ hNposQ.le
    exact_mod_cast hprimeCard
  have hmedium : ((medium.card : Nat) : Rat) / N <=
      fiveMillionSquareTail7Envelope / 25 +
        (Nat.primeCounting (N / 55) : Rat) / N := by
    dsimp [medium]
    have hsumDiv :
        (∑ p ∈ primes, reciprocalSquareQ p) / 25 <=
          fiveMillionSquareTail7Envelope / 25 := by
      gcongr
    linarith
  have hhigh : ((high.card : Nat) : Rat) / N +
      (Nat.primeCounting (N / 55) : Rat) / N <=
        fiveMillionOddRoot7Envelope / 5 := by
    have hrow := globalMixedAnyHighResidueRow_allSupport
      (baseResidue := baseResidue) hLower hBout hpivotResidual
    simpa [GlobalMixedAnyHighResidueRow, high, add_div] using hrow
  have hcard : (globalMixedBaseTailBadPoints N pivot baseResidue).card <=
      medium.card + high.card := by
    dsimp [globalMixedBaseTailBadPoints, medium, high, primes]
    exact Finset.card_union_le _ _
  have hratio :
      ((globalMixedBaseTailBadPoints N pivot baseResidue).card : Rat) / N <=
        (medium.card : Rat) / N + (high.card : Rat) / N := by
    calc
      ((globalMixedBaseTailBadPoints N pivot baseResidue).card : Rat) / N <=
          ((medium.card + high.card : Nat) : Rat) / N := by
        apply div_le_div_of_nonneg_right _ hNposQ.le
        exact_mod_cast hcard
      _ = (medium.card : Rat) / N + (high.card : Rat) / N := by
        push_cast
        ring
  linarith

/-- For an odd pivot the all-support transformed-root row has denominator six
rather than the parity-uniform denominator five. -/
theorem globalMixedBaseTailBadPoints_ratio_le_odd
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotOdd : Odd pivot) :
    ((globalMixedBaseTailBadPoints N pivot baseResidue).card : Rat) / N <=
      fiveMillionSquareTail7Envelope / 25 +
        fiveMillionOddRoot7Envelope / 6 := by
  let primes := tailIntermediatePrimes 7 (N / 55)
  let medium := baseResiduePrimeSquareUnion N pivot baseResidue primes
  let high := twoBaseHighTailSquarePointsAtResidue
    N pivot (N / 55) baseResidue
  have hNpos : 0 < N := by omega
  have hNposQ : (0 : Rat) < N := by exact_mod_cast hNpos
  have hcut : 7 <= N / 55 := by omega
  have hprime : ∀ p ∈ primes, Nat.Prime p := by
    intro p hp
    exact (mem_tailIntermediatePrimes.mp hp).1
  have hfive : ∀ p ∈ primes, p ≠ 5 := by
    intro p hp
    have hpLarge := (mem_tailIntermediatePrimes.mp hp).2.1
    omega
  have hmediumRaw := baseResiduePrimeSquareUnion_ratio_le
    (N := N) (pivot := pivot) (residue := baseResidue)
    hNpos primes hprime hfive
  have hsum := fiveMillionSquareTail7_kernel_close primes hprime
    (fun p hp => (mem_tailIntermediatePrimes.mp hp).2.1)
  have hprimeCard : primes.card <= Nat.primeCounting (N / 55) := by
    dsimp [primes]
    rw [tailIntermediatePrimes_card hcut]
    omega
  have hprimeCardRatio : ((primes.card : Nat) : Rat) / N <=
      (Nat.primeCounting (N / 55) : Rat) / N := by
    apply div_le_div_of_nonneg_right _ hNposQ.le
    exact_mod_cast hprimeCard
  have hmedium : ((medium.card : Nat) : Rat) / N <=
      fiveMillionSquareTail7Envelope / 25 +
        (Nat.primeCounting (N / 55) : Rat) / N := by
    dsimp [medium]
    have hsumDiv :
        (∑ p ∈ primes, reciprocalSquareQ p) / 25 <=
          fiveMillionSquareTail7Envelope / 25 := by
      gcongr
    linarith
  have hhigh : ((high.card : Nat) : Rat) / N +
      (Nat.primeCounting (N / 55) : Rat) / N <=
        fiveMillionOddRoot7Envelope / 6 := by
    have hrow := globalMixedOddHighResidueRow_allSupport
      (baseResidue := baseResidue) hLower hBout hpivotResidual hpivotOdd
    simpa [GlobalMixedHighResidueRow, high, add_div] using hrow
  have hcard : (globalMixedBaseTailBadPoints N pivot baseResidue).card <=
      medium.card + high.card := by
    dsimp [globalMixedBaseTailBadPoints, medium, high, primes]
    exact Finset.card_union_le _ _
  have hratio :
      ((globalMixedBaseTailBadPoints N pivot baseResidue).card : Rat) / N <=
        (medium.card : Rat) / N + (high.card : Rat) / N := by
    calc
      ((globalMixedBaseTailBadPoints N pivot baseResidue).card : Rat) / N <=
          ((medium.card + high.card : Nat) : Rat) / N := by
        apply div_le_div_of_nonneg_right _ hNposQ.le
        exact_mod_cast hcard
      _ = (medium.card : Rat) / N + (high.card : Rat) / N := by
        push_cast
        ring
  linarith

theorem globalMixedDegreeSmallPoints_ratio_le
    {N pivot baseResidue : Nat} (hN : 0 < N) :
    ((baseResiduePrimeSquareUnion N pivot baseResidue
      globalMixedDegreeSmallPrimes).card : Rat) / N <=
        globalMixedDegreeSmallEnvelope + 19601 / (49 * N) := by
  simpa [globalMixedDegreeSmallEnvelope] using
    (globalMixedDegreeSmallPoints_periodic_ratio_le
      (N := N) (pivot := pivot) (baseResidue := baseResidue) hN)

noncomputable def globalMixedBaseBadPoints
    (N pivot baseResidue : Nat) : Finset Nat :=
  (baseResidueClass N baseResidue).filter fun point =>
    ¬ Squarefree (pivot * point + 1)

private lemma globalMixedBasePoint_not_five_event
    {N : Nat} {B : Finset Nat} {pivot point baseResidue : Nat}
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hbase : point ∈ baseResidueClass N baseResidue)
    (hlow : point ∈ lowBaseSet N)
    (hbaseResidue : baseResidue < 25) :
    ¬ 25 ∣ pivot * point + 1 := by
  intro hevent
  have hconstant := fiveMillionBaseConstant_not_twentyFive_dvd
    hBout hpivotResidual hlow (Finset.mem_filter.mp hbase).2
  apply hconstant
  rw [Nat.dvd_iff_mod_eq_zero]
  have heventZero : (pivot * point + 1) % 25 = 0 :=
    Nat.dvd_iff_mod_eq_zero.mp hevent
  have hpointResidue : point % 25 = baseResidue :=
    (Finset.mem_filter.mp hbase).2
  calc
    (pivot * baseResidue + 1) % 25 =
        ((pivot % 25) * (baseResidue % 25) + 1) % 25 := by
          simp [Nat.add_mod, Nat.mul_mod]
    _ = ((pivot % 25) * (point % 25) + 1) % 25 := by
          rw [Nat.mod_eq_of_lt hbaseResidue, hpointResidue]
    _ = (pivot * point + 1) % 25 := by
          simp [Nat.add_mod, Nat.mul_mod]
    _ = 0 := heventZero

private theorem globalMixedBaseBadPoints_subset_cover
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hresidue : baseResidue = 7 ∨ baseResidue = 18) :
    globalMixedBaseBadPoints N pivot baseResidue ⊆
      baseResiduePrimeSquareUnion N pivot baseResidue
          globalMixedDegreeSmallPrimes ∪
        globalMixedBaseTailBadPoints N pivot baseResidue := by
  classical
  intro point hpoint
  have hparts := Finset.mem_filter.mp hpoint
  have hbase : point ∈ baseResidueClass N baseResidue := hparts.1
  have hlow : point ∈ lowBaseSet N := by
    rcases hresidue with rfl | rfl
    · exact Finset.mem_union_left _ (by
        simpa [baseResidueClass, OriginalA7] using hbase)
    · exact Finset.mem_union_right _ (by
        simpa [baseResidueClass, OriginalA18] using hbase)
  have hresidueLt : baseResidue < 25 := by
    rcases hresidue with rfl | rfl <;> norm_num
  rw [Nat.squarefree_iff_prime_squarefree] at hparts
  push Not at hparts
  obtain ⟨p, hpPrime, hpSquare⟩ := hparts.2
  have hpDiv : p ^ 2 ∣ pivot * point + 1 := by
    simpa [pow_two] using hpSquare
  have hpFive : p ≠ 5 := by
    intro hp
    subst p
    exact globalMixedBasePoint_not_five_event hBout hpivotResidual
      hbase hlow hresidueLt hpDiv
  by_cases hpSmall : p <= 7
  · apply Finset.mem_union_left
    apply Finset.mem_biUnion.mpr
    refine ⟨p, ?_, Finset.mem_filter.mpr ⟨hbase, hpDiv⟩⟩
    unfold globalMixedDegreeSmallPrimes
    interval_cases p
    · norm_num at hpPrime
    · norm_num at hpPrime
    · simp
    · simp
    · norm_num at hpPrime
    · exact False.elim (hpFive rfl)
    · norm_num at hpPrime
    · simp
  · apply Finset.mem_union_right
    unfold globalMixedBaseTailBadPoints
    by_cases hpUpper : p <= N / 55
    · apply Finset.mem_union_left
      apply Finset.mem_biUnion.mpr
      exact ⟨p, mem_tailIntermediatePrimes.mpr
        ⟨hpPrime, by omega, hpUpper⟩,
          Finset.mem_filter.mpr ⟨hbase, hpDiv⟩⟩
    · apply Finset.mem_union_right
      apply Finset.mem_filter.mpr
      refine ⟨Finset.mem_filter.mpr ⟨hlow, ?_⟩,
        (Finset.mem_filter.mp hbase).2⟩
      exact ⟨p, hpPrime, by omega, hpDiv⟩

theorem globalMixedBaseBadPoints_ratio_le
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hresidue : baseResidue = 7 ∨ baseResidue = 18) :
    ((globalMixedBaseBadPoints N pivot baseResidue).card : Rat) / N <=
      globalMixedDegreeBadEnvelope + 19601 / (49 * N) := by
  have hNpos : 0 < N := by omega
  have hNposQ : (0 : Rat) < N := by exact_mod_cast hNpos
  let small := baseResiduePrimeSquareUnion N pivot baseResidue
    globalMixedDegreeSmallPrimes
  let tail := globalMixedBaseTailBadPoints N pivot baseResidue
  have hsubset := globalMixedBaseBadPoints_subset_cover
    hBout hpivotResidual hresidue
  have hcard : (globalMixedBaseBadPoints N pivot baseResidue).card <=
      small.card + tail.card :=
    (Finset.card_le_card hsubset).trans (Finset.card_union_le _ _)
  have hratio :
      ((globalMixedBaseBadPoints N pivot baseResidue).card : Rat) / N <=
        (small.card : Rat) / N + (tail.card : Rat) / N := by
    calc
      ((globalMixedBaseBadPoints N pivot baseResidue).card : Rat) / N <=
          ((small.card + tail.card : Nat) : Rat) / N := by
        apply div_le_div_of_nonneg_right _ hNposQ.le
        exact_mod_cast hcard
      _ = (small.card : Rat) / N + (tail.card : Rat) / N := by
        push_cast
        ring
  rcases Nat.even_or_odd pivot with hpivotEven | hpivotOdd
  · have hsmall : (small.card : Rat) / N <=
        19 / 3675 + 29203 / (147 * N) := by
      exact globalMixedDegreeEvenSmallPoints_periodic_ratio_le
        hNpos hpivotEven
    have htail : (tail.card : Rat) / N <=
        fiveMillionSquareTail7Envelope / 25 +
          fiveMillionOddRoot7Envelope / 5 := by
      exact globalMixedBaseTailBadPoints_ratio_le
        hLower hBout hpivotResidual
    have hmain :
        19 / 3675 + fiveMillionOddRoot7Envelope / 5 <=
          globalMixedDegreeSmallEnvelope +
            fiveMillionOddRoot7Envelope / 6 := by
      norm_num [globalMixedDegreeSmallEnvelope,
        fiveMillionOddRoot7Envelope]
    have hprefix : (29203 : Rat) / (147 * N) <=
        19601 / (49 * N) := by
      have hdenom : (0 : Rat) < N := hNposQ
      rw [div_le_div_iff₀ (by positivity) (by positivity)]
      nlinarith
    unfold globalMixedDegreeBadEnvelope
    linarith
  · have hsmall : (small.card : Rat) / N <=
        globalMixedDegreeSmallEnvelope + 19601 / (49 * N) := by
      exact globalMixedDegreeSmallPoints_ratio_le hNpos
    have htail : (tail.card : Rat) / N <=
        fiveMillionSquareTail7Envelope / 25 +
          fiveMillionOddRoot7Envelope / 6 := by
      exact globalMixedBaseTailBadPoints_ratio_le_odd
        hLower hBout hpivotResidual hpivotOdd
    unfold globalMixedDegreeBadEnvelope
    linarith

private lemma globalMixedBaseResidue_card_cast_lower
    (N baseResidue : Nat)
    (hresidue : baseResidue = 7 ∨ baseResidue = 18) :
    (N : Rat) / 25 - 1 <= ((baseResidueClass N baseResidue).card : Rat) := by
  rcases hresidue with rfl | rfl
  · have h := originalA7_card_cast_lower N
    simpa [baseResidueClass, OriginalA7] using
      (show (N : Rat) / 25 - 1 <= ((OriginalA7 N).card : Rat) by
        linarith)
  · rw [show baseResidueClass N 18 = OriginalA18 N by
      rfl, originalA18_card_exact]
    have hdecomp := Nat.mod_add_div (N + 7) 25
    have hmod := Nat.mod_lt (N + 7) (by norm_num : 0 < 25)
    have hnat : N <= 25 * ((N + 7) / 25) + 17 := by omega
    have hnatQ : (N : Rat) <=
        25 * (((N + 7) / 25 : Nat) : Rat) + 17 := by
      exact_mod_cast hnat
    linarith

/-- A residual pivot has degree strictly above `N/50 + N/525` into either
sharp base progression. -/
theorem globalMixedBaseResidue_degree_lower
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hresidue : baseResidue = 7 ∨ baseResidue = 18) :
    (N : Rat) / 50 + (N : Rat) / 525 <
      ((squarefreeNeighbours (baseResidueClass N baseResidue) pivot).card : Rat) := by
  have hNpos : 0 < N := by omega
  have hNposQ : (0 : Rat) < N := by exact_mod_cast hNpos
  have hbad := globalMixedBaseBadPoints_ratio_le
    hLower hBout hpivotResidual hresidue
  have htarget := globalMixedBaseResidue_card_cast_lower
    N baseResidue hresidue
  have hpartitionNat :
      (squarefreeNeighbours (baseResidueClass N baseResidue) pivot).card +
          (globalMixedBaseBadPoints N pivot baseResidue).card =
        (baseResidueClass N baseResidue).card := by
    simpa [squarefreeNeighbours, globalMixedBaseBadPoints, mul_comm] using
      (Finset.card_filter_add_card_filter_not
        (s := baseResidueClass N baseResidue)
        (p := fun point => Squarefree (pivot * point + 1)))
  have hpartitionQ :
      (((baseResidueClass N baseResidue).card : Nat) : Rat) / N =
        ((squarefreeNeighbours
          (baseResidueClass N baseResidue) pivot).card : Rat) / N +
        ((globalMixedBaseBadPoints N pivot baseResidue).card : Rat) / N := by
    have hcast :
        (((squarefreeNeighbours
          (baseResidueClass N baseResidue) pivot).card : Nat) : Rat) +
          (((globalMixedBaseBadPoints
            N pivot baseResidue).card : Nat) : Rat) =
          (((baseResidueClass N baseResidue).card : Nat) : Rat) := by
      exact_mod_cast hpartitionNat
    rw [← add_div, hcast]
  have htargetRatio : (1 : Rat) / 25 - 1 / N <=
      (((baseResidueClass N baseResidue).card : Nat) : Rat) / N := by
    calc
      (1 : Rat) / 25 - 1 / N = ((N : Rat) / 25 - 1) / N := by
        field_simp [ne_of_gt hNposQ]
      _ <= (((baseResidueClass N baseResidue).card : Nat) : Rat) / N :=
        div_le_div_of_nonneg_right htarget hNposQ.le
  have hendpoint : (1 + 19601 / 49 : Rat) / N <=
      (1 + 19601 / 49) / 5_000_000 := by
    have hLowerQ : (5_000_000 : Rat) <= N := by exact_mod_cast hLower
    exact div_le_div_of_nonneg_left (by norm_num) (by norm_num) hLowerQ
  have hbudget : globalMixedDegreeBadEnvelope +
      (1 + 19601 / 49) / N < 1 / 50 - 1 / 525 := by
    linarith [globalMixedDegreeBadEnvelope_margin]
  have hgoodRatio : (1 : Rat) / 50 + 1 / 525 <
      ((squarefreeNeighbours
        (baseResidueClass N baseResidue) pivot).card : Rat) / N := by
    have htotalLower : (1 : Rat) / 25 - 1 / N <=
        ((squarefreeNeighbours
          (baseResidueClass N baseResidue) pivot).card : Rat) / N +
        ((globalMixedBaseBadPoints N pivot baseResidue).card : Rat) / N := by
      rw [← hpartitionQ]
      exact htargetRatio
    have hgoodLower :
        (1 : Rat) / 25 - 1 / N -
            (globalMixedDegreeBadEnvelope + 19601 / (49 * N)) <=
          ((squarefreeNeighbours
            (baseResidueClass N baseResidue) pivot).card : Rat) / N := by
      linarith
    have hthreshold : (1 : Rat) / 50 + 1 / 525 <
        (1 : Rat) / 25 - 1 / N -
          (globalMixedDegreeBadEnvelope + 19601 / (49 * N)) := by
      have hrearrange :
          (1 : Rat) / 25 - 1 / N -
              (globalMixedDegreeBadEnvelope + 19601 / (49 * N)) =
            1 / 25 - (globalMixedDegreeBadEnvelope +
              (1 + 19601 / 49) / N) := by
        field_simp [ne_of_gt hNposQ]
        ring
      rw [hrearrange]
      linarith
    exact hthreshold.trans_le hgoodLower
  have hscaled := (lt_div_iff₀ hNposQ).mp hgoodRatio
  convert hscaled using 1 <;> ring

theorem globalMixedA7_degree_lower
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B) :
    (N : Rat) / 50 + (N : Rat) / 525 <
      ((squarefreeNeighbours (OriginalA7 N) pivot).card : Rat) := by
  simpa [baseResidueClass, OriginalA7] using
    (globalMixedBaseResidue_degree_lower hLower hBout hpivotResidual
      (baseResidue := 7) (Or.inl rfl))

theorem globalMixedA18_degree_lower
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B) :
    (N : Rat) / 50 + (N : Rat) / 525 <
      ((squarefreeNeighbours (OriginalA18 N) pivot).card : Rat) := by
  simpa [baseResidueClass, OriginalA18] using
    (globalMixedBaseResidue_degree_lower hLower hBout hpivotResidual
      (baseResidue := 18) (Or.inr rfl))

#print axioms globalMixedDegreeBadEnvelope_margin
#print axioms globalMixedAnyHighResidueRow_allSupport
#print axioms globalMixedBaseResidue_degree_lower
#print axioms globalMixedA7_degree_lower
#print axioms globalMixedA18_degree_lower

end Erdos848
