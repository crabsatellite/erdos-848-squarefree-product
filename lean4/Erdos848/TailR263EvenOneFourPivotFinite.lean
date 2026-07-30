import Erdos848.TailR263EvenOneCells
import Erdos848.TailR263FourPivotTerminal
import Erdos848.TailFiniteTripleCommon
import Erdos848.TailR263EvenOneFinite23SharpClassified

namespace Erdos848

/-!
# Literal four-pivot finite payments for E1

Two selected pairs lie in distinct mod-nine cells.  Every three-subset
therefore breaks the prime `3`.  Exactly two three-subsets contain either
fixed pair; this lets a good pair receive the sharp `good` arithmetic row
without assigning a label to the other pair.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000
attribute [local instance] Classical.propDecidable

structure FiveMillionR263EvenOnePairSelection
    (N : Nat) (B : Finset Nat) (left right : Fin 9) : Type where
  x0 : Nat
  x1 : Nat
  y0 : Nat
  y1 : Nat
  x0Cell : x0 ∈ fiveMillionR263EvenOneCell N B left
  x1Cell : x1 ∈ fiveMillionR263EvenOneCell N B left
  y0Cell : y0 ∈ fiveMillionR263EvenOneCell N B right
  y1Cell : y1 ∈ fiveMillionR263EvenOneCell N B right
  x0_ne_x1 : x0 ≠ x1
  y0_ne_y1 : y0 ≠ y1
  left_ne_right : left ≠ right

namespace FiveMillionR263EvenOnePairSelection

def leftPair {N B left right}
    (selection : FiveMillionR263EvenOnePairSelection N B left right) :
    Finset Nat :=
  {selection.x0, selection.x1}

def rightPair {N B left right}
    (selection : FiveMillionR263EvenOnePairSelection N B left right) :
    Finset Nat :=
  {selection.y0, selection.y1}

def pivots {N B left right}
    (selection : FiveMillionR263EvenOnePairSelection N B left right) :
    Finset Nat :=
  selection.leftPair ∪ selection.rightPair

lemma leftPair_card {N B left right}
    (selection : FiveMillionR263EvenOnePairSelection N B left right) :
    selection.leftPair.card = 2 := by
  simp [leftPair, selection.x0_ne_x1]

lemma rightPair_card {N B left right}
    (selection : FiveMillionR263EvenOnePairSelection N B left right) :
    selection.rightPair.card = 2 := by
  simp [rightPair, selection.y0_ne_y1]

lemma mem_leftPair_cell {N B left right}
    (selection : FiveMillionR263EvenOnePairSelection N B left right)
    {x : Nat} (hx : x ∈ selection.leftPair) :
    x ∈ fiveMillionR263EvenOneCell N B left := by
  simp only [leftPair, Finset.mem_insert, Finset.mem_singleton] at hx
  rcases hx with rfl | rfl
  · exact selection.x0Cell
  · exact selection.x1Cell

lemma mem_rightPair_cell {N B left right}
    (selection : FiveMillionR263EvenOnePairSelection N B left right)
    {x : Nat} (hx : x ∈ selection.rightPair) :
    x ∈ fiveMillionR263EvenOneCell N B right := by
  simp only [rightPair, Finset.mem_insert, Finset.mem_singleton] at hx
  rcases hx with rfl | rfl
  · exact selection.y0Cell
  · exact selection.y1Cell

lemma leftPair_disjoint_rightPair {N B left right}
    (selection : FiveMillionR263EvenOnePairSelection N B left right) :
    Disjoint selection.leftPair selection.rightPair := by
  apply Finset.disjoint_left.mpr
  intro x hxLeft hxRight
  have hleft := (Finset.mem_filter.mp
    (selection.mem_leftPair_cell hxLeft)).2
  have hright := (Finset.mem_filter.mp
    (selection.mem_rightPair_cell hxRight)).2
  apply selection.left_ne_right
  exact hleft.symm.trans hright

lemma pivots_card {N B left right}
    (selection : FiveMillionR263EvenOnePairSelection N B left right) :
    selection.pivots.card = 4 := by
  rw [pivots, Finset.card_union_of_disjoint
    selection.leftPair_disjoint_rightPair,
    selection.leftPair_card, selection.rightPair_card]

lemma leftPair_subset_pivots {N B left right}
    (selection : FiveMillionR263EvenOnePairSelection N B left right) :
    selection.leftPair ⊆ selection.pivots := by
  simp [pivots]

lemma rightPair_subset_pivots {N B left right}
    (selection : FiveMillionR263EvenOnePairSelection N B left right) :
    selection.rightPair ⊆ selection.pivots := by
  simp [pivots]

