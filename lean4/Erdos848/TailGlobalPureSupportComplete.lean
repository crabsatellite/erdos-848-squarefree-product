import Erdos848.TailGlobalPureSupportBridge
import Erdos848.TailPureFiveMillionHigh

namespace Erdos848

/-!
# Complete all-N pure root-support bound

The finite support certificate is used only below its product threshold.
Above that threshold a 135-survivor bound is already sufficient.  Nine or
more support primes lie in the latter branch automatically.
-/

def globalPureSupportScreen (support : List ℕ) : List ℕ :=
  if support.length ≤ 8 ∧
      support.prod < globalPureSupportProductThreshold support.length then
    support.dropLast
  else
    []

theorem globalPureSupportScreen_subset_dropLast (support : List ℕ) :
    globalPureSupportScreen support ⊆ support.dropLast := by
  intro q hq
  unfold globalPureSupportScreen at hq
  split at hq
  · exact hq
  · simp at hq

theorem globalPureSupportScreen_mem_baseSupportPrimes
    (support : List ℕ)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·))
    {q : ℕ} (hq : q ∈ globalPureSupportScreen support) :
    q ∈ GeneratedTailSupportCoverage.supportPrimes := by
  unfold globalPureSupportScreen at hq
  split at hq
  next hFinite =>
    have hLength : support.length ≤ 8 := hFinite.1
    have hPrefix := actualSupport_dropLast_mem_globalFeasible
      hLength support rfl hPrimes hIncreasing hFinite.2
    have hMask := (List.all_eq_true.mp
      (globalOddRootFeasiblePrefixes_mask_upper hLength))
        support.dropLast hPrefix
    have hall : support.dropLast.all (fun p => decide (p ≤ 3467)) = true := by
      simpa [globalPureSupportMaskUpper] using hMask
    have hqUpperDecide : decide (q ≤ 3467) = true :=
      (List.all_eq_true.mp hall) q hq
    have hqUpper : q ≤ 3467 := of_decide_eq_true hqUpperDecide
    exact
      GeneratedTailGlobalPureSupportCoverage.mem_baseSupportPrimes_of_supportPrime
        (hPrimes q (List.dropLast_subset support hq))
        (hqUpper.trans (by norm_num))
  next hNotFinite =>
    simp at hq

theorem globalRawQuotient_support_bit
    {pivot point p m q : ℕ}
    (hq : q ∈ globalPureSupportScreen (fiveMillionPivotSupport pivot))
    (hmLower : 1 ≤ m) (hmUpper : m ≤ 676)
    (hequation : p ^ 2 * m = pivot * point + 1) :
    wordMaskTestBit (GeneratedTailSupportCoverage.qrMaskWords q) (m - 1) =
      true := by
  have hqDrop : q ∈ (fiveMillionPivotSupport pivot).dropLast :=
    globalPureSupportScreen_subset_dropLast _ hq
  have hqSupport : q ∈ fiveMillionPivotSupport pivot :=
    List.mem_of_mem_dropLast hqDrop
  have hqPrime := (fiveMillionPivotSupport_primes pivot q hqSupport).1
  obtain ⟨hqNotDvd, root, hroot⟩ :=
    quotient_modEq_square_of_prime_dvd_pivot hqPrime
      (fiveMillionPivotSupport_dvd hqSupport) hequation
  exact GeneratedTailSupportCoverage.qrMask_contains_square
    (globalPureSupportScreen_mem_baseSupportPrimes
      (fiveMillionPivotSupport pivot)
      (fiveMillionPivotSupport_primes pivot)
      (fiveMillionPivotSupport_increasing pivot) hq)
    hmLower (hmUpper.trans (by norm_num)) hqNotDvd hroot

theorem globalRawQuotient_support_all
    {pivot point p m : ℕ}
    (hmLower : 1 ≤ m) (hmUpper : m ≤ 676)
    (hequation : p ^ 2 * m = pivot * point + 1) :
    (globalPureSupportScreen (fiveMillionPivotSupport pivot)).all (fun q =>
      wordMaskTestBit (GeneratedTailSupportCoverage.qrMaskWords q) (m - 1)) =
        true := by
  apply List.all_eq_true.mpr
  intro q hq
  exact globalRawQuotient_support_bit hq hmLower hmUpper hequation

