import Erdos848.TailTruncatedDiagonalAtomChecker

namespace Erdos848

/-!
# Cardinal bounds from the atomic truncated-diagonal projection

Generated data classifies every source-marker value once.  A paper branch is
then represented by a finite set of atoms.  The fibrewise cardinal identity
below lets the kernel add the corresponding target cutoffs, while the global
large-square remainder is paid only once for the whole branch.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem truncatedPrimeSquareAtomUnion_card_le
    (certificate : TruncatedDiagonalCoverageCertificate)
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
    ((truncatedPrimeSquareBadXValues certificate.cutoff N).filter
      (fun x => truncatedDiagonalAtomOf x ∈ atoms)).card ≤
      ∑ atom ∈ atoms, counts atom := by
  calc
    ((truncatedPrimeSquareBadXValues certificate.cutoff N).filter
        (fun x => truncatedDiagonalAtomOf x ∈ atoms)).card =
        ∑ atom ∈ atoms,
          ((truncatedPrimeSquareBadXValues certificate.cutoff N).filter
            atom.Accepts).card := by
      simpa [TruncatedDiagonalAtom.Accepts] using
        (Finset.sum_card_fiberwise_eq_card_filter
          (truncatedPrimeSquareBadXValues certificate.cutoff N)
          atoms truncatedDiagonalAtomOf).symm
    _ ≤ ∑ atom ∈ atoms, counts atom := by
      exact Finset.sum_le_sum fun atom hatom =>
        truncatedPrimeSquareFiltered_card_le certificate
          (targets atom) atom.Accepts
          (hprojects.projectsPredicate atom)
          (hordered atom hatom) hNLimit
          (hcutoff atom hatom) hNUpper

theorem truncatedPrimeSquareFiltered_card_le_atomUnion
    (certificate : TruncatedDiagonalCoverageCertificate)
    (targets : TruncatedDiagonalAtom → IndexedMarkerData)
    (atoms : Finset TruncatedDiagonalAtom)
    (counts : TruncatedDiagonalAtom → Nat)
    (select : Nat → Prop) [DecidablePred select]
    (hselect :
      ∀ x, select x → truncatedDiagonalAtomOf x ∈ atoms)
    (hprojects : certificate.marker.ProjectsTruncatedAtoms targets)
    (hordered :
      ∀ atom ∈ atoms, (targets atom).AdjacentOrdered)
    {N upper : Nat}
    (hNLimit : N ≤ certificate.marker.limit)
    (hcutoff :
      ∀ atom ∈ atoms, (targets atom).Cutoff upper (counts atom))
    (hNUpper : N ≤ upper) :
    ((truncatedPrimeSquareBadXValues certificate.cutoff N).filter
      select).card ≤ ∑ atom ∈ atoms, counts atom := by
  have hsubset :
      (truncatedPrimeSquareBadXValues certificate.cutoff N).filter select ⊆
        (truncatedPrimeSquareBadXValues certificate.cutoff N).filter
          (fun x => truncatedDiagonalAtomOf x ∈ atoms) := by
    intro x hx
    exact Finset.mem_filter.mpr
      ⟨(Finset.mem_filter.mp hx).1, hselect x (Finset.mem_filter.mp hx).2⟩
  exact
    (Finset.card_le_card hsubset).trans
      (truncatedPrimeSquareAtomUnion_card_le certificate targets atoms
        counts hprojects hordered hNLimit hcutoff hNUpper)

theorem tailDiagonalAtomUnion_card_le
    (certificate : TruncatedDiagonalCoverageCertificate)
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
    (hNUpper : N ≤ upper)
    (hbound : N + 1 ≤ 2_000_000_000) :
    ((tailDiagonalBad N).filter
      (fun x => truncatedDiagonalAtomOf x ∈ atoms)).card ≤
      (∑ atom ∈ atoms, counts atom) +
        (((N + 1) ^ 2 / (certificate.cutoff + 1) ^ 2 + 1) * 13) := by
  exact
    (tailDiagonalFiltered_card_le_truncated_add_largeSquare
      (fun x => truncatedDiagonalAtomOf x ∈ atoms) hbound).trans
      (Nat.add_le_add_right
        (truncatedPrimeSquareAtomUnion_card_le certificate targets atoms
          counts hprojects hordered hNLimit hcutoff hNUpper) _)

