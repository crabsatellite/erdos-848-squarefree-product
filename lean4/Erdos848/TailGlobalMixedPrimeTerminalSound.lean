import Erdos848.TailGlobalMixedPrimeRowSound

namespace Erdos848

/-! # Soundness of the terminal fallback in a global mixed checker row -/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

private theorem globalMixedLineDiscountAux_eq_terminal
    (endpoint : ℕ) (blocks : List (ℕ × ℕ × ℕ))
    (hstops : ∀ block ∈ blocks, block.2.1 ≤ 204_081)
    (hendpoint : globalMixedSplit * 204_082 ≤ endpoint) :
    globalMixedLineDiscountAux endpoint blocks = 11_427_393 := by
  induction blocks with
  | nil => rfl
  | cons head tail ih =>
      have hhead := hstops head (by simp)
      have hnot :
          ¬ endpoint < globalMixedSplit * (head.2.1 + 1) := by
        norm_num [globalMixedSplit] at hendpoint ⊢
        omega
      simp only [globalMixedLineDiscountAux, if_neg hnot]
      apply ih
      intro block hmem
      exact hstops block (List.mem_cons_of_mem head hmem)

/-- Once the ambient endpoint reaches the first integer after the last exact
prime block, the affine checker uses exactly the terminal-sieve discount. -/
theorem globalMixedLineDiscount_eq_terminal
    {endpoint : ℕ}
    (hendpoint : globalMixedSplit * 204_082 ≤ endpoint) :
    globalMixedLineDiscount endpoint = 11_427_393 := by
  unfold globalMixedLineDiscount
  apply globalMixedLineDiscountAux_eq_terminal endpoint
    GeneratedTailGlobalMixedSupportCoverage.mixedPrimeBlocks
  · intro block hmem
    have hall :
        GeneratedTailGlobalMixedSupportCoverage.mixedPrimeBlocks.all
          (fun entry => decide (entry.2.1 ≤ 204_081)) = true := by
      decide
    exact of_decide_eq_true
      ((List.all_eq_true.mp hall) block hmem)
  · exact hendpoint

/-- A successful terminal row is literally the already-sound affine line at
the maximum of the support endpoint and the terminal-sieve boundary. -/
theorem globalMixedTerminalPasses_sound
    {coefficient endpoint N : ℕ}
    (hN : 5_000_000 ≤ N) (hEndpointLower : 5_000_000 ≤ endpoint)
    (hEndpoint : endpoint ≤ N)
    (hy : 204_082 ≤ N / globalMixedSplit)
    (hpass : globalMixedTerminalPasses coefficient endpoint = true) :
    (((coefficient : ℚ) / 100 +
        Nat.primeCounting (N / globalMixedSplit)) / N) ≤
      fiveMillionOddRoot7Envelope / 6 := by
  let lower := max endpoint (globalMixedSplit * 204_082)
  have hfloor : (N / globalMixedSplit) * globalMixedSplit ≤ N :=
    Nat.div_mul_le_self _ _
  have hterminalN : globalMixedSplit * 204_082 ≤ N := by
    norm_num [globalMixedSplit] at hfloor hy ⊢
    omega
  have hLowerN : lower ≤ N := max_le hEndpoint hterminalN
  have hLowerFive : 5_000_000 ≤ lower :=
    hEndpointLower.trans (le_max_left _ _)
  have hterminalLower : globalMixedSplit * 204_082 ≤ lower :=
    le_max_right _ _
  have hdiscount := globalMixedLineDiscount_eq_terminal hterminalLower
  have hlinePass : globalMixedLinePasses coefficient lower = true := by
    unfold globalMixedTerminalPasses at hpass
    change
      (if 10 * coefficient ≤ 11_427_393 then true
       else decide (
        (153_000 * lower +
            55_000 * (10 * coefficient - 11_427_393)) *
            (6 * 12_755_647_965_025) ≤
          221_926_420_176 * 55_000_000 * lower)) = true at hpass
    unfold globalMixedLinePasses
    dsimp only
    rw [hdiscount]
    exact hpass
  exact globalMixedLinePasses_sound hN hLowerFive hLowerN hlinePass

end Erdos848
