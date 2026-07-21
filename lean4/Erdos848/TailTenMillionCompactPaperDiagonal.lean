import Erdos848.GeneratedPaperDiagonalGridTwentyMillion.Certificate
import Erdos848.TailTenMillionPaperDiagonalBridge

namespace Erdos848

/-!
# Compact kernel diagonal certificate for `10M ≤ N < 20M`

The checked source marker contains every truncated prime-square event only
through `19_999_999`.  Its 503,229 values are partitioned once into the 477
disjoint paper atoms.  The generated 232-row grid contains only exact prefix
counts; the Lean kernel checks every projection, ordering fact, cutoff,
large-prime-square payment, envelope inequality, and interval transition.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem tenMillionCompactPaperDiagonal_card_mul_le
    (selection : PaperDiagonalSelection)
    {N : Nat}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper) :
    ((tailDiagonalBad N).filter
      (fun x => truncatedDiagonalAtomOf x ∈ selection.atoms)).card *
        1_000_000_000 ≤
      PaperDiagonalRegime.tenToTwenty.envelopeNumerator selection * N := by
  have hLowerNat : 10_000_000 ≤ N := by
    simpa [tenMillionLower] using hLower
  have hUpperNat : N < 20_000_000 := by
    simpa [tenMillionUpper] using hUpper
  obtain ⟨gridRow, hrow, hrowLower, hrowUpper⟩ :=
    exists_certifiedPaperDiagonalGridRow_of_cover
      GeneratedPaperDiagonalGridTwentyMillion.rowsCover
      hLowerNat hUpperNat
  have hmarkerLimit :
      GeneratedTruncatedDiagonalTwentyMillionAtoms.certificate.marker.limit =
        19_999_999 := by decide
  have hNLimit :
      N ≤
        GeneratedTruncatedDiagonalTwentyMillionAtoms.certificate.marker.limit := by
    rw [hmarkerLimit]
    omega
  have hbound : N + 1 ≤ 2_000_000_000 := by omega
  have hchecked :=
    gridRow.card_mul_le_envelope
      GeneratedTruncatedDiagonalTwentyMillionAtoms.certificate
      GeneratedPaperDiagonalGridTwentyMillion.sourceCertificateCutoff
      GeneratedTruncatedDiagonalTwentyMillionAtoms.projectsAtoms
      GeneratedTruncatedDiagonalTwentyMillionAtoms.atomTargetsOrdered
      selection hNLimit hrowLower hrowUpper hbound
  have hregime :
      gridRow.row.regime = PaperDiagonalRegime.tenToTwenty := by
    have hrange := (gridRow.row.check_sound gridRow.checked).2.1
    calc
      gridRow.row.regime = paperDiagonalRegimeAt N :=
        PaperDiagonalRegime.eq_regimeAt_of_mem
          hrange hrowLower hrowUpper
      _ = PaperDiagonalRegime.tenToTwenty := by
        simp [paperDiagonalRegimeAt, hUpperNat]
  simpa [hregime] using hchecked

theorem tenMillionCompactPaperDiagonalGridBound_kernel :
    TenMillionPaperDiagonalGridBound := by
  intro N hLower hUpper selection
  have hnat :=
    tenMillionCompactPaperDiagonal_card_mul_le
      selection hLower hUpper
  have hrat :
      (((tailDiagonalBad N).filter
        (fun x => truncatedDiagonalAtomOf x ∈ selection.atoms)).card : Rat) *
          1_000_000_000 ≤
        (PaperDiagonalRegime.tenToTwenty.envelopeNumerator selection : Rat) *
          N := by
    exact_mod_cast hnat
  have hNpos : (0 : Rat) < N := by
    have : 0 < N := by
      have hLowerNat : 10_000_000 ≤ N := by
        simpa [tenMillionLower] using hLower
      omega
    exact_mod_cast this
  rw [div_le_iff₀ hNpos]
  rw [div_mul_eq_mul_div]
  rw [le_div_iff₀ (by norm_num : (0 : Rat) < 1_000_000_000)]
  simpa [mul_comm, mul_left_comm, mul_assoc] using hrat

theorem tenMillionCompactDiagonalCertificates_kernel :
    TenMillionDiagonalCertificates :=
  tenMillionDiagonalCertificates_of_paperGrid
    tenMillionCompactPaperDiagonalGridBound_kernel

#print axioms tenMillionCompactPaperDiagonal_card_mul_le
#print axioms tenMillionCompactPaperDiagonalGridBound_kernel
#print axioms tenMillionCompactDiagonalCertificates_kernel

end Erdos848
