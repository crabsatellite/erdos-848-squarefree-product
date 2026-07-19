import Erdos848.TailGlobalMixedHighRows

namespace Erdos848

/-!
# Crude closure above the global mixed-support product threshold

Below the threshold the generated QR checker is used.  Above it, the product
itself pays for the completely unscreened bitset, so no finite support row is
needed.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem globalMixedNormalBitPairs_subset_coset
    (support : List ℕ) (squareCoset : Bool) :
    globalMixedBitPairs (globalMixedNormalSupportWords support squareCoset) ⊆
      globalMixedBitPairs
        (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords squareCoset) := by
  intro pair hpair
  have hparts := Finset.mem_filter.mp hpair
  have hproduct := Finset.mem_product.mp hparts.1
  have hbitIndex : pair.2 < 64 := Finset.mem_range.mp hproduct.2
  let index := pair.1 * 64 + pair.2
  have hdiv : index / 64 = pair.1 := by
    dsimp [index]
    rw [Nat.mul_comm pair.1 64,
      Nat.mul_add_div (by norm_num : 0 < 64) pair.1 pair.2,
      Nat.div_eq_of_lt hbitIndex]
    simp
  have hmod : index % 64 = pair.2 := by
    dsimp [index]
    rw [Nat.mul_comm pair.1 64, Nat.mul_add_mod,
      Nat.mod_eq_of_lt hbitIndex]
  have hsupportBit :
      wordMaskTestBit (globalMixedNormalSupportWords support squareCoset)
        index = true := by
    simpa [wordMaskTestBit, hdiv, hmod] using hparts.2
  rw [globalMixedNormalSupportWords_testBit] at hsupportBit
  have hcosetBitIndex := (Bool.and_eq_true_iff.mp hsupportBit).2
  have hcosetBit :
      ((GeneratedTailGlobalMixedSupportCoverage.normalCosetWords
        squareCoset).getD pair.1 0).testBit pair.2 = true := by
    simpa [wordMaskTestBit, hdiv, hmod] using hcosetBitIndex
  have hwordIndex : pair.1 <
      (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords
        squareCoset).length := by
    by_contra hnot
    have hout :
        (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords
          squareCoset).length ≤ pair.1 := by omega
    have hdefault := List.getD_eq_default
      (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords squareCoset)
      0 hout
    rw [hdefault] at hcosetBit
    simp at hcosetBit
  apply Finset.mem_filter.mpr
  exact ⟨Finset.mem_product.mpr
    ⟨Finset.mem_range.mpr hwordIndex, hproduct.2⟩, hcosetBit⟩

theorem globalMixedTwistBitPairs_subset_coset
    (support : List ℕ) (squareCoset : Bool) :
    globalMixedBitPairs (globalMixedTwistSupportWords support squareCoset) ⊆
      globalMixedBitPairs
        (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords squareCoset) := by
  intro pair hpair
  have hparts := Finset.mem_filter.mp hpair
  have hproduct := Finset.mem_product.mp hparts.1
  have hbitIndex : pair.2 < 64 := Finset.mem_range.mp hproduct.2
  let index := pair.1 * 64 + pair.2
  have hdiv : index / 64 = pair.1 := by
    dsimp [index]
    rw [Nat.mul_comm pair.1 64,
      Nat.mul_add_div (by norm_num : 0 < 64) pair.1 pair.2,
      Nat.div_eq_of_lt hbitIndex]
    simp
  have hmod : index % 64 = pair.2 := by
    dsimp [index]
    rw [Nat.mul_comm pair.1 64, Nat.mul_add_mod,
      Nat.mod_eq_of_lt hbitIndex]
  have hsupportBit :
      wordMaskTestBit (globalMixedTwistSupportWords support squareCoset)
        index = true := by
    simpa [wordMaskTestBit, hdiv, hmod] using hparts.2
  rw [globalMixedTwistSupportWords_testBit] at hsupportBit
  have hcosetBitIndex := (Bool.and_eq_true_iff.mp hsupportBit).2
  have hcosetBit :
      ((GeneratedTailGlobalMixedSupportCoverage.twistCosetWords
        squareCoset).getD pair.1 0).testBit pair.2 = true := by
    simpa [wordMaskTestBit, hdiv, hmod] using hcosetBitIndex
  have hwordIndex : pair.1 <
      (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords
        squareCoset).length := by
    by_contra hnot
    have hout :
        (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords
          squareCoset).length ≤ pair.1 := by omega
    have hdefault := List.getD_eq_default
      (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords squareCoset)
      0 hout
    rw [hdefault] at hcosetBit
    simp at hcosetBit
  apply Finset.mem_filter.mpr
  exact ⟨Finset.mem_product.mpr
    ⟨Finset.mem_range.mpr hwordIndex, hproduct.2⟩, hcosetBit⟩

