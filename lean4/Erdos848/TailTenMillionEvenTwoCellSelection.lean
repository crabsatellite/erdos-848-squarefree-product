import Erdos848.TailTenMillionEvenFinite23Payment
import Erdos848.TailTenMillionCombinatorics
import Erdos848.TailMixedHall
import Erdos848.TailTenMillionEvenCellCap

namespace Erdos848

/-!
# Uniform two-cell close-pair selection for the ten-million even rows

The same selection serves `E1` and `E2`.  Each dense mod-nine fibre supplies
an actual pair at distance below `1_000_001`; the two distinct fibres make
the four pivots distinct and force every selected triple to be non-common
modulo nine.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

structure TenMillionEvenTwoCellSelection
    (N : Nat) (B : Finset Nat)
    (valuation : FiveMillionValuationClass)
    (left right : Fin 9) : Type where
  x0 : Nat
  x1 : Nat
  y0 : Nat
  y1 : Nat
  x0Part : x0 ∈ fiveMillionValuationPart N B valuation
  x1Part : x1 ∈ fiveMillionValuationPart N B valuation
  y0Part : y0 ∈ fiveMillionValuationPart N B valuation
  y1Part : y1 ∈ fiveMillionValuationPart N B valuation
  x0Cell : oddModNineResidue x0 = left
  x1Cell : oddModNineResidue x1 = left
  y0Cell : oddModNineResidue y0 = right
  y1Cell : oddModNineResidue y1 = right
  x0_lt_x1 : x0 < x1
  y0_lt_y1 : y0 < y1
  xgap : x1 - x0 < 1_000_001
  ygap : y1 - y0 < 1_000_001
  left_ne_right : left ≠ right

namespace TenMillionEvenTwoCellSelection

def leftPair {N B valuation left right}
    (selection :
      TenMillionEvenTwoCellSelection N B valuation left right) :
    Finset Nat :=
  {selection.x0, selection.x1}

def rightPair {N B valuation left right}
    (selection :
      TenMillionEvenTwoCellSelection N B valuation left right) :
    Finset Nat :=
  {selection.y0, selection.y1}

def pivots {N B valuation left right}
    (selection :
      TenMillionEvenTwoCellSelection N B valuation left right) :
    Finset Nat :=
  selection.leftPair ∪ selection.rightPair

lemma leftPair_card {N B valuation left right}
    (selection :
      TenMillionEvenTwoCellSelection N B valuation left right) :
    selection.leftPair.card = 2 := by
  simp [leftPair, Nat.ne_of_lt selection.x0_lt_x1]

lemma rightPair_card {N B valuation left right}
    (selection :
      TenMillionEvenTwoCellSelection N B valuation left right) :
    selection.rightPair.card = 2 := by
  simp [rightPair, Nat.ne_of_lt selection.y0_lt_y1]

lemma mem_leftPair_part {N B valuation left right}
    (selection :
      TenMillionEvenTwoCellSelection N B valuation left right)
    {x : Nat} (hx : x ∈ selection.leftPair) :
    x ∈ fiveMillionValuationPart N B valuation := by
  simp only [leftPair, Finset.mem_insert, Finset.mem_singleton] at hx
  rcases hx with rfl | rfl
  · exact selection.x0Part
  · exact selection.x1Part

lemma mem_rightPair_part {N B valuation left right}
    (selection :
      TenMillionEvenTwoCellSelection N B valuation left right)
    {x : Nat} (hx : x ∈ selection.rightPair) :
    x ∈ fiveMillionValuationPart N B valuation := by
  simp only [rightPair, Finset.mem_insert, Finset.mem_singleton] at hx
  rcases hx with rfl | rfl
  · exact selection.y0Part
  · exact selection.y1Part

lemma mem_leftPair_cell {N B valuation left right}
    (selection :
      TenMillionEvenTwoCellSelection N B valuation left right)
    {x : Nat} (hx : x ∈ selection.leftPair) :
    oddModNineResidue x = left := by
  simp only [leftPair, Finset.mem_insert, Finset.mem_singleton] at hx
  rcases hx with rfl | rfl
  · exact selection.x0Cell
  · exact selection.x1Cell

