import Erdos848.TailHighPieceGroupedDiagonalSharpEnvelope
import Erdos848.TailHighDiagonalWheelCount
import Erdos848.TailHighDiagonalTerminal

namespace Erdos848

/-!
# Piece-grouped direct-wheel diagonal terminal

This is the unbounded diagonal consumer used by the final high tail.  It
combines three independent uniform improvements:

* the kernel-checked reciprocal-square coefficient;
* the at-most-four piece endpoint coefficient;
* a direct `1 mod 4` wheel count, rather than a count of all primes.

For odd selections the large-square multiplier keeps its genuine factor
`1 / 8`.  There is no prime-count oracle and no finite interval hidden in
this terminal.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

private theorem pieceWheelLowerSuccessor_ratio_le
    {lower N : Nat}
    (hLowerPos : 0 < lower)
    (hLower : lower ≤ N) :
    ((N + 1 : Nat) : Rat) / N ≤
      ((lower + 1 : Nat) : Rat) / lower := by
  have hNPos : (0 : Rat) < N := by
    exact_mod_cast hLowerPos.trans_le hLower
  have hLowerQ : (lower : Rat) ≤ N := by
    exact_mod_cast hLower
  have hLowerQPos : (0 : Rat) < lower := by
    exact_mod_cast hLowerPos
  have hinv : (1 : Rat) / N ≤ 1 / lower :=
    div_le_div_of_nonneg_left (by norm_num)
      hLowerQPos hLowerQ
  push_cast
  calc
    ((N : Rat) + 1) / N = 1 + 1 / N := by
      field_simp [ne_of_gt hNPos]
    _ ≤ 1 + 1 / lower := by linarith
    _ = ((lower : Rat) + 1) / lower := by
      field_simp [ne_of_gt hLowerQPos]

def highPieceWheelDiagonalTerminalBound
    (lower divisor rootFloor : Nat)
    (selection : PaperDiagonalSelection) : Rat :=
  (46 * selection.selectionResidueCount / 25) *
      (((((lower + 1 : Nat) : Rat) / lower) /
        selection.selectionPeriod) * highDiagonalReciprocalBound) +
    (138 * selection.highPieceCount / 25) *
      highDiagonalWheelSixRatioBound lower divisor +
    (highDynamicLargeSquareMultiplier divisor
        selection.isOdd : Rat) *
      ((((rootFloor + 1 : Nat) : Rat) / rootFloor ^ 4) *
        (((lower + 1 : Nat) : Rat) / lower) / 41)