lemma pivots_subset_part {N B left right}
    (selection : FiveMillionR263EvenOnePairSelection N B left right) :
    selection.pivots ⊆ fiveMillionValuationPart N B .evenOne := by
  intro x hx
  rcases Finset.mem_union.mp hx with hxLeft | hxRight
  · exact fiveMillionR263EvenOneCell_subset_part N B left
      (selection.mem_leftPair_cell hxLeft)
  · exact fiveMillionR263EvenOneCell_subset_part N B right
      (selection.mem_rightPair_cell hxRight)

lemma cross_ne {N B left right}
    (selection : FiveMillionR263EvenOnePairSelection N B left right)
    {x y : Nat} (hx : x ∈ selection.leftPair)
    (hy : y ∈ selection.rightPair) :
    x ≠ y := by
  intro hxy
  subst y
  exact (Finset.disjoint_left.mp
    selection.leftPair_disjoint_rightPair) hx hy

private lemma pair_subset_or_pair_subset_of_triple
    {N B left right}
    (selection : FiveMillionR263EvenOnePairSelection N B left right)
    {triple : Finset Nat}
    (hsubset : triple ⊆ selection.pivots)
    (hcard : triple.card = 3) :
    selection.leftPair ⊆ triple ∨ selection.rightPair ⊆ triple := by
  by_contra hneither
  have hnotLeft : ¬ selection.leftPair ⊆ triple :=
    fun h => hneither (Or.inl h)
  have hnotRight : ¬ selection.rightPair ⊆ triple :=
    fun h => hneither (Or.inr h)
  obtain ⟨x, hxLeft, hxNot⟩ := Finset.not_subset.mp hnotLeft
  obtain ⟨y, hyRight, hyNot⟩ := Finset.not_subset.mp hnotRight
  have hxPivots := selection.leftPair_subset_pivots hxLeft
  have hyPivots := selection.rightPair_subset_pivots hyRight
  have hxy : x ≠ y := selection.cross_ne hxLeft hyRight
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
  have := Finset.card_le_card htripleSubset
  rw [hcard, hcardErase] at this
  omega

lemma triple_not_common_three {N B left right}
    (selection : FiveMillionR263EvenOnePairSelection N B left right)
    {triple : Finset Nat}
    (hsubset : triple ⊆ selection.pivots)
    (hcard : triple.card = 3) :
    ¬ e1FiniteTripleCommonAt triple hcard 0 := by
  have hnotLeft : ¬ triple ⊆ selection.leftPair := by
    intro h
    have := Finset.card_le_card h
    rw [hcard, selection.leftPair_card] at this
    omega
  have hnotRight : ¬ triple ⊆ selection.rightPair := by
    intro h
    have := Finset.card_le_card h
    rw [hcard, selection.rightPair_card] at this
    omega
  obtain ⟨y, hyTriple, hyNotLeft⟩ := Finset.not_subset.mp hnotLeft
  obtain ⟨x, hxTriple, hxNotRight⟩ := Finset.not_subset.mp hnotRight
  have hyPivots := hsubset hyTriple
  have hxPivots := hsubset hxTriple
  have hyRight : y ∈ selection.rightPair :=
    (Finset.mem_union.mp hyPivots).resolve_left hyNotLeft
  have hxLeft : x ∈ selection.leftPair :=
    (Finset.mem_union.mp hxPivots).resolve_right hxNotRight
  have hxCell := (Finset.mem_filter.mp
    (selection.mem_leftPair_cell hxLeft)).2
  have hyCell := (Finset.mem_filter.mp
    (selection.mem_rightPair_cell hyRight)).2
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

lemma triple_contains_left_or_right_pair {N B left right}
    (selection : FiveMillionR263EvenOnePairSelection N B left right)
    {triple : Finset Nat}
    (htriple : triple ∈ selection.pivots.powersetCard 3) :
    selection.leftPair ⊆ triple ∨ selection.rightPair ⊆ triple := by
  have hparts := Finset.mem_powersetCard.mp htriple
  exact selection.pair_subset_or_pair_subset_of_triple hparts.1 hparts.2

lemma leftGoodTriples_card {N B left right}
    (selection : FiveMillionR263EvenOnePairSelection N B left right) :
    ((selection.pivots.powersetCard 3).filter
        (selection.leftPair ⊆ ·)).card = 2 := by
  rw [Finset.card_filter_powersetCard_subset
    selection.leftPair selection.pivots 3
      selection.leftPair_subset_pivots (by
        rw [selection.leftPair_card]; norm_num)]
  rw [selection.pivots_card, selection.leftPair_card]
  norm_num

