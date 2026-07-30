import Erdos848.TailHighPieceGroupedDiagonalSharpEnvelope
import Erdos848.TailHighDiagonalRootTreeCount
import Erdos848.TailHighDiagonalAnchoredWheelCount
import Erdos848.TailHighDiagonalTerminal
import Erdos848.TailHighTenBranchArithmetic

namespace Erdos848

/-!
# Optimized finite grouped diagonal rows

There are two finite counting modes, both reusing the old ten-million root
tree.

* `rootTree` is best on the four short rows below `6B`.  It keeps the fixed
  cardinality `332180`, but normalizes the reciprocal main term at the lower
  endpoint rather than paying the old `upper/lower` loss.
* `anchoredWheel` is best on the two longer rows up to `500B`.  It retains
  the exact nine-period prefix below `9189179` and counts only the new wheel
  candidates.

The large-square term uses the exact finite endpoint `Nat.clog`; no marker
payload, prime list extension, or interval theorem is stored in a row.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

inductive HighFiniteDiagonalCountMode where
  | rootTree
  | anchoredWheel
  deriving DecidableEq

def HighFiniteDiagonalCountMode.primeRatioBound
    (mode : HighFiniteDiagonalCountMode)
    (lower upper divisor : Nat) : Rat :=
  match mode with
  | .rootTree => 332180 / lower
  | .anchoredWheel =>
      highDiagonalAnchoredWheelRatioBound upper divisor

def highGroupedDiagonalCertifiedRatioBound
    (mode : HighFiniteDiagonalCountMode)
    (lower upper divisor : Nat)
    (selection : PaperDiagonalSelection) : Rat :=
  (46 * selection.selectionResidueCount / 25) *
      (((((lower + 1 : Nat) : Rat) / lower) /
        selection.selectionPeriod) *
          highDiagonalReciprocalBound) +
    (138 * selection.highPieceCount / 25) *
      mode.primeRatioBound lower upper divisor +
    (highDynamicLargeSquareMultiplier divisor
        selection.isOdd : Rat) *
      (Nat.clog 5 (upper + 1) : Rat) / lower

private theorem highFiniteDiagonalLowerSuccessor_ratio_le
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

