import Erdos848.GeneratedPaperDiagonalGrid.Certificate
import Erdos848.TailPaperResidualCharge
import Erdos848.TailPaperDiagonalRatio

namespace Erdos848

/-!
# Kernel-checked paper diagonal bounds on `10M ≤ N < 200M`

The generated table contains only untrusted prefix-count suggestions.  This
module combines its checked cover with the truncated-diagonal coverage
certificate and exposes the uniform bound used by the paper's terminal rows.
-/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem paperDiagonalGrid_card_mul_le_envelope
    (selection : PaperDiagonalSelection)
    {N : Nat}
    (hLower : 10_000_000 ≤ N)
    (hUpper : N < 200_000_000) :
    ((tailDiagonalBad N).filter
      (fun x => truncatedDiagonalAtomOf x ∈ selection.atoms)).card *
        1_000_000_000 ≤
      (paperDiagonalRegimeAt N).envelopeNumerator selection * N := by
  obtain ⟨gridRow, hrow, hrowLower, hrowUpper⟩ :=
    exists_certifiedPaperDiagonalGridRow_of_cover
      Erdos848.GeneratedPaperDiagonalGrid.rowsCover hLower hUpper
  have hmarkerLimit :
      Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.certificate.marker.limit =
        199_999_999 := by decide
  have hNLimit :
      N ≤
        Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.certificate.marker.limit := by
    rw [hmarkerLimit]
    omega
  have hbound : N + 1 ≤ 2_000_000_000 := by omega
  have hchecked :=
    gridRow.card_mul_le_envelope
      Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.certificate
      Erdos848.GeneratedPaperDiagonalGrid.sourceCertificateCutoff
      Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.projectsAtoms
      Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms.atomTargetsOrdered
      selection hNLimit hrowLower hrowUpper hbound
  have hregime :
      gridRow.row.regime = paperDiagonalRegimeAt N := by
    have hrange := (gridRow.row.check_sound gridRow.checked).2.1
    exact PaperDiagonalRegime.eq_regimeAt_of_mem
      hrange hrowLower hrowUpper
  simpa [hregime] using hchecked

/-- Rational form consumed by the paper's normalized Hall budgets.  The
certificate itself remains integral; this theorem only divides the checked
inequality by the positive quantities `N` and `10^9`. -/
theorem paperDiagonalGrid_ratio_le_envelope
    (selection : PaperDiagonalSelection)
    {N : Nat}
    (hLower : 10_000_000 ≤ N)
    (hUpper : N < 200_000_000) :
    (((tailDiagonalBad N).filter
      (fun x => truncatedDiagonalAtomOf x ∈ selection.atoms)).card : Rat) /
        N ≤
      ((paperDiagonalRegimeAt N).envelopeNumerator selection : Rat) /
        1_000_000_000 := by
  have hnat := paperDiagonalGrid_card_mul_le_envelope
    selection hLower hUpper
  have hrat :
      (((tailDiagonalBad N).filter
        (fun x => truncatedDiagonalAtomOf x ∈ selection.atoms)).card : Rat) *
          1_000_000_000 ≤
        ((paperDiagonalRegimeAt N).envelopeNumerator selection : Rat) *
          N := by
    exact_mod_cast hnat
  have hNpos : (0 : Rat) < N := by positivity
  rw [div_le_iff₀ hNpos]
  rw [div_mul_eq_mul_div]
  rw [le_div_iff₀ (by norm_num : (0 : Rat) < 1_000_000_000)]
  simpa [mul_comm, mul_left_comm, mul_assoc] using hrat

/-- Direct finite-charge interface for every paper branch on the checked
`10M`--`200M` grid. -/
theorem paperResidual_ratio_le_of_selection_charge
    {N lowerBound chargeCap : Nat}
    {residual charged : Finset Nat}
    (selection : PaperDiagonalSelection)
    (hLowerGrid : 10_000_000 ≤ N)
    (hUpperGrid : N < 200_000_000)
    (hLowerPositive : 0 < lowerBound)
    (hLower : lowerBound ≤ N)
    (hchargedSubset : charged ⊆ residual)
    (hchargedCard : charged.card ≤ chargeCap)
    (hstructuredSubset :
      residual \ charged ⊆
        (tailDiagonalBad N).filter
          (fun x => truncatedDiagonalAtomOf x ∈ selection.atoms)) :
    (residual.card : Rat) / N ≤
      ((paperDiagonalRegimeAt N).envelopeNumerator selection : Rat) /
          1_000_000_000 +
        chargeCap / lowerBound := by
  exact hallResidual_ratio_le_of_paperSelection_charge
    (lt_of_lt_of_le (by norm_num) hLowerGrid)
    hLowerPositive hLower hchargedSubset hchargedCard hstructuredSubset
    (paperDiagonalGrid_ratio_le_envelope
      selection hLowerGrid hUpperGrid)

#print axioms paperDiagonalGrid_card_mul_le_envelope
#print axioms paperDiagonalGrid_ratio_le_envelope
#print axioms paperResidual_ratio_le_of_selection_charge

end Erdos848
