import Erdos848.TailHybridSmallPrimeDiagonal
import Erdos848.TailTruncatedDiagonalAtomBounds

namespace Erdos848

/-!
# Small/high split for the truncated diagonal obstruction

This module is intentionally narrow: its proof term can be cached before the
marker-cardinality and final tail arguments are elaborated.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem truncatedPrimeSquareBadXValues_subset_small_union_interval
    {cutoff N : Nat} :
    truncatedPrimeSquareBadXValues cutoff N ⊆
      paperSmallPrimeSquareBadXValues N ∪
        intervalTruncatedPrimeSquareBadXValues 1000 cutoff N := by
  intro x hx
  obtain ⟨p, hpCutoff, hp, _hpTwo, _hpFive, _hpModFour, hpSquare⟩ :=
    normalized_witness_of_mem_truncatedPrimeSquareBadXValues hx
  have hxTail :=
    (mem_truncatedPrimeSquareBadXValues_iff.mp hx).1
  by_cases hpSmall : p < 1000
  · apply Finset.mem_union_left
    rw [paperSmallPrimeSquareBadXValues, Finset.mem_filter]
    exact ⟨hxTail, p, Finset.mem_range.mpr (by omega), hp, hpSquare⟩
  · apply Finset.mem_union_right
    rw [mem_intervalTruncatedPrimeSquareBadXValues_iff]
    exact ⟨hxTail, p, hpCutoff, by omega, hp, hpSquare⟩

theorem truncatedPrimeSquareFiltered_card_le_small_add_interval
    (cutoff N : Nat) (select : Nat → Prop) [DecidablePred select] :
    ((truncatedPrimeSquareBadXValues cutoff N).filter select).card ≤
      ((paperSmallPrimeSquareBadXValues N).filter select).card +
        ((intervalTruncatedPrimeSquareBadXValues
          1000 cutoff N).filter select).card := by
  have hsubset :
      (truncatedPrimeSquareBadXValues cutoff N).filter select ⊆
        (paperSmallPrimeSquareBadXValues N).filter select ∪
          (intervalTruncatedPrimeSquareBadXValues
            1000 cutoff N).filter select := by
    intro x hx
    have hxParts := Finset.mem_filter.mp hx
    have hunion :=
      truncatedPrimeSquareBadXValues_subset_small_union_interval
        hxParts.1
    by_cases hsmall : x ∈ paperSmallPrimeSquareBadXValues N
    · exact Finset.mem_union_left _
        (Finset.mem_filter.mpr ⟨hsmall, hxParts.2⟩)
    · have hhigh :
          x ∈ intervalTruncatedPrimeSquareBadXValues
            1000 cutoff N :=
        (Finset.mem_union.mp hunion).resolve_left hsmall
      exact Finset.mem_union_right _
        (Finset.mem_filter.mpr ⟨hhigh, hxParts.2⟩)
  exact (Finset.card_le_card hsubset).trans (Finset.card_union_le _ _)

#print axioms truncatedPrimeSquareBadXValues_subset_small_union_interval
#print axioms truncatedPrimeSquareFiltered_card_le_small_add_interval

end Erdos848