theorem pureOddRootSurvivorCount_le_135
    (support : List ℕ) (squareCoset : Bool) :
    oddRootWordSurvivorCountThrough support squareCoset 676 ≤ 135 := by
  have hSubset :
      pureFiveMillionOddSurvivorFinset support squareCoset ⊆
        pureFiveMillionOddSurvivorFinset [] squareCoset := by
    intro m hm
    have hparts := Finset.mem_filter.mp hm
    apply Finset.mem_filter.mpr
    refine ⟨hparts.1, ?_⟩
    have haccepts :
        decide (m % 2 = 1) = true ∧
          oddRootWordPointAccepts support squareCoset m = true := by
      simpa only [oddRootWordOddPointAccepts, Bool.and_eq_true] using hparts.2
    have hword : modFiveCosetAccepts squareCoset m = true := by
      have hfull :
          modFiveCosetAccepts squareCoset m = true ∧
            support.all (fun q =>
              wordMaskTestBit
                (GeneratedTailSupportCoverage.qrMaskWords q) (m - 1)) = true := by
        simpa only [oddRootWordPointAccepts, Bool.and_eq_true] using haccepts.2
      exact hfull.1
    simp only [oddRootWordOddPointAccepts, oddRootWordPointAccepts,
      List.all_nil, Bool.and_true, Bool.and_eq_true]
    exact ⟨haccepts.1, hword⟩
  have hcard := Finset.card_le_card hSubset
  rw [pureFiveMillionOddSurvivorFinset_card,
    pureFiveMillionOddSurvivorFinset_card] at hcard
  obtain ⟨hTrue, hFalse⟩ := pureFiveMillionEmptySupport_prefix_exact
  cases squareCoset
  · omega
  · omega

theorem globalPureSupportProductThreshold_scale_lower (k : ℕ) :
    3_020_600 * 2 ^ k ≤ globalPureSupportProductThreshold k := by
  by_cases hk : k < 9
  · interval_cases k <;> norm_num [globalPureSupportProductThreshold]
  · obtain ⟨j, rfl⟩ : ∃ j, k = j + 9 := by
      exact ⟨k - 9, by omega⟩
    simp only [globalPureSupportProductThreshold, pow_add]
    calc
      3_020_600 * (2 ^ j * 2 ^ 9) =
          (3_020_600 * 2 ^ 9) * 2 ^ j := by ring
      _ ≤ 1_546_582_131 * 2 ^ j := by
        exact Nat.mul_le_mul_right _ (by norm_num)

