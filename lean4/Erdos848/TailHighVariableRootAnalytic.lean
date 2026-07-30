import Erdos848.TailHighVariableSplitActual
import Erdos848.TailHighLogarithmicCapacity
import Erdos848.TailPrimeAnchoredRatio

namespace Erdos848

/-!
# Certificate-free variable-split root terminal

At a fixed split `s`, every high square event has quotient at most `s^2`.
The complete quotient interval has reciprocal mass at most `2s`.  Once
`N / s >= 100`, the resulting parameter budget is at most
`(21 / 20) s^2`.  This turns the literal high-square set and the remaining
one-prime terminals into one uniform rational bound.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

/-- Once the movable prime cutoff has passed the endpoint of the terminal
sieve, its contribution is controlled by the uniform `153 / 1000` slope.
The statement is normalized by the ambient `N`, so it applies to every
positive split, not only the fixed split `55`. -/
theorem highVariablePrimeDoubleRatio_le
    {N divisor : Nat}
    (hNPos : 0 < N)
    (hDivisor : 0 < divisor)
    (hPrime : 204_081 ≤ N / divisor) :
    2 * (Nat.primeCounting (N / divisor) : Rat) / N ≤
      306 / ((1000 : Rat) * divisor) := by
  have hcount :=
    primeCounting_le_endpoint_add_terminalSieve hPrime
  have hlinear :
      (18_311 : Rat) +
          (153 / 1000 *
              (((N / divisor : Nat) : Rat) - 204_081) + 1486) ≤
        153 / 1000 * ((N / divisor : Nat) : Rat) := by
    norm_num
    linarith
  have hcountLinear :
      (Nat.primeCounting (N / divisor) : Rat) ≤
        153 / 1000 * ((N / divisor : Nat) : Rat) :=
    hcount.trans hlinear
  have hfloorNat :
      (N / divisor) * divisor ≤ N :=
    Nat.div_mul_le_self N divisor
  have hfloor :
      ((N / divisor : Nat) : Rat) ≤ (N : Rat) / divisor := by
    have hfloorCast :
        (((N / divisor) * divisor : Nat) : Rat) ≤ N := by
      exact_mod_cast hfloorNat
    push_cast at hfloorCast
    exact (le_div_iff₀ (by exact_mod_cast hDivisor)).2 hfloorCast
  have hNQPos : (0 : Rat) < N := by
    exact_mod_cast hNPos
  have hnumerator :
      2 * (Nat.primeCounting (N / divisor) : Rat) ≤
        (306 / ((1000 : Rat) * divisor)) * N := by
    calc
      2 * (Nat.primeCounting (N / divisor) : Rat) ≤
          2 * (153 / 1000 *
            ((N / divisor : Nat) : Rat)) := by
        gcongr
      _ ≤ 2 * (153 / 1000 * ((N : Rat) / divisor)) := by
        gcongr
      _ = (306 / ((1000 : Rat) * divisor)) * N := by
        field_simp
        ring
  exact (div_le_iff₀ hNQPos).2 hnumerator

