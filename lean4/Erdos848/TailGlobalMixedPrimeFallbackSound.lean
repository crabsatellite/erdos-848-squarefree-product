import Erdos848.TailGlobalMixedPrimeTerminalSound

namespace Erdos848

/-! # Soundness of the complete exact-block fallback for one mixed row -/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

/-- The conjunction of all exact blocks and the terminal check covers every
ambient value at or above the unchanged five-million endpoint. -/
theorem globalMixedExactFallback_sound
    {coefficient endpoint N : ℕ}
    (hN : 5_000_000 ≤ N) (hEndpointLower : 5_000_000 ≤ endpoint)
    (hEndpoint : endpoint ≤ N)
    (hblocks :
      GeneratedTailGlobalMixedSupportCoverage.mixedPrimeBlocks.all
        (globalMixedPrimeBlockPasses coefficient endpoint) = true)
    (hterminal : globalMixedTerminalPasses coefficient endpoint = true) :
    (((coefficient : ℚ) / 100 +
        Nat.primeCounting (N / globalMixedSplit)) / N) ≤
      fiveMillionOddRoot7Envelope / 6 := by
  let y := N / globalMixedSplit
  have hyLower : 90_114 ≤ y := by
    dsimp [y, globalMixedSplit]
    omega
  by_cases hyUpper : y ≤ 204_081
  · obtain ⟨block, hmem, hstart, hstop⟩ :=
      globalMixedPrimeBlocks_cover hyLower hyUpper
    have hblockPass :
        globalMixedPrimeBlockPasses coefficient endpoint block = true :=
      (List.all_eq_true.mp hblocks) block hmem
    exact globalMixedPrimeBlockPasses_sound
      hN hEndpointLower hEndpoint hmem hstart hstop hblockPass
  · have hyTerminal : 204_082 ≤ N / globalMixedSplit := by
      dsimp [y] at hyUpper
      omega
    exact globalMixedTerminalPasses_sound
      hN hEndpointLower hEndpoint hyTerminal hterminal

/-- Soundness of the Boolean disjunction used by a generic checker row. -/
theorem globalMixedPrimeRowPasses_sound
    {coefficient endpoint N : ℕ}
    (hN : 5_000_000 ≤ N) (hEndpointLower : 5_000_000 ≤ endpoint)
    (hEndpoint : endpoint ≤ N)
    (hpass :
      (globalMixedLinePasses coefficient endpoint ||
        (GeneratedTailGlobalMixedSupportCoverage.mixedPrimeBlocks.all
            (globalMixedPrimeBlockPasses coefficient endpoint) &&
          globalMixedTerminalPasses coefficient endpoint)) = true) :
    (((coefficient : ℚ) / 100 +
        Nat.primeCounting (N / globalMixedSplit)) / N) ≤
      fiveMillionOddRoot7Envelope / 6 := by
  have hor := Bool.or_eq_true_iff.mp hpass
  rcases hor with hline | hfallback
  · exact globalMixedLinePasses_sound
      hN hEndpointLower hEndpoint hline
  · have hand := Bool.and_eq_true_iff.mp hfallback
    exact globalMixedExactFallback_sound
      hN hEndpointLower hEndpoint hand.1 hand.2

#print axioms globalMixedPrimeRowPasses_sound

end Erdos848