theorem globalPureRootUpperRow_crude
    {N k survivors : ℕ}
    (hN : 5_000_000 ≤ N)
    (hScale : 3_020_600 * 2 ^ k ≤ N)
    (hSurvivors : survivors ≤ 135) :
    globalPureRootUpperRow N (N / 26)
        (4 * 2 ^ (k + 1)) survivors ≤
      pureFiveMillionRootEnvelope / 5_000_000 := by
  let height := 4 * 2 ^ (k + 1)
  have hNpos : 0 < N := by omega
  have hYpos : 0 < N / 26 := by omega
  have hNQ : (0 : ℚ) < N := by exact_mod_cast hNpos
  have hYQ : (0 : ℚ) < (N / 26 : ℕ) := by exact_mod_cast hYpos
  have hHeight : height = 8 * 2 ^ k := by
    simp only [height, pow_succ]
    ring
  have hScaleQ : (3_020_600 * 2 ^ k : ℕ) ≤ N := hScale
  have hHeightRatio : (height : ℚ) / N ≤ 8 / 3_020_600 := by
    rw [hHeight]
    apply (div_le_div_iff₀ hNQ (by norm_num : (0 : ℚ) < 3_020_600)).2
    have hScaledNat : 8 * 2 ^ k * 3_020_600 ≤ 8 * N := by
      calc
        8 * 2 ^ k * 3_020_600 = 8 * (3_020_600 * 2 ^ k) := by ring
        _ ≤ 8 * N := Nat.mul_le_mul_left 8 hScaleQ
    exact_mod_cast hScaledNat
  have hNYNat : N ≤ 27 * (N / 26) := by omega
  have hInv : (1 : ℚ) / (N / 26 : ℕ) ≤ 27 / N := by
    apply (div_le_div_iff₀ hYQ hNQ).2
    norm_num only [one_mul]
    exact_mod_cast hNYNat
  have hHeightY : (height : ℚ) / (N / 26 : ℕ) ≤
      27 * ((height : ℚ) / N) := by
    calc
      (height : ℚ) / (N / 26 : ℕ) =
          (height : ℚ) * (1 / (N / 26 : ℕ)) := by ring
      _ ≤ (height : ℚ) * (27 / N) :=
        mul_le_mul_of_nonneg_left hInv (by positivity)
      _ = 27 * ((height : ℚ) / N) := by ring
  have hFirst :
      (height * survivors : ℚ) / N ≤
        135 * ((height : ℚ) / N) := by
    have hSurvivorsQ : (survivors : ℚ) ≤ 135 := by exact_mod_cast hSurvivors
    have hHeightNonneg : (0 : ℚ) ≤ height := by positivity
    have hScaled : (height : ℚ) * survivors ≤ (height : ℚ) * 135 :=
      mul_le_mul_of_nonneg_left hSurvivorsQ hHeightNonneg
    calc
      (height * survivors : ℚ) / N =
          ((height : ℚ) * survivors) / N := by push_cast; rfl
      _ ≤ ((height : ℚ) * 135) / N :=
        div_le_div_of_nonneg_right hScaled hNQ.le
      _ = 135 * ((height : ℚ) / N) := by ring
  have hSecond :
      (height : ℚ) / (25 * (N / 26 : ℕ)) ≤
        (27 / 25) * ((height : ℚ) / N) := by
    calc
      (height : ℚ) / (25 * (N / 26 : ℕ)) =
          ((height : ℚ) / (N / 26 : ℕ)) / 25 := by ring
      _ ≤ (27 * ((height : ℚ) / N)) / 25 := by
        exact div_le_div_of_nonneg_right hHeightY (by norm_num)
      _ = (27 / 25) * ((height : ℚ) / N) := by ring
  have hDen : (N : ℚ) ≤ (N / 26 : ℕ) * N := by
    exact_mod_cast Nat.le_mul_of_pos_left N hYpos
  have hThird :
      (2 * height : ℚ) / ((N / 26 : ℕ) * N) ≤
        2 * ((height : ℚ) / N) := by
    calc
      (2 * height : ℚ) / ((N / 26 : ℕ) * N) ≤
          (2 * height : ℚ) / N :=
        div_le_div_of_nonneg_left (by positivity) hNQ hDen
      _ = 2 * ((height : ℚ) / N) := by push_cast; ring
  have hNumeric :
      (135 + 27 / 25 + 2 : ℚ) * (8 / 3_020_600) ≤
        pureFiveMillionRootEnvelope / 5_000_000 := by
    norm_num [pureFiveMillionRootEnvelope]
  unfold globalPureRootUpperRow
  change
    (height * survivors : ℚ) / N +
        (height : ℚ) / (25 * (N / 26 : ℕ)) +
        (2 * height : ℚ) / ((N / 26 : ℕ) * N) ≤ _
  nlinarith

theorem globalActualSupport_large_product_root_upper
    {N : ℕ} (support : List ℕ) (squareCoset : Bool)
    (hN : 5_000_000 ≤ N)
    (hProduct : support.prod ≤ N)
    (hLarge : globalPureSupportProductThreshold support.length ≤
      support.prod) :
    globalPureRootUpperRow N (N / 26)
        (4 * 2 ^ (support.length + 1))
        (oddRootWordSurvivorCountThrough
          (globalPureSupportScreen support) squareCoset 676) ≤
      pureFiveMillionRootEnvelope / 5_000_000 := by
  apply globalPureRootUpperRow_crude hN
  · exact (globalPureSupportProductThreshold_scale_lower support.length).trans
      (hLarge.trans hProduct)
  · exact pureOddRootSurvivorCount_le_135
      (globalPureSupportScreen support) squareCoset

