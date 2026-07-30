import Erdos848.TailHighLogarithmicCapacity
import Erdos848.TailHighDiagonalAnalyticEnvelope
import Erdos848.TailHighTenBranchArithmetic
import Erdos848.TailTwentyMillionPaperDiagonalBridge
import Erdos848.TailHighVariableRootAnalytic

namespace Erdos848

/-!
# Certificate-free unbounded diagonal terminal

For `cutoff = N / divisor`, the quotient attached to every larger square is
at most `(divisor + 1)^2`.  The prime-union floor error is paid by the
global `153 / 1000` prime slope, and the Pell capacity is paid by the
explicit logarithmic theorem in `TailHighLogarithmicCapacity`.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem highDynamicSquareQuotient_le
    {N divisor : Nat} (hDivisor : 0 < divisor) :
    (N + 1) ^ 2 / (N / divisor + 1) ^ 2 ≤
      (divisor + 1) ^ 2 := by
  have hmod : N % divisor < divisor :=
    Nat.mod_lt N hDivisor
  have hdecomp := Nat.mod_add_div N divisor
  have hrem : N % divisor + 1 ≤ divisor := by omega
  have hlinear :
      N + 1 ≤ (N / divisor + 1) * (divisor + 1) := by
    calc
      N + 1 =
          (N % divisor + 1) + divisor * (N / divisor) := by
        omega
      _ ≤ divisor + divisor * (N / divisor) :=
        Nat.add_le_add_right hrem _
      _ = (N / divisor + 1) * divisor := by ring
      _ ≤ (N / divisor + 1) * (divisor + 1) := by
        gcongr
        omega
  have hpower :
      (N + 1) ^ 2 ≤
        (N / divisor + 1) ^ 2 * (divisor + 1) ^ 2 := by
    calc
      (N + 1) ^ 2 ≤
          ((N / divisor + 1) * (divisor + 1)) ^ 2 :=
        Nat.pow_le_pow_left hlinear 2
      _ = (N / divisor + 1) ^ 2 *
          (divisor + 1) ^ 2 := by ring
  exact Nat.div_le_of_le_mul hpower

theorem highLargeSquarePayment_dynamic_le
    {N divisor : Nat} (odd : Bool)
    (hDivisor : 0 < divisor) :
    highLargeSquarePayment (N / divisor) (N + 1) odd ≤
      ((divisor + 1) ^ 2 + 1) * Nat.clog 5 (N + 1) := by
  have hquotient :=
    highDynamicSquareQuotient_le (N := N) hDivisor
  cases odd with
  | false =>
      simp only [highLargeSquarePayment, Bool.false_eq_true,
        ↓reduceIte]
      exact Nat.mul_le_mul_right (Nat.clog 5 (N + 1))
        (Nat.add_le_add_right hquotient 1)
  | true =>
      simp only [highLargeSquarePayment, ↓reduceIte]
      have hdivEight :
          (N + 1) ^ 2 / (N / divisor + 1) ^ 2 / 8 ≤
            (divisor + 1) ^ 2 :=
        (Nat.div_le_self _ _).trans hquotient
      exact Nat.mul_le_mul_right (Nat.clog 5 (N + 1))
        (Nat.add_le_add_right hdivEight 1)

def highDynamicLargeSquareMultiplier
    (divisor : Nat) (odd : Bool) : Nat :=
  if odd then
    (divisor + 1) ^ 2 / 8 + 1
  else
    (divisor + 1) ^ 2 + 1

theorem highLargeSquarePayment_dynamic_le_sharp
    {N divisor : Nat} (odd : Bool)
    (hDivisor : 0 < divisor) :
    highLargeSquarePayment (N / divisor) (N + 1) odd ≤
      highDynamicLargeSquareMultiplier divisor odd *
        Nat.clog 5 (N + 1) := by
  have hquotient :=
    highDynamicSquareQuotient_le (N := N) hDivisor
  cases odd with
  | false =>
      simp only [highLargeSquarePayment,
        highDynamicLargeSquareMultiplier, Bool.false_eq_true,
        ↓reduceIte]
      exact Nat.mul_le_mul_right (Nat.clog 5 (N + 1))
        (Nat.add_le_add_right hquotient 1)
  | true =>
      simp only [highLargeSquarePayment,
        highDynamicLargeSquareMultiplier, ↓reduceIte]
      have hdivEight :
          (N + 1) ^ 2 / (N / divisor + 1) ^ 2 / 8 ≤
            (divisor + 1) ^ 2 / 8 :=
        Nat.div_le_div_right hquotient
      exact Nat.mul_le_mul_right (Nat.clog 5 (N + 1))
        (Nat.add_le_add_right hdivEight 1)

