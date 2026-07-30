import Erdos848.TailHighRootFourthActualRows
import Erdos848.TailGlobalMixedPrimeSemantics

namespace Erdos848

/-!
# Certificate-free analytic transformed-root terminal

The fourth-root numerator is divided by `N` using a certified integer
fourth-root floor.  The prime term uses the already proved global affine
prime-counting bound.  Thus an unbounded terminal needs only one exact
rational budget check; it does not require a prime table or an ambient
enumeration.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem highRootFourthRatio_le_of_floor
    {rootFloor lower N : Nat}
    (hRootFloor : 0 < rootFloor)
    (hFourth : rootFloor ^ 4 ≤ lower)
    (hLower : lower ≤ N) :
    ((Nat.sqrt (Nat.sqrt N) + 1 : Nat) : Rat) / N ≤
      2 / (rootFloor : Rat) ^ 3 := by
  let root := Nat.sqrt (Nat.sqrt N)
  have hFourthN : rootFloor ^ 4 ≤ N := hFourth.trans hLower
  have hFloorSquare :
      rootFloor ^ 2 ≤ Nat.sqrt N := by
    apply Nat.le_sqrt'.2
    calc
      (rootFloor ^ 2) ^ 2 = rootFloor ^ 4 := by ring
      _ ≤ N := hFourthN
  have hFloorRoot : rootFloor ≤ root := by
    dsimp [root]
    exact Nat.le_sqrt'.2 hFloorSquare
  have hRootSquare :
      root ^ 2 ≤ Nat.sqrt N := by
    dsimp [root]
    exact Nat.sqrt_le' _
  have hSqrtSquare :
      (Nat.sqrt N) ^ 2 ≤ N := Nat.sqrt_le' _
  have hRootFourth : root ^ 4 ≤ N := by
    calc
      root ^ 4 = (root ^ 2) ^ 2 := by ring
      _ ≤ (Nat.sqrt N) ^ 2 :=
        Nat.pow_le_pow_left hRootSquare 2
      _ ≤ N := hSqrtSquare
  have hRootPositive : 0 < root := hRootFloor.trans_le hFloorRoot
  have hRootAdd : root + 1 ≤ 2 * root := by omega
  have hFloorCube : rootFloor ^ 3 ≤ root ^ 3 :=
    Nat.pow_le_pow_left hFloorRoot 3
  have hCross :
      (root + 1) * rootFloor ^ 3 ≤ 2 * N := by
    calc
      (root + 1) * rootFloor ^ 3 ≤
          (2 * root) * root ^ 3 :=
        Nat.mul_le_mul hRootAdd hFloorCube
      _ = 2 * root ^ 4 := by ring
      _ ≤ 2 * N := Nat.mul_le_mul_left 2 hRootFourth
  have hNPositive : (0 : Rat) < N := by
    exact_mod_cast (hRootFloor.trans_le
      (by
        have : rootFloor ≤ N := by
          exact le_trans hFloorRoot
            ((Nat.sqrt_le_self (Nat.sqrt N)).trans
              (Nat.sqrt_le_self N))
        exact this))
  have hCubePositive : (0 : Rat) < (rootFloor : Rat) ^ 3 := by
    positivity
  change ((root + 1 : Nat) : Rat) / N ≤
    2 / (rootFloor : Rat) ^ 3
  exact (div_le_div_iff₀ hNPositive hCubePositive).2
    (by exact_mod_cast hCross)