private theorem two_pow_length_le_prod_of_supportPrimes
    (support : List ℕ)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p) :
    2 ^ support.length ≤ support.prod := by
  induction support with
  | nil => simp
  | cons p support ih =>
      have hp : 2 ≤ p := (hPrimes p (by simp)).1.two_le
      have htail : ∀ q ∈ support, FiveMillionSupportPrime q := by
        intro q hq
        exact hPrimes q (by simp [hq])
      simp only [List.length_cons, List.prod_cons, pow_succ]
      calc
        2 ^ support.length * 2 ≤ support.prod * p :=
          Nat.mul_le_mul (ih htail) hp
        _ = p * support.prod := Nat.mul_comm _ _

theorem supportProduct_ge_globalThreshold_of_nine
    (support : List ℕ)
    (hLength : 9 ≤ support.length)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·)) :
    globalPureSupportProductThreshold support.length ≤ support.prod := by
  obtain ⟨p₀, p₁, p₂, p₃, p₄, p₅, p₆, p₇, p₈, rest, rfl⟩ :
      ∃ p₀ p₁ p₂ p₃ p₄ p₅ p₆ p₇ p₈ rest,
        support = p₀ :: p₁ :: p₂ :: p₃ :: p₄ :: p₅ :: p₆ :: p₇ :: p₈ :: rest := by
    match support with
    | p₀ :: p₁ :: p₂ :: p₃ :: p₄ :: p₅ :: p₆ :: p₇ :: p₈ :: rest =>
        exact ⟨p₀, p₁, p₂, p₃, p₄, p₅, p₆, p₇, p₈, rest, rfl⟩
    | [] | [_] | [_, _] | [_, _, _] | [_, _, _, _] |
      [_, _, _, _, _] | [_, _, _, _, _, _] |
      [_, _, _, _, _, _, _] | [_, _, _, _, _, _, _, _] =>
        simp at hLength
  have hp₀ := hPrimes p₀ (by simp)
  have hp₁ := hPrimes p₁ (by simp)
  have hp₂ := hPrimes p₂ (by simp)
  have hp₃ := hPrimes p₃ (by simp)
  have hp₄ := hPrimes p₄ (by simp)
  have hp₅ := hPrimes p₅ (by simp)
  have hp₆ := hPrimes p₆ (by simp)
  have hp₇ := hPrimes p₇ (by simp)
  have hp₈ := hPrimes p₈ (by simp)
  simp only [List.pairwise_cons] at hIncreasing
  have h₀₁ : p₀ < p₁ := hIncreasing.1 p₁ (by simp)
  have h₁₂ : p₁ < p₂ := hIncreasing.2.1 p₂ (by simp)
  have h₂₃ : p₂ < p₃ := hIncreasing.2.2.1 p₃ (by simp)
  have h₃₄ : p₃ < p₄ := hIncreasing.2.2.2.1 p₄ (by simp)
  have h₄₅ : p₄ < p₅ := hIncreasing.2.2.2.2.1 p₅ (by simp)
  have h₅₆ : p₅ < p₆ := hIncreasing.2.2.2.2.2.1 p₆ (by simp)
  have h₆₇ : p₆ < p₇ := hIncreasing.2.2.2.2.2.2.1 p₇ (by simp)
  have h₇₈ : p₇ < p₈ := hIncreasing.2.2.2.2.2.2.2.1 p₈ (by simp)
  have hp₀Lower : 3 ≤ p₀ := by
    have hpTwo : 2 ≤ p₀ := hp₀.1.two_le
    have hpNotTwo : p₀ ≠ 2 := by
      intro h; subst p₀; norm_num [FiveMillionSupportPrime] at hp₀
    omega
  have hp₁Lower : 7 ≤ p₁ := by
    by_contra h
    interval_cases p₁ <;> norm_num [FiveMillionSupportPrime] at hp₁ <;> omega
  have hp₂Lower : 11 ≤ p₂ := by
    by_contra h
    interval_cases p₂ <;> norm_num [FiveMillionSupportPrime] at hp₂ <;> omega
  have hp₃Lower : 13 ≤ p₃ := by
    by_contra h
    interval_cases p₃ <;> norm_num [FiveMillionSupportPrime] at hp₃ <;> omega
  have hp₄Lower : 17 ≤ p₄ := by
    by_contra h
    interval_cases p₄ <;> norm_num [FiveMillionSupportPrime] at hp₄ <;> omega
  have hp₅Lower : 19 ≤ p₅ := by
    by_contra h
    interval_cases p₅ <;> norm_num [FiveMillionSupportPrime] at hp₅ <;> omega
  have hp₆Lower : 23 ≤ p₆ := by
    by_contra h
    interval_cases p₆ <;> norm_num [FiveMillionSupportPrime] at hp₆ <;> omega
  have hp₇Lower : 29 ≤ p₇ := by
    by_contra h
    interval_cases p₇ <;> norm_num [FiveMillionSupportPrime] at hp₇ <;> omega
  have hp₈Lower : 31 ≤ p₈ := by
    by_contra h
    interval_cases p₈ <;> norm_num [FiveMillionSupportPrime] at hp₈ <;> omega
  have hPrefixProduct :
      20_056_049_013 ≤ p₀ * p₁ * p₂ * p₃ * p₄ * p₅ * p₆ * p₇ * p₈ := by
    calc
      20_056_049_013 = 3 * 7 * 11 * 13 * 17 * 19 * 23 * 29 * 31 := by norm_num
      _ ≤ p₀ * p₁ * p₂ * p₃ * p₄ * p₅ * p₆ * p₇ * p₈ := by gcongr
  have hRestPrimes : ∀ p ∈ rest, FiveMillionSupportPrime p := by
    intro p hp
    exact hPrimes p (by simp [hp])
  have hRestProduct := two_pow_length_le_prod_of_supportPrimes rest hRestPrimes
  simp only [List.length_cons, List.prod_cons, globalPureSupportProductThreshold]
  calc
    1_546_582_131 * 2 ^ rest.length ≤
        20_056_049_013 * 2 ^ rest.length :=
      Nat.mul_le_mul_right _ (by norm_num)
    _ ≤ (p₀ * p₁ * p₂ * p₃ * p₄ * p₅ * p₆ * p₇ * p₈) * rest.prod :=
      Nat.mul_le_mul hPrefixProduct hRestProduct
    _ = p₀ * (p₁ * (p₂ * (p₃ * (p₄ * (p₅ * (p₆ * (p₇ * (p₈ * rest.prod)))))))) := by
      ring

