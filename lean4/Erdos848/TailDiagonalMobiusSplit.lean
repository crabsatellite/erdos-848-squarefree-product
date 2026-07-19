import Erdos848.TailDiagonalFiniteChecker
import Erdos848.TailLargeSquareEventBound

namespace Erdos848

/-!
# Kernel split for the truncated diagonal computation

The external producer only has to count prime-square obstructions with
`p ≤ cutoff`.  This file proves that every remaining nonsquarefree diagonal
value belongs to the large-square event set.  Consequently the producer is
not trusted and does not have to enumerate the Pell tail.
-/

set_option maxHeartbeats 0

/-- Diagonal values witnessed by a prime square at or below `cutoff`. -/
def truncatedPrimeSquareBadXValues (cutoff N : Nat) : Finset Nat :=
  (tailDiagonalBad N).filter fun x =>
    ∃ p ∈ Finset.range (cutoff + 1),
      Nat.Prime p ∧ p ^ 2 ∣ x ^ 2 + 1

theorem mem_truncatedPrimeSquareBadXValues_iff
    {cutoff N x : Nat} :
    x ∈ truncatedPrimeSquareBadXValues cutoff N ↔
      x ∈ tailDiagonalBad N ∧
        ∃ p ≤ cutoff, Nat.Prime p ∧ p ^ 2 ∣ x ^ 2 + 1 := by
  simp [truncatedPrimeSquareBadXValues]

/-- A small-square witness in the outside-base diagonal is exactly of the
kind enumerated by the Mobius--CRT producer: it is neither `2` nor `5` and
is `1 mod 4`. -/
theorem normalized_witness_of_mem_truncatedPrimeSquareBadXValues
    {cutoff N x : Nat}
    (hx : x ∈ truncatedPrimeSquareBadXValues cutoff N) :
    ∃ p ≤ cutoff,
      Nat.Prime p ∧ p ≠ 2 ∧ p ≠ 5 ∧ p % 4 = 1 ∧
        p ^ 2 ∣ x ^ 2 + 1 := by
  rcases (mem_truncatedPrimeSquareBadXValues_iff.mp hx).2 with
    ⟨p, hpCutoff, hp, hpSquare⟩
  have hxTail :=
    (mem_truncatedPrimeSquareBadXValues_iff.mp hx).1
  have hpNeTwo : p ≠ 2 := by
    intro hpTwo
    subst p
    exact finite_not_dvd_four_sq_add_one x
      (by simpa [pow_two] using hpSquare)
  have hpNeFive : p ≠ 5 := by
    intro hpFive
    subst p
    exact outside_not_dvd_25_sq_add_one x
      (outside_of_mem_tailDiagonalBad hxTail)
      (by simpa [pow_two] using hpSquare)
  have hpGtTwo : 2 < p :=
    lt_of_le_of_ne hp.two_le (Ne.symm hpNeTwo)
  exact ⟨p, hpCutoff, hp, hpNeTwo, hpNeFive,
    finite_prime_sq_divides_implies_one_mod_four
      p x hp hpGtTwo hpSquare,
    hpSquare⟩

/-- Every outside-base diagonal obstruction is either seen by the truncated
producer or lies in the kernel-bounded large-square event set. -/
theorem mem_truncatedPrimeSquareBadXValues_or_largeSquareBadXValues
    {cutoff N x : Nat}
    (hx : x ∈ tailDiagonalBad N) :
    x ∈ truncatedPrimeSquareBadXValues cutoff N ∨
      x ∈ largeSquareBadXValues cutoff (N + 1) := by
  obtain ⟨p, hp, hpSquare⟩ :=
    finite_prime_square_exists (not_squarefree_of_mem_tailDiagonalBad hx)
  by_cases hpCutoff : p ≤ cutoff
  · left
    exact mem_truncatedPrimeSquareBadXValues_iff.mpr
      ⟨hx, p, hpCutoff, hp, hpSquare⟩
  · right
    have hxBounds := bounds_of_mem_tailDiagonalBad hx
    have hpSquareLe : p ^ 2 ≤ x ^ 2 + 1 :=
      Nat.le_of_dvd (by positivity) hpSquare
    have hpLeX : p ≤ x := by
      by_contra hnot
      have hxSuccLe : x + 1 ≤ p := by omega
      have hpow : (x + 1) ^ 2 ≤ p ^ 2 :=
        Nat.pow_le_pow_left hxSuccLe 2
      nlinarith
    have hevent : (x, p) ∈ largeSquareEvents cutoff (N + 1) := by
      apply mem_largeSquareEvents_iff.mpr
      exact ⟨by omega, by omega, hxBounds.1, by omega, hpSquare⟩
    exact Finset.mem_image.mpr ⟨(x, p), hevent, rfl⟩

/-- Predicate-refined cardinal form used by every diagonal cell in the
four-range close.  The same global Pell remainder pays for any refinement. -/
theorem tailDiagonalFiltered_card_le_truncated_add_largeSquare
    (select : Nat → Prop) [DecidablePred select]
    {cutoff N : Nat}
    (hbound : N + 1 ≤ 2_000_000_000) :
    ((tailDiagonalBad N).filter select).card ≤
      ((truncatedPrimeSquareBadXValues cutoff N).filter select).card +
        (((N + 1) ^ 2 / (cutoff + 1) ^ 2 + 1) * 13) := by
  let large := largeSquareBadXValues cutoff (N + 1)
  have hsubset :
      (tailDiagonalBad N).filter select ⊆
        (truncatedPrimeSquareBadXValues cutoff N).filter select ∪ large := by
    intro x hx
    have hxParts := Finset.mem_filter.mp hx
    rcases
        mem_truncatedPrimeSquareBadXValues_or_largeSquareBadXValues
          hxParts.1 with hsmall | hlarge
    · exact Finset.mem_union_left _ (Finset.mem_filter.mpr ⟨hsmall, hxParts.2⟩)
    · exact Finset.mem_union_right _ hlarge
  calc
    ((tailDiagonalBad N).filter select).card ≤
        (((truncatedPrimeSquareBadXValues cutoff N).filter select) ∪
          large).card :=
      Finset.card_le_card hsubset
    _ ≤ ((truncatedPrimeSquareBadXValues cutoff N).filter select).card +
          large.card :=
      Finset.card_union_le _ _
    _ ≤ ((truncatedPrimeSquareBadXValues cutoff N).filter select).card +
          (((N + 1) ^ 2 / (cutoff + 1) ^ 2 + 1) * 13) := by
      exact Nat.add_le_add_left
        (largeSquareBadXValues_card_le hbound) _

/-- Unrefined version of the split. -/
theorem tailDiagonalBad_card_le_truncated_add_largeSquare
    {cutoff N : Nat}
    (hbound : N + 1 ≤ 2_000_000_000) :
    (tailDiagonalBad N).card ≤
      (truncatedPrimeSquareBadXValues cutoff N).card +
        (((N + 1) ^ 2 / (cutoff + 1) ^ 2 + 1) * 13) := by
  simpa using
    tailDiagonalFiltered_card_le_truncated_add_largeSquare
      (fun _ : Nat => True) (cutoff := cutoff) (N := N) hbound

#print axioms normalized_witness_of_mem_truncatedPrimeSquareBadXValues
#print axioms mem_truncatedPrimeSquareBadXValues_or_largeSquareBadXValues
#print axioms tailDiagonalFiltered_card_le_truncated_add_largeSquare
#print axioms tailDiagonalBad_card_le_truncated_add_largeSquare

end Erdos848
