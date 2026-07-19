import Erdos848.TailGlobalMixedEvenTerminalSelection
import Erdos848.TailGlobalMixedSupportComplete
import Erdos848.TailGlobalMixedSupportBridge
import Erdos848.TailGlobalMixedOneRowSound

namespace Erdos848

/-!
# Actual finite-support rows for even mixed pivots

The generated terminal certificate is indexed only by a finite support type.
This module transfers its two nontrivial even valuation rows to the literal
restricted survivor sets attached to an arbitrary actual support.  No ambient
value of `N` is enumerated.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def GlobalMixedEvenActualValuationRowsBound
    (valuation : GlobalMixedEvenValuation)
    (k : Nat) (support : List Nat) (N : Nat) : Prop :=
  globalMixedEvenRowBound valuation k
      (globalMixedRestrictSurvivors
        (globalMixedNormalSurvivorFinset support false)
        (globalMixedEvenNormalModulus valuation)
        (globalMixedEvenNormalResidue valuation)).card N ∧
    globalMixedEvenRowBound valuation k
      (globalMixedRestrictSurvivors
        (globalMixedNormalSurvivorFinset support true)
        (globalMixedEvenNormalModulus valuation)
        (globalMixedEvenNormalResidue valuation)).card N ∧
    globalMixedEvenRowBound valuation k
      (globalMixedRestrictSurvivors
        (globalMixedTwistSurvivorFinset support false)
        (globalMixedEvenTwistModulus valuation)
        (globalMixedEvenTwistResidue valuation)).card N ∧
    globalMixedEvenRowBound valuation k
      (globalMixedRestrictSurvivors
        (globalMixedTwistSurvivorFinset support true)
        (globalMixedEvenTwistModulus valuation)
        (globalMixedEvenTwistResidue valuation)).card N

theorem globalMixedEvenActualValuationRowsBound_of_prefix
    {valuation : GlobalMixedEvenValuation} {k N : Nat}
    {small support : List Nat} (hsub : small.Sublist support)
    (hrows : GlobalMixedEvenValuationRowsBound valuation k small N) :
    GlobalMixedEvenActualValuationRowsBound valuation k support N := by
  rcases hrows with ⟨hnormalFalse, hnormalTrue, htwistFalse, htwistTrue⟩
  refine ⟨?_, ?_, ?_, ?_⟩
  · apply globalMixedEvenRowBound_mono
      (globalMixedNormalRestrictedSurvivors_card_le_prefixCoreCount
        valuation hsub false)
    simpa [globalMixedEvenTerminalNormalCount] using hnormalFalse
  · apply globalMixedEvenRowBound_mono
      (globalMixedNormalRestrictedSurvivors_card_le_prefixCoreCount
        valuation hsub true)
    simpa [globalMixedEvenTerminalNormalCount] using hnormalTrue
  · apply globalMixedEvenRowBound_mono
      (globalMixedTwistRestrictedSurvivors_card_le_prefixCoreCount
        valuation hsub false)
    simpa [globalMixedEvenTerminalTwistCount] using htwistFalse
  · apply globalMixedEvenRowBound_mono
      (globalMixedTwistRestrictedSurvivors_card_le_prefixCoreCount
        valuation hsub true)
    simpa [globalMixedEvenTerminalTwistCount] using htwistTrue

/-- The `v₂ = 1` restriction is a literal subset of the unfiltered survivor
row.  Its root factor is one, so the existing global mixed row transfers
without any rescaling. -/
theorem globalMixedEvenOneActualValuationRowsBound_of_globalRows
    {k N : Nat} {supportPrefix : List Nat}
    (hrows :
      globalMixedRowBound k supportPrefix false false N ∧
        globalMixedRowBound k supportPrefix false true N ∧
        globalMixedRowBound k supportPrefix true false N ∧
        globalMixedRowBound k supportPrefix true true N) :
    GlobalMixedEvenActualValuationRowsBound .one k
      (supportPrefix.filter fun p => decide (p <= 2843)) N := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · apply globalMixedEvenRowBound_mono
      ((globalMixedRestrictSurvivors_card_le _ _ _).trans
        (globalMixedNormalSurvivorFinset_card_le
          (supportPrefix.filter fun p => decide (p <= 2843)) false))
    simpa [globalMixedEvenRowBound, globalMixedEvenRootCoefficient100,
      globalMixedEvenRootFactor, globalMixedRowBound,
      globalMixedRootCoefficient100] using hrows.1
  · apply globalMixedEvenRowBound_mono
      ((globalMixedRestrictSurvivors_card_le _ _ _).trans
        (globalMixedNormalSurvivorFinset_card_le
          (supportPrefix.filter fun p => decide (p <= 2843)) true))
    simpa [globalMixedEvenRowBound, globalMixedEvenRootCoefficient100,
      globalMixedEvenRootFactor, globalMixedRowBound,
      globalMixedRootCoefficient100] using hrows.2.1
  · apply globalMixedEvenRowBound_mono
      ((globalMixedRestrictSurvivors_card_le _ _ _).trans
        (globalMixedTwistSurvivorFinset_card_le
          (supportPrefix.filter fun p => decide (p <= 2843)) false))
    simpa [globalMixedEvenRowBound, globalMixedEvenRootCoefficient100,
      globalMixedEvenRootFactor, globalMixedRowBound,
      globalMixedRootCoefficient100] using hrows.2.2.1
  · apply globalMixedEvenRowBound_mono
      ((globalMixedRestrictSurvivors_card_le _ _ _).trans
        (globalMixedTwistSurvivorFinset_card_le
          (supportPrefix.filter fun p => decide (p <= 2843)) true))
    simpa [globalMixedEvenRowBound, globalMixedEvenRootCoefficient100,
      globalMixedEvenRootFactor, globalMixedRowBound,
      globalMixedRootCoefficient100] using hrows.2.2.2