theorem highVariableRootParameterBudget_le
    {N split : Nat}
    (hN : 1_200 ≤ N)
    (hSplit : 0 < split)
    (hY : 100 ≤ N / split) :
    highVariableRootParameterBudget N split ≤
      (21 / 20 : Rat) * split ^ 2 := by
  let X := N / 25 + 2
  let Y := N / split
  have hX : 24 * X ≤ N := by
    have hq : 48 ≤ N / 25 := by
      exact (Nat.le_div_iff_mul_le (by norm_num : 0 < 25)).2 (by
        simpa using hN)
    have hdecomp25 := Nat.mod_add_div N 25
    dsimp [X]
    omega
  have hmod : N % split < split := Nat.mod_lt N hSplit
  have hdecomp := Nat.mod_add_div N split
  have hNUpper : N ≤ (Y + 1) * split := by
    calc
      N = N % split + split * Y := by
        simpa [Y] using hdecomp.symm
      _ ≤ split + split * Y := Nat.add_le_add_right hmod.le _
      _ = (Y + 1) * split := by ring
  have hYScale : 100 * (Y + 1) ≤ 101 * Y := by
    dsimp [Y]
    omega
  have hScaledN : 100 * N ≤ 101 * Y * split := by
    calc
      100 * N ≤ 100 * ((Y + 1) * split) :=
        Nat.mul_le_mul_left 100 hNUpper
      _ = (100 * (Y + 1)) * split := by ring
      _ ≤ (101 * Y) * split :=
        Nat.mul_le_mul_right split hYScale
      _ = 101 * Y * split := by ring
  have hXY : 20 * X ≤ Y * split := by
    have hLeft : 2_400 * X ≤ 100 * N := by
      calc
        2_400 * X = 100 * (24 * X) := by ring
        _ ≤ 100 * N := Nat.mul_le_mul_left 100 hX
    have hWide : 2_400 * X ≤ 120 * Y * split := by
      calc
        2_400 * X ≤ 100 * N := hLeft
        _ ≤ 101 * Y * split := hScaledN
        _ ≤ 120 * Y * split := by nlinarith
    have hcancel :
        120 * (20 * X) ≤ 120 * (Y * split) := by
      calc
        120 * (20 * X) = 2_400 * X := by ring
        _ ≤ 120 * Y * split := hWide
        _ = 120 * (Y * split) := by ring
    exact Nat.le_of_mul_le_mul_left hcancel (by norm_num)
  have hYPos : (0 : Rat) < Y := by
    exact_mod_cast (show 0 < Y by omega)
  have hSplitNonneg : (0 : Rat) ≤ split := by positivity
  have hXYQ : (20 : Rat) * X ≤ Y * split := by
    exact_mod_cast hXY
  have hterm :
      (X : Rat) / Y * split ≤ (1 / 20 : Rat) * split ^ 2 := by
    rw [div_mul_eq_mul_div]
    apply (div_le_iff₀ hYPos).2
    have hscaled :=
      mul_le_mul_of_nonneg_right hXYQ hSplitNonneg
    calc
      (X : Rat) * split ≤
          ((Y : Rat) * split) * split / 20 := by
        linarith
      _ = (1 / 20 : Rat) * split ^ 2 * Y := by ring
  unfold highVariableRootParameterBudget
  change
    (split ^ 2 : Rat) +
        (X : Rat) / (2 * Y) * (2 * split) ≤
      (21 / 20 : Rat) * split ^ 2
  calc
    (split ^ 2 : Rat) +
        (X : Rat) / (2 * Y) * (2 * split) =
      (split ^ 2 : Rat) + (X : Rat) / Y * split := by
        field_simp [ne_of_gt hYPos]
        <;> ring
    _ ≤ (split ^ 2 : Rat) +
        (1 / 20 : Rat) * split ^ 2 := by
      gcongr
    _ = (21 / 20 : Rat) * split ^ 2 := by ring

def highVariableRootCombinedBound
    (profile : AnchoredPrimeProfileId)
    (split lower rootFloor : Nat) : Rat :=
  (182 / 5 : Rat) * split ^ 2 *
      (rootFloor + 1) / rootFloor ^ 4 +
    anchoredTerminalPrimeDoubleRatioBound
      profile split lower

theorem actualHighVariableAnalyticHighPoints_ratio_le
    {lower rootFloor N split : Nat}
    {B : Finset Nat} {pivot cutoff : Nat}
    (hLowerBase : 5_000_000 ≤ lower)
    (hLower : lower ≤ N)
    (hSplit : 0 < split)
    (hYHundred : 100 ≤ lower / split)
    (profile : AnchoredPrimeProfileId)
    (hYPrime : anchoredPrimePoint ≤ lower / split)
    (hRootFloor : 0 < rootFloor)
    (hFourth : rootFloor ^ 4 ≤ lower)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B) :
    (((twoBaseHighTailSquarePoints
          N pivot (N / split)).card : Rat) +
        2 * ((Nat.primeCounting (N / split) -
          Nat.primeCounting cutoff : Nat) : Rat)) / N ≤
      highVariableRootCombinedBound
        profile split lower rootFloor := by
  have hFiveN : 5_000_000 ≤ N := hLowerBase.trans hLower
  have hNPos : 0 < N := by omega
  have hYMono : lower / split ≤ N / split :=
    Nat.div_le_div_right hLower
  have hHundredN : 100 ≤ N / split :=
    hYHundred.trans hYMono
  have hcard :=
    actualHighVariableHighPoints_card_cast_le
      hFiveN hSplit (by omega) hBout hpivotResidual
  have hbudget :=
    highVariableRootParameterBudget_le
      (show 1_200 ≤ N by omega) hSplit hHundredN
  have hrootRatio :=
    highFourthRootCeiling_ratio_le_sharp
      hRootFloor hFourth hLower
  have hNQ : (0 : Rat) < N := by exact_mod_cast hNPos
  have hcardRatio :
      ((twoBaseHighTailSquarePoints
          N pivot (N / split)).card : Rat) / N ≤
        (182 / 5 : Rat) * split ^ 2 *
          (rootFloor + 1) / rootFloor ^ 4 := by
    calc
      ((twoBaseHighTailSquarePoints
          N pivot (N / split)).card : Rat) / N ≤
          ((104 / 3 : Rat) *
            (Nat.sqrt (Nat.sqrt N) + 1) *
            highVariableRootParameterBudget N split) / N :=
        div_le_div_of_nonneg_right hcard hNQ.le
      _ =
          (104 / 3 : Rat) *
            highVariableRootParameterBudget N split *
            (((Nat.sqrt (Nat.sqrt N) + 1 : Nat) : Rat) / N) := by
        push_cast
        ring
      _ ≤
          (104 / 3 : Rat) * ((21 / 20 : Rat) * split ^ 2) *
            (((rootFloor + 1 : Nat) : Rat) /
              (rootFloor : Rat) ^ 4) := by
        have hproduct :=
          mul_le_mul hbudget hrootRatio
            (by positivity)
            (by positivity : (0 : Rat) ≤ (21 / 20) * split ^ 2)
        simpa only [mul_assoc] using
          (mul_le_mul_of_nonneg_left hproduct
            (by norm_num : (0 : Rat) ≤ 104 / 3))
      _ =
          (182 / 5 : Rat) * split ^ 2 *
            (rootFloor + 1) / rootFloor ^ 4 := by
        push_cast
        ring
  have hsub :
      ((Nat.primeCounting (N / split) -
          Nat.primeCounting cutoff : Nat) : Rat) ≤
        Nat.primeCounting (N / split) := by
    exact_mod_cast Nat.sub_le _ _
  have hprime :
      2 * ((Nat.primeCounting (N / split) -
          Nat.primeCounting cutoff : Nat) : Rat) / N ≤
        anchoredTerminalPrimeDoubleRatioBound
          profile split lower := by
    calc
      2 * ((Nat.primeCounting (N / split) -
          Nat.primeCounting cutoff : Nat) : Rat) / N ≤
          2 * (Nat.primeCounting (N / split) : Rat) / N := by
        exact div_le_div_of_nonneg_right
          (mul_le_mul_of_nonneg_left hsub (by norm_num)) hNQ.le
      _ ≤
          anchoredTerminalPrimeDoubleRatioBound
            profile split lower :=
        primeCounting_doubleRatio_le_anchoredTerminal
          profile (by omega) hLower hSplit hYPrime
  unfold highVariableRootCombinedBound
  calc
    (((twoBaseHighTailSquarePoints
          N pivot (N / split)).card : Rat) +
        2 * ((Nat.primeCounting (N / split) -
          Nat.primeCounting cutoff : Nat) : Rat)) / N =
      ((twoBaseHighTailSquarePoints
          N pivot (N / split)).card : Rat) / N +
        2 * ((Nat.primeCounting (N / split) -
          Nat.primeCounting cutoff : Nat) : Rat) / N := by ring
    _ ≤ (182 / 5 : Rat) * split ^ 2 *
          (rootFloor + 1) / rootFloor ^ 4 +
        anchoredTerminalPrimeDoubleRatioBound
          profile split lower :=
      add_le_add hcardRatio hprime