theorem globalMixedNormalSurvivorCount_le_bound
    (support : List ℕ) (squareCoset : Bool) :
    globalMixedNormalSurvivorCount support squareCoset ≤ 1210 := by
  calc
    globalMixedNormalSurvivorCount support squareCoset =
        (globalMixedBitPairs
          (globalMixedNormalSupportWords support squareCoset)).card :=
      (globalMixedNormalBitPairs_card support squareCoset).symm
    _ ≤ (globalMixedBitPairs
        (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords
          squareCoset)).card :=
      Finset.card_le_card
        (globalMixedNormalBitPairs_subset_coset support squareCoset)
    _ = globalMixedNormalSurvivorCount [] squareCoset := by
      simpa [globalMixedNormalSupportWords] using
        globalMixedNormalBitPairs_card [] squareCoset
    _ ≤ 1210 := by
      cases squareCoset <;> decide

theorem globalMixedTwistSurvivorCount_le_bound
    (support : List ℕ) (squareCoset : Bool) :
    globalMixedTwistSurvivorCount support squareCoset ≤ 242 := by
  calc
    globalMixedTwistSurvivorCount support squareCoset =
        (globalMixedBitPairs
          (globalMixedTwistSupportWords support squareCoset)).card :=
      (globalMixedTwistBitPairs_card support squareCoset).symm
    _ ≤ (globalMixedBitPairs
        (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords
          squareCoset)).card :=
      Finset.card_le_card
        (globalMixedTwistBitPairs_subset_coset support squareCoset)
    _ = globalMixedTwistSurvivorCount [] squareCoset := by
      simpa [globalMixedTwistSupportWords] using
        globalMixedTwistBitPairs_card [] squareCoset
    _ ≤ 242 := by
      cases squareCoset <;> decide