lemma triple_count {N B left right}
    (selection : FiveMillionR263EvenOnePairSelection N B left right) :
    (selection.pivots.powersetCard 3).card = 4 := by
  simp [Finset.card_powersetCard, selection.pivots_card]

end FiveMillionR263EvenOnePairSelection

private theorem e1FourPivotTriple_ratio_le_good_of_pair
    [E1Finite23SharpCertificate]
    {N : Nat} {B : Finset Nat} {left right : Fin 9}
    (hLower : 5_000_000 <= N)
    (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (selection : FiveMillionR263EvenOnePairSelection N B left right)
    {triple : Finset Nat}
    (htriple : triple ∈ selection.pivots.powersetCard 3)
    (hpair : selection.leftPair ⊆ triple)
    (h49 : selection.x0 % 49 ≠ selection.x1 % 49)
    (h121 : selection.x0 % 121 ≠ selection.x1 % 121) :
    ((eventIntersection (hallBasePart N B)
        (finiteSquarePrimeEvent 23) triple).card : Rat) / N <=
      2 * e1FiniteSharpFourTargetRat .good := by
  have hparts := Finset.mem_powersetCard.mp htriple
  have hx0 : selection.x0 ∈ triple := hpair (by simp [FiveMillionR263EvenOnePairSelection.leftPair])
  have hx1 : selection.x1 ∈ triple := hpair (by simp [FiveMillionR263EvenOnePairSelection.leftPair])
  apply e1FiniteSharpHallBaseTripleIntersection_ratio_le_good
    hLower hUpper hBout
      (hparts.1.trans selection.pivots_subset_part) hparts.2
  · exact selection.triple_not_common_three hparts.1 hparts.2
  · exact e1FiniteTripleCommonAt_false_of_two_mem
      hparts.2 hx0 hx1 (index := 1) (by
        simpa [e1FiniteModulus] using h49)
  · exact e1FiniteTripleCommonAt_false_of_two_mem
      hparts.2 hx0 hx1 (index := 2) (by
        simpa [e1FiniteModulus] using h121)

private theorem e1FourPivotTriple_ratio_le_worst
    [E1Finite23SharpCertificate]
    {N : Nat} {B : Finset Nat} {left right : Fin 9}
    (hLower : 5_000_000 <= N)
    (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (selection : FiveMillionR263EvenOnePairSelection N B left right)
    {triple : Finset Nat}
    (htriple : triple ∈ selection.pivots.powersetCard 3) :
    ((eventIntersection (hallBasePart N B)
        (finiteSquarePrimeEvent 23) triple).card : Rat) / N <=
      2 * e1FiniteSharpFourTargetRat .both := by
  have hparts := Finset.mem_powersetCard.mp htriple
  exact e1FiniteSharpHallBaseTripleIntersection_ratio_le_worst
    hLower hUpper hBout
      (hparts.1.trans selection.pivots_subset_part) hparts.2
      (selection.triple_not_common_three hparts.1 hparts.2)

theorem fiveMillionR263EvenOneFourPivotFinite_ratio_le_twoGood
    [E1Finite23SharpCertificate]
    {N : Nat} {B : Finset Nat} {left right : Fin 9}
    (hLower : 5_000_000 <= N)
    (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (selection : FiveMillionR263EvenOnePairSelection N B left right)
    (hx49 : selection.x0 % 49 ≠ selection.x1 % 49)
    (hx121 : selection.x0 % 121 ≠ selection.x1 % 121)
    (hy49 : selection.y0 % 49 ≠ selection.y1 % 49)
    (hy121 : selection.y0 % 121 ≠ selection.y1 % 121) :
    fiveMillionR263BaseFiniteTriplePayment
        N B selection.pivots 23 / N <=
      4 * e1FiniteSharpFourTargetRat .good := by
  let triples := selection.pivots.powersetCard 3
  have hper : ∀ triple ∈ triples,
      ((eventIntersection (hallBasePart N B)
        (finiteSquarePrimeEvent 23) triple).card : Rat) / N <=
          2 * e1FiniteSharpFourTargetRat .good := by
    intro triple htriple
    rcases selection.triple_contains_left_or_right_pair htriple with
        hleft | hright
    · exact e1FourPivotTriple_ratio_le_good_of_pair
        hLower hUpper hBout selection htriple hleft hx49 hx121
    · let swapped :
          FiveMillionR263EvenOnePairSelection N B right left :=
        { x0 := selection.y0, x1 := selection.y1
          y0 := selection.x0, y1 := selection.x1
          x0Cell := selection.y0Cell, x1Cell := selection.y1Cell
          y0Cell := selection.x0Cell, y1Cell := selection.x1Cell
          x0_ne_x1 := selection.y0_ne_y1
          y0_ne_y1 := selection.x0_ne_x1
          left_ne_right := selection.left_ne_right.symm }
      have hpivots : swapped.pivots = selection.pivots := by
        simp [swapped, FiveMillionR263EvenOnePairSelection.pivots,
          FiveMillionR263EvenOnePairSelection.leftPair,
          FiveMillionR263EvenOnePairSelection.rightPair,
          Finset.union_comm]
      have htriple' : triple ∈ swapped.pivots.powersetCard 3 := by
        simpa [triples, hpivots] using htriple
      have hpair' : swapped.leftPair ⊆ triple := by
        simpa [swapped, FiveMillionR263EvenOnePairSelection.leftPair] using hright
      simpa [hpivots] using e1FourPivotTriple_ratio_le_good_of_pair
        hLower hUpper hBout swapped htriple' hpair' hy49 hy121
  have hsum := Finset.sum_le_sum fun triple htriple => hper triple htriple
  have hcount : triples.card = 4 := selection.triple_count
  unfold fiveMillionR263BaseFiniteTriplePayment
  calc
    ((1 / 2 : Rat) *
        (∑ triple ∈ selection.pivots.powersetCard 3,
          ((eventIntersection (hallBasePart N B)
            (finiteSquarePrimeEvent 23) triple).card : Rat))) / N =
        (1 / 2 : Rat) *
          (∑ triple ∈ triples,
            ((eventIntersection (hallBasePart N B)
              (finiteSquarePrimeEvent 23) triple).card : Rat) / N) := by
      simp only [triples, div_eq_mul_inv]
      rw [← Finset.sum_mul]
      ring

    _ <= (1 / 2 : Rat) *
        (∑ _triple ∈ triples,
          2 * e1FiniteSharpFourTargetRat .good) := by
      gcongr
    _ = 4 * e1FiniteSharpFourTargetRat .good := by
      simp [hcount]
      ring

theorem fiveMillionR263EvenOneFourPivotFinite_ratio_le_oneGood
    [E1Finite23SharpCertificate]
    {N : Nat} {B : Finset Nat} {left right : Fin 9}
    (hLower : 5_000_000 <= N)
    (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (selection : FiveMillionR263EvenOnePairSelection N B left right)
    (hx49 : selection.x0 % 49 ≠ selection.x1 % 49)
    (hx121 : selection.x0 % 121 ≠ selection.x1 % 121) :
    fiveMillionR263BaseFiniteTriplePayment
        N B selection.pivots 23 / N <=
      2 * e1FiniteSharpFourTargetRat .good +
        2 * e1FiniteSharpFourTargetRat .both := by
  let triples := selection.pivots.powersetCard 3
  let isGood : Finset Nat → Prop := fun triple =>
    selection.leftPair ⊆ triple
  have hgoodCard : (triples.filter isGood).card = 2 := by
    simpa [triples, isGood] using selection.leftGoodTriples_card
  have hbadCard : (triples.filter fun triple => ¬ isGood triple).card = 2 := by
    have hpartition := Finset.card_filter_add_card_filter_not
      (s := triples) isGood
    rw [hgoodCard, selection.triple_count] at hpartition
    omega
  have hgoodSum :
      (∑ triple ∈ triples.filter isGood,
        ((eventIntersection (hallBasePart N B)
          (finiteSquarePrimeEvent 23) triple).card : Rat) / N) <=
        ∑ _triple ∈ triples.filter isGood,
          2 * e1FiniteSharpFourTargetRat .good := by
    apply Finset.sum_le_sum
    intro triple htriple
    have hparts := Finset.mem_filter.mp htriple
    exact e1FourPivotTriple_ratio_le_good_of_pair
      hLower hUpper hBout selection hparts.1 hparts.2 hx49 hx121
  have hbadSum :
      (∑ triple ∈ triples.filter (fun triple => ¬ isGood triple),
        ((eventIntersection (hallBasePart N B)
          (finiteSquarePrimeEvent 23) triple).card : Rat) / N) <=
        ∑ _triple ∈ triples.filter (fun triple => ¬ isGood triple),
          2 * e1FiniteSharpFourTargetRat .both := by
    apply Finset.sum_le_sum
    intro triple htriple
    exact e1FourPivotTriple_ratio_le_worst
      hLower hUpper hBout selection (Finset.mem_filter.mp htriple).1
  have hsplit :
      (∑ triple ∈ triples,
        ((eventIntersection (hallBasePart N B)
          (finiteSquarePrimeEvent 23) triple).card : Rat) / N) =
        (∑ triple ∈ triples.filter isGood,
          ((eventIntersection (hallBasePart N B)
            (finiteSquarePrimeEvent 23) triple).card : Rat) / N) +
        (∑ triple ∈ triples.filter (fun triple => ¬ isGood triple),
          ((eventIntersection (hallBasePart N B)
            (finiteSquarePrimeEvent 23) triple).card : Rat) / N) := by
    exact (Finset.sum_filter_add_sum_filter_not triples isGood _).symm
  unfold fiveMillionR263BaseFiniteTriplePayment
  calc
    ((1 / 2 : Rat) *
        (∑ triple ∈ selection.pivots.powersetCard 3,
          ((eventIntersection (hallBasePart N B)
            (finiteSquarePrimeEvent 23) triple).card : Rat))) / N =
        (1 / 2 : Rat) *
          (∑ triple ∈ triples,
            ((eventIntersection (hallBasePart N B)
              (finiteSquarePrimeEvent 23) triple).card : Rat) / N) := by
      simp only [triples, div_eq_mul_inv]
      rw [← Finset.sum_mul]
      ring

    _ = (1 / 2 : Rat) *
        ((∑ triple ∈ triples.filter isGood,
          ((eventIntersection (hallBasePart N B)
            (finiteSquarePrimeEvent 23) triple).card : Rat) / N) +
        (∑ triple ∈ triples.filter (fun triple => ¬ isGood triple),
          ((eventIntersection (hallBasePart N B)
            (finiteSquarePrimeEvent 23) triple).card : Rat) / N)) := by
      rw [hsplit]
    _ <= (1 / 2 : Rat) *
        ((∑ _triple ∈ triples.filter isGood,
            2 * e1FiniteSharpFourTargetRat .good) +
          (∑ _triple ∈ triples.filter (fun triple => ¬ isGood triple),
            2 * e1FiniteSharpFourTargetRat .both)) := by
      gcongr
    _ = 2 * e1FiniteSharpFourTargetRat .good +
        2 * e1FiniteSharpFourTargetRat .both := by
      simp [hgoodCard, hbadCard]
      ring

theorem fiveMillionR263EvenOneFourPivotFinite_ratio_le_worst
    [E1Finite23SharpCertificate]
    {N : Nat} {B : Finset Nat} {left right : Fin 9}
    (hLower : 5_000_000 <= N)
    (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (selection : FiveMillionR263EvenOnePairSelection N B left right) :
    fiveMillionR263BaseFiniteTriplePayment
        N B selection.pivots 23 / N <=
      4 * e1FiniteSharpFourTargetRat .both := by
  let triples := selection.pivots.powersetCard 3
  have hper : ∀ triple ∈ triples,
      ((eventIntersection (hallBasePart N B)
        (finiteSquarePrimeEvent 23) triple).card : Rat) / N <=
          2 * e1FiniteSharpFourTargetRat .both :=
    fun triple htriple =>
      e1FourPivotTriple_ratio_le_worst
        hLower hUpper hBout selection htriple
  have hsum := Finset.sum_le_sum fun triple htriple => hper triple htriple
  have hcount : triples.card = 4 := selection.triple_count
  unfold fiveMillionR263BaseFiniteTriplePayment
  calc
    ((1 / 2 : Rat) *
        (∑ triple ∈ selection.pivots.powersetCard 3,
          ((eventIntersection (hallBasePart N B)
            (finiteSquarePrimeEvent 23) triple).card : Rat))) / N =
        (1 / 2 : Rat) *
          (∑ triple ∈ triples,
            ((eventIntersection (hallBasePart N B)
              (finiteSquarePrimeEvent 23) triple).card : Rat) / N) := by
      simp only [triples, div_eq_mul_inv]
      rw [← Finset.sum_mul]
      ring

    _ <= (1 / 2 : Rat) *
        (∑ _triple ∈ triples,
          2 * e1FiniteSharpFourTargetRat .both) := by
      gcongr
    _ = 4 * e1FiniteSharpFourTargetRat .both := by
      simp [hcount]
      ring

#print axioms fiveMillionR263EvenOneFourPivotFinite_ratio_le_twoGood
#print axioms fiveMillionR263EvenOneFourPivotFinite_ratio_le_oneGood
#print axioms fiveMillionR263EvenOneFourPivotFinite_ratio_le_worst

end Erdos848