structure HighVariableRootTerminal where
  lower : Nat
  split : Nat
  rootFloor : Nat
  primeProfile : AnchoredPrimeProfileId
  rootEnvelope : Rat
  deriving DecidableEq

def HighVariableRootTerminal.Valid
    (terminal : HighVariableRootTerminal) : Prop :=
  5_000_000 ≤ terminal.lower ∧
    0 < terminal.split ∧
    anchoredPrimePoint ≤ terminal.lower / terminal.split ∧
    0 < terminal.rootFloor ∧
    terminal.rootFloor ^ 4 ≤ terminal.lower ∧
    highVariableRootCombinedBound
        terminal.primeProfile terminal.split
          terminal.lower terminal.rootFloor ≤
      terminal.rootEnvelope / 3

instance highVariableRootTerminalDecidableValid
    (terminal : HighVariableRootTerminal) :
    Decidable terminal.Valid := by
  unfold HighVariableRootTerminal.Valid
  infer_instance

def HighVariableRootTerminal.check
    (terminal : HighVariableRootTerminal) : Bool :=
  decide terminal.Valid

theorem HighVariableRootTerminal.check_sound
    {terminal : HighVariableRootTerminal}
    (hcheck : terminal.check = true) :
    terminal.Valid :=
  of_decide_eq_true hcheck

theorem HighVariableRootTerminal.actualHighPoints_ratio_le
    (terminal : HighVariableRootTerminal)
    {N : Nat} {B : Finset Nat} {pivot cutoff : Nat}
    (hcheck : terminal.check = true)
    (hLower : terminal.lower ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B) :
    (((twoBaseHighTailSquarePoints
          N pivot (N / terminal.split)).card : Rat) +
        2 * ((Nat.primeCounting (N / terminal.split) -
          Nat.primeCounting cutoff : Nat) : Rat)) / N ≤
      terminal.rootEnvelope / 3 := by
  have hvalid := terminal.check_sound hcheck
  rcases hvalid with
    ⟨hBase, hSplit, hPrime, hRoot, hFourth, hBound⟩
  exact (actualHighVariableAnalyticHighPoints_ratio_le
    hBase hLower hSplit
    ((by norm_num [anchoredPrimePoint] :
      100 ≤ anchoredPrimePoint).trans hPrime) terminal.primeProfile
    hPrime hRoot hFourth
    hBout hpivotResidual).trans hBound

#print axioms highVariableRootParameterBudget_le
#print axioms actualHighVariableAnalyticHighPoints_ratio_le
#print axioms HighVariableRootTerminal.actualHighPoints_ratio_le

end Erdos848
