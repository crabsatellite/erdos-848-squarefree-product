import Erdos848.TailHybridDiagonalBoundsTruncated
import Erdos848.TailHybridDiagonalBoundsInterval
import Erdos848.TailHybridDiagonalBoundsSmall
import Erdos848.TailPaperDiagonalGridChecker

namespace Erdos848

/-!
# Final cardinal bound for the hybrid diagonal certificate

The expensive semantic ingredients are imported as cached modules, leaving
only the final odd/even assembly in this compilation unit.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem hybridTailDiagonalSelection_card_le
    (certificate : HybridHighDiagonalCoverageCertificate)
    (hcertificateLower : certificate.lower = 1000)
    (hcertificateLowerCutoff :
      certificate.lower ≤ certificate.cutoff)
    (targets : TruncatedDiagonalAtom → IndexedMarkerData)
    (hprojects : certificate.marker.ProjectsTruncatedAtoms targets)
    (hordered : ∀ atom, (targets atom).AdjacentOrdered)
    (selection : PaperDiagonalSelection)
    (counts : TruncatedDiagonalAtom → Nat)
    {N upper : Nat}
    (hNLimit : N ≤ certificate.marker.limit)
    (hcutoff :
      ∀ atom ∈ selection.atoms,
        (targets atom).Cutoff upper (counts atom))
    (hNUpper : N ≤ upper)
    (hbound : N + 1 ≤ 2_000_000_000) :
    ((tailDiagonalBad N).filter fun x =>
      truncatedDiagonalAtomOf x ∈ selection.atoms).card ≤
        (∑ atom ∈ selection.atoms, counts atom) +
          paperSmallPrimePayment upper selection +
          paperLargeSquarePayment certificate.cutoff upper
            selection.isOdd := by
  let select := fun x =>
    truncatedDiagonalAtomOf x ∈ selection.atoms
  have hsmall :
      ((paperSmallPrimeSquareBadXValues N).filter select).card ≤
        paperSmallPrimePayment upper selection := by
    exact (paperSmallPrimeSquareFiltered_card_le
      certificate.coverage certificate.coverageValid
      (by
        rw [← hcertificateLower]
        exact hcertificateLowerCutoff.trans
          certificate.cutoff_le_coverage_limit)
      certificate.rootArithmetic selection N).trans
        (paperSmallPrimePayment_mono selection hNUpper)
  have hhigh :
      ((intervalTruncatedPrimeSquareBadXValues
        1000 certificate.cutoff N).filter select).card ≤
        ∑ atom ∈ selection.atoms, counts atom := by
    rw [← hcertificateLower]
    exact intervalPrimeSquareAtomUnion_card_le certificate targets
      selection.atoms counts hprojects
      (fun atom _ => hordered atom) hNLimit hcutoff hNUpper
  have htruncated :
      ((truncatedPrimeSquareBadXValues
        certificate.cutoff N).filter select).card ≤
        (∑ atom ∈ selection.atoms, counts atom) +
          paperSmallPrimePayment upper selection := by
    exact
      (truncatedPrimeSquareFiltered_card_le_small_add_interval
        certificate.cutoff N select).trans <| by
          omega
  have hlarge :=
    paperLargeSquarePayment_mono
      (cutoff := certificate.cutoff)
      (odd := selection.isOdd) hNUpper
  by_cases hodd : selection.isOdd = true
  · have hoddSelect :
        ∀ x, select x → x % 2 = 1 :=
      fun _ hx => selection.odd_of_mem_atoms hodd hx
    have hlarge' := hlarge
    simp only [paperLargeSquarePayment, hodd] at hlarge'
    have hsplit :=
      tailDiagonalOddFiltered_card_le_truncated_add_largeSquare
        select hoddSelect
        (cutoff := certificate.cutoff) (N := N) hbound
    simpa [select, paperLargeSquarePayment, hodd] using
      hsplit.trans (Nat.add_le_add htruncated hlarge')
  · have hoddFalse : selection.isOdd = false := by
      cases hvalue : selection.isOdd <;> simp_all
    have hlarge' := hlarge
    simp only [paperLargeSquarePayment, hoddFalse] at hlarge'
    have hsplit :=
      tailDiagonalFiltered_card_le_truncated_add_largeSquare
        select (cutoff := certificate.cutoff) (N := N) hbound
    simpa [select, paperLargeSquarePayment, hoddFalse] using
      hsplit.trans (Nat.add_le_add htruncated hlarge')

#print axioms hybridTailDiagonalSelection_card_le

end Erdos848
