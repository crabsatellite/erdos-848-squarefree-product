import Erdos848.TailTwentyMillionOddDegree19Core
import Erdos848.TailTwentyMillionDegreeReduction
import Erdos848.TailTwentyMillionBranchAllocation
import Erdos848.TailTwentyMillionSquare
import Erdos848.TailGlobalMixedDegree
import Erdos848.TailFiveMillionPeriodicProducer

namespace Erdos848

/-!
# Uniform cutoff-19 degree certificate at twenty million

The odd branch uses all seven small prime-square coordinates.  The even
branch deletes the impossible `2²` coordinate.  The remaining bad points are
paid by the already kernel-checked `N / 55` transformed-root row and the
cutoff-19 reciprocal-square tail.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

noncomputable def twentyMillionDegreeSmallGoodPoints19
    (N baseResidue pivot : Nat) : Finset Nat := by
  classical
  exact if Even pivot then
    twentyMillionEvenDegreeSmallGoodPoints N baseResidue pivot
  else
    twentyMillionOddDegreeSmallGoodPoints N baseResidue pivot

noncomputable def twentyMillionDegreeBaseTailBadPoints19
    (N pivot baseResidue : Nat) : Finset Nat :=
  baseResiduePrimeSquareUnion N pivot baseResidue
      (tailIntermediatePrimes 19 (N / 55)) ∪
    twoBaseHighTailSquarePointsAtResidue
      N pivot (N / 55) baseResidue

private lemma twentyMillion_two_square_not_dvd_even_form
    {pivot point : Nat} (hpivotEven : Even pivot) :
    ¬ 2 ^ 2 ∣ pivot * point + 1 := by
  intro hfour
  have hrightOdd : Odd (pivot * point + 1) :=
    (hpivotEven.mul_right point).add_one
  have htwo : 2 ∣ pivot * point + 1 :=
    dvd_trans (by norm_num : 2 ∣ 2 ^ 2) hfour
  exact hrightOdd.not_two_dvd_nat htwo

private lemma twentyMillion_prime_square_exists
    {n : Nat} (hn : ¬ Squarefree n) :
    ∃ p : Nat, Nat.Prime p ∧ p ^ 2 ∣ n := by
  classical
  have hnot : ¬ ∀ p : Nat, Nat.Prime p → ¬ p * p ∣ n := by
    intro hall
    exact hn ((Nat.squarefree_iff_prime_squarefree).2 hall)
  push_neg at hnot
  rcases hnot with ⟨p, hp, hpp⟩
  exact ⟨p, hp, by simpa [pow_two] using hpp⟩

private theorem twentyMillionOddHighResidueRow_allSupport
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    (hLower : 5_000_000 ≤ N)
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

