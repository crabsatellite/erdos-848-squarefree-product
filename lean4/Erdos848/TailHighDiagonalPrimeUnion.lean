import Erdos848.TailHighDiagonalRootPair
import Erdos848.TailDiagonalMobiusSplit
import Erdos848.TailHighLargeSquareEventBound

namespace Erdos848

/-!
# Certificate-free prime-union bound for the diagonal

The finite two-billion proof projects a precomputed marker.  The unbounded
tail instead unions the two theoretical root progressions for every prime up
to a movable cutoff.  The theorem below is the exact semantic reduction:
later numerical certificates only have to bound the displayed finite sum.
-/

def highDiagonalPrimes (cutoff : Nat) : Finset Nat :=
  (Finset.range (cutoff + 1)).filter fun p =>
    Nat.Prime p ∧ p % 4 = 1 ∧ p ≠ 5

theorem truncatedPrimeSquareSelected_subset_primeUnion
    {cutoff N : Nat} (selection : PaperDiagonalSelection) :
    (truncatedPrimeSquareBadXValues cutoff N).filter (fun x =>
        truncatedDiagonalAtomOf x ∈ selection.atoms) ⊆
      (highDiagonalPrimes cutoff).biUnion fun p =>
        paperPrimeSelectedBad N p selection := by
  intro x hx
  have hxParts := Finset.mem_filter.mp hx
  obtain ⟨p, hpCutoff, hp, _hpTwo, hpFive, hpModFour, hpSquare⟩ :=
    normalized_witness_of_mem_truncatedPrimeSquareBadXValues hxParts.1
  have hpMem : p ∈ highDiagonalPrimes cutoff := by
    rw [highDiagonalPrimes, Finset.mem_filter]
    exact ⟨Finset.mem_range.mpr (by omega), hp, hpModFour, hpFive⟩
  rw [Finset.mem_biUnion]
  refine ⟨p, hpMem, ?_⟩
  rw [paperPrimeSelectedBad, Finset.mem_filter]
  exact
    ⟨(mem_truncatedPrimeSquareBadXValues_iff.mp hxParts.1).1,
      hpSquare, hxParts.2⟩

theorem truncatedPrimeSquareSelected_card_le_primeSum
    {cutoff N : Nat} (selection : PaperDiagonalSelection) :
    ((truncatedPrimeSquareBadXValues cutoff N).filter (fun x =>
        truncatedDiagonalAtomOf x ∈ selection.atoms)).card ≤
      ∑ p ∈ highDiagonalPrimes cutoff,
        2 * selection.smallResidues.card *
          ((N + 1) / (p ^ 2 * selection.smallPeriod) + 1) := by
  calc
    ((truncatedPrimeSquareBadXValues cutoff N).filter (fun x =>
        truncatedDiagonalAtomOf x ∈ selection.atoms)).card ≤
        ((highDiagonalPrimes cutoff).biUnion fun p =>
          paperPrimeSelectedBad N p selection).card :=
      Finset.card_le_card <|
        truncatedPrimeSquareSelected_subset_primeUnion selection
    _ ≤ ∑ p ∈ highDiagonalPrimes cutoff,
          (paperPrimeSelectedBad N p selection).card :=
      Finset.card_biUnion_le
    _ ≤ ∑ p ∈ highDiagonalPrimes cutoff,
        2 * selection.smallResidues.card *
          ((N + 1) / (p ^ 2 * selection.smallPeriod) + 1) := by
      apply Finset.sum_le_sum
      intro p hpMem
      have hpParts :
          Nat.Prime p ∧ p % 4 = 1 ∧ p ≠ 5 := by
        exact (Finset.mem_filter.mp hpMem).2
      exact paperPrimeSelectedBad_card_le_theoretical selection
        hpParts.1 hpParts.2.1 hpParts.2.2