lemma mem_rightPair_cell {N B valuation left right}
    (selection :
      TenMillionEvenTwoCellSelection N B valuation left right)
    {x : Nat} (hx : x ∈ selection.rightPair) :
    oddModNineResidue x = right := by
  simp only [rightPair, Finset.mem_insert, Finset.mem_singleton] at hx
  rcases hx with rfl | rfl
  · exact selection.y0Cell
  · exact selection.y1Cell

lemma leftPair_disjoint_rightPair {N B valuation left right}
    (selection :
      TenMillionEvenTwoCellSelection N B valuation left right) :
    Disjoint selection.leftPair selection.rightPair := by
  apply Finset.disjoint_left.mpr
  intro x hxLeft hxRight
  apply selection.left_ne_right
  exact (selection.mem_leftPair_cell hxLeft).symm.trans
    (selection.mem_rightPair_cell hxRight)

lemma pivots_card {N B valuation left right}
    (selection :
      TenMillionEvenTwoCellSelection N B valuation left right) :
    selection.pivots.card = 4 := by
  rw [pivots, Finset.card_union_of_disjoint
    selection.leftPair_disjoint_rightPair,
    selection.leftPair_card, selection.rightPair_card]

lemma leftPair_subset_pivots {N B valuation left right}
    (selection :
      TenMillionEvenTwoCellSelection N B valuation left right) :
    selection.leftPair ⊆ selection.pivots := by
  simp [pivots]

lemma rightPair_subset_pivots {N B valuation left right}
    (selection :
      TenMillionEvenTwoCellSelection N B valuation left right) :
    selection.rightPair ⊆ selection.pivots := by
  simp [pivots]

lemma pivots_subset_part {N B valuation left right}
    (selection :
      TenMillionEvenTwoCellSelection N B valuation left right) :
    selection.pivots ⊆ fiveMillionValuationPart N B valuation := by
  intro x hx
  rcases Finset.mem_union.mp hx with hxLeft | hxRight
  · exact selection.mem_leftPair_part hxLeft
  · exact selection.mem_rightPair_part hxRight

private lemma pair_subset_or_pair_subset_of_triple
    {N B valuation left right}
    (selection :
      TenMillionEvenTwoCellSelection N B valuation left right)
    {triple : Finset Nat}
    (hsubset : triple ⊆ selection.pivots)
    (hcard : triple.card = 3) :
    selection.leftPair ⊆ triple ∨ selection.rightPair ⊆ triple := by
  by_contra hneither
  push_neg at hneither
  obtain ⟨x, hxLeft, hxNot⟩ := hneither.1
  obtain ⟨y, hyRight, hyNot⟩ := hneither.2
  have hxPivots := selection.leftPair_subset_pivots hxLeft
  have hyPivots := selection.rightPair_subset_pivots hyRight
  have hxy : x ≠ y := by
    intro hxy
    subst y
    exact (Finset.disjoint_left.mp
      selection.leftPair_disjoint_rightPair) hxLeft hyRight
  have htripleSubset :
      triple ⊆ (selection.pivots.erase x).erase y := by
    intro z hz
    apply Finset.mem_erase.mpr
    refine ⟨?_, Finset.mem_erase.mpr ⟨?_, hsubset hz⟩⟩
    · intro hzy
      subst z
      exact hyNot hz
    · intro hzx
      subst z
      exact hxNot hz
  have hyErase : y ∈ selection.pivots.erase x :=
    Finset.mem_erase.mpr ⟨hxy.symm, hyPivots⟩
  have hcardErase : ((selection.pivots.erase x).erase y).card = 2 := by
    rw [Finset.card_erase_of_mem hyErase,
      Finset.card_erase_of_mem hxPivots, selection.pivots_card]
  have hle := Finset.card_le_card htripleSubset
  rw [hcard, hcardErase] at hle
  omega

