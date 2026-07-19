import Erdos848.TailGlobalMixedPrimeRowSound
import Erdos848.TailR263EvenOneRoot23Checker

namespace Erdos848

/-! # Arithmetic soundness of the sharp cutoff-23 `v₂ = 1` root checker -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def FiveMillionR263EvenOneRoot23RowBound
    (k : Nat) (supportPrefix : List Nat)
    (fiveTwist squareCoset : Bool) (N : Nat) : Prop :=
  let maskedSupport := supportPrefix.filter fun p => decide (p ≤ 2843)
  let survivors :=
    if fiveTwist then
      globalMixedEvenTerminalTwistCount .one maskedSupport squareCoset
    else
      globalMixedEvenTerminalNormalCount .one maskedSupport squareCoset
  let coefficient := globalMixedEvenRootCoefficient100 1 k survivors
  (((coefficient : Rat) / 100 +
      ((Nat.primeCounting (N / globalMixedSplit) -
        Nat.primeCounting 23 : Nat) : Rat)) / N) ≤
    fiveMillionR263EvenOneRoot23Envelope / 6

theorem fiveMillionR263EvenOneRoot23CombinedAtPasses_sound
    {coefficient primeCount N : Nat}
    (hN : 0 < N)
    (hpass :
      fiveMillionR263EvenOneRoot23CombinedAtPasses
        coefficient primeCount N = true) :
    (((coefficient : Rat) / 100 +
        ((primeCount - Nat.primeCounting 23 : Nat) : Rat)) / N) ≤
      fiveMillionR263EvenOneRoot23Envelope / 6 := by
  have hpi : Nat.primeCounting 23 = 9 := by decide
  rw [hpi]
  unfold fiveMillionR263EvenOneRoot23CombinedAtPasses at hpass
  have hnat :
      (coefficient + 100 * (primeCount - 9)) * 3_000_000 ≤
        716_100 * N := of_decide_eq_true hpass
  have hq :
      (((coefficient + 100 * (primeCount - 9)) * 3_000_000 : Nat) : Rat) ≤
        ((716_100 * N : Nat) : Rat) := by
    exact_mod_cast hnat
  have hNq : (0 : Rat) < N := by exact_mod_cast hN
  rw [div_le_iff₀ hNq]
  push_cast at hq
  norm_num [fiveMillionR263EvenOneRoot23Envelope] at hq ⊢
  linarith

theorem fiveMillionR263EvenOneRoot23PrimeBlockPasses_sound
    {coefficient endpoint N : Nat} {block : Nat × Nat × Nat}
    (hN : 5_000_000 ≤ N)
    (hUpper : N < 10_000_000)
    (hEndpointLower : 5_000_000 ≤ endpoint)
    (hEndpoint : endpoint ≤ N)
    (hmem :
      block ∈
        GeneratedTailGlobalMixedSupportCoverage.mixedPrimeBlocks)
    (hstart : block.1 ≤ N / globalMixedSplit)
    (hstop : N / globalMixedSplit ≤ block.2.1)
    (hpass :
      fiveMillionR263EvenOneRoot23PrimeBlockPasses
        coefficient endpoint block = true) :
    (((coefficient : Rat) / 100 +
        ((Nat.primeCounting (N / globalMixedSplit) -
          Nat.primeCounting 23 : Nat) : Rat)) / N) ≤
      fiveMillionR263EvenOneRoot23Envelope / 6 := by
  let lower := max endpoint (globalMixedSplit * block.1)
  have hfloor : (N / globalMixedSplit) * globalMixedSplit ≤ N :=
    Nat.div_mul_le_self _ _
  have hstartN : globalMixedSplit * block.1 ≤ N := by
    norm_num [globalMixedSplit] at hfloor hstart ⊢
    omega
  have hLowerN : lower ≤ N := max_le hEndpoint hstartN
  have hLowerFive : 5_000_000 ≤ lower :=
    hEndpointLower.trans (le_max_left _ _)
  have hmod : N % 55 < 55 := Nat.mod_lt _ (by norm_num)
  have hdecomp := Nat.mod_add_div N 55
  have hNlt : N < globalMixedSplit * (N / globalMixedSplit + 1) := by
    norm_num [globalMixedSplit]
    omega
  have hLowerUpper :
      lower < globalMixedSplit * (block.2.1 + 1) := by
    norm_num [globalMixedSplit] at hNlt hstop ⊢
    omega
  have hLowerTen : lower < 10_000_000 := hLowerN.trans_lt hUpper
  have hpassAt :
      fiveMillionR263EvenOneRoot23CombinedAtPasses
        coefficient block.2.2 lower = true := by
    simpa [fiveMillionR263EvenOneRoot23PrimeBlockPasses, lower,
      hLowerTen, hLowerUpper] using hpass
  have hcountNat :
      Nat.primeCounting (N / globalMixedSplit) ≤ block.2.2 := by
    have hmono := Nat.monotone_primeCounting hstop
    rw [globalMixedPrimeBlock_stop_count hmem] at hmono
    exact hmono
  have hdeltaNat :
      Nat.primeCounting (N / globalMixedSplit) - Nat.primeCounting 23 ≤
        block.2.2 - Nat.primeCounting 23 :=
    Nat.sub_le_sub_right hcountNat _
  have hdeltaQ :
      ((Nat.primeCounting (N / globalMixedSplit) -
        Nat.primeCounting 23 : Nat) : Rat) ≤
        ((block.2.2 - Nat.primeCounting 23 : Nat) : Rat) := by
    exact_mod_cast hdeltaNat
  have hnum :
      (coefficient : Rat) / 100 +
          ((Nat.primeCounting (N / globalMixedSplit) -
            Nat.primeCounting 23 : Nat) : Rat) ≤
        (coefficient : Rat) / 100 +
          ((block.2.2 - Nat.primeCounting 23 : Nat) : Rat) := by
    linarith
  have hLowerPos : 0 < lower := lt_of_lt_of_le (by norm_num) hLowerFive
  have hLowerQ : (lower : Rat) ≤ N := by exact_mod_cast hLowerN
  have hAt :=
    fiveMillionR263EvenOneRoot23CombinedAtPasses_sound
      hLowerPos hpassAt
  calc
    (((coefficient : Rat) / 100 +
        ((Nat.primeCounting (N / globalMixedSplit) -
          Nat.primeCounting 23 : Nat) : Rat)) / N) ≤
        (((coefficient : Rat) / 100 +
          ((block.2.2 - Nat.primeCounting 23 : Nat) : Rat)) / N) := by
      exact div_le_div_of_nonneg_right hnum (by positivity)
    _ ≤ (((coefficient : Rat) / 100 +
          ((block.2.2 - Nat.primeCounting 23 : Nat) : Rat)) / lower) := by
      exact div_le_div_of_nonneg_left (by positivity)
        (by exact_mod_cast hLowerPos) hLowerQ
    _ ≤ fiveMillionR263EvenOneRoot23Envelope / 6 := hAt

