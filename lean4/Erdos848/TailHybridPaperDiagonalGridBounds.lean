import Erdos848.GeneratedHybridPaperDiagonalGrid.Certificate
import Erdos848.TailHybridPaperDiagonalGridChecker

namespace Erdos848

/-!
# Kernel-checked hybrid diagonal bounds on `200M ≤ N < 2B`

The generated high-prime marker contains only primes above `1000`.
Small primes are paid by the periodic CRT lemma in
`TailHybridSmallPrimeDiagonal`; the remaining large-square tail is analytic.
-/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem hybridPaperDiagonalGrid_card_mul_le_envelope
    (selection : PaperDiagonalSelection)
    {N : Nat}
    (hLower : 200_000_000 ≤ N)
    (hUpper : N < 2_000_000_000) :
    ((tailDiagonalBad N).filter
      (fun x => truncatedDiagonalAtomOf x ∈ selection.atoms)).card *
        1_000_000_000 ≤
      (hybridPaperDiagonalRegimeAt N).envelopeNumerator selection * N := by
  obtain ⟨gridRow, hrow, hrowLower, hrowUpper⟩ :=
    exists_certifiedHybridPaperDiagonalGridRow_of_cover
      Erdos848.GeneratedHybridPaperDiagonalGrid.rowsCover hLower hUpper
  have hmarkerLimit :
      Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.certificate.marker.limit =
        1_999_999_999 := by decide
  have hNLimit :
      N ≤
        Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.certificate.marker.limit := by
    rw [hmarkerLimit]
    omega
  have hcertificateLower :
      Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.certificate.lower =
        1000 := by decide
  have hcertificateLowerCutoff :
      Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.certificate.lower ≤
        Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.certificate.cutoff := by
    decide
  have hbound : N + 1 ≤ 2_000_000_000 := by omega
  have hchecked :=
    gridRow.card_mul_le_envelope
      Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.certificate
      hcertificateLower hcertificateLowerCutoff
      Erdos848.GeneratedHybridPaperDiagonalGrid.sourceCertificateCutoff
      Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.projectsAtoms
      Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.atomTargetsOrdered
      selection hNLimit hrowLower hrowUpper hbound
  have hregime :
      gridRow.row.regime = hybridPaperDiagonalRegimeAt N := by
    have hrange := (gridRow.row.check_sound gridRow.checked).2.1
    exact HybridPaperDiagonalRegime.eq_regimeAt_of_mem
      hrange hrowLower hrowUpper
  simpa [hregime] using hchecked

theorem hybridPaperDiagonalGrid_ratio_le_envelope
    (selection : PaperDiagonalSelection)
    {N : Nat}
    (hLower : 200_000_000 ≤ N)
    (hUpper : N < 2_000_000_000) :
    (((tailDiagonalBad N).filter
      (fun x => truncatedDiagonalAtomOf x ∈ selection.atoms)).card : Rat) /
        N ≤
      ((hybridPaperDiagonalRegimeAt N).envelopeNumerator selection : Rat) /
        1_000_000_000 := by
  have hnat := hybridPaperDiagonalGrid_card_mul_le_envelope
    selection hLower hUpper
  have hrat :
      (((tailDiagonalBad N).filter
        (fun x => truncatedDiagonalAtomOf x ∈ selection.atoms)).card : Rat) *
          1_000_000_000 ≤
        ((hybridPaperDiagonalRegimeAt N).envelopeNumerator selection : Rat) *
          N := by
    exact_mod_cast hnat
  have hNpos : (0 : Rat) < N := by positivity
  rw [div_le_iff₀ hNpos]
  rw [div_mul_eq_mul_div]
  rw [le_div_iff₀ (by norm_num : (0 : Rat) < 1_000_000_000)]
  simpa [mul_comm, mul_left_comm, mul_assoc] using hrat

#print axioms hybridPaperDiagonalGrid_card_mul_le_envelope
#print axioms hybridPaperDiagonalGrid_ratio_le_envelope

end Erdos848
