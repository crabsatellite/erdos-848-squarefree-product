import Erdos848.TailHighVariableRootAnalytic
import Erdos848.TailGlobalMixedValuationPartition

namespace Erdos848

/-!
# Valuation-sensitive variable-root certificate ABI

The literal transformed-root count has two independent parts:

* a theorem-backed support/root bound, with exact two-adic factor
  `1, 2, 4, 1` on the `E1, E2, E3, odd` rows;
* one kernel-checked numerical upper theorem for `primeCounting` at the row
  endpoint; shared packed or Legendre certificates can supply it.

This file proves the complete semantic bridge from those inputs to the
normalized high-root payment.  A generated row therefore contains only a
prime-count DAG and small exact integers/rationals.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

inductive HighVariableRootClass where
  | evenOne
  | evenTwo
  | evenThree
  | odd
  deriving DecidableEq, Fintype

def HighVariableRootClass.factor : HighVariableRootClass → Nat
  | .evenOne => 1
  | .evenTwo => 2
  | .evenThree => 4
  | .odd => 1

def HighVariableRootClass.Accepts
    (rootClass : HighVariableRootClass) :
    FiveMillionValuationClass → Prop
  | .evenOne => rootClass = .evenOne
  | .evenTwo => rootClass = .evenTwo
  | .evenThree => rootClass = .evenThree
  | .oddOne | .oddThree => rootClass = .odd

instance highVariableRootClassAcceptsDecidable
    (rootClass : HighVariableRootClass)
    (valuation : FiveMillionValuationClass) :
    Decidable (rootClass.Accepts valuation) := by
  cases rootClass <;> cases valuation <;>
    simp [HighVariableRootClass.Accepts] <;> infer_instance

theorem actualHighVariableClassHighPoints_card_cast_le
    (rootClass : HighVariableRootClass)
    {N : Nat} {B : Finset Nat} {pivot split : Nat}
    {valuation : FiveMillionValuationClass}
    (hLower : 5_000_000 ≤ N)
    (hSplit : 0 < split)
    (hYFive : 5 < N / split)
    (hBout : Erdos848OutsideSet N B)
    (hpivotPart :
      pivot ∈ fiveMillionValuationPart N B valuation)
    (hAccept : rootClass.Accepts valuation) :
    ((twoBaseHighTailSquarePoints
        N pivot (N / split)).card : Rat) ≤
      highVariableRootPointCeilingOf
        rootClass.factor N split := by
  have hpivotResidual :=
    fiveMillionValuationPart_subset_residual
      N B valuation hpivotPart
  cases valuation with
  | evenOne =>
      have hclass : rootClass = .evenOne := hAccept
      subst rootClass
      exact actualHighVariableHighPoints_card_cast_le_evenOne
        hLower hSplit hYFive hBout hpivotResidual
          (fiveMillionValuationPart_evenOne hpivotPart)
  | evenTwo =>
      have hclass : rootClass = .evenTwo := hAccept
      subst rootClass
      exact actualHighVariableHighPoints_card_cast_le_evenTwo
        hLower hSplit hYFive hBout hpivotResidual
          (fiveMillionValuationPart_evenTwo hpivotPart)
  | evenThree =>
      have hclass : rootClass = .evenThree := hAccept
      subst rootClass
      simpa [HighVariableRootClass.factor,
        highVariableRootPointCeiling] using
        (actualHighVariableHighPoints_card_cast_le
          hLower hSplit hYFive hBout hpivotResidual)
  | oddOne =>
      have hclass : rootClass = .odd := hAccept
      subst rootClass
      exact actualHighVariableHighPoints_card_cast_le_odd
        hLower hSplit hYFive hBout hpivotResidual
          (fiveMillionValuationPart_odd (Or.inl rfl) hpivotPart)
  | oddThree =>
      have hclass : rootClass = .odd := hAccept
      subst rootClass
      exact actualHighVariableHighPoints_card_cast_le_odd
        hLower hSplit hYFive hBout hpivotResidual
          (fiveMillionValuationPart_odd (Or.inr rfl) hpivotPart)

def highVariableCertifiedRootCombinedBound
    (rootFactor split rootFloor primeUpper lower : Nat) : Rat :=
  (91 * rootFactor / 5 : Rat) *
      split ^ 2 / rootFloor ^ 3 +
    2 * primeUpper / lower

