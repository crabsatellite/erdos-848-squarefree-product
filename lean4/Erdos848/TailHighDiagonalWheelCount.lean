import Erdos848.TailCRTCounting
import Erdos848.TailHighDiagonalPrimeUnion

namespace Erdos848

/-!
# Direct periodic count for diagonal primes

The diagonal union only uses primes congruent to `1 mod 4`.  Counting all
primes pays for the wrong residue class and forces many extra endpoint rows.
The two fixed wheels below count the relevant residue class directly.

* the small wheel `4 * 3 * 5 * 7 * 11 = 4620` is best near two billion;
* the terminal wheel additionally removes `13` and `17`, adding those two
  actual primes back explicitly.

Only the cardinalities of one period are finite checks.  The prefix theorem,
prime containment, and all interval scaling are proved here.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 10000000

def highDiagonalWheelFourPeriod : Nat := 4_620

def highDiagonalWheelFourResidues : Finset Nat :=
  (Finset.range highDiagonalWheelFourPeriod).filter fun r =>
    r % 4 = 1 ∧ r % 3 ≠ 0 ∧ r % 5 ≠ 0 ∧
      r % 7 ≠ 0 ∧ r % 11 ≠ 0

theorem highDiagonalWheelFourResidues_subset :
    highDiagonalWheelFourResidues ⊆
      Finset.range highDiagonalWheelFourPeriod :=
  Finset.filter_subset _ _

theorem highDiagonalWheelFourResidues_card :
    highDiagonalWheelFourResidues.card = 480 := by
  decide

def highDiagonalWheelSixPeriod : Nat := 1_021_020

private def highDiagonalWheelSixOddPeriod : Nat := 255_255

def highDiagonalWheelSixResidues : Finset Nat :=
  (Finset.range highDiagonalWheelSixPeriod).filter fun r =>
    r % 4 = 1 ∧ highDiagonalWheelSixOddPeriod.Coprime r

theorem highDiagonalWheelSixResidues_subset :
    highDiagonalWheelSixResidues ⊆
      Finset.range highDiagonalWheelSixPeriod :=
  Finset.filter_subset _ _