theorem tailDiagonalSelected_card_le_primeSum_add_largeSquare
    {cutoff N : Nat} (selection : PaperDiagonalSelection) :
    ((tailDiagonalBad N).filter (fun x =>
        truncatedDiagonalAtomOf x ∈ selection.atoms)).card ≤
      (∑ p ∈ highDiagonalPrimes cutoff,
        2 * selection.smallResidues.card *
          ((N + 1) / (p ^ 2 * selection.smallPeriod) + 1)) +
      highLargeSquarePayment cutoff (N + 1) selection.isOdd := by
  let select := fun x =>
    truncatedDiagonalAtomOf x ∈ selection.atoms
  have hsmall :=
    truncatedPrimeSquareSelected_card_le_primeSum
      (cutoff := cutoff) (N := N) selection
  by_cases hodd : selection.isOdd = true
  · have hoddSelect : ∀ x, select x → x % 2 = 1 :=
      fun _ hx => selection.odd_of_mem_atoms hodd hx
    let large := largeSquareOddBadXValues cutoff (N + 1)
    have hsubset :
        (tailDiagonalBad N).filter select ⊆
          (truncatedPrimeSquareBadXValues cutoff N).filter select ∪ large := by
      intro x hx
      have hxParts := Finset.mem_filter.mp hx
      rcases
          mem_truncatedPrimeSquareBadXValues_or_largeSquareBadXValues
            hxParts.1 with htruncated | hlarge
      · exact Finset.mem_union_left _
          (Finset.mem_filter.mpr ⟨htruncated, hxParts.2⟩)
      · exact Finset.mem_union_right _
          (Finset.mem_filter.mpr ⟨hlarge, hoddSelect x hxParts.2⟩)
    calc
      ((tailDiagonalBad N).filter (fun x =>
          truncatedDiagonalAtomOf x ∈ selection.atoms)).card ≤
          (((truncatedPrimeSquareBadXValues cutoff N).filter select) ∪
            large).card := by
        simpa [select] using Finset.card_le_card hsubset
      _ ≤ ((truncatedPrimeSquareBadXValues cutoff N).filter select).card +
          large.card :=
        Finset.card_union_le _ _
      _ ≤ (∑ p ∈ highDiagonalPrimes cutoff,
          2 * selection.smallResidues.card *
            ((N + 1) / (p ^ 2 * selection.smallPeriod) + 1)) +
          ((N + 1) ^ 2 / (cutoff + 1) ^ 2 / 8 + 1) *
            Nat.clog 5 (N + 1) := by
        exact Nat.add_le_add hsmall highLargeSquareOddBadXValues_card_le
      _ = (∑ p ∈ highDiagonalPrimes cutoff,
          2 * selection.smallResidues.card *
            ((N + 1) / (p ^ 2 * selection.smallPeriod) + 1)) +
          highLargeSquarePayment cutoff (N + 1) selection.isOdd := by
        simp [highLargeSquarePayment, hodd]
  · have hoddFalse : selection.isOdd = false := by
      cases hvalue : selection.isOdd <;> simp_all
    let large := largeSquareBadXValues cutoff (N + 1)
    have hsubset :
        (tailDiagonalBad N).filter select ⊆
          (truncatedPrimeSquareBadXValues cutoff N).filter select ∪ large := by
      intro x hx
      have hxParts := Finset.mem_filter.mp hx
      rcases
          mem_truncatedPrimeSquareBadXValues_or_largeSquareBadXValues
            hxParts.1 with htruncated | hlarge
      · exact Finset.mem_union_left _
          (Finset.mem_filter.mpr ⟨htruncated, hxParts.2⟩)
      · exact Finset.mem_union_right _ hlarge
    calc
      ((tailDiagonalBad N).filter (fun x =>
          truncatedDiagonalAtomOf x ∈ selection.atoms)).card ≤
          (((truncatedPrimeSquareBadXValues cutoff N).filter select) ∪
            large).card := by
        simpa [select] using Finset.card_le_card hsubset
      _ ≤ ((truncatedPrimeSquareBadXValues cutoff N).filter select).card +
          large.card :=
        Finset.card_union_le _ _
      _ ≤ (∑ p ∈ highDiagonalPrimes cutoff,
          2 * selection.smallResidues.card *
            ((N + 1) / (p ^ 2 * selection.smallPeriod) + 1)) +
          ((N + 1) ^ 2 / (cutoff + 1) ^ 2 + 1) *
            Nat.clog 5 (N + 1) := by
        exact Nat.add_le_add hsmall highLargeSquareBadXValues_card_le
      _ = (∑ p ∈ highDiagonalPrimes cutoff,
          2 * selection.smallResidues.card *
            ((N + 1) / (p ^ 2 * selection.smallPeriod) + 1)) +
          highLargeSquarePayment cutoff (N + 1) selection.isOdd := by
        simp [highLargeSquarePayment, hoddFalse]

#print axioms truncatedPrimeSquareSelected_card_le_primeSum
#print axioms tailDiagonalSelected_card_le_primeSum_add_largeSquare

end Erdos848