private theorem highLowerSuccessor_ratio_le
    {lower N : Nat}
    (hLowerPos : 0 < lower)
    (hLower : lower ≤ N) :
    ((N + 1 : Nat) : Rat) / N ≤
      ((lower + 1 : Nat) : Rat) / lower := by
  have hNPos : (0 : Rat) < N := by
    exact_mod_cast hLowerPos.trans_le hLower
  have hLowerQ : (lower : Rat) ≤ N := by exact_mod_cast hLower
  have hLowerQPos : (0 : Rat) < lower := by exact_mod_cast hLowerPos
  have hinv : (1 : Rat) / N ≤ 1 / lower :=
    div_le_div_of_nonneg_left (by norm_num) hLowerQPos hLowerQ
  push_cast
  calc
    ((N : Rat) + 1) / N = 1 + 1 / N := by
      field_simp [ne_of_gt hNPos]
    _ ≤ 1 + 1 / lower := by linarith
    _ = ((lower : Rat) + 1) / lower := by
      field_simp [ne_of_gt hLowerQPos]

def highDiagonalTerminalBound
    (lower divisor rootFloor : Nat)
    (selection : PaperDiagonalSelection) : Rat :=
  2 * selection.smallResidues.card *
      ((((lower + 1 : Nat) : Rat) / lower) /
          selection.smallPeriod / 70 +
        153 / ((1000 : Rat) * divisor)) +
    (((divisor + 1 : Nat) ^ 2 + 1 : Nat) : Rat) *
      ((((rootFloor + 1 : Nat) : Rat) / rootFloor ^ 4) *
        (((lower + 1 : Nat) : Rat) / lower) / 41)