theorem highDiagonalWheelSixResidues_card :
    highDiagonalWheelSixResidues.card = 92_160 := by
  let source :=
    (Finset.range highDiagonalWheelSixOddPeriod).filter fun r =>
      highDiagonalWheelSixOddPeriod.Coprime r
  have hcoprime :
      Nat.Coprime 4 highDiagonalWheelSixOddPeriod := by
    norm_num [highDiagonalWheelSixOddPeriod]
  have hperiod :
      highDiagonalWheelSixPeriod =
        4 * highDiagonalWheelSixOddPeriod := by
    norm_num [highDiagonalWheelSixPeriod,
      highDiagonalWheelSixOddPeriod]
  have hcard :
      source.card = highDiagonalWheelSixResidues.card := by
    apply Finset.card_bij
      (fun r _ =>
        (Nat.chineseRemainder hcoprime 1 r : Nat))
    · intro r hr
      have hrData := Finset.mem_filter.mp hr
      have hcrt4 :=
        (Nat.chineseRemainder hcoprime 1 r).prop.1
      have hcrtOdd :=
        (Nat.chineseRemainder hcoprime 1 r).prop.2
      rw [highDiagonalWheelSixResidues, Finset.mem_filter]
      refine ⟨?_, ?_, ?_⟩
      · rw [Finset.mem_range, hperiod]
        exact Nat.chineseRemainder_lt_mul hcoprime 1 r
          (by norm_num) (by
            norm_num [highDiagonalWheelSixOddPeriod])
      · simpa [Nat.ModEq] using hcrt4
      · rw [Nat.coprime_comm, Nat.Coprime, hcrtOdd.gcd_eq]
        exact hrData.2.symm
    · intro r₁ hr₁ r₂ hr₂ heq
      have hr₁Lt := Finset.mem_range.mp
        (Finset.mem_filter.mp hr₁).1
      have hr₂Lt := Finset.mem_range.mp
        (Finset.mem_filter.mp hr₂).1
      have hmod :
          r₁ ≡ r₂ [MOD highDiagonalWheelSixOddPeriod] :=
        (Nat.chineseRemainder hcoprime 1 r₁).prop.2.symm.trans <|
          heq ▸ (Nat.chineseRemainder hcoprime 1 r₂).prop.2
      exact hmod.eq_of_lt_of_lt hr₁Lt hr₂Lt
    · intro r hr
      have hrData := Finset.mem_filter.mp hr
      let a := r % highDiagonalWheelSixOddPeriod
      have haLt : a < highDiagonalWheelSixOddPeriod := by
        exact Nat.mod_lt _ (by
          norm_num [highDiagonalWheelSixOddPeriod])
      have haCoprime :
          highDiagonalWheelSixOddPeriod.Coprime a := by
        rw [Nat.coprime_comm, Nat.Coprime, ← Nat.gcd_rec]
        exact hrData.2.2
      have haMem : a ∈ source := by
        exact Finset.mem_filter.mpr
          ⟨Finset.mem_range.mpr haLt, haCoprime⟩
      refine ⟨a, haMem, ?_⟩
      have hrFour :
          r ≡ 1 [MOD 4] := by
        simpa [Nat.ModEq] using hrData.2.1
      have hrOdd :
          r ≡ a [MOD highDiagonalWheelSixOddPeriod] := by
        simp [a, Nat.ModEq]
      have hunique :=
        Nat.chineseRemainder_modEq_unique hcoprime hrFour hrOdd
      have hrLt : r <
          4 * highDiagonalWheelSixOddPeriod := by
        simpa [hperiod] using Finset.mem_range.mp hrData.1
      have hcrtLt :=
        Nat.chineseRemainder_lt_mul hcoprime 1 a
          (by norm_num) (by
            norm_num [highDiagonalWheelSixOddPeriod])
      exact (hunique.eq_of_lt_of_lt hrLt hcrtLt).symm
  calc
    highDiagonalWheelSixResidues.card = source.card := hcard.symm
    _ = highDiagonalWheelSixOddPeriod.totient := by
      exact (Nat.totient_eq_card_coprime
        highDiagonalWheelSixOddPeriod).symm
    _ = 92_160 := by
      rw [show highDiagonalWheelSixOddPeriod =
          ((((3 * 5) * 7) * 11) * 13) * 17 by
        norm_num [highDiagonalWheelSixOddPeriod]]
      rw [Nat.totient_mul
          (by norm_num : Nat.Coprime ((((3 * 5) * 7) * 11) * 13) 17),
        Nat.totient_mul
          (by norm_num : Nat.Coprime (((3 * 5) * 7) * 11) 13),
        Nat.totient_mul
          (by norm_num : Nat.Coprime ((3 * 5) * 7) 11),
        Nat.totient_mul
          (by norm_num : Nat.Coprime (3 * 5) 7),
        Nat.totient_mul
          (by norm_num : Nat.Coprime 3 5)]
      norm_num [Nat.totient_prime]

private theorem prime_mod_ne_zero
    {p q : Nat} (hp : Nat.Prime p) (hq : Nat.Prime q)
    (hpq : p ≠ q) :
    p % q ≠ 0 := by
  intro hmod
  have hdiv : q ∣ p := Nat.dvd_of_mod_eq_zero hmod
  exact hpq (Nat.prime_dvd_prime_iff_eq hq hp |>.mp hdiv).symm