theorem globalMixedLargeProduct_row
    {N k survivors endpoint : ℕ}
    (hN : 5_000_000 ≤ N) (hEndpoint : endpoint ≤ N)
    (hLarge : globalMixedSupportProductThreshold k ≤ endpoint)
    (hSurvivors : survivors ≤ 1210) :
    (((globalMixedRootCoefficient100 k survivors : ℚ) / 100 +
        Nat.primeCounting (N / globalMixedSplit)) / N) ≤
      fiveMillionOddRoot7Envelope / 6 := by
  let coefficient := globalMixedRootCoefficient100 k survivors
  have hNpos : 0 < N := by omega
  have hNQ : (0 : ℚ) < N := by exact_mod_cast hNpos
  have hScale : 21_000_000 * 2 ^ k ≤ N := by
    have hScaleEndpoint : 21_000_000 * 2 ^ k ≤ endpoint := by
      simpa [globalMixedSupportProductThreshold] using hLarge
    exact hScaleEndpoint.trans hEndpoint
  have hcoefficient : coefficient ≤ 242_882 * 2 ^ k := by
    dsimp [coefficient, globalMixedRootCoefficient100]
    rw [pow_succ]
    calc
      (2 ^ k * 2) * (100 * survivors + 441) ≤
          (2 ^ k * 2) * (100 * 1210 + 441) := by gcongr
      _ = 242_882 * 2 ^ k := by ring
  have hcross : coefficient * 2_100_000_000 ≤
      242_882 * (100 * N) := by
    calc
      coefficient * 2_100_000_000 ≤
          (242_882 * 2 ^ k) * 2_100_000_000 :=
        Nat.mul_le_mul_right _ hcoefficient
      _ = 242_882 * (100 * (21_000_000 * 2 ^ k)) := by ring
      _ ≤ 242_882 * (100 * N) := by gcongr
  have hrootRatio :
      (coefficient : ℚ) / (100 * N) ≤ 242_882 / 2_100_000_000 := by
    rw [div_le_div_iff₀ (by positivity) (by norm_num)]
    exact_mod_cast hcross
  have hprimeLine := globalMixedPrimeCounting_line_bound hN hEndpoint
  have hprimeRaw :
      (Nat.primeCounting (N / globalMixedSplit) : ℚ) ≤
        (153 / 1000 : ℚ) * (N / globalMixedSplit : ℕ) := by
    exact hprimeLine.trans (sub_le_self _ (by positivity))
  have hfloorNat :
      (N / globalMixedSplit) * globalMixedSplit ≤ N :=
    Nat.div_mul_le_self _ _
  have hfloorQ :
      ((N / globalMixedSplit : ℕ) : ℚ) ≤ N / 55 := by
    have hcast :
        (((N / globalMixedSplit) * globalMixedSplit : ℕ) : ℚ) ≤ N := by
      exact_mod_cast hfloorNat
    norm_num [globalMixedSplit] at hcast ⊢
    linarith
  have hprimeRatio :
      (Nat.primeCounting (N / globalMixedSplit) : ℚ) / N ≤
        153 / 55_000 := by
    calc
      (Nat.primeCounting (N / globalMixedSplit) : ℚ) / N ≤
          ((153 / 1000 : ℚ) * (N / globalMixedSplit : ℕ)) / N :=
        div_le_div_of_nonneg_right hprimeRaw hNQ.le
      _ ≤ ((153 / 1000 : ℚ) * (N / 55 : ℚ)) / N := by gcongr
      _ = 153 / 55_000 := by field_simp; ring
  change (((coefficient : ℚ) / 100 +
      Nat.primeCounting (N / globalMixedSplit)) / N) ≤ _
  calc
    (((coefficient : ℚ) / 100 +
        Nat.primeCounting (N / globalMixedSplit)) / N) =
        (coefficient : ℚ) / (100 * N) +
          (Nat.primeCounting (N / globalMixedSplit) : ℚ) / N := by ring
    _ ≤ 242_882 / 2_100_000_000 + 153 / 55_000 :=
      add_le_add hrootRatio hprimeRatio
    _ ≤ fiveMillionOddRoot7Envelope / 6 := by
      norm_num [fiveMillionOddRoot7Envelope]

/-- All four actual rows close analytically above the finite checker
threshold. -/
theorem actualMixedSupport_large_product_rowBounds
    {N : ℕ} (support : List ℕ)
    (hN : 5_000_000 ≤ N) (hProduct : support.prod ≤ N)
    (hLarge : globalMixedSupportProductThreshold support.length ≤
      support.prod) :
    globalMixedRowBound support.length support.dropLast false false N ∧
      globalMixedRowBound support.length support.dropLast false true N ∧
      globalMixedRowBound support.length support.dropLast true false N ∧
      globalMixedRowBound support.length support.dropLast true true N := by
  let maskedSupport := support.dropLast.filter fun p => decide (p ≤ 2843)
  have hnormal (squareCoset : Bool) :
      globalMixedRowBound support.length support.dropLast
        false squareCoset N := by
    unfold globalMixedRowBound
    dsimp only
    simpa [maskedSupport] using globalMixedLargeProduct_row
      hN hProduct hLarge
      (globalMixedNormalSurvivorCount_le_bound maskedSupport squareCoset)
  have htwist (squareCoset : Bool) :
      globalMixedRowBound support.length support.dropLast
        true squareCoset N := by
    unfold globalMixedRowBound
    dsimp only
    apply globalMixedLargeProduct_row hN hProduct hLarge
    exact (globalMixedTwistSurvivorCount_le_bound maskedSupport squareCoset).trans
      (by norm_num)
  exact ⟨hnormal false, hnormal true, htwist false, htwist true⟩

#print axioms globalMixedNormalSurvivorCount_le_bound
#print axioms globalMixedTwistSurvivorCount_le_bound
#print axioms globalMixedLargeProduct_row
#print axioms actualMixedSupport_large_product_rowBounds

end Erdos848