private theorem twentyMillionDegreeBaseTailBadPoints19_ratio_le_of_high
    {N pivot baseResidue : Nat} {highEnvelope : Rat}
    (hLower : 20_000_000 ≤ N)
    (hhigh :
      (((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 55) baseResidue).card : Rat) +
        Nat.primeCounting (N / 55)) / N ≤ highEnvelope) :
    ((twentyMillionDegreeBaseTailBadPoints19
      N pivot baseResidue).card : Rat) / N ≤
        primeSquareTail19Envelope / 25 + highEnvelope := by
  let primes := tailIntermediatePrimes 19 (N / 55)
  let medium :=
    baseResiduePrimeSquareUnion N pivot baseResidue primes
  let high :=
    twoBaseHighTailSquarePointsAtResidue
      N pivot (N / 55) baseResidue
  have hNpos : 0 < N := by omega
  have hNposQ : (0 : Rat) < N := by exact_mod_cast hNpos
  have hcut : 19 ≤ N / 55 := by omega
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
  have hsquare :
      (∑ p ∈ primes, reciprocalSquareQ p) ≤
        primeSquareTail19Envelope :=
    (finitePrimeSquareTail19_lt primes hprime
      (fun p hp => (mem_tailIntermediatePrimes.mp hp).2.1)).le
  have hprimeCard :
      primes.card ≤ Nat.primeCounting (N / 55) := by
    dsimp [primes]
    rw [tailIntermediatePrimes_card hcut]
    omega
  have hprimeCardRatio : ((primes.card : Nat) : Rat) / N ≤
      (Nat.primeCounting (N / 55) : Rat) / N := by
    apply div_le_div_of_nonneg_right _ hNposQ.le
    exact_mod_cast hprimeCard
  have hmedium : ((medium.card : Nat) : Rat) / N ≤
      primeSquareTail19Envelope / 25 +
        (Nat.primeCounting (N / 55) : Rat) / N := by
    dsimp [medium]
    have hsumDiv :
        (∑ p ∈ primes, reciprocalSquareQ p) / 25 ≤
          primeSquareTail19Envelope / 25 := by
      gcongr
    linarith
  have hhigh' : ((high.card : Nat) : Rat) / N +
      (Nat.primeCounting (N / 55) : Rat) / N ≤
        highEnvelope := by
    simpa [high, add_div] using hhigh
  have hcard :
      (twentyMillionDegreeBaseTailBadPoints19
        N pivot baseResidue).card ≤ medium.card + high.card := by
    dsimp [twentyMillionDegreeBaseTailBadPoints19,
      medium, high, primes]
    exact Finset.card_union_le _ _
  have hratio :
      ((twentyMillionDegreeBaseTailBadPoints19
        N pivot baseResidue).card : Rat) / N ≤
          (medium.card : Rat) / N + (high.card : Rat) / N := by
    calc
      ((twentyMillionDegreeBaseTailBadPoints19
        N pivot baseResidue).card : Rat) / N ≤
          ((medium.card + high.card : Nat) : Rat) / N := by
        apply div_le_div_of_nonneg_right _ hNposQ.le
        exact_mod_cast hcard
      _ = (medium.card : Rat) / N +
          (high.card : Rat) / N := by
        push_cast
        ring
  linarith

theorem twentyMillionDegreeBaseTailBadPoints19_ratio_le_odd
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    (hLower : 20_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotOdd : Odd pivot) :
    ((twentyMillionDegreeBaseTailBadPoints19
      N pivot baseResidue).card : Rat) / N ≤
        primeSquareTail19Envelope / 25 +
          fiveMillionOddRoot7Envelope / 6 := by
  apply twentyMillionDegreeBaseTailBadPoints19_ratio_le_of_high
    hLower
  have hrow := twentyMillionOddHighResidueRow_allSupport
    (baseResidue := baseResidue) (by omega) hBout hpivotResidual hpivotOdd
  simpa [GlobalMixedHighResidueRow, add_div] using hrow

theorem twentyMillionDegreeBaseTailBadPoints19_ratio_le_even
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    (hLower : 20_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B) :
    ((twentyMillionDegreeBaseTailBadPoints19
      N pivot baseResidue).card : Rat) / N ≤
        primeSquareTail19Envelope / 25 +
          fiveMillionOddRoot7Envelope / 5 := by
  apply twentyMillionDegreeBaseTailBadPoints19_ratio_le_of_high
    hLower
  have hrow := globalMixedAnyHighResidueRow_allSupport
    (baseResidue := baseResidue) (by omega) hBout hpivotResidual
  simpa [GlobalMixedAnyHighResidueRow, add_div] using hrow

private theorem twentyMillionQuotientImage_subset_base
    {N baseResidue : Nat} {quotients : Finset Nat}
    (hresidue : baseResidue = 7 ∨ baseResidue = 18)
    (hquotients : quotients ⊆ Finset.range (N / 25)) :
    quotients.image (fun q => baseResidue + 25 * q) ⊆
      baseResidueClass N baseResidue := by
  intro point hpoint
  obtain ⟨q, hq, rfl⟩ := Finset.mem_image.mp hpoint
  have hqLt : q < N / 25 :=
    Finset.mem_range.mp (hquotients hq)
  have hfloor : 25 * (N / 25) ≤ N := Nat.mul_div_le N 25
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_Icc.mpr ?_, ?_⟩
  · rcases hresidue with rfl | rfl <;> constructor <;> omega
  · rcases hresidue with rfl | rfl <;>
      norm_num [Nat.add_mod, Nat.mul_mod]