structure HighVariableClassRootRowData where
  rootClass : HighVariableRootClass
  lower : Nat
  upper : Nat
  split : Nat
  rootFloor : Nat
  primeUpper : Nat
  rootEnvelope : Rat
  deriving DecidableEq

def HighVariableClassRootRowData.Valid
    (row : HighVariableClassRootRowData) : Prop :=
  5_000_000 ≤ row.lower ∧
    row.lower ≤ row.upper ∧
    0 < row.split ∧
    204_081 ≤ row.lower / row.split ∧
    0 < row.rootFloor ∧
    row.rootFloor ^ 4 ≤ row.lower ∧
    highVariableCertifiedRootCombinedBound
        row.rootClass.factor row.split row.rootFloor
          row.primeUpper row.lower ≤
      row.rootEnvelope / 3

instance highVariableClassRootRowDataDecidableValid
    (row : HighVariableClassRootRowData) :
    Decidable row.Valid := by
  unfold HighVariableClassRootRowData.Valid
  infer_instance

def HighVariableClassRootRowData.check
    (row : HighVariableClassRootRowData) : Bool :=
  decide row.Valid

theorem HighVariableClassRootRowData.check_sound
    {row : HighVariableClassRootRowData}
    (hcheck : row.check = true) :
    row.Valid :=
  of_decide_eq_true hcheck

structure CertifiedHighVariableClassRootRow where
  row : HighVariableClassRootRowData
  primeBound :
    Nat.primeCounting (row.upper / row.split) ≤ row.primeUpper
  checked : row.check = true

