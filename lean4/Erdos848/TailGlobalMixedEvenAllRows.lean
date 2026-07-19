import Erdos848.TailGlobalMixedEvenHighRows
import Erdos848.TailGlobalMixedAllRows

namespace Erdos848

/-!
# Exhaustive actual rows for even mixed pivots

The finite terminal certificate covers support lengths `2` through `8` below
the product threshold.  Lengths `0` and `1` close at the literal five-million
endpoint with the empty retained prefix.  Above the threshold, the restricted
two-adic survivor rows fit inside the same weighted `1210` budget used by the
analytic large-product row.  These cases exhaust every actual support.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

private theorem globalMixedEvenEmptyNormal_weight_le
    (valuation : GlobalMixedEvenValuation) (squareCoset : Bool) :
    globalMixedEvenRootFactor valuation *
        (100 * globalMixedCoreEvenRestrictedCount
          (globalMixedNormalSupportWords [] squareCoset)
          (GeneratedTailGlobalMixedEvenSupportCoverage.normalValuationWords
            valuation) + 441) <=
      100 * 1210 + 441 := by
  cases valuation <;> cases squareCoset <;> decide

private theorem globalMixedEvenEmptyTwist_weight_le
    (valuation : GlobalMixedEvenValuation) (squareCoset : Bool) :
    globalMixedEvenRootFactor valuation *
        (100 * globalMixedCoreEvenRestrictedCount
          (globalMixedTwistSupportWords [] squareCoset)
          (GeneratedTailGlobalMixedEvenSupportCoverage.twistValuationWords
            valuation) + 441) <=
      100 * 1210 + 441 := by
  cases valuation <;> cases squareCoset <;> decide

theorem globalMixedEvenNormalRestricted_weight_le
    (valuation : GlobalMixedEvenValuation)
    (support : List Nat) (squareCoset : Bool) :
    globalMixedEvenRootFactor valuation *
        (100 * (globalMixedRestrictSurvivors
          (globalMixedNormalSurvivorFinset support squareCoset)
          (globalMixedEvenNormalModulus valuation)
          (globalMixedEvenNormalResidue valuation)).card + 441) <=
      100 * 1210 + 441 := by
  have hcard := globalMixedNormalRestrictedSurvivors_card_le_prefixCoreCount
    valuation (support := support) (small := [])
      (List.nil_sublist support) squareCoset
  calc
    globalMixedEvenRootFactor valuation *
        (100 * (globalMixedRestrictSurvivors
          (globalMixedNormalSurvivorFinset support squareCoset)
          (globalMixedEvenNormalModulus valuation)
          (globalMixedEvenNormalResidue valuation)).card + 441) <=
      globalMixedEvenRootFactor valuation *
        (100 * globalMixedCoreEvenRestrictedCount
          (globalMixedNormalSupportWords [] squareCoset)
          (GeneratedTailGlobalMixedEvenSupportCoverage.normalValuationWords
            valuation) + 441) := by gcongr
    _ <= 100 * 1210 + 441 :=
      globalMixedEvenEmptyNormal_weight_le valuation squareCoset

theorem globalMixedEvenTwistRestricted_weight_le
    (valuation : GlobalMixedEvenValuation)
    (support : List Nat) (squareCoset : Bool) :
    globalMixedEvenRootFactor valuation *
        (100 * (globalMixedRestrictSurvivors
          (globalMixedTwistSurvivorFinset support squareCoset)
          (globalMixedEvenTwistModulus valuation)
          (globalMixedEvenTwistResidue valuation)).card + 441) <=
      100 * 1210 + 441 := by
  have hcard := globalMixedTwistRestrictedSurvivors_card_le_prefixCoreCount
    valuation (support := support) (small := [])
      (List.nil_sublist support) squareCoset
  calc
    globalMixedEvenRootFactor valuation *
        (100 * (globalMixedRestrictSurvivors
          (globalMixedTwistSurvivorFinset support squareCoset)
          (globalMixedEvenTwistModulus valuation)
          (globalMixedEvenTwistResidue valuation)).card + 441) <=
      globalMixedEvenRootFactor valuation *
        (100 * globalMixedCoreEvenRestrictedCount
          (globalMixedTwistSupportWords [] squareCoset)
          (GeneratedTailGlobalMixedEvenSupportCoverage.twistValuationWords
            valuation) + 441) := by gcongr
    _ <= 100 * 1210 + 441 :=
      globalMixedEvenEmptyTwist_weight_le valuation squareCoset