private theorem highDiagonalPrime_mem_wheelFour
    {p : Nat} (hp : p ∈ highDiagonalPrimes p) :
    p % highDiagonalWheelFourPeriod ∈
      highDiagonalWheelFourResidues := by
  have hpData := (Finset.mem_filter.mp hp).2
  rcases hpData with ⟨hpPrime, hpFour, hpFive⟩
  have hpThree : p ≠ 3 := by
    intro h
    subst p
    norm_num at hpFour
  have hpSeven : p ≠ 7 := by
    intro h
    subst p
    norm_num at hpFour
  have hpEleven : p ≠ 11 := by
    intro h
    subst p
    norm_num at hpFour
  simp only [highDiagonalWheelFourResidues, Finset.mem_filter,
    Finset.mem_range]
  refine ⟨Nat.mod_lt _ (by norm_num [highDiagonalWheelFourPeriod]),
    ?_, ?_, ?_, ?_, ?_⟩
  · simpa [highDiagonalWheelFourPeriod,
      Nat.mod_mod_of_dvd p (by norm_num : 4 ∣ 4_620)] using hpFour
  · simpa [highDiagonalWheelFourPeriod,
      Nat.mod_mod_of_dvd p (by norm_num : 3 ∣ 4_620)] using
        prime_mod_ne_zero hpPrime (by norm_num) hpThree
  · simpa [highDiagonalWheelFourPeriod,
      Nat.mod_mod_of_dvd p (by norm_num : 5 ∣ 4_620)] using
        prime_mod_ne_zero hpPrime (by norm_num) hpFive
  · simpa [highDiagonalWheelFourPeriod,
      Nat.mod_mod_of_dvd p (by norm_num : 7 ∣ 4_620)] using
        prime_mod_ne_zero hpPrime (by norm_num) hpSeven
  · simpa [highDiagonalWheelFourPeriod,
      Nat.mod_mod_of_dvd p (by norm_num : 11 ∣ 4_620)] using
        prime_mod_ne_zero hpPrime (by norm_num) hpEleven

def highDiagonalWheelFourBound (cutoff : Nat) : Rat :=
  (480 : Rat) / highDiagonalWheelFourPeriod * (cutoff + 1) +
    (480 : Rat) *
      ((highDiagonalWheelFourPeriod - 480 : Nat) : Rat) /
        highDiagonalWheelFourPeriod

theorem highDiagonalPrimes_card_cast_le_wheelFour
    (cutoff : Nat) :
    ((highDiagonalPrimes cutoff).card : Rat) ≤
      highDiagonalWheelFourBound cutoff := by
  let candidates :=
    (Finset.range (cutoff + 1)).filter fun p =>
      p % highDiagonalWheelFourPeriod ∈
        highDiagonalWheelFourResidues
  have hsubset : highDiagonalPrimes cutoff ⊆ candidates := by
    intro p hp
    apply Finset.mem_filter.mpr
    refine ⟨(Finset.mem_filter.mp hp).1, ?_⟩
    have hpSelf : p ∈ highDiagonalPrimes p := by
      rw [highDiagonalPrimes, Finset.mem_filter]
      exact
        ⟨Finset.mem_range.mpr (by omega),
          (Finset.mem_filter.mp hp).2⟩
    exact highDiagonalPrime_mem_wheelFour hpSelf
  have hcard :
      ((highDiagonalPrimes cutoff).card : Rat) ≤
        candidates.card := by
    exact_mod_cast Finset.card_le_card hsubset
  have hperiod :=
    finiteResidueCount_cast_le
      highDiagonalWheelFourResidues
      highDiagonalWheelFourPeriod (cutoff + 1)
      (by norm_num [highDiagonalWheelFourPeriod])
      highDiagonalWheelFourResidues_subset
  rw [highDiagonalWheelFourResidues_card] at hperiod
  exact hcard.trans (by
    simpa [candidates, highDiagonalWheelFourBound] using hperiod)