theorem CertifiedHighVariableClassRootRow.actualHighPoints_ratio_le
    (certificate : CertifiedHighVariableClassRootRow)
    {N : Nat} {B : Finset Nat} {pivot cutoff : Nat}
    {valuation : FiveMillionValuationClass}
    (hLower : certificate.row.lower ≤ N)
    (hUpper : N ≤ certificate.row.upper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotPart :
      pivot ∈ fiveMillionValuationPart N B valuation)
    (hAccept : certificate.row.rootClass.Accepts valuation) :
    (((twoBaseHighTailSquarePoints
          N pivot (N / certificate.row.split)).card : Rat) +
        2 * ((Nat.primeCounting (N / certificate.row.split) -
          Nat.primeCounting cutoff : Nat) : Rat)) / N ≤
      certificate.row.rootEnvelope / 3 := by
  have hvalid := certificate.row.check_sound certificate.checked
  rcases hvalid with
    ⟨hFive, hRange, hSplit, hPrimeFloor,
      hRootFloor, hFourth, hBudget⟩
  have hFiveN : 5_000_000 ≤ N := hFive.trans hLower
  have hNPos : (0 : Rat) < N := by
    exact_mod_cast (show 0 < N by omega)
  have hLowerPos : (0 : Rat) < certificate.row.lower := by
    exact_mod_cast (show 0 < certificate.row.lower by omega)
  have hLowerQ :
      (certificate.row.lower : Rat) ≤ N := by
    exact_mod_cast hLower
  have hcard :=
    actualHighVariableClassHighPoints_card_cast_le
      certificate.row.rootClass hFiveN hSplit
      (by
        have hmono :
            certificate.row.lower / certificate.row.split ≤
              N / certificate.row.split :=
          Nat.div_le_div_right hLower
        omega)
      hBout hpivotPart hAccept
  have hparameter :=
    highVariableRootParameterBudget_le
      (show 1_200 ≤ N by omega) hSplit
      (by
        have hmono :
            certificate.row.lower / certificate.row.split ≤
              N / certificate.row.split :=
          Nat.div_le_div_right hLower
        omega)
  have hrootRatio :=
    highRootFourthRatio_le_of_floor
      hRootFloor hFourth hLower
  have hcardRatio :
      ((twoBaseHighTailSquarePoints
          N pivot (N / certificate.row.split)).card : Rat) / N ≤
        (91 * certificate.row.rootClass.factor / 5 : Rat) *
          certificate.row.split ^ 2 /
            certificate.row.rootFloor ^ 3 := by
    calc
      ((twoBaseHighTailSquarePoints
          N pivot (N / certificate.row.split)).card : Rat) / N ≤
        (highVariableRootPointCeilingOf
          certificate.row.rootClass.factor N
            certificate.row.split) / N :=
          div_le_div_of_nonneg_right hcard hNPos.le
      _ =
        ((26 * certificate.row.rootClass.factor : Nat) / 3 : Rat) *
          highVariableRootParameterBudget
            N certificate.row.split *
          (((Nat.sqrt (Nat.sqrt N) + 1 : Nat) : Rat) / N) := by
        unfold highVariableRootPointCeilingOf
        push_cast
        ring
      _ ≤
        ((26 * certificate.row.rootClass.factor : Nat) / 3 : Rat) *
          ((21 / 20 : Rat) * certificate.row.split ^ 2) *
          (2 / (certificate.row.rootFloor : Rat) ^ 3) := by
        have hproduct :=
          mul_le_mul hparameter hrootRatio
            (by positivity)
            (by positivity :
              (0 : Rat) ≤
                (21 / 20) * certificate.row.split ^ 2)
        have hcoefficient :
            (0 : Rat) ≤
              ((26 * certificate.row.rootClass.factor : Nat) / 3 : Rat) := by
          cases certificate.row.rootClass <;>
            norm_num [HighVariableRootClass.factor]
        simpa only [mul_assoc] using
          (mul_le_mul_of_nonneg_left hproduct hcoefficient)
      _ =
        (91 * certificate.row.rootClass.factor / 5 : Rat) *
          certificate.row.split ^ 2 /
            certificate.row.rootFloor ^ 3 := by
        push_cast
        ring
  have hprimeArgument :
      N / certificate.row.split ≤
        certificate.row.upper / certificate.row.split :=
    Nat.div_le_div_right hUpper
  have hprime :
      Nat.primeCounting (N / certificate.row.split) ≤
        certificate.row.primeUpper :=
    (Nat.monotone_primeCounting hprimeArgument).trans
      certificate.primeBound
  have hprimeSub :
      Nat.primeCounting (N / certificate.row.split) -
          Nat.primeCounting cutoff ≤
        certificate.row.primeUpper :=
    (Nat.sub_le _ _).trans hprime
  have hprimeRatio :
      2 * ((Nat.primeCounting (N / certificate.row.split) -
          Nat.primeCounting cutoff : Nat) : Rat) / N ≤
        2 * certificate.row.primeUpper /
          certificate.row.lower := by
    have hprimeQ :
        ((Nat.primeCounting (N / certificate.row.split) -
          Nat.primeCounting cutoff : Nat) : Rat) ≤
            certificate.row.primeUpper := by
      exact_mod_cast hprimeSub
    calc
      2 * ((Nat.primeCounting (N / certificate.row.split) -
          Nat.primeCounting cutoff : Nat) : Rat) / N ≤
        2 * certificate.row.primeUpper / N := by
          gcongr
      _ ≤ 2 * certificate.row.primeUpper /
          certificate.row.lower :=
        div_le_div_of_nonneg_left
          (by positivity) hLowerPos hLowerQ
  calc
    (((twoBaseHighTailSquarePoints
          N pivot (N / certificate.row.split)).card : Rat) +
        2 * ((Nat.primeCounting (N / certificate.row.split) -
          Nat.primeCounting cutoff : Nat) : Rat)) / N =
      ((twoBaseHighTailSquarePoints
          N pivot (N / certificate.row.split)).card : Rat) / N +
        2 * ((Nat.primeCounting (N / certificate.row.split) -
          Nat.primeCounting cutoff : Nat) : Rat) / N := by ring
    _ ≤
      (91 * certificate.row.rootClass.factor / 5 : Rat) *
          certificate.row.split ^ 2 /
            certificate.row.rootFloor ^ 3 +
        2 * certificate.row.primeUpper /
          certificate.row.lower :=
      add_le_add hcardRatio hprimeRatio
    _ =
      highVariableCertifiedRootCombinedBound
        certificate.row.rootClass.factor certificate.row.split
          certificate.row.rootFloor certificate.row.primeUpper
            certificate.row.lower := by
      rfl
    _ ≤ certificate.row.rootEnvelope / 3 := hBudget

#print axioms actualHighVariableClassHighPoints_card_cast_le
#print axioms
  CertifiedHighVariableClassRootRow.actualHighPoints_ratio_le

end Erdos848