theorem globalActualSupport_root_upper
    {N : ℕ} (support : List ℕ) (squareCoset : Bool)
    (hN : 5_000_000 ≤ N)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·))
    (hProduct : support.prod ≤ N) :
    globalPureRootUpperRow N (N / 26)
        (4 * 2 ^ (support.length + 1))
        (oddRootWordSurvivorCountThrough
          (globalPureSupportScreen support) squareCoset 676) ≤
      pureFiveMillionRootEnvelope / 5_000_000 := by
  by_cases hLength : support.length ≤ 8
  · by_cases hFinite : support.prod <
        globalPureSupportProductThreshold support.length
    · have hCertificate := globalActualSupport_finite_root_upper
        support squareCoset hN hLength hPrimes hIncreasing hProduct hFinite
      simpa [globalPureSupportScreen, hLength, hFinite] using hCertificate
    · exact globalActualSupport_large_product_root_upper support squareCoset hN
        hProduct (Nat.le_of_not_gt hFinite)
  · exact globalActualSupport_large_product_root_upper support squareCoset hN
      hProduct (supportProduct_ge_globalThreshold_of_nine support
        (by omega) hPrimes hIncreasing)

#print axioms pureOddRootSurvivorCount_le_135
#print axioms globalPureSupportScreen_mem_baseSupportPrimes
#print axioms globalRawQuotient_support_all
#print axioms globalPureRootUpperRow_crude
#print axioms supportProduct_ge_globalThreshold_of_nine
#print axioms globalActualSupport_root_upper

end Erdos848