theorem fiveMillionR263EvenOneRoot23OneRowPasses_sound
    {k N : Nat} {supportPrefix : List Nat}
    {fiveTwist squareCoset : Bool}
    (hN : 5_000_000 ≤ N)
    (hUpper : N < 10_000_000)
    (hEndpoint : globalMixedSupportEndpoint supportPrefix ≤ N)
    (hpass :
      fiveMillionR263EvenOneRoot23OneRowPasses
        k supportPrefix fiveTwist squareCoset = true) :
    FiveMillionR263EvenOneRoot23RowBound
      k supportPrefix fiveTwist squareCoset N := by
  have hyLower : 90_114 ≤ N / globalMixedSplit := by
    norm_num [globalMixedSplit]
    omega
  have hyUpper : N / globalMixedSplit ≤ 204_081 := by
    norm_num [globalMixedSplit]
    omega
  obtain ⟨block, hmem, hstart, hstop⟩ :=
    globalMixedPrimeBlocks_cover hyLower hyUpper
  unfold fiveMillionR263EvenOneRoot23OneRowPasses at hpass
  dsimp only at hpass
  have hblockPass :=
    (List.all_eq_true.mp hpass) block hmem
  unfold FiveMillionR263EvenOneRoot23RowBound
  dsimp only
  exact fiveMillionR263EvenOneRoot23PrimeBlockPasses_sound
    hN hUpper (le_max_left _ _) hEndpoint hmem hstart hstop hblockPass

theorem fiveMillionR263EvenOneRoot23PrefixPasses_sound
    {k N : Nat} {supportPrefix : List Nat}
    (hN : 5_000_000 ≤ N)
    (hUpper : N < 10_000_000)
    (hEndpoint : globalMixedSupportEndpoint supportPrefix ≤ N)
    (hpass :
      fiveMillionR263EvenOneRoot23PrefixPasses
        k supportPrefix = true) :
    FiveMillionR263EvenOneRoot23RowBound
        k supportPrefix false false N ∧
      FiveMillionR263EvenOneRoot23RowBound
        k supportPrefix false true N ∧
      FiveMillionR263EvenOneRoot23RowBound
        k supportPrefix true false N ∧
      FiveMillionR263EvenOneRoot23RowBound
        k supportPrefix true true N := by
  unfold fiveMillionR263EvenOneRoot23PrefixPasses at hpass
  have hfirst := Bool.and_eq_true_iff.mp hpass
  have hsecond := Bool.and_eq_true_iff.mp hfirst.1
  have hthird := Bool.and_eq_true_iff.mp hsecond.1
  exact ⟨
    fiveMillionR263EvenOneRoot23OneRowPasses_sound
      hN hUpper hEndpoint hthird.1,
    fiveMillionR263EvenOneRoot23OneRowPasses_sound
      hN hUpper hEndpoint hthird.2,
    fiveMillionR263EvenOneRoot23OneRowPasses_sound
      hN hUpper hEndpoint hsecond.2,
    fiveMillionR263EvenOneRoot23OneRowPasses_sound
      hN hUpper hEndpoint hfirst.2⟩

#print axioms fiveMillionR263EvenOneRoot23CombinedAtPasses_sound
#print axioms fiveMillionR263EvenOneRoot23PrefixPasses_sound

end Erdos848