theorem twentyMillionDegreeSmallGoodPoints19_subset_base
    {N baseResidue pivot : Nat}
    (hresidue : baseResidue = 7 ∨ baseResidue = 18) :
    twentyMillionDegreeSmallGoodPoints19 N baseResidue pivot ⊆
      baseResidueClass N baseResidue := by
  classical
  by_cases hpivotEven : Even pivot
  · rw [twentyMillionDegreeSmallGoodPoints19, if_pos hpivotEven]
    apply twentyMillionQuotientImage_subset_base hresidue
    intro q hq
    exact (Finset.mem_filter.mp hq).1
  · rw [twentyMillionDegreeSmallGoodPoints19, if_neg hpivotEven]
    apply twentyMillionQuotientImage_subset_base hresidue
    intro q hq
    exact (Finset.mem_filter.mp hq).1

private theorem twentyMillionOddNoEvent_not_root
    {length baseResidue pivot q : Nat}
    (hq : q ∈ twentyMillionOddDegreeNoEventQuotients
      length baseResidue pivot)
    (index : TwentyMillionOddDegreePrimeIndex) :
    q % twentyMillionOddDegreeModulus index ∉
      twentyMillionOddDegreeRootSet baseResidue pivot index := by
  have hzero :
      (activeIndices
        (Finset.univ : Finset TwentyMillionOddDegreePrimeIndex)
        (fun i =>
          q % twentyMillionOddDegreeModulus i ∈
            twentyMillionOddDegreeRootSet baseResidue pivot i)).card = 0 :=
    (Finset.mem_filter.mp hq).2
  have hempty := Finset.card_eq_zero.mp hzero
  have hnot :
      index ∉ activeIndices
        (Finset.univ : Finset TwentyMillionOddDegreePrimeIndex)
        (fun i =>
          q % twentyMillionOddDegreeModulus i ∈
            twentyMillionOddDegreeRootSet baseResidue pivot i) := by
    rw [hempty]
    simp
  simpa [activeIndices] using hnot

private theorem twentyMillionEvenNoEvent_not_root
    {length baseResidue pivot q : Nat}
    (hq : q ∈ twentyMillionEvenDegreeNoEventQuotients
      length baseResidue pivot)
    (index : TwentyMillionOddDegreePrimeIndex)
    (hindex : index ≠ 0) :
    q % twentyMillionOddDegreeModulus index ∉
      twentyMillionOddDegreeRootSet baseResidue pivot index := by
  have hzero :
      (activeIndices
        (Finset.univ : Finset TwentyMillionOddDegreePrimeIndex)
        (fun i =>
          q % twentyMillionOddDegreeModulus i ∈
            twentyMillionEvenDegreeRootSet baseResidue pivot i)).card = 0 :=
    (Finset.mem_filter.mp hq).2
  have hempty := Finset.card_eq_zero.mp hzero
  have hnot :
      index ∉ activeIndices
        (Finset.univ : Finset TwentyMillionOddDegreePrimeIndex)
        (fun i =>
          q % twentyMillionOddDegreeModulus i ∈
            twentyMillionEvenDegreeRootSet baseResidue pivot i) := by
    rw [hempty]
    simp
  simpa [activeIndices, twentyMillionEvenDegreeRootSet, hindex] using hnot