/-- The finite terminal certificate, support completeness, endpoint extension,
and survivor anti-monotonicity compose into the eight literal rows needed for
the `v₂ = 2` and `v₂ ≥ 3` cases of an actual support. -/
theorem actualMixedSupport_dropLast_evenRowBounds
    {k N : Nat} (support : List Nat)
    (hLowerK : 2 <= k) (hUpperK : k <= 8)
    (hLength : support.length = k)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·))
    (hFinite : support.prod < globalMixedSupportProductThreshold k)
    (hN : 5_000_000 <= N) (hProduct : support.prod <= N) :
    let maskedSupport := support.dropLast.filter fun p => decide (p <= 2843)
    GlobalMixedEvenActualValuationRowsBound .two k maskedSupport N ∧
      GlobalMixedEvenActualValuationRowsBound .three k maskedSupport N := by
  dsimp only
  have hmem : support.dropLast ∈ globalMixedFeasiblePrefixesKernel k :=
    actualMixedSupport_dropLast_mem_globalFeasible hUpperK support hLength
      hPrimes hIncreasing hFinite
  obtain ⟨terminal, hTerminalLower, hbranch, hmasked,
      hTerminalEndpoint, hpass⟩ :=
    globalMixedEvenTerminalSelection_of_mem_feasible hLowerK hUpperK hmem
  have hRetained : ∀ p ∈ support.dropLast, p < 9161 :=
    mixedSupport_dropLast_lt_9161 hUpperK support hLength hPrimes
      hIncreasing hFinite
  have hDomain :
      ∀ p ∈ support.dropLast,
        p ∈ GeneratedTailGlobalMixedSupportCoverage.mixedSupportPrimes := by
    intro p hp
    have hpSupport : p ∈ support := List.dropLast_subset support hp
    have hpLt : p < 9161 := hRetained p hp
    have hpKernel := mem_globalMixedKernelSupportPrimes_of_supportPrime
      (hPrimes p hpSupport) (show p <= 9161 by omega)
    rcases List.mem_append.mp hpKernel with hpMixed | hpSentinel
    · exact hpMixed
    · simp only [List.mem_singleton] at hpSentinel
      omega
  have hSupportEndpoint :
      globalMixedEvenSupportEndpoint support.dropLast <= N := by
    have hold := globalMixedSupportEndpoint_le support hN hPrimes hIncreasing
      hProduct hDomain
    simpa [globalMixedEvenSupportEndpoint, globalMixedSupportEndpoint,
      globalMixedSupportLowerProduct] using hold
  have hTerminalRows := globalMixedEvenTerminalPrefixPasses_sound
    hN hTerminalLower (hTerminalEndpoint.trans hSupportEndpoint) hpass
  have hsub : terminal.maskedPrefix.Sublist
      (support.dropLast.filter fun p => decide (p <= 2843)) := by
    rw [hmasked]
    exact hbranch.sublist.filter (fun p => decide (p <= 2843))
  exact ⟨
    globalMixedEvenActualValuationRowsBound_of_prefix hsub hTerminalRows.1,
    globalMixedEvenActualValuationRowsBound_of_prefix hsub hTerminalRows.2⟩

#print axioms actualMixedSupport_dropLast_evenRowBounds
#print axioms globalMixedEvenOneActualValuationRowsBound_of_globalRows

end Erdos848
