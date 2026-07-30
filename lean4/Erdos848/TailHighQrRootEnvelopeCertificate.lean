import Erdos848.TailHighQrActualRows
import Erdos848.TailPrimeAnchoredRatio

namespace Erdos848

/-!
# Optimized QR-screened root-envelope rows

Every public row uses the single split `125`.  This exposes the exact floor
relation between division by `25` and division by `125`, removes the old
upper-endpoint numerator, and lets one screen family cover the full interval
through 500B.  Prime counts use one of the four anchored Bonferroni profiles;
there is no packed prime table beyond 16M.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def highQrSplit : Nat := 125

def highQrFiniteStop : Nat := 500_000_000_000

def highQrTenSupportProduct : Nat := 742_073_813_481

def highQrFirstTenSupportPrimeData :
    HighQrSupportPrimeIntervalData where
  lower := 0
  upper := 37
  primes := [3, 7, 11, 13, 17, 19, 23, 29, 31, 37]

def highQrFirstTenSupportPrimeCertificate :
    CertifiedHighQrSupportPrimeInterval where
  data := highQrFirstTenSupportPrimeData
  checked := by decide

theorem highQrSupport_length_lt_ten_of_product_lt
    (support : List Nat)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·))
    (hProduct : support.prod < highQrTenSupportProduct) :
    support.length < 10 := by
  by_contra hnot
  have hTen : 10 ≤ support.length := by omega
  let selected := support.take 10
  have hSelectedLength : selected.length = 10 := by
    simpa [selected] using List.length_take_of_le hTen
  have hMin :=
    highQrFirstTenSupportPrimeCertificate.take_prod_le
      selected
      (by
        simp [highQrFirstTenSupportPrimeCertificate,
          highQrFirstTenSupportPrimeData, hSelectedLength])
      (by
        intro p hp
        exact (hPrimes p
          (List.mem_of_mem_take hp)).1.pos)
      (by
        intro p hp
        exact hPrimes p (List.mem_of_mem_take hp))
      (hIncreasing.sublist (List.take_sublist _ _))
  have hMinValue :
      highQrTenSupportProduct ≤ selected.prod := by
    simpa [highQrFirstTenSupportPrimeCertificate,
      highQrFirstTenSupportPrimeData, highQrTenSupportProduct,
      hSelectedLength] using hMin
  have hSelectedDvd : selected.prod ∣ support.prod :=
    (List.take_sublist 10 support).prod_dvd_prod
  have hSupportPos : 0 < support.prod :=
    List.prod_pos fun p hp => (hPrimes p hp).1.pos
  have hSelectedLe : selected.prod ≤ support.prod :=
    Nat.le_of_dvd hSupportPos hSelectedDvd
  omega

theorem highQr_div_twentyFive_le
    (N : Nat) :
    N / 25 ≤ 5 * (N / highQrSplit) + 4 := by
  have hsplit :
      N % highQrSplit + highQrSplit * (N / highQrSplit) = N :=
    Nat.mod_add_div N highQrSplit
  have hsplitMod :
      N % highQrSplit < highQrSplit :=
    Nat.mod_lt N (by norm_num [highQrSplit])
  have htwentyFive :
      N % 25 + 25 * (N / 25) = N :=
    Nat.mod_add_div N 25
  norm_num [highQrSplit] at hsplit hsplitMod ⊢
  omega

def highQrRootFloorRatioBound (lower : Nat) : Rat :=
  (5 + 6 / ((lower / highQrSplit : Nat) : Rat)) / 2

theorem highQrRootFloorRatio_le_lower
    {lower N : Nat}
    (hLower : lower ≤ N)
    (hLowerY : 0 < lower / highQrSplit) :
    ((N / 25 + 2 : Nat) : Rat) /
        (2 * ((N / highQrSplit : Nat) : Rat)) ≤
      highQrRootFloorRatioBound lower := by
  have hnumerator :
      N / 25 + 2 ≤ 5 * (N / highQrSplit) + 6 := by
    have hbase := highQr_div_twentyFive_le N
    omega
  have hYMono :
      lower / highQrSplit ≤ N / highQrSplit :=
    Nat.div_le_div_right hLower
  have hYPos :
      (0 : Rat) < ((N / highQrSplit : Nat) : Rat) := by
    exact_mod_cast hLowerY.trans_le hYMono
  have hLowerYQ :
      (0 : Rat) < ((lower / highQrSplit : Nat) : Rat) := by
    exact_mod_cast hLowerY
  have hnumQ :
      ((N / 25 + 2 : Nat) : Rat) ≤
        (5 * (N / highQrSplit) + 6 : Nat) := by
    exact_mod_cast hnumerator
  unfold highQrRootFloorRatioBound
  calc
    ((N / 25 + 2 : Nat) : Rat) /
        (2 * ((N / highQrSplit : Nat) : Rat)) ≤
      ((5 * (N / highQrSplit) + 6 : Nat) : Rat) /
        (2 * ((N / highQrSplit : Nat) : Rat)) :=
      div_le_div_of_nonneg_right hnumQ (by positivity)
    _ =
      (5 + 6 / ((N / highQrSplit : Nat) : Rat)) / 2 := by
        push_cast
        field_simp [ne_of_gt hYPos]
    _ ≤
      (5 + 6 / ((lower / highQrSplit : Nat) : Rat)) / 2 := by
        have hinverse :
            (6 : Rat) / (N / highQrSplit : Nat) ≤
              6 / (lower / highQrSplit : Nat) :=
          div_le_div_of_nonneg_left
            (by norm_num) hLowerYQ (by exact_mod_cast hYMono)
        linarith