lemma triple_contains_left_or_right_pair
    {N B valuation left right}
    (selection :
      TenMillionEvenTwoCellSelection N B valuation left right)
    {triple : Finset Nat}
    (hsubset : triple ⊆ selection.pivots)
    (hcard : triple.card = 3) :
    selection.leftPair ⊆ triple ∨ selection.rightPair ⊆ triple :=
  selection.pair_subset_or_pair_subset_of_triple hsubset hcard

lemma triple_not_common_three
    {N B valuation left right}
    (selection :
      TenMillionEvenTwoCellSelection N B valuation left right)
    {triple : Finset Nat}
    (hsubset : triple ⊆ selection.pivots)
    (hcard : triple.card = 3) :
    ¬ e1FiniteTripleCommonAt triple hcard 0 := by
  have hnotLeft : ¬ triple ⊆ selection.leftPair := by
    intro h
    have hle := Finset.card_le_card h
    rw [hcard, selection.leftPair_card] at hle
    omega
  have hnotRight : ¬ triple ⊆ selection.rightPair := by
    intro h
    have hle := Finset.card_le_card h
    rw [hcard, selection.rightPair_card] at hle
    omega
  obtain ⟨y, hyTriple, hyNotLeft⟩ := Finset.not_subset.mp hnotLeft
  obtain ⟨x, hxTriple, hxNotRight⟩ := Finset.not_subset.mp hnotRight
  have hyPivots := hsubset hyTriple
  have hxPivots := hsubset hxTriple
  have hyRight : y ∈ selection.rightPair :=
    (Finset.mem_union.mp hyPivots).resolve_left hyNotLeft
  have hxLeft : x ∈ selection.leftPair :=
    (Finset.mem_union.mp hxPivots).resolve_right hxNotRight
  have hxCell := selection.mem_leftPair_cell hxLeft
  have hyCell := selection.mem_rightPair_cell hyRight
  have hxMod : x % 9 = left.val := by
    simpa [oddModNineResidue] using congrArg Fin.val hxCell
  have hyMod : y % 9 = right.val := by
    simpa [oddModNineResidue] using congrArg Fin.val hyCell
  have hmodNe : x % 9 ≠ y % 9 := by
    intro hxy
    apply selection.left_ne_right
    apply Fin.ext
    exact hxMod.symm.trans (hxy.trans hyMod)
  exact e1FiniteTripleCommonAt_false_of_two_mem
    hcard hxTriple hyTriple (index := 0) (by
      simpa [e1FiniteModulus] using hmodNe)

lemma triple_has_close_pair
    {N B valuation left right}
    (selection :
      TenMillionEvenTwoCellSelection N B valuation left right)
    {triple : Finset Nat}
    (hsubset : triple ⊆ selection.pivots)
    (hcard : triple.card = 3) :
    ∃ a ∈ triple, ∃ b ∈ triple,
      a ≠ b ∧ Nat.dist a b < 1_000_001 := by
  rcases selection.triple_contains_left_or_right_pair hsubset hcard with
      hleft | hright
  · refine ⟨selection.x0, hleft (by simp [leftPair]),
      selection.x1, hleft (by simp [leftPair]),
      Nat.ne_of_lt selection.x0_lt_x1, ?_⟩
    rw [Nat.dist_eq_sub_of_le selection.x0_lt_x1.le]
    exact selection.xgap
  · refine ⟨selection.y0, hright (by simp [rightPair]),
      selection.y1, hright (by simp [rightPair]),
      Nat.ne_of_lt selection.y0_lt_y1, ?_⟩
    rw [Nat.dist_eq_sub_of_le selection.y0_lt_y1.le]
    exact selection.ygap