theorem paperDiagonalRatio_le_highPieceWheelDiagonalTerminalBound
    {lower divisor rootFloor N : Nat}
    (hLowerPos : 0 < lower)
    (hLower : lower ≤ N)
    (hDivisor : 0 < divisor)
    (hRootFloor : 697 ≤ rootFloor)
    (hFourth : rootFloor ^ 4 ≤ lower)
    (selection : PaperDiagonalSelection) :
    paperDiagonalRatio N selection ≤
      highPieceWheelDiagonalTerminalBound
        lower divisor rootFloor selection := by
  let cutoff := N / divisor
  let wheelBound := highDiagonalWheelSixBound cutoff
  have hNPos : 0 < N := hLowerPos.trans_le hLower
  have hNQ : (0 : Rat) < N := by
    exact_mod_cast hNPos
  have hcard :=
    tailDiagonalSelected_card_le_pieceGroupedSharpEnvelope
      (cutoff := cutoff) (N := N)
      (primeCount := wheelBound) selection
      (by
        simpa [wheelBound] using
          highDiagonalPrimes_card_cast_le_wheelSix cutoff)
  have hsuccessor :=
    pieceWheelLowerSuccessor_ratio_le hLowerPos hLower
  have hwheelRatio :
      wheelBound / N ≤
        highDiagonalWheelSixRatioBound lower divisor := by
    simpa [wheelBound, cutoff] using
      highDiagonalWheelSixBound_div_le
        hLowerPos hLower hDivisor
  have hmainRatio :
      highPieceGroupedDiagonalPrimeEnvelopeSharpQ
          N wheelBound selection / N ≤
        (46 * selection.selectionResidueCount / 25) *
            (((((lower + 1 : Nat) : Rat) / lower) /
              selection.selectionPeriod) *
                highDiagonalReciprocalBound) +
          (138 * selection.highPieceCount / 25) *
            highDiagonalWheelSixRatioBound lower divisor := by
    unfold highPieceGroupedDiagonalPrimeEnvelopeSharpQ
    have hreciprocalMain :
        (((((N + 1 : Nat) : Rat) /
            selection.selectionPeriod) *
              highDiagonalReciprocalBound) / N) ≤
          (((((lower + 1 : Nat) : Rat) / lower) /
            selection.selectionPeriod) *
              highDiagonalReciprocalBound) := by
      calc
        (((((N + 1 : Nat) : Rat) /
            selection.selectionPeriod) *
              highDiagonalReciprocalBound) / N) =
          ((((N + 1 : Nat) : Rat) / N) /
            selection.selectionPeriod) *
              highDiagonalReciprocalBound := by
            ring
        _ ≤
          (((((lower + 1 : Nat) : Rat) / lower) /
              selection.selectionPeriod) *
              highDiagonalReciprocalBound) := by
            gcongr
            norm_num [highDiagonalReciprocalBound]
    calc
      ((46 * selection.selectionResidueCount / 25) *
            ((((N + 1 : Nat) : Rat) /
              selection.selectionPeriod) *
                highDiagonalReciprocalBound) +
          (138 * selection.highPieceCount / 25) *
            wheelBound) / N =
        (46 * selection.selectionResidueCount / 25) *
            (((((N + 1 : Nat) : Rat) /
              selection.selectionPeriod) *
                highDiagonalReciprocalBound) / N) +
          (138 * selection.highPieceCount / 25) *
            (wheelBound / N) := by ring
      _ ≤
        (46 * selection.selectionResidueCount / 25) *
            (((((lower + 1 : Nat) : Rat) / lower) /
              selection.selectionPeriod) *
                highDiagonalReciprocalBound) +
          (138 * selection.highPieceCount / 25) *
            highDiagonalWheelSixRatioBound lower divisor := by
        exact add_le_add
          (mul_le_mul_of_nonneg_left hreciprocalMain
            (by positivity))
          (mul_le_mul_of_nonneg_left hwheelRatio
            (by positivity))
  have hlargeNat :=
    highLargeSquarePayment_dynamic_le_sharp
      (N := N) selection.isOdd hDivisor
  have hlargeQ :
      (highLargeSquarePayment cutoff (N + 1)
          selection.isOdd : Rat) ≤
        (highDynamicLargeSquareMultiplier divisor
            selection.isOdd : Rat) *
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
        (highDynamicLargeSquareMultiplier divisor
            selection.isOdd : Rat) *
          ((((rootFloor + 1 : Nat) : Rat) / rootFloor ^ 4) *
            (((lower + 1 : Nat) : Rat) / lower) / 41) := by
    calc
      (highLargeSquarePayment cutoff (N + 1)
          selection.isOdd : Rat) / N ≤
        ((highDynamicLargeSquareMultiplier divisor
            selection.isOdd : Rat) *
          Nat.clog 5 (N + 1)) / N :=
            div_le_div_of_nonneg_right hlargeQ hNQ.le
      _ =
        (highDynamicLargeSquareMultiplier divisor
            selection.isOdd : Rat) *
          ((Nat.clog 5 (N + 1) : Rat) / N) := by ring
      _ ≤
        (highDynamicLargeSquareMultiplier divisor
            selection.isOdd : Rat) *
          ((((rootFloor + 1 : Nat) : Rat) / rootFloor ^ 4) *
            (((lower + 1 : Nat) : Rat) / lower) / 41) := by
        exact mul_le_mul_of_nonneg_left hlargeCapacityRatio
          (by positivity)
  unfold paperDiagonalRatio
  unfold highPieceWheelDiagonalTerminalBound
  calc
    (((tailDiagonalBad N).filter (fun x =>
        truncatedDiagonalAtomOf x ∈ selection.atoms)).card : Rat) / N ≤
      (highPieceGroupedDiagonalPrimeEnvelopeSharpQ
          N wheelBound selection +
        highLargeSquarePayment cutoff (N + 1)
          selection.isOdd) / N :=
            div_le_div_of_nonneg_right hcard hNQ.le
    _ =
      highPieceGroupedDiagonalPrimeEnvelopeSharpQ
          N wheelBound selection / N +
        (highLargeSquarePayment cutoff (N + 1)
          selection.isOdd : Rat) / N := by ring
    _ ≤
      (46 * selection.selectionResidueCount / 25) *
          (((((lower + 1 : Nat) : Rat) / lower) /
            selection.selectionPeriod) *
              highDiagonalReciprocalBound) +
        (138 * selection.highPieceCount / 25) *
          highDiagonalWheelSixRatioBound lower divisor +
        (highDynamicLargeSquareMultiplier divisor
            selection.isOdd : Rat) *
          ((((rootFloor + 1 : Nat) : Rat) / rootFloor ^ 4) *
            (((lower + 1 : Nat) : Rat) / lower) / 41) :=
      add_le_add hmainRatio hlargeRatio