def highQrRootLowerCoefficient
    (rootFactor supportLength target lower : Nat) : Rat :=
  (rootFactor * 2 ^ (supportLength + 1) : Nat) *
    ((target : Rat) +
      highQrRootFloorRatioBound lower *
        (4 + (target : Rat) / 3026))

theorem highQrRootHighCoefficient_le_lower
    {rootFactor supportLength target lower N : Nat}
    (hLower : lower ≤ N)
    (hLowerY : 0 < lower / highQrSplit) :
    highQrRootHighCoefficient
        rootFactor supportLength target highQrSplit N ≤
      highQrRootLowerCoefficient
        rootFactor supportLength target lower := by
  unfold highQrRootHighCoefficient
  unfold highQrRootLowerCoefficient
  apply mul_le_mul_of_nonneg_left
  · have hratio :=
      highQrRootFloorRatio_le_lower hLower hLowerY
    have hmul :=
      mul_le_mul_of_nonneg_right hratio
        (show (0 : Rat) ≤ 4 + (target : Rat) / 3026 by
          positivity)
    linarith
  · positivity

def highQrCertifiedRootCombinedBound
    (profile : AnchoredPrimeProfileId)
    (rootFactor supportLength target lower upper : Nat) : Rat :=
  2 * highQrRootLowerCoefficient
      rootFactor supportLength target lower / lower +
    anchoredFinitePrimeDoubleRatioBound
      profile highQrSplit lower upper

structure HighQrRootEnvelopeRowData where
  rootClass : HighVariableRootClass
  primeProfile : AnchoredPrimeProfileId
  lower : Nat
  upper : Nat
  targets : Fin 10 → Nat
  rootEnvelope : Rat

def HighQrRootEnvelopeRowData.Valid
    (row : HighQrRootEnvelopeRowData) : Prop :=
  2_000_000_000 ≤ row.lower ∧
    row.lower ≤ row.upper ∧
    row.upper < highQrFiniteStop ∧
    anchoredPrimePoint ≤ row.lower / highQrSplit ∧
    ∀ k : Fin 10,
      highQrCertifiedRootCombinedBound
          row.primeProfile row.rootClass.factor k
          (row.targets k) row.lower row.upper ≤
        row.rootEnvelope / 3

instance highQrRootEnvelopeRowDataDecidableValid
    (row : HighQrRootEnvelopeRowData) :
    Decidable row.Valid := by
  unfold HighQrRootEnvelopeRowData.Valid
  infer_instance

def HighQrRootEnvelopeRowData.check
    (row : HighQrRootEnvelopeRowData) : Bool :=
  decide row.Valid

theorem HighQrRootEnvelopeRowData.check_sound
    {row : HighQrRootEnvelopeRowData}
    (hcheck : row.check = true) :
    row.Valid :=
  of_decide_eq_true hcheck

theorem HighQrRootEnvelopeRowData.check_complete
    {row : HighQrRootEnvelopeRowData}
    (hvalid : row.Valid) :
    row.check = true := by
  simp [HighQrRootEnvelopeRowData.check, hvalid]

structure CertifiedHighQrRootEnvelopeRow where
  row : HighQrRootEnvelopeRowData
  screens : Fin 10 → CertifiedHighQrScreenPair
  screenSupportLength :
    ∀ k : Fin 10,
      (screens k).square.row.forcing.supportLength = k
  screenTarget :
    ∀ k : Fin 10,
      (screens k).square.row.target = row.targets k
  screenSplit :
    ∀ k : Fin 10,
      (screens k).square.row.split = highQrSplit
  screenStop :
    ∀ k : Fin 10,
      row.upper < (screens k).square.row.forcing.stop
  checked : row.check = true