theorem tailDiagonalFiltered_card_le_atomUnion
    (certificate : TruncatedDiagonalCoverageCertificate)
    (targets : TruncatedDiagonalAtom → IndexedMarkerData)
    (atoms : Finset TruncatedDiagonalAtom)
    (counts : TruncatedDiagonalAtom → Nat)
    (select : Nat → Prop) [DecidablePred select]
    (hselect :
      ∀ x, select x → truncatedDiagonalAtomOf x ∈ atoms)
    (hprojects : certificate.marker.ProjectsTruncatedAtoms targets)
    (hordered :
      ∀ atom ∈ atoms, (targets atom).AdjacentOrdered)
    {N upper : Nat}
    (hNLimit : N ≤ certificate.marker.limit)
    (hcutoff :
      ∀ atom ∈ atoms, (targets atom).Cutoff upper (counts atom))
    (hNUpper : N ≤ upper)
    (hbound : N + 1 ≤ 2_000_000_000) :
    ((tailDiagonalBad N).filter select).card ≤
      (∑ atom ∈ atoms, counts atom) +
        (((N + 1) ^ 2 / (certificate.cutoff + 1) ^ 2 + 1) * 13) := by
  exact
    (tailDiagonalFiltered_card_le_truncated_add_largeSquare
      select hbound).trans
      (Nat.add_le_add_right
        (truncatedPrimeSquareFiltered_card_le_atomUnion certificate targets
          atoms counts select hselect hprojects hordered hNLimit
          hcutoff hNUpper) _)

theorem tailDiagonalOddFiltered_card_le_atomUnion
    (certificate : TruncatedDiagonalCoverageCertificate)
    (targets : TruncatedDiagonalAtom → IndexedMarkerData)
    (atoms : Finset TruncatedDiagonalAtom)
    (counts : TruncatedDiagonalAtom → Nat)
    (select : Nat → Prop) [DecidablePred select]
    (hselect :
      ∀ x, select x → truncatedDiagonalAtomOf x ∈ atoms)
    (hodd : ∀ x, select x → x % 2 = 1)
    (hprojects : certificate.marker.ProjectsTruncatedAtoms targets)
    (hordered :
      ∀ atom ∈ atoms, (targets atom).AdjacentOrdered)
    {N upper : Nat}
    (hNLimit : N ≤ certificate.marker.limit)
    (hcutoff :
      ∀ atom ∈ atoms, (targets atom).Cutoff upper (counts atom))
    (hNUpper : N ≤ upper)
    (hbound : N + 1 ≤ 2_000_000_000) :
    ((tailDiagonalBad N).filter select).card ≤
      (∑ atom ∈ atoms, counts atom) +
        (((N + 1) ^ 2 / (certificate.cutoff + 1) ^ 2 / 8 + 1) * 13) := by
  exact
    (tailDiagonalOddFiltered_card_le_truncated_add_largeSquare
      select hodd hbound).trans
      (Nat.add_le_add_right
        (truncatedPrimeSquareFiltered_card_le_atomUnion certificate targets
          atoms counts select hselect hprojects hordered hNLimit
          hcutoff hNUpper) _)

#print axioms truncatedPrimeSquareAtomUnion_card_le
#print axioms truncatedPrimeSquareFiltered_card_le_atomUnion
#print axioms tailDiagonalAtomUnion_card_le
#print axioms tailDiagonalFiltered_card_le_atomUnion
#print axioms tailDiagonalOddFiltered_card_le_atomUnion

end Erdos848