theorem highDiagonalPrime_mem_wheelSix_or_exception
    {p cutoff : Nat} (hp : p ∈ highDiagonalPrimes cutoff) :
    p % highDiagonalWheelSixPeriod ∈
        highDiagonalWheelSixResidues ∨
      p ∈ ({13, 17} : Finset Nat) := by
  by_cases hpThirteen : p = 13
  · exact Or.inr (by simp [hpThirteen])
  by_cases hpSeventeen : p = 17
  · exact Or.inr (by simp [hpSeventeen])
  apply Or.inl
  have hpData := (Finset.mem_filter.mp hp).2
  rcases hpData with ⟨hpPrime, hpFour, hpFive⟩
  have hpThree : p ≠ 3 := by
    intro h
    subst p
    norm_num at hpFour
  have hpSeven : p ≠ 7 := by
    intro h
    subst p
    norm_num at hpFour
  have hpEleven : p ≠ 11 := by
    intro h
    subst p
    norm_num at hpFour
  have hpThreeMod : p % 3 ≠ 0 :=
    prime_mod_ne_zero hpPrime (by norm_num) hpThree
  have hpFiveMod : p % 5 ≠ 0 :=
    prime_mod_ne_zero hpPrime (by norm_num) hpFive
  have hpSevenMod : p % 7 ≠ 0 :=
    prime_mod_ne_zero hpPrime (by norm_num) hpSeven
  have hpElevenMod : p % 11 ≠ 0 :=
    prime_mod_ne_zero hpPrime (by norm_num) hpEleven
  have hpThirteenMod : p % 13 ≠ 0 :=
    prime_mod_ne_zero hpPrime (by norm_num) hpThirteen
  have hpSeventeenMod : p % 17 ≠ 0 :=
    prime_mod_ne_zero hpPrime (by norm_num) hpSeventeen
  have hThreeCoprime : Nat.Coprime 3 p :=
    (by norm_num : Nat.Prime 3).coprime_iff_not_dvd.mpr <| by
      rwa [Nat.dvd_iff_mod_eq_zero]
  have hFiveCoprime : Nat.Coprime 5 p :=
    (by norm_num : Nat.Prime 5).coprime_iff_not_dvd.mpr <| by
      rwa [Nat.dvd_iff_mod_eq_zero]
  have hSevenCoprime : Nat.Coprime 7 p :=
    (by norm_num : Nat.Prime 7).coprime_iff_not_dvd.mpr <| by
      rwa [Nat.dvd_iff_mod_eq_zero]
  have hElevenCoprime : Nat.Coprime 11 p :=
    (by norm_num : Nat.Prime 11).coprime_iff_not_dvd.mpr <| by
      rwa [Nat.dvd_iff_mod_eq_zero]
  have hThirteenCoprime : Nat.Coprime 13 p :=
    (by norm_num : Nat.Prime 13).coprime_iff_not_dvd.mpr <| by
      rwa [Nat.dvd_iff_mod_eq_zero]
  have hSeventeenCoprime : Nat.Coprime 17 p :=
    (by norm_num : Nat.Prime 17).coprime_iff_not_dvd.mpr <| by
      rwa [Nat.dvd_iff_mod_eq_zero]
  simp only [highDiagonalWheelSixResidues, Finset.mem_filter,
    Finset.mem_range]
  refine ⟨Nat.mod_lt _ (by norm_num [highDiagonalWheelSixPeriod]),
    ?_, ?_⟩
  · simpa [highDiagonalWheelSixPeriod,
      Nat.mod_mod_of_dvd p (by norm_num : 4 ∣ 1_021_020)] using hpFour
  · have hAllCoprime :
        highDiagonalWheelSixOddPeriod.Coprime p := by
      simpa [highDiagonalWheelSixOddPeriod] using
        (((((hThreeCoprime.mul_left hFiveCoprime).mul_left
          hSevenCoprime).mul_left hElevenCoprime).mul_left
          hThirteenCoprime).mul_left hSeventeenCoprime)
    have hmodOdd :
        p % highDiagonalWheelSixPeriod ≡ p
          [MOD highDiagonalWheelSixOddPeriod] := by
      simp [Nat.ModEq, highDiagonalWheelSixPeriod,
        highDiagonalWheelSixOddPeriod,
        Nat.mod_mod_of_dvd p (by norm_num : 255_255 ∣ 1_021_020)]
    rw [Nat.coprime_comm, Nat.Coprime, hmodOdd.gcd_eq]
    exact hAllCoprime.symm