theorem twentyMillionDegreeSmallGoodPoints19_not_small_event
    {N baseResidue pivot point : Nat}
    (hresidue : baseResidue = 7 ∨ baseResidue = 18)
    (hpoint :
      point ∈ twentyMillionDegreeSmallGoodPoints19
        N baseResidue pivot)
    (index : TwentyMillionOddDegreePrimeIndex) :
    ¬ (twentyMillionOddDegreePrime index) ^ 2 ∣
      pivot * point + 1 := by
  classical
  by_cases hpivotEven : Even pivot
  · rw [twentyMillionDegreeSmallGoodPoints19,
      if_pos hpivotEven] at hpoint
    by_cases hindex : index = 0
    · subst index
      simpa [twentyMillionOddDegreePrime] using
        (twentyMillion_two_square_not_dvd_even_form hpivotEven :
          ¬ 2 ^ 2 ∣ pivot * point + 1)
    · intro hevent
      obtain ⟨q, hq, rfl⟩ := Finset.mem_image.mp hpoint
      have hbaseMod :
          (baseResidue + 25 * q) % 25 = baseResidue := by
        rcases hresidue with rfl | rfl <;>
          norm_num [Nat.add_mod, Nat.mul_mod]
      have hroot := twentyMillionOddDegreeRoot_classifies
        (index := index) hbaseMod hevent
      have hbaseLt : baseResidue < 25 := by
        rcases hresidue with rfl | rfl <;> norm_num
      have hquotient :
          (baseResidue + 25 * q) / 25 = q := by
        rw [Nat.add_mul_div_left _ _ (by norm_num : 0 < 25),
          Nat.div_eq_of_lt hbaseLt]
        omega
      rw [hquotient] at hroot
      exact (twentyMillionEvenNoEvent_not_root hq index hindex)
        (by
          simp [twentyMillionOddDegreeRootSet, hroot])
  · intro hevent
    rw [twentyMillionDegreeSmallGoodPoints19,
      if_neg hpivotEven] at hpoint
    obtain ⟨q, hq, rfl⟩ := Finset.mem_image.mp hpoint
    have hbaseMod :
        (baseResidue + 25 * q) % 25 = baseResidue := by
      rcases hresidue with rfl | rfl <;>
        norm_num [Nat.add_mod, Nat.mul_mod]
    have hroot := twentyMillionOddDegreeRoot_classifies
      (index := index) hbaseMod hevent
    have hbaseLt : baseResidue < 25 := by
      rcases hresidue with rfl | rfl <;> norm_num
    have hquotient :
        (baseResidue + 25 * q) / 25 = q := by
      rw [Nat.add_mul_div_left _ _ (by norm_num : 0 < 25),
        Nat.div_eq_of_lt hbaseLt]
      omega
    rw [hquotient] at hroot
    exact (twentyMillionOddNoEvent_not_root hq index)
      (by
        simp [twentyMillionOddDegreeRootSet, hroot])

private lemma prime_le_nineteen_cases
    {p : Nat} (hpPrime : Nat.Prime p) (hpUpper : p ≤ 19) :
    p = 2 ∨ p = 3 ∨ p = 5 ∨ p = 7 ∨ p = 11 ∨
      p = 13 ∨ p = 17 ∨ p = 19 := by
  have hpLower := hpPrime.two_le
  interval_cases p <;> norm_num at hpPrime
  all_goals simp

