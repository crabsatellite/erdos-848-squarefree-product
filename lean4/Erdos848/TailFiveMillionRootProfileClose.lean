import Erdos848.TailFiveMillionRootJumpClose

namespace Erdos848

/-! ## Direct comparison of every odd-root support row with the closed row -/

/-- Rows whose height and height-times-support are both no larger than the
controlling `k = 5` row are pointwise dominated by it. -/
theorem transformedRootRow_le_controlling_of_le
    {N Y primeDelta height survivors : ℕ}
    (hN : 0 < N)
    (hY : 0 < Y)
    (hHeight : height ≤ 64)
    (hProduct : height * survivors ≤ 64 * 70) :
    transformedRootRow N Y primeDelta height survivors ≤
      transformedRootRow N Y primeDelta 64 70 := by
  have hFirstNumerator :
      6 * primeDelta + 6 * height * survivors ≤
        6 * primeDelta + 6 * 64 * 70 := by
    have hScaled := Nat.mul_le_mul_left 6 hProduct
    simpa [Nat.mul_assoc] using Nat.add_le_add_left hScaled (6 * primeDelta)
  have hSecondNumerator : 12 * height ≤ 12 * 64 := by omega
  have hThirdNumerator : 24 * height ≤ 24 * 64 := by omega
  have hNQ : (0 : ℚ) < N := by exact_mod_cast hN
  have hYQ : (0 : ℚ) < Y := by exact_mod_cast hY
  have hFirst :
      ((6 * primeDelta + 6 * height * survivors : ℕ) : ℚ) / N ≤
        ((6 * primeDelta + 6 * 64 * 70 : ℕ) : ℚ) / N := by
    exact div_le_div_of_nonneg_right (by exact_mod_cast hFirstNumerator)
      hNQ.le
  have hSecond :
      ((12 * height : ℕ) : ℚ) / (25 * Y) ≤
        ((12 * 64 : ℕ) : ℚ) / (25 * Y) := by
    exact div_le_div_of_nonneg_right (by exact_mod_cast hSecondNumerator)
      (by positivity)
  have hThird :
      ((24 * height : ℕ) : ℚ) / (Y * N) ≤
        ((24 * 64 : ℕ) : ℚ) / (Y * N) := by
    exact div_le_div_of_nonneg_right (by exact_mod_cast hThirdNumerator)
      (by positivity)
  unfold transformedRootRow
  linarith

theorem fiveMillionOddRootK0_le_controlling
    (N : ℕ) (hN : 5_000_000 ≤ N) :
    transformedRootRow N (N / 49)
        (Nat.primeCounting (N / 49) - 4) 2 961 ≤
      fiveMillionOddRoot7Value N := by
  unfold fiveMillionOddRoot7Value
  apply transformedRootRow_le_controlling_of_le (by omega) (by omega)
  · norm_num
  · norm_num

theorem fiveMillionOddRootK1_le_controlling
    (N : ℕ) (hN : 5_000_000 ≤ N) :
    transformedRootRow N (N / 49)
        (Nat.primeCounting (N / 49) - 4) 4 961 ≤
      fiveMillionOddRoot7Value N := by
  unfold fiveMillionOddRoot7Value
  apply transformedRootRow_le_controlling_of_le (by omega) (by omega)
  · norm_num
  · norm_num

theorem fiveMillionOddRootK2_le_controlling
    (N : ℕ) (hN : 5_000_000 ≤ N) :
    transformedRootRow N (N / 49)
        (Nat.primeCounting (N / 49) - 4) 8 522 ≤
      fiveMillionOddRoot7Value N := by
  unfold fiveMillionOddRoot7Value
  apply transformedRootRow_le_controlling_of_le (by omega) (by omega)
  · norm_num
  · norm_num

theorem fiveMillionOddRootK3_le_controlling
    (N : ℕ) (hN : 5_000_000 ≤ N) :
    transformedRootRow N (N / 49)
        (Nat.primeCounting (N / 49) - 4) 16 278 ≤
      fiveMillionOddRoot7Value N := by
  unfold fiveMillionOddRoot7Value
  apply transformedRootRow_le_controlling_of_le (by omega) (by omega)
  · norm_num
  · norm_num