def highDiagonalWheelSixBound (cutoff : Nat) : Rat :=
  2 +
    (92_160 : Rat) / highDiagonalWheelSixPeriod * (cutoff + 1) +
    (92_160 : Rat) *
      ((highDiagonalWheelSixPeriod - 92_160 : Nat) : Rat) /
        highDiagonalWheelSixPeriod

def highDiagonalWheelSixRatioBound
    (lower divisor : Nat) : Rat :=
    (92_160 : Rat) / highDiagonalWheelSixPeriod *
      ((1 : Rat) / divisor + 1 / lower) +
    (2 + (92_160 : Rat) *
      ((highDiagonalWheelSixPeriod - 92_160 : Nat) : Rat) /
        highDiagonalWheelSixPeriod) / lower

/-- The finite endpoint checker may use whichever fixed wheel is sharper at
its actual cutoff.  This makes the early rows retain the tiny prefix error of
the four-prime wheel and lets later rows switch automatically to the lower
density of the six-prime wheel. -/
def highDiagonalWheelBestBound (cutoff : Nat) : Rat :=
  min (highDiagonalWheelFourBound cutoff)
    (highDiagonalWheelSixBound cutoff)

theorem highDiagonalPrimes_card_cast_le_wheelSix
    (cutoff : Nat) :
    ((highDiagonalPrimes cutoff).card : Rat) ≤
      highDiagonalWheelSixBound cutoff := by
  let candidates :=
    (Finset.range (cutoff + 1)).filter fun p =>
      p % highDiagonalWheelSixPeriod ∈
        highDiagonalWheelSixResidues
  let exceptions : Finset Nat := {13, 17}
  have hsubset :
      highDiagonalPrimes cutoff ⊆ candidates ∪ exceptions := by
    intro p hp
    rcases highDiagonalPrime_mem_wheelSix_or_exception hp with
      hpWheel | hpException
    · exact Finset.mem_union_left _ <|
        Finset.mem_filter.mpr
          ⟨(Finset.mem_filter.mp hp).1, hpWheel⟩
    · exact Finset.mem_union_right _ hpException
  have hcard :
      ((highDiagonalPrimes cutoff).card : Rat) ≤
        candidates.card + exceptions.card := by
    exact_mod_cast
      (Finset.card_le_card hsubset).trans
        (Finset.card_union_le candidates exceptions)
  have hperiod :=
    finiteResidueCount_cast_le
      highDiagonalWheelSixResidues
      highDiagonalWheelSixPeriod (cutoff + 1)
      (by norm_num [highDiagonalWheelSixPeriod])
      highDiagonalWheelSixResidues_subset
  rw [highDiagonalWheelSixResidues_card] at hperiod
  have hexceptions : exceptions.card = 2 := by
    simp [exceptions]
  rw [hexceptions] at hcard
  exact hcard.trans (by
    simpa [candidates, highDiagonalWheelSixBound, add_comm, add_left_comm,
      add_assoc] using
      add_le_add_right hperiod 2)

theorem highDiagonalPrimes_card_cast_le_wheelBest
    (cutoff : Nat) :
    ((highDiagonalPrimes cutoff).card : Rat) ≤
      highDiagonalWheelBestBound cutoff := by
  apply le_min
  · exact highDiagonalPrimes_card_cast_le_wheelFour cutoff
  · exact highDiagonalPrimes_card_cast_le_wheelSix cutoff