theorem finite_ratio_le
    {N B valuation left right}
    (hLower : 10_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (selection :
      TenMillionEvenTwoCellSelection N B valuation left right) :
    fiveMillionR263BaseFiniteTriplePayment
        N B selection.pivots 23 / N <=
      tenMillionFourPayment
        tenMillionEvenFourDensity tenMillionEvenFourEndpoint := by
  exact tenMillionEvenFourPivotFinite_ratio_le
    hLower hBout hvaluation selection.pivots_subset_part
      selection.pivots_card
      (fun triple hsubset hcard =>
        selection.triple_not_common_three hsubset hcard)
      (fun triple hsubset hcard =>
        selection.triple_has_close_pair hsubset hcard)

end TenMillionEvenTwoCellSelection

private theorem tenMillionValuationPart_subset_Icc
    {N : Nat} {B : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hBout : Erdos848OutsideSet N B) :
    fiveMillionValuationPart N B valuation ⊆ Finset.Icc 1 N := by
  intro pivot hpivot
  have hpivotResidual :=
    fiveMillionValuationPart_subset_residual N B valuation hpivot
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  exact hallCompletion_subset_Icc hBout hpivotCompletion

theorem tenMillionEvenTwoCellSelection_nonempty
    {N : Nat} {B : Finset Nat}
    {valuation : FiveMillionValuationClass}
    {left right : Fin 9}
    (hBout : Erdos848OutsideSet N B)
    (hleftRight : left ≠ right)
    (hleft :
      tenMillionClosePairBucketCap N <
        (cellFibre (fiveMillionValuationPart N B valuation)
          oddModNineResidue left).card)
    (hright :
      tenMillionClosePairBucketCap N <
        (cellFibre (fiveMillionValuationPart N B valuation)
          oddModNineResidue right).card) :
    Nonempty
      (TenMillionEvenTwoCellSelection N B valuation left right) := by
  classical
  let part := fiveMillionValuationPart N B valuation
  let leftCell := cellFibre part oddModNineResidue left
  let rightCell := cellFibre part oddModNineResidue right
  have hleftIcc : leftCell ⊆ Finset.Icc 1 N := by
    intro x hx
    exact tenMillionValuationPart_subset_Icc hBout
      (Finset.mem_filter.mp hx).1
  have hrightIcc : rightCell ⊆ Finset.Icc 1 N := by
    intro x hx
    exact tenMillionValuationPart_subset_Icc hBout
      (Finset.mem_filter.mp hx).1
  obtain ⟨x0, hx0, x1, hx1, hxlt, hxgap⟩ :=
    exists_close_pair_of_card
      (S := leftCell) (N := N) (gap := 1_000_001)
      (by norm_num) hleftIcc
      (by simpa [leftCell, part, tenMillionClosePairBucketCap] using hleft)
  obtain ⟨y0, hy0, y1, hy1, hylt, hygap⟩ :=
    exists_close_pair_of_card
      (S := rightCell) (N := N) (gap := 1_000_001)
      (by norm_num) hrightIcc
      (by simpa [rightCell, part, tenMillionClosePairBucketCap] using hright)
  have hx0Parts := Finset.mem_filter.mp hx0
  have hx1Parts := Finset.mem_filter.mp hx1
  have hy0Parts := Finset.mem_filter.mp hy0
  have hy1Parts := Finset.mem_filter.mp hy1
  exact ⟨{
    x0 := x0
    x1 := x1
    y0 := y0
    y1 := y1
    x0Part := hx0Parts.1
    x1Part := hx1Parts.1
    y0Part := hy0Parts.1
    y1Part := hy1Parts.1
    x0Cell := hx0Parts.2
    x1Cell := hx1Parts.2
    y0Cell := hy0Parts.2
    y1Cell := hy1Parts.2
    x0_lt_x1 := hxlt
    y0_lt_y1 := hylt
    xgap := hxgap
    ygap := hygap
    left_ne_right := hleftRight }⟩

#print axioms TenMillionEvenTwoCellSelection.finite_ratio_le
#print axioms tenMillionEvenTwoCellSelection_nonempty

end Erdos848