theorem highRootPrimeDoubleRatio_le
    {N : Nat} (hLower : 5_000_000 ≤ N) :
    2 * (Nat.primeCounting (N / 55) : Rat) / N ≤
      306 / 55_000 := by
  have hline :=
    globalMixedPrimeCounting_line_bound
      (endpoint := 5_000_000) hLower hLower
  have hline55 :
      (Nat.primeCounting (N / 55) : Rat) ≤
        (153 / 1000 : Rat) * (N / 55 : Nat) -
          (globalMixedLineDiscount 5_000_000 : Nat) / 1000 := by
    simpa [globalMixedSplit] using hline
  have hprime :
      (Nat.primeCounting (N / 55) : Rat) ≤
        (153 / 1000 : Rat) * (N / 55 : Nat) := by
    have hdiscount :
        (0 : Rat) ≤
          (globalMixedLineDiscount 5_000_000 : Nat) / 1000 := by
      positivity
    linarith [hline55]
  have hfloorNat : (N / 55) * 55 ≤ N :=
    Nat.div_mul_le_self N 55
  have hfloor :
      ((N / 55 : Nat) : Rat) ≤ (N : Rat) / 55 := by
    have hfloorCast :
        (((N / 55) * 55 : Nat) : Rat) ≤ N := by
      exact_mod_cast hfloorNat
    push_cast at hfloorCast
    linarith
  have hnumerator :
      2 * (Nat.primeCounting (N / 55) : Rat) ≤
        (306 / 55_000 : Rat) * N := by
    calc
      2 * (Nat.primeCounting (N / 55) : Rat) ≤
          2 * ((153 / 1000 : Rat) * (N / 55 : Nat)) := by
        gcongr
      _ ≤ 2 * ((153 / 1000 : Rat) * ((N : Rat) / 55)) := by
        gcongr
      _ = (306 / 55_000 : Rat) * N := by ring
  have hNPositive : (0 : Rat) < N := by
    exact_mod_cast (show 0 < N by omega)
  exact (div_le_iff₀ hNPositive).2 hnumerator

def highRootAnalyticCombinedBound (rootFloor : Nat) : Rat :=
  (128 * (100 * 1210 + 441 : Nat) : Rat) /
      (100 * (rootFloor : Rat) ^ 3) +
    306 / 55_000

theorem actualHighAnalyticHighPoints_ratio_le
    {rootFloor lower N : Nat}
    {B : Finset Nat} {pivot cutoff : Nat}
    {cls : FiveMillionValuationClass}
    (hRootFloor : 0 < rootFloor)
    (hFourth : rootFloor ^ 4 ≤ lower)
    (hFive : 5_000_000 ≤ lower)
    (hLower : lower ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotPart : pivot ∈ fiveMillionValuationPart N B cls) :
    (((twoBaseHighTailSquarePoints N pivot (N / 55)).card : Rat) +
        2 * ((Nat.primeCounting (N / 55) -
          Nat.primeCounting cutoff : Nat) : Rat)) / N ≤
      highRootAnalyticCombinedBound rootFloor := by
  have hFiveN : 5_000_000 ≤ N := hFive.trans hLower
  have hcard :=
    actualHighFourthHighPoints_card_cast_le hFiveN hBout hpivotPart
  have hNPositive : (0 : Rat) < N := by
    exact_mod_cast (show 0 < N by omega)
  have hrootRatio :=
    highRootFourthRatio_le_of_floor
      hRootFloor hFourth hLower
  have hcardRatio :
      ((twoBaseHighTailSquarePoints
          N pivot (N / 55)).card : Rat) / N ≤
        (128 * (100 * 1210 + 441 : Nat) : Rat) /
          (100 * (rootFloor : Rat) ^ 3) := by
    calc
      ((twoBaseHighTailSquarePoints
          N pivot (N / 55)).card : Rat) / N ≤
        (2 * (highRootFourthCoefficientCeiling N : Rat) / 100) /
          N :=
        div_le_div_of_nonneg_right hcard hNPositive.le
      _ =
        (64 * (100 * 1210 + 441 : Nat) : Rat) / 100 *
          (((Nat.sqrt (Nat.sqrt N) + 1 : Nat) : Rat) / N) := by
        unfold highRootFourthCoefficientCeiling
        unfold highRootFourthCeiling
        push_cast
        ring
      _ ≤
        (64 * (100 * 1210 + 441 : Nat) : Rat) / 100 *
          (2 / (rootFloor : Rat) ^ 3) := by
        gcongr
      _ =
        (128 * (100 * 1210 + 441 : Nat) : Rat) /
          (100 * (rootFloor : Rat) ^ 3) := by ring
  have hprimeSub :
      ((Nat.primeCounting (N / 55) -
          Nat.primeCounting cutoff : Nat) : Rat) ≤
        Nat.primeCounting (N / 55) := by
    exact_mod_cast Nat.sub_le _ _
  have hprimeRatio :
      2 * ((Nat.primeCounting (N / 55) -
          Nat.primeCounting cutoff : Nat) : Rat) / N ≤
        306 / 55_000 := by
    calc
      2 * ((Nat.primeCounting (N / 55) -
          Nat.primeCounting cutoff : Nat) : Rat) / N ≤
        2 * (Nat.primeCounting (N / 55) : Rat) / N := by
          exact div_le_div_of_nonneg_right
            (mul_le_mul_of_nonneg_left hprimeSub (by norm_num))
            hNPositive.le
      _ ≤ 306 / 55_000 := highRootPrimeDoubleRatio_le hFiveN
  unfold highRootAnalyticCombinedBound
  calc
    (((twoBaseHighTailSquarePoints N pivot (N / 55)).card : Rat) +
        2 * ((Nat.primeCounting (N / 55) -
          Nat.primeCounting cutoff : Nat) : Rat)) / N =
      ((twoBaseHighTailSquarePoints
          N pivot (N / 55)).card : Rat) / N +
        2 * ((Nat.primeCounting (N / 55) -
          Nat.primeCounting cutoff : Nat) : Rat) / N := by ring
    _ ≤
      (128 * (100 * 1210 + 441 : Nat) : Rat) /
          (100 * (rootFloor : Rat) ^ 3) +
        306 / 55_000 :=
      add_le_add hcardRatio hprimeRatio