theorem highDiagonalWheelSixBound_div_le
    {lower N divisor : Nat}
    (hLowerPos : 0 < lower)
    (hLower : lower ≤ N)
    (hDivisor : 0 < divisor) :
    highDiagonalWheelSixBound (N / divisor) / N ≤
      highDiagonalWheelSixRatioBound lower divisor := by
  have hNPos : (0 : Rat) < N := by
    exact_mod_cast hLowerPos.trans_le hLower
  have hLowerQPos : (0 : Rat) < lower := by
    exact_mod_cast hLowerPos
  have hDivisorQPos : (0 : Rat) < divisor := by
    exact_mod_cast hDivisor
  have hLowerQ : (lower : Rat) ≤ N := by
    exact_mod_cast hLower
  have hfloorNat : (N / divisor) * divisor ≤ N :=
    Nat.div_mul_le_self N divisor
  have hfloor :
      ((N / divisor : Nat) : Rat) ≤ (N : Rat) / divisor := by
    have hcast :
        (((N / divisor) * divisor : Nat) : Rat) ≤ N := by
      exact_mod_cast hfloorNat
    push_cast at hcast
    exact (le_div_iff₀ hDivisorQPos).2
      (by simpa [mul_comm] using hcast)
  have hcutoffRatio :
      (((N / divisor + 1 : Nat) : Rat) / N) ≤
        (1 : Rat) / divisor + 1 / lower := by
    push_cast
    calc
      (((N / divisor : Nat) : Rat) + 1) / N =
          ((N / divisor : Nat) : Rat) / N + 1 / N := by ring
      _ ≤ ((N : Rat) / divisor) / N + 1 / lower := by
        apply add_le_add
        · exact div_le_div_of_nonneg_right hfloor hNPos.le
        · exact div_le_div_of_nonneg_left
            (by norm_num) hLowerQPos hLowerQ
      _ = (1 : Rat) / divisor + 1 / lower := by
        field_simp [ne_of_gt hNPos, ne_of_gt hDivisorQPos]
  have hconstantRatio :
      (2 + (92_160 : Rat) *
          ((highDiagonalWheelSixPeriod - 92_160 : Nat) : Rat) /
            highDiagonalWheelSixPeriod) / N ≤
        (2 + (92_160 : Rat) *
          ((highDiagonalWheelSixPeriod - 92_160 : Nat) : Rat) /
            highDiagonalWheelSixPeriod) / lower := by
    apply div_le_div_of_nonneg_left
    · positivity
    · exact hLowerQPos
    · exact hLowerQ
  unfold highDiagonalWheelSixBound
  unfold highDiagonalWheelSixRatioBound
  calc
    (2 +
        (92_160 : Rat) / highDiagonalWheelSixPeriod *
          (((N / divisor : Nat) : Rat) + 1) +
        (92_160 : Rat) *
          ((highDiagonalWheelSixPeriod - 92_160 : Nat) : Rat) /
            highDiagonalWheelSixPeriod) / N =
      (92_160 : Rat) / highDiagonalWheelSixPeriod *
          ((((N / divisor : Nat) : Rat) + 1) / N) +
        (2 + (92_160 : Rat) *
          ((highDiagonalWheelSixPeriod - 92_160 : Nat) : Rat) /
            highDiagonalWheelSixPeriod) / N := by ring
    _ ≤
        (92_160 : Rat) / highDiagonalWheelSixPeriod *
          ((1 : Rat) / divisor + 1 / lower) +
        (2 + (92_160 : Rat) *
          ((highDiagonalWheelSixPeriod - 92_160 : Nat) : Rat) /
            highDiagonalWheelSixPeriod) / lower := by
      exact add_le_add
        (mul_le_mul_of_nonneg_left
          (by simpa using hcutoffRatio) (by positivity))
        hconstantRatio

#print axioms highDiagonalPrimes_card_cast_le_wheelFour
#print axioms highDiagonalPrimes_card_cast_le_wheelSix
#print axioms highDiagonalPrimes_card_cast_le_wheelBest
#print axioms highDiagonalWheelSixBound_div_le

end Erdos848
