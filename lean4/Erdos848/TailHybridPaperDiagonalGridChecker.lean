import Erdos848.TailHybridPaperDiagonalGridData
import Erdos848.TailHybridDiagonalBounds

namespace Erdos848

/-!
# Semantic soundness of a checked hybrid paper-grid row

Generated row leaves depend only on `TailHybridPaperDiagonalGridData`.
This module joins those inexpensive Boolean checks to the full hybrid
diagonal theorem once, at the semantic aggregation layer.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem CertifiedHybridPaperDiagonalGridRow.card_mul_le_envelope
    {targets : TruncatedDiagonalAtom → IndexedMarkerData}
    {cutoff : Nat}
    (gridRow : CertifiedHybridPaperDiagonalGridRow targets cutoff)
    (certificate : HybridHighDiagonalCoverageCertificate)
    (hcertificateLower : certificate.lower = 1000)
    (hcertificateLowerCutoff : certificate.lower ≤ certificate.cutoff)
    (hcertificateCutoff : certificate.cutoff = cutoff)
    (hprojects : certificate.marker.ProjectsTruncatedAtoms targets)
    (hordered : ∀ atom, (targets atom).AdjacentOrdered)
    (selection : PaperDiagonalSelection)
    {N : Nat}
    (hNLimit : N ≤ certificate.marker.limit)
    (hlower : gridRow.row.lower ≤ N)
    (hupper : N ≤ gridRow.row.upper)
    (hbound : N + 1 ≤ 2_000_000_000) :
    ((tailDiagonalBad N).filter
      (fun x => truncatedDiagonalAtomOf x ∈ selection.atoms)).card *
        1_000_000_000 ≤
      gridRow.row.regime.envelopeNumerator selection * N := by
  subst cutoff
  have hsound := gridRow.row.check_sound gridRow.checked
  let counts := gridRow.row.counts.count
  have hcutoffs :
      ∀ atom ∈ selection.atoms,
        (targets atom).Cutoff gridRow.row.upper (counts atom) := by
    intro atom _hatom
    exact hsound.1 atom
  have hcard :=
    hybridTailDiagonalSelection_card_le certificate
      hcertificateLower hcertificateLowerCutoff targets hprojects
      hordered selection counts hNLimit hcutoffs hupper hbound
  have hcardFast :
      ((tailDiagonalBad N).filter
        (fun x => truncatedDiagonalAtomOf x ∈ selection.atoms)).card ≤
        gridRow.row.counts.fastSum selection +
          paperSmallPrimePayment gridRow.row.upper selection +
          paperLargeSquarePayment certificate.cutoff gridRow.row.upper
            selection.isOdd := by
    rw [gridRow.row.counts.fastSum_eq_sum selection]
    exact hcard
  calc
    ((tailDiagonalBad N).filter
        (fun x => truncatedDiagonalAtomOf x ∈ selection.atoms)).card *
        1_000_000_000 ≤
      (gridRow.row.counts.fastSum selection +
        paperSmallPrimePayment gridRow.row.upper selection +
        paperLargeSquarePayment certificate.cutoff gridRow.row.upper
          selection.isOdd) * 1_000_000_000 := by
      exact Nat.mul_le_mul_right 1_000_000_000 hcardFast
    _ ≤ gridRow.row.regime.envelopeNumerator selection *
        gridRow.row.lower :=
      HybridPaperDiagonalGridRow.semanticBudget hsound.2.2 selection
    _ ≤ gridRow.row.regime.envelopeNumerator selection * N :=
      Nat.mul_le_mul_left _ hlower

#print axioms
  CertifiedHybridPaperDiagonalGridRow.card_mul_le_envelope

end Erdos848