structure HighPieceWheelDiagonalTerminal where
  unrestrictedDivisor : Nat
  concentratedDivisor : Nat
  evenTwoCellDivisor : Nat
  lowTwoAdicDivisor : Nat
  oddUnionDivisor : Nat
  oddPlusCellDivisor : Nat
  oneOddDivisor : Nat
  oneOddCellDivisor : Nat
  rootFloor : Nat
  budget : HighTenBranchBudget
  deriving DecidableEq

def HighPieceWheelDiagonalTerminal.divisor
    (terminal : HighPieceWheelDiagonalTerminal) :
    PaperDiagonalSelection → Nat
  | .unrestricted => terminal.unrestrictedDivisor
  | .concentrated _ _ => terminal.concentratedDivisor
  | .evenTwoCell _ => terminal.evenTwoCellDivisor
  | .lowTwoAdic => terminal.lowTwoAdicDivisor
  | .oddUnion => terminal.oddUnionDivisor
  | .oddPlusCell _ _ => terminal.oddPlusCellDivisor
  | .oneOdd _ => terminal.oneOddDivisor
  | .oneOddCell _ _ => terminal.oneOddCellDivisor

def HighPieceWheelDiagonalTerminal.Valid
    (terminal : HighPieceWheelDiagonalTerminal) : Prop :=
  697 ≤ terminal.rootFloor ∧
    terminal.rootFloor ^ 4 ≤ terminal.budget.lower ∧
    ∀ selection : PaperDiagonalSelection,
      0 < terminal.divisor selection ∧
      highPieceWheelDiagonalTerminalBound
          terminal.budget.lower
          (terminal.divisor selection)
          terminal.rootFloor selection ≤
        terminal.budget.diagonal selection

instance highPieceWheelDiagonalTerminalDecidableValid
    (terminal : HighPieceWheelDiagonalTerminal) :
    Decidable terminal.Valid := by
  unfold HighPieceWheelDiagonalTerminal.Valid
  infer_instance

def HighPieceWheelDiagonalTerminal.check
    (terminal : HighPieceWheelDiagonalTerminal) : Bool :=
  decide terminal.Valid

theorem HighPieceWheelDiagonalTerminal.check_sound
    {terminal : HighPieceWheelDiagonalTerminal}
    (hcheck : terminal.check = true) :
    terminal.Valid :=
  of_decide_eq_true hcheck

theorem HighPieceWheelDiagonalTerminal.paperDiagonalRatio_le
    (terminal : HighPieceWheelDiagonalTerminal)
    {N : Nat}
    (hcheck : terminal.check = true)
    (hLower : terminal.budget.lower ≤ N)
    (selection : PaperDiagonalSelection) :
    paperDiagonalRatio N selection ≤
      terminal.budget.diagonal selection := by
  rcases terminal.check_sound hcheck with
    ⟨hRootFloor, hFourth, hBudget⟩
  have hLowerPos : 0 < terminal.budget.lower :=
    (show 0 < terminal.rootFloor ^ 4 by positivity).trans_le
      hFourth
  exact
    (paperDiagonalRatio_le_highPieceWheelDiagonalTerminalBound
      hLowerPos hLower
      (hBudget selection).1
      hRootFloor hFourth selection).trans
        (hBudget selection).2

#print axioms
  paperDiagonalRatio_le_highPieceWheelDiagonalTerminalBound
#print axioms HighPieceWheelDiagonalTerminal.paperDiagonalRatio_le

end Erdos848
