import Erdos848.TailHybridDiagonalBoundsTruncated
import Erdos848.TailPaperDiagonalGridChecker

namespace Erdos848

/-!
# Marker-cardinality bound for a selected union of diagonal atoms
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem intervalPrimeSquareAtomUnion_card_le
    (certificate : HybridHighDiagonalCoverageCertificate)
    (targets : TruncatedDiagonalAtom → IndexedMarkerData)
    (atoms : Finset TruncatedDiagonalAtom)
    (counts : TruncatedDiagonalAtom → Nat)
    (hprojects : certificate.marker.ProjectsTruncatedAtoms targets)
    (hordered :
      ∀ atom ∈ atoms, (targets atom).AdjacentOrdered)
    {N upper : Nat}
    (hNLimit : N ≤ certificate.marker.limit)
    (hcutoff :
      ∀ atom ∈ atoms, (targets atom).Cutoff upper (counts atom))
    (hNUpper : N ≤ upper) :
    ((intervalTruncatedPrimeSquareBadXValues
      certificate.lower certificate.cutoff N).filter
        (fun x => truncatedDiagonalAtomOf x ∈ atoms)).card ≤
      ∑ atom ∈ atoms, counts atom := by
  calc
    ((intervalTruncatedPrimeSquareBadXValues
        certificate.lower certificate.cutoff N).filter
        (fun x => truncatedDiagonalAtomOf x ∈ atoms)).card =
        ∑ atom ∈ atoms,
          ((intervalTruncatedPrimeSquareBadXValues
            certificate.lower certificate.cutoff N).filter
              atom.Accepts).card := by
      simpa [TruncatedDiagonalAtom.Accepts] using
        (Finset.sum_card_fiberwise_eq_card_filter
          (intervalTruncatedPrimeSquareBadXValues
            certificate.lower certificate.cutoff N)
          atoms truncatedDiagonalAtomOf).symm
    _ ≤ ∑ atom ∈ atoms, counts atom := by
      exact Finset.sum_le_sum fun atom hatom =>
        intervalTruncatedPrimeSquareFiltered_card_le certificate
          (targets atom) atom.Accepts
          (hprojects.projectsPredicate atom)
          (hordered atom hatom) hNLimit
          (hcutoff atom hatom) hNUpper

#print axioms intervalPrimeSquareAtomUnion_card_le

end Erdos848
