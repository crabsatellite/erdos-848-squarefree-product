import Erdos848.TailGlobalMixedPrimeSemantics

namespace Erdos848

/-!
# Soundness of exact prime blocks in the global mixed checker

This module converts one successful exact block into the rational row bound.
It enumerates no ambient interval.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

/-- Exact terminal form of the elementary prime sieve after the fixed split. -/
theorem globalMixedPrimeCounting_terminal_bound
    {N : ℕ} (hy : 204_081 ≤ N / globalMixedSplit) :
    (Nat.primeCounting (N / globalMixedSplit) : ℚ) ≤
      (153 / 1000 : ℚ) * (N / globalMixedSplit : ℕ) -
        11_427_393 / 1000 := by
  have hcount :=
    primeCounting_le_endpoint_add_terminalSieve hy
  calc
    (Nat.primeCounting (N / globalMixedSplit) : ℚ) ≤
        18_311 +
          ((153 / 1000 : ℚ) *
            ((N / globalMixedSplit : ℕ) - 204_081) + 1486) := hcount
    _ = (153 / 1000 : ℚ) * (N / globalMixedSplit : ℕ) -
        11_427_393 / 1000 := by ring

/-- A successful exact prime block controls every ambient value whose split
quotient lies in that block. -/
theorem globalMixedPrimeBlockPasses_sound
    {coefficient endpoint N : ℕ} {block : ℕ × ℕ × ℕ}
    (hN : 5_000_000 ≤ N) (hEndpointLower : 5_000_000 ≤ endpoint)
    (hEndpoint : endpoint ≤ N)
    (hmem : block ∈
      GeneratedTailGlobalMixedSupportCoverage.mixedPrimeBlocks)
    (hstart : block.1 ≤ N / globalMixedSplit)
    (hstop : N / globalMixedSplit ≤ block.2.1)
    (hpass : globalMixedPrimeBlockPasses coefficient endpoint block = true) :
    (((coefficient : ℚ) / 100 +
        Nat.primeCounting (N / globalMixedSplit)) / N) ≤
      fiveMillionOddRoot7Envelope / 6 := by
  let lower := max endpoint (globalMixedSplit * block.1)
  have hfloor : (N / globalMixedSplit) * globalMixedSplit ≤ N :=
    Nat.div_mul_le_self _ _
  have hstartN : globalMixedSplit * block.1 ≤ N := by
    norm_num [globalMixedSplit] at hfloor hstart ⊢
    omega
  have hLowerN : lower ≤ N := by
    exact max_le hEndpoint hstartN
  have hLowerFive : 5_000_000 ≤ lower := by
    exact hEndpointLower.trans (le_max_left _ _)
  have hmod : N % 55 < 55 := Nat.mod_lt _ (by norm_num)
  have hdecomp := Nat.mod_add_div N 55
  have hNlt : N < globalMixedSplit * (N / globalMixedSplit + 1) := by
    norm_num [globalMixedSplit]
    omega
  have hLowerUpper : lower < globalMixedSplit * (block.2.1 + 1) := by
    norm_num [globalMixedSplit] at hNlt hstop ⊢
    omega
  have hpassAt :
      globalMixedCombinedAtPasses coefficient block.2.2 lower = true := by
    simpa [globalMixedPrimeBlockPasses, lower, hLowerUpper] using hpass
  have hcountNat :
      Nat.primeCounting (N / globalMixedSplit) ≤ block.2.2 := by
    have hmono := Nat.monotone_primeCounting hstop
    rw [globalMixedPrimeBlock_stop_count hmem] at hmono
    exact hmono
  have hcountQ :
      (Nat.primeCounting (N / globalMixedSplit) : ℚ) ≤ block.2.2 := by
    exact_mod_cast hcountNat
  have hnum :
      (coefficient : ℚ) / 100 +
          Nat.primeCounting (N / globalMixedSplit) ≤
        (coefficient : ℚ) / 100 + block.2.2 := by
    linarith [hcountQ]
  have hLowerPos : 0 < lower := lt_of_lt_of_le (by norm_num) hLowerFive
  have hLowerQ : (lower : ℚ) ≤ N := by exact_mod_cast hLowerN
  have hAt := globalMixedCombinedAtPasses_sound hLowerPos hpassAt
  calc
    ((coefficient : ℚ) / 100 +
        Nat.primeCounting (N / globalMixedSplit)) / N ≤
        ((coefficient : ℚ) / 100 + block.2.2) / N := by
      exact div_le_div_of_nonneg_right hnum (by positivity)
    _ ≤ ((coefficient : ℚ) / 100 + block.2.2) / lower := by
      exact div_le_div_of_nonneg_left (by positivity)
        (by exact_mod_cast hLowerPos) hLowerQ
    _ ≤ fiveMillionOddRoot7Envelope / 6 := hAt

end Erdos848