theorem paperDiagonalRatio_le_highDiagonalTerminalBound
    {lower divisor rootFloor N : Nat}
    (hLowerPos : 0 < lower)
    (hLower : lower ≤ N)
    (hDivisor : 0 < divisor)
    (hPrime : 204_081 ≤ lower / divisor)
    (hRootFloor : 697 ≤ rootFloor)
    (hFourth : rootFloor ^ 4 ≤ lower)
    (selection : PaperDiagonalSelection) :
    paperDiagonalRatio N selection ≤
      highDiagonalTerminalBound
        lower divisor rootFloor selection := by
  let cutoff := N / divisor
  have hNPos : 0 < N := hLowerPos.trans_le hLower
  have hNQ : (0 : Rat) < N := by exact_mod_cast hNPos
  have hCutoffMono : lower / divisor ≤ N / divisor :=
    Nat.div_le_div_right hLower
  have hPrimeN : 204_081 ≤ cutoff := by
    dsimp [cutoff]
    exact hPrime.trans hCutoffMono
  have hcard :=
    tailDiagonalSelected_card_le_analyticEnvelope
      (cutoff := cutoff) (N := N)
      (primeCount := Nat.primeCounting cutoff)
      selection le_rfl
  have hsuccessor :=
    highLowerSuccessor_ratio_le hLowerPos hLower
  have hprimeRatio :=
    highVariablePrimeDoubleRatio_le
      hNPos hDivisor hPrimeN
  have hmainRatio :
      highDiagonalPrimeEnvelopeWithCountQ
          N (Nat.primeCounting cutoff) selection / N ≤
        2 * selection.smallResidues.card *
          (((((lower + 1 : Nat) : Rat) / lower) /
              selection.smallPeriod / 70) +
            153 / ((1000 : Rat) * divisor)) := by
    unfold highDiagonalPrimeEnvelopeWithCountQ
    have hcoefficient :
        (0 : Rat) ≤ selection.smallResidues.card := by positivity
    have hmain :
        (((N + 1 : Nat) : Rat) /
              selection.smallPeriod / 70) / N ≤
          ((((lower + 1 : Nat) : Rat) / lower) /
              selection.smallPeriod / 70) := by
      calc
        (((N + 1 : Nat) : Rat) /
              selection.smallPeriod / 70) / N =
            ((((N + 1 : Nat) : Rat) / N) /
              selection.smallPeriod / 70) := by ring
        _ ≤ ((((lower + 1 : Nat) : Rat) / lower) /
              selection.smallPeriod / 70) := by
          gcongr
    have hprimeHalf :
        (Nat.primeCounting cutoff : Rat) / N ≤
          153 / ((1000 : Rat) * divisor) := by
      dsimp [cutoff] at hprimeRatio ⊢
      calc
        (Nat.primeCounting (N / divisor) : Rat) / N =
            (1 / 2 : Rat) *
              (2 * (Nat.primeCounting (N / divisor) : Rat) / N) := by
          ring
        _ ≤ (1 / 2 : Rat) *
              (306 / ((1000 : Rat) * divisor)) := by
          gcongr
        _ = 153 / ((1000 : Rat) * divisor) := by ring
    calc
      (2 * selection.smallResidues.card *
          ((((N + 1 : Nat) : Rat) /
              selection.smallPeriod / 70) +
            Nat.primeCounting cutoff)) / N =
        2 * selection.smallResidues.card *
          (((((N + 1 : Nat) : Rat) /
              selection.smallPeriod / 70) / N) +
            (Nat.primeCounting cutoff : Rat) / N) := by ring
      _ ≤
        2 * selection.smallResidues.card *
          (((((lower + 1 : Nat) : Rat) / lower) /
              selection.smallPeriod / 70) +
            153 / ((1000 : Rat) * divisor)) := by
        gcongr
  have hlargeNat :=
    highLargeSquarePayment_dynamic_le
      (N := N) selection.isOdd hDivisor
  have hlargeQ :
      (highLargeSquarePayment cutoff (N + 1)
          selection.isOdd : Rat) ≤
        (((divisor + 1 : Nat) ^ 2 + 1 : Nat) : Rat) *
          Nat.clog 5 (N + 1) := by
    dsimp [cutoff]
    exact_mod_cast hlargeNat
  have hclog :=
    clog_five_le_fourthRootCeiling_div_fortyOne
      (bound := N + 1)
      hRootFloor hFourth (by omega)
  have hrootRatio :=
    highFourthRootCeiling_ratio_le_sharp
      (n := N + 1)
      (show 0 < rootFloor by omega) hFourth
      (by omega)
  have hlargeCapacityRatio :
      (Nat.clog 5 (N + 1) : Rat) / N ≤
        ((((rootFloor + 1 : Nat) : Rat) / rootFloor ^ 4) *
          (((lower + 1 : Nat) : Rat) / lower) / 41) := by
    calc
      (Nat.clog 5 (N + 1) : Rat) / N ≤
          ((((Nat.sqrt (Nat.sqrt (N + 1)) + 1 : Nat) : Rat) /
              41) / N) :=
        div_le_div_of_nonneg_right hclog hNQ.le
      _ =
          ((((Nat.sqrt (Nat.sqrt (N + 1)) + 1 : Nat) : Rat) /
              (N + 1)) *
            (((N + 1 : Nat) : Rat) / N) / 41) := by
        have hNOnePos : (0 : Rat) < N + 1 := by positivity
        field_simp [ne_of_gt hNQ, ne_of_gt hNOnePos]
        norm_num
      _ ≤
          (((rootFloor + 1 : Nat) : Rat) / rootFloor ^ 4) *
            (((lower + 1 : Nat) : Rat) / lower) / 41 := by
        have hproduct :=
          mul_le_mul hrootRatio hsuccessor
            (by positivity)
            (by positivity :
              (0 : Rat) ≤
                ((rootFloor + 1 : Nat) : Rat) / rootFloor ^ 4)
        apply div_le_div_of_nonneg_right
        · simpa only [Nat.cast_add, Nat.cast_one] using hproduct
        · norm_num
  have hlargeRatio :
      (highLargeSquarePayment cutoff (N + 1)
          selection.isOdd : Rat) / N ≤
        (((divisor + 1 : Nat) ^ 2 + 1 : Nat) : Rat) *
          ((((rootFloor + 1 : Nat) : Rat) / rootFloor ^ 4) *
            (((lower + 1 : Nat) : Rat) / lower) / 41) := by
    calc
      (highLargeSquarePayment cutoff (N + 1)
          selection.isOdd : Rat) / N ≤
        ((((divisor + 1 : Nat) ^ 2 + 1 : Nat) : Rat) *
          Nat.clog 5 (N + 1)) / N :=
        div_le_div_of_nonneg_right hlargeQ hNQ.le
      _ =
        (((divisor + 1 : Nat) ^ 2 + 1 : Nat) : Rat) *
          ((Nat.clog 5 (N + 1) : Rat) / N) := by ring
      _ ≤
        (((divisor + 1 : Nat) ^ 2 + 1 : Nat) : Rat) *
          ((((rootFloor + 1 : Nat) : Rat) / rootFloor ^ 4) *
            (((lower + 1 : Nat) : Rat) / lower) / 41) := by
        gcongr
  unfold paperDiagonalRatio
  unfold highDiagonalTerminalBound
  calc
    (((tailDiagonalBad N).filter (fun x =>
        truncatedDiagonalAtomOf x ∈ selection.atoms)).card : Rat) / N ≤
      (highDiagonalPrimeEnvelopeWithCountQ
          N (Nat.primeCounting cutoff) selection +
        highLargeSquarePayment cutoff (N + 1)
          selection.isOdd) / N :=
      div_le_div_of_nonneg_right hcard hNQ.le
    _ =
      highDiagonalPrimeEnvelopeWithCountQ
          N (Nat.primeCounting cutoff) selection / N +
        (highLargeSquarePayment cutoff (N + 1)
          selection.isOdd : Rat) / N := by ring
    _ ≤
      2 * selection.smallResidues.card *
          (((((lower + 1 : Nat) : Rat) / lower) /
              selection.smallPeriod / 70) +
            153 / ((1000 : Rat) * divisor)) +
        (((divisor + 1 : Nat) ^ 2 + 1 : Nat) : Rat) *
          ((((rootFloor + 1 : Nat) : Rat) / rootFloor ^ 4) *
            (((lower + 1 : Nat) : Rat) / lower) / 41) :=
      add_le_add hmainRatio hlargeRatio