theorem twentyMillionDegreeSmallGoodOutsideTail_subset_neighbours
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hresidue : baseResidue = 7 ∨ baseResidue = 18) :
    twentyMillionDegreeSmallGoodPoints19 N baseResidue pivot \
        twentyMillionDegreeBaseTailBadPoints19
          N pivot baseResidue ⊆
      squarefreeNeighbours
        (baseResidueClass N baseResidue) pivot := by
  classical
  intro point hpoint
  have hgood := (Finset.mem_sdiff.mp hpoint).1
  have hnotTail := (Finset.mem_sdiff.mp hpoint).2
  have hbase :=
    twentyMillionDegreeSmallGoodPoints19_subset_base hresidue hgood
  apply Finset.mem_filter.mpr
  refine ⟨hbase, ?_⟩
  by_contra hnotSquarefree
  obtain ⟨p, hpPrime, hpDiv⟩ :=
    twentyMillion_prime_square_exists hnotSquarefree
  have hpDiv' : p ^ 2 ∣ pivot * point + 1 := by
    simpa [Nat.mul_comm] using hpDiv
  by_cases hpUpper : p ≤ 19
  · rcases prime_le_nineteen_cases hpPrime hpUpper with
      rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    · exact
        (twentyMillionDegreeSmallGoodPoints19_not_small_event
          hresidue hgood 0)
          (by simpa [twentyMillionOddDegreePrime] using hpDiv')
    · exact
        (twentyMillionDegreeSmallGoodPoints19_not_small_event
          hresidue hgood 1)
          (by simpa [twentyMillionOddDegreePrime] using hpDiv')
    · rcases hresidue with rfl | rfl
      · exact five_not_event_on_originalA7_from_residual
          hBout hpivotResidual
          (by simpa [baseResidueClass, OriginalA7] using hbase)
          (by simpa using hpDiv')
      · exact five_not_event_on_originalA18_from_residual
          hBout hpivotResidual
          (by simpa [baseResidueClass, OriginalA18] using hbase)
          (by simpa using hpDiv')
    · exact
        (twentyMillionDegreeSmallGoodPoints19_not_small_event
          hresidue hgood 2)
          (by simpa [twentyMillionOddDegreePrime] using hpDiv')
    · exact
        (twentyMillionDegreeSmallGoodPoints19_not_small_event
          hresidue hgood 3)
          (by simpa [twentyMillionOddDegreePrime] using hpDiv')
    · exact
        (twentyMillionDegreeSmallGoodPoints19_not_small_event
          hresidue hgood 4)
          (by simpa [twentyMillionOddDegreePrime] using hpDiv')
    · exact
        (twentyMillionDegreeSmallGoodPoints19_not_small_event
          hresidue hgood 5)
          (by simpa [twentyMillionOddDegreePrime] using hpDiv')
    · exact
        (twentyMillionDegreeSmallGoodPoints19_not_small_event
          hresidue hgood 6)
          (by simpa [twentyMillionOddDegreePrime] using hpDiv')
  · apply hnotTail
    unfold twentyMillionDegreeBaseTailBadPoints19
    by_cases hpMedium : p ≤ N / 55
    · apply Finset.mem_union_left
      apply Finset.mem_biUnion.mpr
      exact ⟨p, mem_tailIntermediatePrimes.mpr
        ⟨hpPrime, Nat.lt_of_not_ge hpUpper, hpMedium⟩,
          Finset.mem_filter.mpr ⟨hbase, hpDiv'⟩⟩
    · apply Finset.mem_union_right
      apply Finset.mem_filter.mpr
      refine ⟨Finset.mem_filter.mpr ⟨?_, ?_⟩,
        (Finset.mem_filter.mp hbase).2⟩
      · rcases hresidue with rfl | rfl
        · exact Finset.mem_union_left _
            (by simpa [baseResidueClass, OriginalA7] using hbase)
        · exact Finset.mem_union_right _
            (by simpa [baseResidueClass, OriginalA18] using hbase)
      · exact ⟨p, hpPrime, Nat.lt_of_not_ge hpMedium, hpDiv'⟩

private theorem twentyMillionDegree_ratio_lower_of_good
    {N : Nat} {degree good tail : Finset Nat}
    {density endpoint tailEnvelope : Rat}
    (hN : 0 < N)
    (hdensity : 0 ≤ density)
    (hgood :
      ((N / 25 : Nat) : Rat) * density - endpoint ≤
        (good.card : Rat))
    (htail : (tail.card : Rat) / N ≤ tailEnvelope)
    (hcover : good \ tail ⊆ degree) :
    density / 25 - (density + endpoint) / N - tailEnvelope ≤
      (degree.card : Rat) / N := by
  have hfloor :
      (N : Rat) / 25 - 1 ≤ ((N / 25 : Nat) : Rat) := by
    have hnat : N < 25 * (N / 25 + 1) :=
      Nat.lt_mul_div_succ N (by norm_num)
    have hrat :
        (N : Rat) < 25 * (((N / 25 : Nat) : Rat) + 1) := by
      exact_mod_cast hnat
    linarith
  have hgoodAbs :
      ((N : Rat) / 25 - 1) * density - endpoint ≤
        (good.card : Rat) := by
    have hscaled :=
      mul_le_mul_of_nonneg_right hfloor hdensity
    linarith
  have hcoverCard :
      (good \ tail).card ≤ degree.card :=
    Finset.card_le_card hcover
  have hpartition :
      (good \ tail).card + (good ∩ tail).card = good.card := by
    simpa [Nat.add_comm] using
      Finset.card_sdiff_add_card_inter good tail
  have hinter : (good ∩ tail).card ≤ tail.card :=
    Finset.card_le_card (Finset.inter_subset_right)
  have hcardNat : good.card ≤ degree.card + tail.card := by
    omega
  have hcardQ :
      (good.card : Rat) ≤
        (degree.card : Rat) + (tail.card : Rat) := by
    exact_mod_cast hcardNat
  have hNQ : (0 : Rat) < N := by exact_mod_cast hN
  have hgoodRatio :
      density / 25 - (density + endpoint) / N ≤
        (good.card : Rat) / N := by
    calc
      density / 25 - (density + endpoint) / N =
          (((N : Rat) / 25 - 1) * density - endpoint) / N := by
        field_simp
        ring
      _ ≤ (good.card : Rat) / N :=
        div_le_div_of_nonneg_right hgoodAbs hNQ.le
  have hcardRatio :
      (good.card : Rat) / N ≤
        (degree.card : Rat) / N + (tail.card : Rat) / N := by
    rw [← add_div]
    exact div_le_div_of_nonneg_right hcardQ hNQ.le
  linarith

theorem twentyMillionBaseResidue_degree_lower19
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    (hLower : 20_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hresidue : baseResidue = 7 ∨ baseResidue = 18) :
    (5569 : Rat) / 250000 * N <
      ((squarefreeNeighbours
        (baseResidueClass N baseResidue) pivot).card : Rat) := by
  classical
  have hN : 0 < N := by omega
  have hNQ : (0 : Rat) < N := by exact_mod_cast hN
  have hcover :=
    twentyMillionDegreeSmallGoodOutsideTail_subset_neighbours
      hBout hpivotResidual hresidue
  by_cases hpivotEven : Even pivot
  · have hgood :=
      twentyMillionEvenDegreeSmallGoodPoints_card_lower
        N baseResidue pivot
    have htail :=
      twentyMillionDegreeBaseTailBadPoints19_ratio_le_even
        hLower hBout hpivotResidual
        (baseResidue := baseResidue)
    have hlower := twentyMillionDegree_ratio_lower_of_good
      (degree := squarefreeNeighbours
        (baseResidueClass N baseResidue) pivot)
      (good := twentyMillionEvenDegreeSmallGoodPoints
        N baseResidue pivot)
      (tail := twentyMillionDegreeBaseTailBadPoints19
        N pivot baseResidue)
      (density := (267544043986 : Rat) / 313613286987)
      (endpoint := 41)
      (tailEnvelope := primeSquareTail19Envelope / 25 +
        fiveMillionOddRoot7Envelope / 5)
      hN (by norm_num :
        (0 : Rat) ≤ (267544043986 : Rat) / 313613286987)
      (by
        have hgood' :
            ((N / 25 : Nat) : Rat) *
                ((267544043986 : Rat) / 313613286987) - 41 ≤
              (twentyMillionEvenDegreeSmallGoodPoints
                N baseResidue pivot).card := by
          linarith
        exact hgood')
      htail
      (by
        simpa [twentyMillionDegreeSmallGoodPoints19,
          hpivotEven] using hcover)
    have hendpoint :
        (((267544043986 : Rat) / 313613286987) + 41) / N ≤
          (((267544043986 : Rat) / 313613286987) + 41) /
            20_000_000 := by
      have hLowerQ : (20_000_000 : Rat) ≤ N := by
        exact_mod_cast hLower
      exact div_le_div_of_nonneg_left
        (by norm_num) (by norm_num) hLowerQ
    have hnumeric :
        (5569 : Rat) / 250000 +
            ((((267544043986 : Rat) / 313613286987) + 41) /
              20_000_000) +
            primeSquareTail19Envelope / 25 +
            fiveMillionOddRoot7Envelope / 5 <
          ((267544043986 : Rat) / 313613286987) / 25 := by
      norm_num [primeSquareTail19Envelope,
        fiveMillionOddRoot7Envelope]
    have hratio :
        (5569 : Rat) / 250000 <
          ((squarefreeNeighbours
            (baseResidueClass N baseResidue) pivot).card : Rat) / N := by
      linarith
    exact (lt_div_iff₀ hNQ).mp hratio
  · have hpivotOdd : Odd pivot := Nat.not_even_iff_odd.mp hpivotEven
    have hgood :=
      twentyMillionOddDegreeSmallGoodPoints_card_lower
        N baseResidue pivot
    have htail :=
      twentyMillionDegreeBaseTailBadPoints19_ratio_le_odd
        hLower hBout hpivotResidual hpivotOdd
        (baseResidue := baseResidue)
    have hlower := twentyMillionDegree_ratio_lower_of_good
      (degree := squarefreeNeighbours
        (baseResidueClass N baseResidue) pivot)
      (good := twentyMillionOddDegreeSmallGoodPoints
        N baseResidue pivot)
      (tail := twentyMillionDegreeBaseTailBadPoints19
        N pivot baseResidue)
      (density := (1203917131975 : Rat) / 1881679721922)
      (endpoint := 63)
      (tailEnvelope := primeSquareTail19Envelope / 25 +
        fiveMillionOddRoot7Envelope / 6)
      hN (by norm_num :
        (0 : Rat) ≤ (1203917131975 : Rat) / 1881679721922)
      (by
        have hgood' :
            ((N / 25 : Nat) : Rat) *
                ((1203917131975 : Rat) / 1881679721922) - 63 ≤
              (twentyMillionOddDegreeSmallGoodPoints
                N baseResidue pivot).card := by
          linarith
        exact hgood')
      htail
      (by
        simpa [twentyMillionDegreeSmallGoodPoints19,
          hpivotEven] using hcover)
    have hendpoint :
        (((1203917131975 : Rat) / 1881679721922) + 63) / N ≤
          (((1203917131975 : Rat) / 1881679721922) + 63) /
            20_000_000 := by
      have hLowerQ : (20_000_000 : Rat) ≤ N := by
        exact_mod_cast hLower
      exact div_le_div_of_nonneg_left
        (by norm_num) (by norm_num) hLowerQ
    have hnumeric :
        (5569 : Rat) / 250000 +
            ((((1203917131975 : Rat) / 1881679721922) + 63) /
              20_000_000) +
            primeSquareTail19Envelope / 25 +
            fiveMillionOddRoot7Envelope / 6 <
          ((1203917131975 : Rat) / 1881679721922) / 25 := by
      norm_num [primeSquareTail19Envelope,
        fiveMillionOddRoot7Envelope]
    have hratio :
        (5569 : Rat) / 250000 <
          ((squarefreeNeighbours
            (baseResidueClass N baseResidue) pivot).card : Rat) / N := by
      linarith
    exact (lt_div_iff₀ hNQ).mp hratio

theorem twentyMillionDegreeSumCertificate_global19
    {N : Nat} {B : Finset Nat}
    (hLower : 20_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B) :
    TwentyMillionDegreeSumCertificate N B := by
  intro pivot hpivotResidual
  have hseven := twentyMillionBaseResidue_degree_lower19
    hLower hBout hpivotResidual (baseResidue := 7) (Or.inl rfl)
  have heighteen := twentyMillionBaseResidue_degree_lower19
    hLower hBout hpivotResidual (baseResidue := 18) (Or.inr rfl)
  have hseven' :
      (5569 : Rat) / 250000 * N <
        ((squarefreeNeighbours (OriginalA7 N) pivot).card : Rat) := by
    simpa [baseResidueClass, OriginalA7] using hseven
  have heighteen' :
      (5569 : Rat) / 250000 * N <
        ((squarefreeNeighbours (OriginalA18 N) pivot).card : Rat) := by
    simpa [baseResidueClass, OriginalA18] using heighteen
  have hbase := originalA18_card_cast_upper N
  have htargetQ :
      (4_500_000 : Rat) * N +
          1_000_000_000 * (OriginalA18 N).card <
        1_000_000_000 *
          ((squarefreeNeighbours (OriginalA7 N) pivot).card +
            (squarefreeNeighbours (OriginalA18 N) pivot).card) := by
    push_cast
    have hLowerQ : (20_000_000 : Rat) ≤ N := by
      exact_mod_cast hLower
    linarith
  exact_mod_cast htargetQ

theorem exists_twentyMillionBranchApplies_global19
    {N : Nat} {B : Finset Nat}
    (hLower : 20_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hdefect : (OriginalA7 N).card <
      B.card + (hallNonNeighbours N B).card) :
    ∃ branch : TwentyMillionBranch,
      TwentyMillionBranchApplies N B branch := by
  apply exists_twentyMillionBranchApplies hLower hBout
  exact twentyMillionDegreeResidualLower_of_sumCertificate
    hLower hBout hBprop hdefect
      (twentyMillionDegreeSumCertificate_global19 hLower hBout)

#print axioms twentyMillionBaseResidue_degree_lower19
#print axioms twentyMillionDegreeSumCertificate_global19
#print axioms exists_twentyMillionBranchApplies_global19

end Erdos848