private theorem globalMixedEvenLargeProduct_row
    {valuation : GlobalMixedEvenValuation}
    {N k survivors endpoint : Nat}
    (hN : 5_000_000 <= N) (hEndpoint : endpoint <= N)
    (hLarge : globalMixedSupportProductThreshold k <= endpoint)
    (hweight : globalMixedEvenRootFactor valuation *
        (100 * survivors + 441) <= 100 * 1210 + 441) :
    globalMixedEvenRowBound valuation k survivors N := by
  have hbase := globalMixedLargeProduct_row hN hEndpoint hLarge
    (show 1210 <= 1210 by omega)
  have hcoefficient :
      globalMixedEvenRootCoefficient100
          (globalMixedEvenRootFactor valuation) k survivors <=
        globalMixedRootCoefficient100 k 1210 := by
    unfold globalMixedEvenRootCoefficient100 globalMixedRootCoefficient100
    calc
      (globalMixedEvenRootFactor valuation * 2 ^ (k + 1)) *
          (100 * survivors + 441) =
        2 ^ (k + 1) *
          (globalMixedEvenRootFactor valuation *
            (100 * survivors + 441)) := by ring
      _ <= 2 ^ (k + 1) * (100 * 1210 + 441) := by gcongr
  cases valuation with
  | one =>
      simp only [globalMixedEvenRowBound]
      exact (by
        calc
          ((globalMixedEvenRootCoefficient100 1 k survivors : Rat) / 100 +
              Nat.primeCounting (N / globalMixedSplit)) / N <=
            ((globalMixedRootCoefficient100 k 1210 : Rat) / 100 +
              Nat.primeCounting (N / globalMixedSplit)) / N := by
                gcongr
                exact_mod_cast hcoefficient
          _ <= fiveMillionOddRoot7Envelope / 6 := hbase)
  | two =>
      simp only [globalMixedEvenRowBound]
      exact (by
        calc
          ((globalMixedEvenRootCoefficient100 2 k survivors : Rat) / 100 +
              Nat.primeCounting (N / globalMixedSplit)) / N <=
            ((globalMixedRootCoefficient100 k 1210 : Rat) / 100 +
              Nat.primeCounting (N / globalMixedSplit)) / N := by
                gcongr
                exact_mod_cast hcoefficient
          _ <= fiveMillionOddRoot7Envelope / 6 := hbase)
  | three =>
      simp only [globalMixedEvenRowBound]
      exact (by
        calc
          ((globalMixedEvenRootCoefficient100 4 k survivors : Rat) / 100 +
              Nat.primeCounting (N / globalMixedSplit)) / N <=
            ((globalMixedRootCoefficient100 k 1210 : Rat) / 100 +
              Nat.primeCounting (N / globalMixedSplit)) / N := by
                gcongr
                exact_mod_cast hcoefficient
          _ <= fiveMillionOddRoot7Envelope / 6 := hbase
          _ <= (6 / 5 : Rat) * (fiveMillionOddRoot7Envelope / 6) := by
            norm_num [fiveMillionOddRoot7Envelope])

theorem actualMixedSupport_large_product_evenRowBounds
    {valuation : GlobalMixedEvenValuation} {N : Nat}
    (support maskedSupport : List Nat)
    (hN : 5_000_000 <= N) (hProduct : support.prod <= N)
    (hLarge : globalMixedSupportProductThreshold support.length <=
      support.prod) :
    GlobalMixedEvenActualValuationRowsBound valuation support.length
      maskedSupport N := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · exact globalMixedEvenLargeProduct_row hN hProduct hLarge
      (globalMixedEvenNormalRestricted_weight_le valuation maskedSupport false)
  · exact globalMixedEvenLargeProduct_row hN hProduct hLarge
      (globalMixedEvenNormalRestricted_weight_le valuation maskedSupport true)
  · exact globalMixedEvenLargeProduct_row hN hProduct hLarge
      (globalMixedEvenTwistRestricted_weight_le valuation maskedSupport false)
  · exact globalMixedEvenLargeProduct_row hN hProduct hLarge
      (globalMixedEvenTwistRestricted_weight_le valuation maskedSupport true)

theorem actualMixedSupport_small_evenRowBounds
    {k N : Nat} (maskedSupport : List Nat)
    (hk : k <= 1) (hN : 5_000_000 <= N) :
    GlobalMixedEvenActualValuationRowsBound .two k maskedSupport N ∧
      GlobalMixedEvenActualValuationRowsBound .three k maskedSupport N := by
  have hpass : globalMixedEvenTerminalPrefixPasses k 5_000_000 [] = true := by
    interval_cases k <;> decide
  have hrows := globalMixedEvenTerminalPrefixPasses_sound
    hN (show 5_000_000 <= 5_000_000 by omega) hN hpass
  exact ⟨
    globalMixedEvenActualValuationRowsBound_of_prefix
      (small := []) (support := maskedSupport)
      (List.nil_sublist maskedSupport) hrows.1,
    globalMixedEvenActualValuationRowsBound_of_prefix
      (small := []) (support := maskedSupport)
      (List.nil_sublist maskedSupport) hrows.2⟩