theorem CertifiedHighQrRootEnvelopeRow.actualHighPoints_ratio_le
    (certificate : CertifiedHighQrRootEnvelopeRow)
    {N : Nat} {B : Finset Nat} {pivot cutoff : Nat}
    {valuation : FiveMillionValuationClass}
    (hLower : certificate.row.lower ≤ N)
    (hUpper : N ≤ certificate.row.upper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotPart :
      pivot ∈ fiveMillionValuationPart N B valuation)
    (hAccept : certificate.row.rootClass.Accepts valuation) :
    (((twoBaseHighTailSquarePoints
          N pivot (N / highQrSplit)).card : Rat) +
        2 * ((Nat.primeCounting (N / highQrSplit) -
          Nat.primeCounting cutoff : Nat) : Rat)) / N ≤
      certificate.row.rootEnvelope / 3 := by
  have hvalid := certificate.row.check_sound certificate.checked
  rcases hvalid with
    ⟨hStart, hRange, hStop, hAnchor, hBudget⟩
  have hpivotResidual :=
    fiveMillionValuationPart_subset_residual
      N B valuation hpivotPart
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotBounds :=
    Finset.mem_Icc.mp
      (hallCompletion_subset_Icc hBout hpivotCompletion)
  have hSupportProduct :
      (fiveMillionPivotSupport pivot).prod ≤ N :=
    fiveMillionPivotSupport_prod_le
      hpivotBounds.1 hpivotBounds.2
  have hSupportProductTen :
      (fiveMillionPivotSupport pivot).prod <
        highQrTenSupportProduct := by
    exact hSupportProduct.trans_lt
      (hUpper.trans_lt
        (hStop.trans
          (by
            norm_num [highQrFiniteStop,
              highQrTenSupportProduct])))
  have hSupportLength :=
    highQrSupport_length_lt_ten_of_product_lt
      (fiveMillionPivotSupport pivot)
      (fiveMillionPivotSupport_primes pivot)
      (fiveMillionPivotSupport_increasing pivot)
      hSupportProductTen
  let k : Fin 10 :=
    ⟨(fiveMillionPivotSupport pivot).length,
      hSupportLength⟩
  let screen := certificate.screens k
  have hScreenSplit :
      screen.square.row.split = highQrSplit := by
    simpa [screen] using certificate.screenSplit k
  have hScreenLength :
      (fiveMillionPivotSupport pivot).length =
        screen.square.row.forcing.supportLength := by
    simpa [screen, k] using
      (certificate.screenSupportLength k).symm
  have hScreenProduct :
      (fiveMillionPivotSupport pivot).prod <
        screen.square.row.forcing.stop := by
    exact hSupportProduct.trans_lt
      (hUpper.trans_lt
        (by simpa [screen] using certificate.screenStop k))
  have hcard :=
    actualHighQrHighPoints_card_cast_le
      screen certificate.row.rootClass
      (by
        have hmono :
            certificate.row.lower / highQrSplit ≤
              N / highQrSplit :=
          Nat.div_le_div_right hLower
        have hfive :
            5 < N / highQrSplit :=
          (by norm_num [anchoredPrimePoint] :
              5 < anchoredPrimePoint).trans_le
            (hAnchor.trans hmono)
        simpa [hScreenSplit] using hfive)
      hBout hpivotPart hAccept hScreenLength hScreenProduct
  have hcardTarget :
      ((twoBaseHighTailSquarePoints
          N pivot (N / highQrSplit)).card : Rat) ≤
        2 * highQrRootHighCoefficient
          certificate.row.rootClass.factor k
          (certificate.row.targets k)
          highQrSplit N := by
    simpa [screen, certificate.screenTarget k, hScreenSplit] using hcard
  have hcoefficient :=
    highQrRootHighCoefficient_le_lower
      (rootFactor := certificate.row.rootClass.factor)
      (supportLength := (k : Nat))
      (target := certificate.row.targets k)
      hLower
      ((by norm_num [anchoredPrimePoint] :
          0 < anchoredPrimePoint).trans_le hAnchor)
  have hcardLower :
      ((twoBaseHighTailSquarePoints
          N pivot (N / highQrSplit)).card : Rat) ≤
        2 * highQrRootLowerCoefficient
          certificate.row.rootClass.factor k
          (certificate.row.targets k)
          certificate.row.lower :=
    hcardTarget.trans
      (mul_le_mul_of_nonneg_left hcoefficient (by norm_num))
  have hNPos : 0 < N := by omega
  have hNQ : (0 : Rat) < N := by exact_mod_cast hNPos
  have hLowerQPos :
      (0 : Rat) < certificate.row.lower := by
    exact_mod_cast (show 0 < certificate.row.lower by omega)
  have hLowerQ :
      (certificate.row.lower : Rat) ≤ N := by
    exact_mod_cast hLower
  have hCoefficientNonneg :
      (0 : Rat) ≤ highQrRootLowerCoefficient
        certificate.row.rootClass.factor k
        (certificate.row.targets k)
        certificate.row.lower := by
    have hLowerY :
        0 < certificate.row.lower / highQrSplit :=
      (by norm_num [anchoredPrimePoint] :
          0 < anchoredPrimePoint).trans_le hAnchor
    have hLowerYQ :
        (0 : Rat) <
          ((certificate.row.lower / highQrSplit : Nat) : Rat) := by
      exact_mod_cast hLowerY
    unfold highQrRootLowerCoefficient highQrRootFloorRatioBound
    positivity
  have hcardRatio :
      ((twoBaseHighTailSquarePoints
          N pivot (N / highQrSplit)).card : Rat) / N ≤
        2 * highQrRootLowerCoefficient
            certificate.row.rootClass.factor k
            (certificate.row.targets k)
            certificate.row.lower /
          certificate.row.lower := by
    calc
      ((twoBaseHighTailSquarePoints
          N pivot (N / highQrSplit)).card : Rat) / N ≤
        (2 * highQrRootLowerCoefficient
            certificate.row.rootClass.factor k
            (certificate.row.targets k)
            certificate.row.lower) / N :=
          div_le_div_of_nonneg_right hcardLower hNQ.le
      _ ≤
        (2 * highQrRootLowerCoefficient
            certificate.row.rootClass.factor k
            (certificate.row.targets k)
            certificate.row.lower) /
          certificate.row.lower :=
        div_le_div_of_nonneg_left
          (mul_nonneg (by norm_num) hCoefficientNonneg)
          hLowerQPos hLowerQ
  have hprimeSub :
      ((Nat.primeCounting (N / highQrSplit) -
          Nat.primeCounting cutoff : Nat) : Rat) ≤
        Nat.primeCounting (N / highQrSplit) := by
    exact_mod_cast Nat.sub_le _ _
  have hprimeRatio :
      2 * ((Nat.primeCounting (N / highQrSplit) -
          Nat.primeCounting cutoff : Nat) : Rat) / N ≤
        anchoredFinitePrimeDoubleRatioBound
          certificate.row.primeProfile highQrSplit
          certificate.row.lower certificate.row.upper := by
    calc
      2 * ((Nat.primeCounting (N / highQrSplit) -
          Nat.primeCounting cutoff : Nat) : Rat) / N ≤
        2 * (Nat.primeCounting (N / highQrSplit) : Rat) / N :=
          div_le_div_of_nonneg_right
            (mul_le_mul_of_nonneg_left hprimeSub (by norm_num))
            hNQ.le
      _ ≤
        anchoredFinitePrimeDoubleRatioBound
          certificate.row.primeProfile highQrSplit
          certificate.row.lower certificate.row.upper :=
        primeCounting_doubleRatio_le_anchoredFinite
          certificate.row.primeProfile
          (by omega) hLower hUpper
          (by norm_num [highQrSplit]) hAnchor
  calc
    (((twoBaseHighTailSquarePoints
          N pivot (N / highQrSplit)).card : Rat) +
        2 * ((Nat.primeCounting (N / highQrSplit) -
          Nat.primeCounting cutoff : Nat) : Rat)) / N =
      ((twoBaseHighTailSquarePoints
          N pivot (N / highQrSplit)).card : Rat) / N +
        2 * ((Nat.primeCounting (N / highQrSplit) -
          Nat.primeCounting cutoff : Nat) : Rat) / N := by ring
    _ ≤
      2 * highQrRootLowerCoefficient
          certificate.row.rootClass.factor k
          (certificate.row.targets k)
          certificate.row.lower /
          certificate.row.lower +
        anchoredFinitePrimeDoubleRatioBound
          certificate.row.primeProfile highQrSplit
          certificate.row.lower certificate.row.upper :=
      add_le_add hcardRatio hprimeRatio
    _ =
      highQrCertifiedRootCombinedBound
        certificate.row.primeProfile
        certificate.row.rootClass.factor k
        (certificate.row.targets k)
        certificate.row.lower certificate.row.upper := rfl
    _ ≤ certificate.row.rootEnvelope / 3 :=
      hBudget k

#print axioms highQrSupport_length_lt_ten_of_product_lt
#print axioms highQrRootFloorRatio_le_lower
#print axioms HighQrRootEnvelopeRowData.check_sound
#print axioms
  CertifiedHighQrRootEnvelopeRow.actualHighPoints_ratio_le

end Erdos848
