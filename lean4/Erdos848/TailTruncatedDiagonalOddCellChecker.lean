import Erdos848.TailTruncatedDiagonalChecker

namespace Erdos848

/-!
# Compact odd-cell checker for a truncated diagonal marker

The long marker records every prime-square event through a certified prime
cutoff.  An untrusted producer may project that marker into the eighteen
odd `(mod 4, mod 9)` cells.  The Lean kernel checks the projection, sorted
cutoffs, and the remaining large-prime-square payment.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem IndexedMarkerData.ProjectsOddCells.projectsPredicate
    {source : IndexedMarkerData}
    {targets : OddModNineCell → IndexedMarkerData}
    (hprojects : source.ProjectsOddCells targets)
    (cell : OddModNineCell) :
    source.ProjectsPredicate (targets cell) cell.Accepts := by
  intro x hcontains haccepts
  exact hprojects.contains hcontains haccepts

/-- The odd large-square remainder used by a single odd congruence cell. -/
def truncatedOddLargeSquarePayment (cutoff upper : Nat) : Nat :=
  (((upper + 1) ^ 2 / (cutoff + 1) ^ 2 / 8 + 1) * 13)

theorem truncatedOddLargeSquarePayment_mono
    {cutoff N upper : Nat} (hN : N ≤ upper) :
    truncatedOddLargeSquarePayment cutoff N ≤
      truncatedOddLargeSquarePayment cutoff upper := by
  have hsucc : N + 1 ≤ upper + 1 := by omega
  have hpow : (N + 1) ^ 2 ≤ (upper + 1) ^ 2 :=
    Nat.pow_le_pow_left hsucc 2
  have hdiv :
      (N + 1) ^ 2 / (cutoff + 1) ^ 2 ≤
        (upper + 1) ^ 2 / (cutoff + 1) ^ 2 :=
    Nat.div_le_div_right hpow
  have hdivEight :
      ((N + 1) ^ 2 / (cutoff + 1) ^ 2) / 8 ≤
        ((upper + 1) ^ 2 / (cutoff + 1) ^ 2) / 8 :=
    Nat.div_le_div_right hdiv
  exact Nat.mul_le_mul_right 13
    (Nat.add_le_add_right hdivEight 1)

theorem tailDiagonalCell_card_le_truncatedMarker_add_largeSquare
    (certificate : TruncatedDiagonalCoverageCertificate)
    (targets : OddModNineCell → IndexedMarkerData)
    (hprojects : certificate.marker.ProjectsOddCells targets)
    {cell : OddModNineCell}
    (hordered : (targets cell).AdjacentOrdered)
    {N upper count : Nat}
    (hNLimit : N ≤ certificate.marker.limit)
    (hcutoff : (targets cell).Cutoff upper count)
    (hNUpper : N ≤ upper)
    (hbound : N + 1 ≤ 2_000_000_000) :
    (tailDiagonalCell N cell).card ≤
      count + truncatedOddLargeSquarePayment certificate.cutoff N := by
  have hodd : ∀ x, cell.Accepts x → x % 2 = 1 := by
    intro x hx
    rcases OddModNineCell.odd_of_accepts hx with hxOne | hxThree
    · omega
    · omega
  simpa [tailDiagonalCell, truncatedOddLargeSquarePayment] using
    (tailDiagonalOddFiltered_card_le_truncated_add_largeSquare
      cell.Accepts hodd hbound).trans
      (Nat.add_le_add_right
        (truncatedPrimeSquareFiltered_card_le certificate
          (targets cell) cell.Accepts
          (hprojects.projectsPredicate cell) hordered hNLimit
          hcutoff hNUpper) _)

theorem tailDiagonalCell_ratio_le_truncatedMarker
    (certificate : TruncatedDiagonalCoverageCertificate)
    (targets : OddModNineCell → IndexedMarkerData)
    (hprojects : certificate.marker.ProjectsOddCells targets)
    {cell : OddModNineCell}
    (hordered : (targets cell).AdjacentOrdered)
    {lower upper N count : Nat} {envelope : Rat}
    (hcutoff : (targets cell).Cutoff upper count)
    (hUpperLimit : upper ≤ certificate.marker.limit)
    (hLowerPositive : 0 < lower)
    (hNLower : lower ≤ N) (hNUpper : N ≤ upper)
    (hbound : N + 1 ≤ 2_000_000_000)
    (hbudget :
      ((count + truncatedOddLargeSquarePayment
        certificate.cutoff upper : Nat) : Rat) / lower ≤ envelope) :
    ((tailDiagonalCell N cell).card : Rat) / N ≤ envelope := by
  have hcardAtN :=
    tailDiagonalCell_card_le_truncatedMarker_add_largeSquare
      certificate targets hprojects hordered
      (hNUpper.trans hUpperLimit) hcutoff hNUpper hbound
  have hpayment :=
    truncatedOddLargeSquarePayment_mono
      (cutoff := certificate.cutoff) hNUpper
  have hcard :
      (tailDiagonalCell N cell).card ≤
        count +
          truncatedOddLargeSquarePayment certificate.cutoff upper :=
    hcardAtN.trans (Nat.add_le_add_left hpayment count)
  exact
    (natCardRatio_le_block hLowerPositive hNLower hcard).trans hbudget

def TruncatedOddCellRatioRange
    (start stop : Nat) (envelope : Rat) : Prop :=
  ∀ N, start ≤ N → N < stop → ∀ cell,
    ((tailDiagonalCell N cell).card : Rat) / N ≤ envelope

theorem truncatedOddCellRatioRangeAppend
    {start middle stop : Nat} {envelope : Rat}
    (hleft : TruncatedOddCellRatioRange start middle envelope)
    (hright : TruncatedOddCellRatioRange middle stop envelope) :
    TruncatedOddCellRatioRange start stop envelope := by
  intro N hstart hstop cell
  by_cases hN : N < middle
  · exact hleft N hstart hN cell
  · exact hright N (Nat.le_of_not_gt hN) hstop cell

#print axioms IndexedMarkerData.ProjectsOddCells.projectsPredicate
#print axioms truncatedOddLargeSquarePayment_mono
#print axioms tailDiagonalCell_card_le_truncatedMarker_add_largeSquare
#print axioms tailDiagonalCell_ratio_le_truncatedMarker
#print axioms truncatedOddCellRatioRangeAppend

end Erdos848