theorem actualMixedSupport_all_evenRowBounds
    {N : Nat} (support : List Nat)
    (hN : 5_000_000 <= N)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·))
    (hProduct : support.prod <= N) :
    let maskedSupport :=
      support.dropLast.filter fun p => decide (p <= 2843)
    GlobalMixedEvenActualValuationRowsBound .one support.length
        maskedSupport N ∧
      GlobalMixedEvenActualValuationRowsBound .two support.length
        maskedSupport N ∧
      GlobalMixedEvenActualValuationRowsBound .three support.length
        maskedSupport N := by
  dsimp only
  have hglobal := actualMixedSupport_all_rowBounds support hN hPrimes
    hIncreasing hProduct
  have hone := globalMixedEvenOneActualValuationRowsBound_of_globalRows hglobal
  refine ⟨hone, ?_⟩
  by_cases hsmall : support.length <= 1
  · exact actualMixedSupport_small_evenRowBounds
      (support.dropLast.filter fun p => decide (p <= 2843)) hsmall hN
  have hlower : 2 <= support.length := by omega
  by_cases hupper : support.length <= 8
  · by_cases hfinite : support.prod <
        globalMixedSupportProductThreshold support.length
    · exact actualMixedSupport_dropLast_evenRowBounds
        (k := support.length) support hlower hupper rfl hPrimes hIncreasing
        hfinite hN hProduct
    · have hlarge : globalMixedSupportProductThreshold support.length <=
          support.prod := Nat.le_of_not_gt hfinite
      exact ⟨
        actualMixedSupport_large_product_evenRowBounds
          (valuation := .two) support
          (support.dropLast.filter fun p => decide (p <= 2843))
          hN hProduct hlarge,
        actualMixedSupport_large_product_evenRowBounds
          (valuation := .three) support
          (support.dropLast.filter fun p => decide (p <= 2843))
          hN hProduct hlarge⟩
  · have hnine : 9 <= support.length := by omega
    have hlarge := supportProduct_ge_globalMixedThreshold_of_nine
      support hnine hPrimes hIncreasing
    exact ⟨
      actualMixedSupport_large_product_evenRowBounds
        (valuation := .two) support
        (support.dropLast.filter fun p => decide (p <= 2843))
        hN hProduct hlarge,
      actualMixedSupport_large_product_evenRowBounds
        (valuation := .three) support
        (support.dropLast.filter fun p => decide (p <= 2843))
        hN hProduct hlarge⟩

theorem globalMixedActualPivot_all_evenRowBounds
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B) :
    GlobalMixedEvenActualValuationRowsBound .one
        (fiveMillionPivotSupport pivot).length
        (globalMixedActualMaskedSupport pivot) N ∧
      GlobalMixedEvenActualValuationRowsBound .two
        (fiveMillionPivotSupport pivot).length
        (globalMixedActualMaskedSupport pivot) N ∧
      GlobalMixedEvenActualValuationRowsBound .three
        (fiveMillionPivotSupport pivot).length
        (globalMixedActualMaskedSupport pivot) N := by
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotBounds := hallCompletion_subset_Icc hBout hpivotCompletion
  simpa [globalMixedActualMaskedSupport] using
    (actualMixedSupport_all_evenRowBounds
      (support := fiveMillionPivotSupport pivot) hLower
      (fiveMillionPivotSupport_primes pivot)
      (fiveMillionPivotSupport_increasing pivot)
      (fiveMillionPivotSupport_prod_le
        (Finset.mem_Icc.mp hpivotBounds).1
        (Finset.mem_Icc.mp hpivotBounds).2))

theorem globalMixedEvenOneHighPoints_allSupport
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 4 = 2) :
    (((twoBaseHighTailSquarePoints N pivot (N / 55)).card : Rat) +
      2 * Nat.primeCounting (N / 55)) / N <=
        fiveMillionOddRoot7Envelope / 3 := by
  exact globalMixedEvenOneHighPoints_row_of_four hLower hBout hpivotResidual
    hpivotMod (globalMixedActualPivot_all_evenRowBounds
      hLower hBout hpivotResidual).1

theorem globalMixedEvenTwoHighPoints_allSupport
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 8 = 4) :
    (((twoBaseHighTailSquarePoints N pivot (N / 55)).card : Rat) +
      2 * Nat.primeCounting (N / 55)) / N <=
        fiveMillionOddRoot7Envelope / 3 := by
  exact globalMixedEvenTwoHighPoints_row_of_four hLower hBout hpivotResidual
    hpivotMod (globalMixedActualPivot_all_evenRowBounds
      hLower hBout hpivotResidual).2.1

theorem globalMixedEvenThreeHighPoints_allSupport
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 8 = 0) :
    (((twoBaseHighTailSquarePoints N pivot (N / 55)).card : Rat) +
      2 * Nat.primeCounting (N / 55)) / N <=
        (2 / 5 : Rat) * fiveMillionOddRoot7Envelope := by
  exact globalMixedEvenThreeHighPoints_row_of_four hLower hBout hpivotResidual
    hpivotMod (globalMixedActualPivot_all_evenRowBounds
      hLower hBout hpivotResidual).2.2

#print axioms actualMixedSupport_small_evenRowBounds
#print axioms actualMixedSupport_large_product_evenRowBounds
#print axioms actualMixedSupport_all_evenRowBounds
#print axioms globalMixedEvenOneHighPoints_allSupport
#print axioms globalMixedEvenTwoHighPoints_allSupport
#print axioms globalMixedEvenThreeHighPoints_allSupport

end Erdos848