structure HighDiagonalTerminal where
  divisor : Nat
  rootFloor : Nat
  budget : HighTenBranchBudget
  deriving DecidableEq

def HighDiagonalTerminal.Valid
    (terminal : HighDiagonalTerminal) : Prop :=
  0 < terminal.divisor ∧
    204_081 ≤ terminal.budget.lower / terminal.divisor ∧
  697 ≤ terminal.rootFloor ∧
    terminal.rootFloor ^ 4 ≤ terminal.budget.lower ∧
    ∀ selection : PaperDiagonalSelection,
      highDiagonalTerminalBound
          terminal.budget.lower terminal.divisor terminal.rootFloor
          selection ≤
        terminal.budget.diagonal selection

instance (terminal : HighDiagonalTerminal) :
    Decidable terminal.Valid := by
  unfold HighDiagonalTerminal.Valid
  infer_instance

def HighDiagonalTerminal.check
    (terminal : HighDiagonalTerminal) : Bool :=
  decide terminal.Valid

theorem HighDiagonalTerminal.check_sound
    {terminal : HighDiagonalTerminal}
    (hcheck : terminal.check = true) :
    terminal.Valid :=
  of_decide_eq_true hcheck

theorem HighDiagonalTerminal.paperDiagonalRatio_le
    (terminal : HighDiagonalTerminal)
    {N : Nat}
    (hcheck : terminal.check = true)
    (hLower : terminal.budget.lower ≤ N)
    (selection : PaperDiagonalSelection) :
    paperDiagonalRatio N selection ≤
      terminal.budget.diagonal selection := by
  rcases terminal.check_sound hcheck with
    ⟨hDivisor, hPrime, hRootFloor, hFourth, hBudget⟩
  exact (paperDiagonalRatio_le_highDiagonalTerminalBound
    (show 0 < terminal.budget.lower by
      exact (show 0 < terminal.rootFloor ^ 4 by positivity).trans_le hFourth)
    hLower hDivisor hPrime hRootFloor hFourth selection).trans
      (hBudget selection)

#print axioms highDynamicSquareQuotient_le
#print axioms highLargeSquarePayment_dynamic_le
#print axioms highLargeSquarePayment_dynamic_le_sharp
#print axioms paperDiagonalRatio_le_highDiagonalTerminalBound
#print axioms HighDiagonalTerminal.paperDiagonalRatio_le

end Erdos848