/-- The `k = 4` row has a slightly larger height-times-support term, but the
factor-of-49 quotient makes its smaller reciprocal-height term compensate. -/
theorem fiveMillionOddRootK4_le_controlling
    (N : ℕ) (hN : 5_000_000 ≤ N) :
    transformedRootRow N (N / 49)
        (Nat.primeCounting (N / 49) - 4) 32 143 ≤
      fiveMillionOddRoot7Value N := by
  have hNpos : 0 < N := by omega
  have hYpos : 0 < N / 49 := by omega
  have hNQ : (0 : ℚ) < N := by exact_mod_cast hNpos
  have hYQ : (0 : ℚ) < ((N / 49 : ℕ) : ℚ) := by exact_mod_cast hYpos
  have hFloorLower : 49 * (N / 49) ≤ N := Nat.mul_div_le N 49
  have hFloorLowerQ : (49 : ℚ) * (N / 49 : ℕ) ≤ N := by
    exact_mod_cast hFloorLower
  have hExcess :
      (576 : ℚ) / N ≤ 384 / (25 * (N / 49 : ℕ)) := by
    apply (div_le_div_iff₀ hNQ (by positivity)).2
    nlinarith
  have hThird :
      (768 : ℚ) / ((N / 49 : ℕ) * N) ≤
        1536 / ((N / 49 : ℕ) * N) := by
    apply div_le_div_of_nonneg_right (by norm_num)
    positivity
  unfold fiveMillionOddRoot7Value transformedRootRow
  push_cast
  norm_num [fiveMillionOddRoot7Height, fiveMillionOddRoot7Survivors]
    at hExcess hThird ⊢
  ring_nf at hExcess hThird ⊢
  linarith

/-- The `k = 6` row has twice the height, but its support drop from `70` to
`30` pays for both reciprocal-height terms. -/
theorem fiveMillionOddRootK6_le_controlling
    (N : ℕ) (hN : 5_000_000 ≤ N) :
    transformedRootRow N (N / 49)
        (Nat.primeCounting (N / 49) - 4) 128 30 ≤
      fiveMillionOddRoot7Value N := by
  have hNpos : 0 < N := by omega
  have hYpos : 0 < N / 49 := by omega
  have hNQ : (0 : ℚ) < N := by exact_mod_cast hNpos
  have hYQ : (0 : ℚ) < ((N / 49 : ℕ) : ℚ) := by exact_mod_cast hYpos
  have hFloorUpper : N ≤ 50 * (N / 49) := by omega
  have hFloorUpperQ : (N : ℚ) ≤ 50 * (N / 49 : ℕ) := by
    exact_mod_cast hFloorUpper
  have hSecond :
      (768 : ℚ) / (25 * (N / 49 : ℕ)) ≤ 1536 / N := by
    apply (div_le_div_iff₀ (by positivity) hNQ).2
    nlinarith
  have hOneLeY : 1 ≤ N / 49 := by omega
  have hOneLeYQ : (1 : ℚ) ≤ (N / 49 : ℕ) := by exact_mod_cast hOneLeY
  have hThird :
      (1536 : ℚ) / ((N / 49 : ℕ) * N) ≤ 1536 / N := by
    apply (div_le_div_iff₀ (by positivity) hNQ).2
    nlinarith
  unfold fiveMillionOddRoot7Value transformedRootRow
  push_cast
  norm_num [fiveMillionOddRoot7Height, fiveMillionOddRoot7Survivors]
    at hSecond hThird ⊢
  have hSpare : (0 : ℚ) ≤ 768 / N := by positivity
  ring_nf at hSecond hThird hSpare ⊢
  linarith

theorem fiveMillionOddRootProfileRows_all_N_le
    (N : ℕ)
    (hLower : 5_000_000 ≤ N)
    (hUpper : N < 10_000_000) :
    transformedRootRow N (N / 49)
        (Nat.primeCounting (N / 49) - 4) 2 961 ≤
        fiveMillionOddRoot7Envelope ∧
      transformedRootRow N (N / 49)
        (Nat.primeCounting (N / 49) - 4) 4 961 ≤
        fiveMillionOddRoot7Envelope ∧
      transformedRootRow N (N / 49)
        (Nat.primeCounting (N / 49) - 4) 8 522 ≤
        fiveMillionOddRoot7Envelope ∧
      transformedRootRow N (N / 49)
        (Nat.primeCounting (N / 49) - 4) 16 278 ≤
        fiveMillionOddRoot7Envelope ∧
      transformedRootRow N (N / 49)
        (Nat.primeCounting (N / 49) - 4) 32 143 ≤
        fiveMillionOddRoot7Envelope ∧
      transformedRootRow N (N / 49)
        (Nat.primeCounting (N / 49) - 4) 64 70 ≤
        fiveMillionOddRoot7Envelope ∧
      transformedRootRow N (N / 49)
        (Nat.primeCounting (N / 49) - 4) 128 30 ≤
        fiveMillionOddRoot7Envelope := by
  have hControl := fiveMillionOddRoot7_all_N_le N hLower hUpper
  constructor
  · exact (fiveMillionOddRootK0_le_controlling N hLower).trans hControl
  constructor
  · exact (fiveMillionOddRootK1_le_controlling N hLower).trans hControl
  constructor
  · exact (fiveMillionOddRootK2_le_controlling N hLower).trans hControl
  constructor
  · exact (fiveMillionOddRootK3_le_controlling N hLower).trans hControl
  constructor
  · exact (fiveMillionOddRootK4_le_controlling N hLower).trans hControl
  constructor
  · simpa [fiveMillionOddRoot7Value] using hControl
  · exact (fiveMillionOddRootK6_le_controlling N hLower).trans hControl

#print axioms fiveMillionOddRootProfileRows_all_N_le

end Erdos848