theorem paperDiagonalRatio_le_highGroupedDiagonalCertifiedRatioBound
    {mode : HighFiniteDiagonalCountMode}
    {lower upper divisor N : Nat}
    (hLowerPos : 0 < lower)
    (hLower : lower ≤ N)
    (hUpper : N ≤ upper)
    (hDivisor : 0 < divisor)
    (hMode :
      match mode with
      | .rootTree => upper / divisor ≤ 9999999
      | .anchoredWheel =>
          highDiagonalAnchoredWheelCutoff ≤ lower / divisor)
    (selection : PaperDiagonalSelection) :
    paperDiagonalRatio N selection ≤
      highGroupedDiagonalCertifiedRatioBound
        mode lower upper divisor selection := by
  let cutoff := N / divisor
  have hNPos : 0 < N := hLowerPos.trans_le hLower
  have hNQ : (0 : Rat) < N := by exact_mod_cast hNPos
  have hLowerQPos : (0 : Rat) < lower := by
    exact_mod_cast hLowerPos
  have hLowerQ : (lower : Rat) ≤ N := by
    exact_mod_cast hLower
  have hcount :
      ((highDiagonalPrimes cutoff).card : Rat) / N ≤
        mode.primeRatioBound lower upper divisor := by
    cases mode with
    | rootTree =>
        have hcutoff :
            cutoff ≤ 9999999 := by
          dsimp [cutoff]
          exact (Nat.div_le_div_right hUpper).trans hMode
        have hcard :=
          highDiagonalPrimes_card_cast_le_rootTree hcutoff
        unfold HighFiniteDiagonalCountMode.primeRatioBound
        calc
          ((highDiagonalPrimes cutoff).card : Rat) / N ≤
              332180 / N :=
            div_le_div_of_nonneg_right hcard hNQ.le
          _ ≤ 332180 / lower :=
            div_le_div_of_nonneg_left
              (by norm_num) hLowerQPos hLowerQ
    | anchoredWheel =>
        have hanchor :
            highDiagonalAnchoredWheelCutoff ≤ cutoff := by
          dsimp [cutoff]
          exact hMode.trans
            (Nat.div_le_div_right hLower)
        exact highDiagonalPrimes_card_div_le_anchoredWheel
          hNPos hUpper hDivisor hanchor
  have hcard :=
    tailDiagonalSelected_card_le_pieceGroupedSharpEnvelope
      (cutoff := cutoff) (N := N)
      (primeCount := (highDiagonalPrimes cutoff).card)
      selection le_rfl
  have hsuccessor :=
    highFiniteDiagonalLowerSuccessor_ratio_le
      hLowerPos hLower
  have hmainRatio :
      highPieceGroupedDiagonalPrimeEnvelopeSharpQ
          N (highDiagonalPrimes cutoff).card selection / N ≤
        (46 * selection.selectionResidueCount / 25) *
            ((((lower + 1 : Nat) : Rat) / lower /
              selection.selectionPeriod) *
              highDiagonalReciprocalBound) +
          (138 * selection.highPieceCount / 25) *
            mode.primeRatioBound lower upper divisor := by
    unfold highPieceGroupedDiagonalPrimeEnvelopeSharpQ
    have hreciprocal :
        (((((N + 1 : Nat) : Rat) / selection.selectionPeriod) *
              highDiagonalReciprocalBound) / N) ≤
          ((((lower + 1 : Nat) : Rat) / lower /
              selection.selectionPeriod) *
            highDiagonalReciprocalBound) := by
      calc
        (((((N + 1 : Nat) : Rat) / selection.selectionPeriod) *
              highDiagonalReciprocalBound) / N) =
            ((((N + 1 : Nat) : Rat) / N) /
              selection.selectionPeriod) *
              highDiagonalReciprocalBound := by ring
        _ ≤
            ((((lower + 1 : Nat) : Rat) / lower /
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
            (highDiagonalPrimes cutoff).card) / N =
        (46 * selection.selectionResidueCount / 25) *
            (((((N + 1 : Nat) : Rat) /
              selection.selectionPeriod) *
                highDiagonalReciprocalBound) / N) +
          (138 * selection.highPieceCount / 25) *
            (((highDiagonalPrimes cutoff).card : Rat) / N) := by
        ring
      _ ≤
        (46 * selection.selectionResidueCount / 25) *
            ((((lower + 1 : Nat) : Rat) / lower /
              selection.selectionPeriod) *
              highDiagonalReciprocalBound) +
          (138 * selection.highPieceCount / 25) *
            mode.primeRatioBound lower upper divisor := by
        gcongr
  have hlargeNat :=
    highLargeSquarePayment_dynamic_le_sharp
      (N := N) selection.isOdd hDivisor
  have hclog :
      Nat.clog 5 (N + 1) ≤ Nat.clog 5 (upper + 1) :=
    Nat.clog_mono_right 5 (Nat.add_le_add_right hUpper 1)
  have hlargeUpper :
      highLargeSquarePayment cutoff (N + 1)
          selection.isOdd ≤
        highDynamicLargeSquareMultiplier divisor
            selection.isOdd *
          Nat.clog 5 (upper + 1) := by
    dsimp [cutoff]
    exact hlargeNat.trans <|
      Nat.mul_le_mul_left
        (highDynamicLargeSquareMultiplier divisor
          selection.isOdd) hclog
  have hlargeUpperQ :
      (highLargeSquarePayment cutoff (N + 1)
          selection.isOdd : Rat) ≤
        (highDynamicLargeSquareMultiplier divisor
            selection.isOdd *
          Nat.clog 5 (upper + 1) : Nat) := by
    exact_mod_cast hlargeUpper
  have hlargeRatio :
      (highLargeSquarePayment cutoff (N + 1)
          selection.isOdd : Rat) / N ≤
        (highDynamicLargeSquareMultiplier divisor
            selection.isOdd : Rat) *
          (Nat.clog 5 (upper + 1) : Rat) / lower := by
    calc
      (highLargeSquarePayment cutoff (N + 1)
          selection.isOdd : Rat) / N ≤
        ((highDynamicLargeSquareMultiplier divisor
              selection.isOdd *
            Nat.clog 5 (upper + 1) : Nat) : Rat) / N :=
          div_le_div_of_nonneg_right hlargeUpperQ hNQ.le
      _ ≤
        ((highDynamicLargeSquareMultiplier divisor
              selection.isOdd *
            Nat.clog 5 (upper + 1) : Nat) : Rat) / lower :=
          div_le_div_of_nonneg_left
            (by positivity) hLowerQPos hLowerQ
      _ =
        (highDynamicLargeSquareMultiplier divisor
            selection.isOdd : Rat) *
          (Nat.clog 5 (upper + 1) : Rat) / lower := by
        push_cast
        ring
  unfold paperDiagonalRatio
  unfold highGroupedDiagonalCertifiedRatioBound
  calc
    (((tailDiagonalBad N).filter (fun x =>
        truncatedDiagonalAtomOf x ∈ selection.atoms)).card : Rat) / N ≤
      (highPieceGroupedDiagonalPrimeEnvelopeSharpQ
          N (highDiagonalPrimes cutoff).card selection +
        highLargeSquarePayment cutoff (N + 1)
          selection.isOdd) / N :=
            div_le_div_of_nonneg_right hcard hNQ.le
    _ =
      highPieceGroupedDiagonalPrimeEnvelopeSharpQ
          N (highDiagonalPrimes cutoff).card selection / N +
        (highLargeSquarePayment cutoff (N + 1)
          selection.isOdd : Rat) / N := by ring
    _ ≤
      (46 * selection.selectionResidueCount / 25) *
          (((((lower + 1 : Nat) : Rat) / lower) /
            selection.selectionPeriod) *
              highDiagonalReciprocalBound) +
        (138 * selection.highPieceCount / 25) *
          mode.primeRatioBound lower upper divisor +
        (highDynamicLargeSquareMultiplier divisor
            selection.isOdd : Rat) *
          (Nat.clog 5 (upper + 1) : Rat) / lower :=
      add_le_add hmainRatio hlargeRatio

structure HighGroupedCertifiedDiagonalRowData where
  mode : HighFiniteDiagonalCountMode
  upper : Nat
  unrestrictedDivisor : Nat
  concentratedDivisor : Nat
  evenTwoCellDivisor : Nat
  lowTwoAdicDivisor : Nat
  oddUnionDivisor : Nat
  oddPlusCellDivisor : Nat
  oneOddDivisor : Nat
  oneOddCellDivisor : Nat
  budget : HighTenBranchBudget
  deriving DecidableEq

def HighGroupedCertifiedDiagonalRowData.divisor
    (row : HighGroupedCertifiedDiagonalRowData) :
    PaperDiagonalSelection → Nat
  | .unrestricted => row.unrestrictedDivisor
  | .concentrated _ _ => row.concentratedDivisor
  | .evenTwoCell _ => row.evenTwoCellDivisor
  | .lowTwoAdic => row.lowTwoAdicDivisor
  | .oddUnion => row.oddUnionDivisor
  | .oddPlusCell _ _ => row.oddPlusCellDivisor
  | .oneOdd _ => row.oneOddDivisor
  | .oneOddCell _ _ => row.oneOddCellDivisor

def HighGroupedCertifiedDiagonalRowData.modeValid
    (row : HighGroupedCertifiedDiagonalRowData)
    (selection : PaperDiagonalSelection) : Prop :=
  match row.mode with
  | .rootTree =>
      row.upper / row.divisor selection ≤ 9999999
  | .anchoredWheel =>
      highDiagonalAnchoredWheelCutoff ≤
        row.budget.lower / row.divisor selection

instance highGroupedCertifiedDiagonalRowDataDecidableModeValid
    (row : HighGroupedCertifiedDiagonalRowData)
    (selection : PaperDiagonalSelection) :
    Decidable (row.modeValid selection) := by
  unfold HighGroupedCertifiedDiagonalRowData.modeValid
  cases row.mode <;> infer_instance

def HighGroupedCertifiedDiagonalRowData.Valid
    (row : HighGroupedCertifiedDiagonalRowData) : Prop :=
  0 < row.budget.lower ∧
    row.budget.lower ≤ row.upper ∧
    ∀ selection : PaperDiagonalSelection,
      0 < row.divisor selection ∧
      row.modeValid selection ∧
      highGroupedDiagonalCertifiedRatioBound
          row.mode row.budget.lower row.upper
          (row.divisor selection) selection ≤
        row.budget.diagonal selection

instance highGroupedCertifiedDiagonalRowDataDecidableValid
    (row : HighGroupedCertifiedDiagonalRowData) :
    Decidable row.Valid := by
  unfold HighGroupedCertifiedDiagonalRowData.Valid
  infer_instance

def HighGroupedCertifiedDiagonalRowData.check
    (row : HighGroupedCertifiedDiagonalRowData) : Bool :=
  decide row.Valid

theorem HighGroupedCertifiedDiagonalRowData.check_sound
    {row : HighGroupedCertifiedDiagonalRowData}
    (hcheck : row.check = true) :
    row.Valid :=
  of_decide_eq_true hcheck

theorem HighGroupedCertifiedDiagonalRowData.check_complete
    {row : HighGroupedCertifiedDiagonalRowData}
    (hvalid : row.Valid) :
    row.check = true := by
  simp [HighGroupedCertifiedDiagonalRowData.check, hvalid]

structure CertifiedHighGroupedDiagonalRow where
  row : HighGroupedCertifiedDiagonalRowData
  checked : row.check = true

theorem CertifiedHighGroupedDiagonalRow.paperDiagonalRatio_le
    (certificate : CertifiedHighGroupedDiagonalRow)
    {N : Nat}
    (hLower : certificate.row.budget.lower ≤ N)
    (hUpper : N ≤ certificate.row.upper)
    (selection : PaperDiagonalSelection) :
    paperDiagonalRatio N selection ≤
      certificate.row.budget.diagonal selection := by
  have hvalid :=
    certificate.row.check_sound certificate.checked
  exact
    (paperDiagonalRatio_le_highGroupedDiagonalCertifiedRatioBound
      hvalid.1 hLower hUpper
      (hvalid.2.2 selection).1
      (hvalid.2.2 selection).2.1
      selection).trans
        (hvalid.2.2 selection).2.2

#print axioms
  paperDiagonalRatio_le_highGroupedDiagonalCertifiedRatioBound
#print axioms
  CertifiedHighGroupedDiagonalRow.paperDiagonalRatio_le

end Erdos848
