import Erdos848.TailGlobalMixedThreePivotFiniteBridge
import Erdos848.TailGlobalMixedEvenActualTail
import Erdos848.TailR263FourPivotTerminal

namespace Erdos848

/-!
# Literal finite and tail payments for the two-cell `E2` row

Every three-element subset of the selected four pivots meets two distinct
mod-nine cells.  The all-three finite intersection therefore occupies at most
nine of the `441` CRT residues in each base progression.  Summing the four
triple intersections with coefficient `1/2` gives the exact finite component
used by the paper's four-pivot Boolean inequality.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem globalMixedEvenTwoFourPivotFiniteTriplePayment_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    (hBout : Erdos848OutsideSet N B)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B .evenTwo)
    (hcard : pivots.card = 4)
    (hcapacity : ∀ residue : Fin 9,
      (pivots.filter fun pivot => pivot % 9 = residue.val).card <= 2) :
    fiveMillionR263BaseFiniteTriplePayment N B pivots 7 / N <=
      4 / 1225 + 36 / N := by
  classical
  let triples := pivots.powersetCard 3
  have htripleCount : triples.card = 4 := by
    simp [triples, Finset.card_powersetCard, hcard]
  have hper : ∀ triple ∈ triples,
      ((eventIntersection (hallBasePart N B)
        (finiteSquarePrimeEvent 7) triple).card : Rat) / N <=
          2 / 1225 + 18 / N := by
    intro triple htriple
    have hparts := Finset.mem_powersetCard.mp htriple
    have htripleSubset : triple ⊆ pivots := hparts.1
    have htripleCard : triple.card = 3 := hparts.2
    have htriplePart : triple ⊆
        fiveMillionValuationPart N B .evenTwo := htripleSubset.trans hpivots
    have htripleCapacity : ∀ residue : Fin 9,
        (triple.filter fun pivot => pivot % 9 = residue.val).card <= 2 := by
      intro residue
      have hfilterSubset :
          triple.filter (fun pivot => pivot % 9 = residue.val) ⊆
            pivots.filter (fun pivot => pivot % 9 = residue.val) := by
        intro pivot hpivot
        have hparts := Finset.mem_filter.mp hpivot
        exact Finset.mem_filter.mpr ⟨htripleSubset hparts.1, hparts.2⟩
      exact (Finset.card_le_card hfilterSubset).trans (hcapacity residue)
    have hbound := globalMixedEvenThreePivotAllFiniteIntersection_ratio_le
      (valuation := .evenTwo) hBout
      (by simp [IsGlobalMixedEvenValuationClass])
      htriplePart htripleCard htripleCapacity
    simpa [globalMixedThreePivotAllFiniteIntersection] using hbound
  have hsum :
      (∑ triple ∈ triples,
        ((eventIntersection (hallBasePart N B)
          (finiteSquarePrimeEvent 7) triple).card : Rat) / N) <=
        4 * (2 / 1225 + 18 / N) := by
    have hraw := Finset.sum_le_sum fun triple htriple => hper triple htriple
    calc
      (∑ triple ∈ triples,
          ((eventIntersection (hallBasePart N B)
            (finiteSquarePrimeEvent 7) triple).card : Rat) / N) <=
          ∑ _triple ∈ triples,
            ((2 / 1225 : Rat) + 18 / N) := hraw
      _ = (triples.card : Rat) * ((2 / 1225 : Rat) + 18 / N) := by
        simp
        ring
      _ = 4 * (2 / 1225 + 18 / N) := by
        rw [htripleCount]
        norm_num
  have hsumDiv :
      (∑ triple ∈ pivots.powersetCard 3,
          ((eventIntersection (hallBasePart N B)
            (finiteSquarePrimeEvent 7) triple).card : Rat)) / N =
        ∑ triple ∈ triples,
          ((eventIntersection (hallBasePart N B)
            (finiteSquarePrimeEvent 7) triple).card : Rat) / N := by
    simp only [triples, Finset.sum_div]
  unfold fiveMillionR263BaseFiniteTriplePayment
  calc
    ((1 / 2 : Rat) *
        (∑ triple ∈ pivots.powersetCard 3,
          ((eventIntersection (hallBasePart N B)
            (finiteSquarePrimeEvent 7) triple).card : Rat))) / N =
        (1 / 2 : Rat) *
          (∑ triple ∈ triples,
            ((eventIntersection (hallBasePart N B)
              (finiteSquarePrimeEvent 7) triple).card : Rat) / N) := by
      rw [← hsumDiv]
      ring
    _ <= (1 / 2 : Rat) * (4 * (2 / 1225 + 18 / N)) := by
      gcongr
    _ = 4 / 1225 + 36 / N := by ring

theorem globalMixedEvenTwoFourPivotTailPayment_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B .evenTwo)
    (hcard : pivots.card = 4) :
    hallBaseTailSquarePayment N B pivots 7 3 / N <=
      (2 / 3 : Rat) * fiveMillionOddRoot7Envelope +
        4 * fiveMillionSquareTail7Envelope / 25 := by
  have hper : ∀ pivot ∈ pivots,
      hallBaseTailSquareCount N B 7 pivot / N <=
        (fiveMillionOddRoot7Envelope +
          6 * fiveMillionSquareTail7Envelope / 25) / 3 := by
    intro pivot hpivot
    have hpivotPart := hpivots hpivot
    exact hallBaseTailSquareCount_ratio_le_globalMixed_evenTwo
      hLower hBout
      (fiveMillionValuationPart_subset_residual N B .evenTwo hpivotPart)
      (fiveMillionValuationPart_evenTwo hpivotPart)
  have hsum :
      (∑ pivot ∈ pivots,
        hallBaseTailSquareCount N B 7 pivot / N) <=
        4 * ((fiveMillionOddRoot7Envelope +
          6 * fiveMillionSquareTail7Envelope / 25) / 3) := by
    have hraw := Finset.sum_le_sum fun pivot hpivot => hper pivot hpivot
    simpa [hcard] using hraw
  unfold hallBaseTailSquarePayment
  rw [hcard]
  norm_num
  change
    (∑ pivot ∈ pivots, hallBaseTailSquareCount N B 7 pivot) / 2 / N <= _
  calc
    (∑ pivot ∈ pivots, hallBaseTailSquareCount N B 7 pivot) / 2 / N =
        (∑ pivot ∈ pivots,
          hallBaseTailSquareCount N B 7 pivot / N) / 2 := by
      rw [← Finset.sum_div]
      ring
    _ <= (4 * ((fiveMillionOddRoot7Envelope +
          6 * fiveMillionSquareTail7Envelope / 25) / 3)) / 2 :=
      div_le_div_of_nonneg_right hsum (by norm_num)
    _ = (2 / 3 : Rat) * fiveMillionOddRoot7Envelope +
        4 * fiveMillionSquareTail7Envelope / 25 := by ring

#print axioms globalMixedEvenTwoFourPivotFiniteTriplePayment_ratio_le
#print axioms globalMixedEvenTwoFourPivotTailPayment_ratio_le

end Erdos848