structure HighRootAnalyticTerminal where
  lower : Nat
  rootFloor : Nat
  rootEnvelope : Rat

def HighRootAnalyticTerminal.Valid
    (terminal : HighRootAnalyticTerminal) : Prop :=
  5_000_000 ≤ terminal.lower ∧
    0 < terminal.rootFloor ∧
      terminal.rootFloor ^ 4 ≤ terminal.lower ∧
        highRootAnalyticCombinedBound terminal.rootFloor ≤
          terminal.rootEnvelope / 3

instance highRootAnalyticTerminalDecidableValid
    (terminal : HighRootAnalyticTerminal) :
    Decidable terminal.Valid := by
  unfold HighRootAnalyticTerminal.Valid
  infer_instance

def HighRootAnalyticTerminal.check
    (terminal : HighRootAnalyticTerminal) : Bool :=
  decide terminal.Valid

theorem HighRootAnalyticTerminal.check_sound
    {terminal : HighRootAnalyticTerminal}
    (hcheck : terminal.check = true) :
    terminal.Valid :=
  of_decide_eq_true hcheck

theorem HighRootAnalyticTerminal.actualHighPoints_ratio_le
    (terminal : HighRootAnalyticTerminal)
    {N : Nat} {B : Finset Nat} {pivot cutoff : Nat}
    {cls : FiveMillionValuationClass}
    (hcheck : terminal.check = true)
    (hLower : terminal.lower ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotPart : pivot ∈ fiveMillionValuationPart N B cls) :
    (((twoBaseHighTailSquarePoints N pivot (N / 55)).card : Rat) +
        2 * ((Nat.primeCounting (N / 55) -
          Nat.primeCounting cutoff : Nat) : Rat)) / N ≤
      terminal.rootEnvelope / 3 := by
  have hvalid := terminal.check_sound hcheck
  exact (actualHighAnalyticHighPoints_ratio_le
    hvalid.2.1 hvalid.2.2.1 hvalid.1 hLower hBout hpivotPart).trans
      hvalid.2.2.2

#print axioms highRootFourthRatio_le_of_floor
#print axioms highRootPrimeDoubleRatio_le
#print axioms actualHighAnalyticHighPoints_ratio_le
#print axioms HighRootAnalyticTerminal.actualHighPoints_ratio_le

end Erdos848
