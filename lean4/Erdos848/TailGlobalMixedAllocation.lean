import Erdos848.TailFiveMillionActiveCells
import Erdos848.TailGlobalMixedValuationPartition

namespace Erdos848

/-!
# Literal valuation allocation for the fixed five-million tail

The mixed proof partitions the actual off-base Hall residual into the three
even `2`-adic strata and the two odd classes modulo four.  This file makes
that partition literal.  No density estimate, numerical row, or branch-close
premise is introduced here: every set below is a filter of `hallResidual`.
-/

/-- The five valuation/parity classes used by the mixed Hall allocation. -/
/- Moved to `TailGlobalMixedValuationPartition`.
inductive FiveMillionValuationClass where
  | evenOne
  | evenTwo
  | evenThree
  | oddOne
  | oddThree
  deriving DecidableEq, Fintype

/-- Classify by the residue modulo eight.  The three even cases are exactly
`v₂ = 1`, `v₂ = 2`, and `v₂ ≥ 3`; the two odd cases are `1,3 mod 4`. -/
def fiveMillionValuationClassOf (x : ℕ) : FiveMillionValuationClass :=
  match x % 8 with
  | 0 => .evenThree
  | 1 => .oddOne
  | 2 => .evenOne
  | 3 => .oddThree
  | 4 => .evenTwo
  | 5 => .oddOne
  | 6 => .evenOne
  | _ => .oddThree

/-- The literal part of the actual Hall residual in one valuation class. -/
def fiveMillionValuationPart
    (N : ℕ) (B : Finset ℕ) (cls : FiveMillionValuationClass) : Finset ℕ :=
  (hallResidual N B).filter fun x => fiveMillionValuationClassOf x = cls

lemma fiveMillionValuationPart_subset_residual
    (N : ℕ) (B : Finset ℕ) (cls : FiveMillionValuationClass) :
    fiveMillionValuationPart N B cls ⊆ hallResidual N B :=
  Finset.filter_subset _ _

@[simp] lemma mem_fiveMillionValuationPart
    {N x : ℕ} {B : Finset ℕ} {cls : FiveMillionValuationClass} :
    x ∈ fiveMillionValuationPart N B cls ↔
      x ∈ hallResidual N B ∧ fiveMillionValuationClassOf x = cls := by
  simp [fiveMillionValuationPart]

lemma fiveMillionValuationClassOf_evenOne
    {x : ℕ} (h : fiveMillionValuationClassOf x = .evenOne) :
    x % 4 = 2 := by
  have hrange : x % 8 < 8 := Nat.mod_lt x (by norm_num)
  interval_cases hmod : x % 8 <;>
    simp [fiveMillionValuationClassOf, hmod] at h <;> omega

lemma fiveMillionValuationClassOf_evenTwo
    {x : ℕ} (h : fiveMillionValuationClassOf x = .evenTwo) :
    x % 8 = 4 := by
  have hrange : x % 8 < 8 := Nat.mod_lt x (by norm_num)
  interval_cases hmod : x % 8 <;>
    simp [fiveMillionValuationClassOf, hmod] at h <;> omega

lemma fiveMillionValuationClassOf_evenThree
    {x : ℕ} (h : fiveMillionValuationClassOf x = .evenThree) :
    x % 8 = 0 := by
  have hrange : x % 8 < 8 := Nat.mod_lt x (by norm_num)
  interval_cases hmod : x % 8 <;>
    simp [fiveMillionValuationClassOf, hmod] at h <;> omega

lemma fiveMillionValuationClassOf_oddOne
    {x : ℕ} (h : fiveMillionValuationClassOf x = .oddOne) :
    x % 4 = 1 := by
  have hrange : x % 8 < 8 := Nat.mod_lt x (by norm_num)
  interval_cases hmod : x % 8 <;>
    simp [fiveMillionValuationClassOf, hmod] at h <;> omega

lemma fiveMillionValuationClassOf_oddThree
    {x : ℕ} (h : fiveMillionValuationClassOf x = .oddThree) :
    x % 4 = 3 := by
  have hrange : x % 8 < 8 := Nat.mod_lt x (by norm_num)
  interval_cases hmod : x % 8 <;>
    simp [fiveMillionValuationClassOf, hmod] at h <;> omega

lemma fiveMillionValuationPart_evenOne
    {N x : ℕ} {B : Finset ℕ}
    (hx : x ∈ fiveMillionValuationPart N B .evenOne) :
    x % 4 = 2 :=
  fiveMillionValuationClassOf_evenOne (mem_fiveMillionValuationPart.mp hx).2

lemma fiveMillionValuationPart_evenTwo
    {N x : ℕ} {B : Finset ℕ}
    (hx : x ∈ fiveMillionValuationPart N B .evenTwo) :
    x % 8 = 4 :=
  fiveMillionValuationClassOf_evenTwo (mem_fiveMillionValuationPart.mp hx).2

lemma fiveMillionValuationPart_evenThree
    {N x : ℕ} {B : Finset ℕ}
    (hx : x ∈ fiveMillionValuationPart N B .evenThree) :
    x % 8 = 0 :=
  fiveMillionValuationClassOf_evenThree (mem_fiveMillionValuationPart.mp hx).2

lemma fiveMillionValuationPart_oddOne
    {N x : ℕ} {B : Finset ℕ}
    (hx : x ∈ fiveMillionValuationPart N B .oddOne) :
    x % 4 = 1 :=
  fiveMillionValuationClassOf_oddOne (mem_fiveMillionValuationPart.mp hx).2

lemma fiveMillionValuationPart_oddThree
    {N x : ℕ} {B : Finset ℕ}
    (hx : x ∈ fiveMillionValuationPart N B .oddThree) :
    x % 4 = 3 :=
  fiveMillionValuationClassOf_oddThree (mem_fiveMillionValuationPart.mp hx).2

/-- Different valuation parts are disjoint by construction. -/
lemma fiveMillionValuationPart_disjoint
    (N : ℕ) (B : Finset ℕ)
    {left right : FiveMillionValuationClass} (hne : left ≠ right) :
    Disjoint (fiveMillionValuationPart N B left)
      (fiveMillionValuationPart N B right) := by
  rw [Finset.disjoint_left]
  intro x hxLeft hxRight
  have hleft := (mem_fiveMillionValuationPart.mp hxLeft).2
  have hright := (mem_fiveMillionValuationPart.mp hxRight).2
  exact hne (hleft.symm.trans hright)

/-- The five literal parts cover the whole actual Hall residual. -/
theorem fiveMillionValuationParts_cover
    (N : ℕ) (B : Finset ℕ) :
    Finset.univ.biUnion (fiveMillionValuationPart N B) = hallResidual N B := by
  ext x
  simp [fiveMillionValuationPart]

/-- Exact cardinality decomposition of the actual Hall residual. -/
theorem fiveMillionValuationParts_card_sum
    (N : ℕ) (B : Finset ℕ) :
    ∑ cls : FiveMillionValuationClass,
        (fiveMillionValuationPart N B cls).card =
      (hallResidual N B).card := by
  classical
  rw [← fiveMillionValuationParts_cover N B]
  rw [Finset.card_biUnion]
  intro left hleft right hright hne
  exact fiveMillionValuationPart_disjoint N B hne

/-- Quantitative pigeonhole form of the five-way allocation.  Any residual
larger than five copies of `bound` has a genuine valuation part larger than
`bound`; the selected part is an actual filtered subset, not an abstract row
label. -/
theorem exists_fiveMillionValuationPart_card_gt
    {N bound : ℕ} {B : Finset ℕ}
    (hlarge : 5 * bound < (hallResidual N B).card) :
    ∃ cls : FiveMillionValuationClass,
      bound < (fiveMillionValuationPart N B cls).card := by
  classical
  by_contra hnone
  push Not at hnone
  have hsum :
      ∑ cls : FiveMillionValuationClass,
          (fiveMillionValuationPart N B cls).card ≤
        ∑ _cls : FiveMillionValuationClass, bound := by
    exact Finset.sum_le_sum fun cls _ => hnone cls
  rw [fiveMillionValuationParts_card_sum] at hsum
  norm_num [FiveMillionValuationClass] at hsum
  have hcardClasses : Fintype.card FiveMillionValuationClass = 5 := by decide
  rw [hcardClasses] at hsum
  omega

-/

/-! ## Charging earlier valuation branches without losing the active cells -/

/-- A mod-nine cell inside the residual left after an arbitrary literal raw
charge. -/
def fiveMillionChargedResidualModNineCell
    (N : ℕ) (B charged : Finset ℕ) (cell : Fin 9) : Finset ℕ :=
  (fiveMillionStructuredResidual N B charged).filter fun x =>
    oddModNineResidue x = cell

/-- Cells containing at least six still-uncharged residual points. -/
def fiveMillionActiveModNineCellsAfterCharge
    (N : ℕ) (B charged : Finset ℕ) : Finset (Fin 9) :=
  Finset.univ.filter fun cell =>
    6 ≤ (fiveMillionChargedResidualModNineCell N B charged cell).card

/-- The remaining sparse cells, charged only after earlier valuation classes
have been removed. -/
def fiveMillionSparseCellChargeAfter
    (N : ℕ) (B charged : Finset ℕ) : Finset ℕ :=
  (fiveMillionStructuredResidual N B charged).filter fun x =>
    oddModNineResidue x ∉
      fiveMillionActiveModNineCellsAfterCharge N B charged

/-- The literal union of the earlier valuation charge and the later sparse
cell charge. -/
def fiveMillionTotalOddCharge
    (N : ℕ) (B charged : Finset ℕ) : Finset ℕ :=
  charged ∪ fiveMillionSparseCellChargeAfter N B charged

lemma fiveMillionSparseCellChargeAfter_subset_structured
    (N : ℕ) (B charged : Finset ℕ) :
    fiveMillionSparseCellChargeAfter N B charged ⊆
      fiveMillionStructuredResidual N B charged :=
  Finset.filter_subset _ _

lemma fiveMillionInactiveModNineCellAfter_card_le_five
    {N : ℕ} {B charged : Finset ℕ} {cell : Fin 9}
    (hcell : cell ∈ Finset.univ \
      fiveMillionActiveModNineCellsAfterCharge N B charged) :
    (fiveMillionChargedResidualModNineCell N B charged cell).card ≤ 5 := by
  have hnotActive := (Finset.mem_sdiff.mp hcell).2
  have hnotSix : ¬ 6 ≤
      (fiveMillionChargedResidualModNineCell N B charged cell).card := by
    intro hsix
    exact hnotActive (Finset.mem_filter.mpr ⟨Finset.mem_univ _, hsix⟩)
  omega

theorem fiveMillionSparseCellChargeAfter_card_le_fortyFive
    (N : ℕ) (B charged : Finset ℕ) :
    (fiveMillionSparseCellChargeAfter N B charged).card ≤ 45 := by
  let inactive := Finset.univ \
    fiveMillionActiveModNineCellsAfterCharge N B charged
  have hsubset : fiveMillionSparseCellChargeAfter N B charged ⊆
      inactive.biUnion
        (fiveMillionChargedResidualModNineCell N B charged) := by
    intro x hx
    have hxParts := Finset.mem_filter.mp hx
    apply Finset.mem_biUnion.mpr
    refine ⟨oddModNineResidue x, ?_, ?_⟩
    · exact Finset.mem_sdiff.mpr ⟨Finset.mem_univ _, hxParts.2⟩
    · exact Finset.mem_filter.mpr ⟨hxParts.1, rfl⟩
  calc
    (fiveMillionSparseCellChargeAfter N B charged).card ≤
        (inactive.biUnion
          (fiveMillionChargedResidualModNineCell N B charged)).card :=
      Finset.card_le_card hsubset
    _ ≤ ∑ cell ∈ inactive,
        (fiveMillionChargedResidualModNineCell N B charged cell).card := by
      simpa using Finset.card_biUnion_le
        (s := inactive)
        (t := fiveMillionChargedResidualModNineCell N B charged)
    _ ≤ ∑ _cell ∈ inactive, 5 := by
      apply Finset.sum_le_sum
      intro cell hcell
      exact fiveMillionInactiveModNineCellAfter_card_le_five hcell
    _ = inactive.card * 5 := by simp
    _ ≤ 9 * 5 := by
      gcongr
      exact Finset.card_le_univ inactive
    _ = 45 := by norm_num

lemma fiveMillionTotalOddCharge_subset_residual
    {N : ℕ} {B charged : Finset ℕ}
    (hcharged : charged ⊆ hallResidual N B) :
    fiveMillionTotalOddCharge N B charged ⊆ hallResidual N B := by
  intro x hx
  rcases Finset.mem_union.mp hx with hxCharged | hxSparse
  · exact hcharged hxCharged
  · exact (Finset.mem_sdiff.mp
      (fiveMillionSparseCellChargeAfter_subset_structured N B charged
        hxSparse)).1

lemma fiveMillionTotalOddCharge_card_le_128
    {N : ℕ} {B charged : Finset ℕ}
    (hchargedCard : charged.card ≤ 83) :
    (fiveMillionTotalOddCharge N B charged).card ≤ 128 := by
  have hsparse := fiveMillionSparseCellChargeAfter_card_le_fortyFive
    N B charged
  calc
    (fiveMillionTotalOddCharge N B charged).card ≤
        charged.card +
          (fiveMillionSparseCellChargeAfter N B charged).card := by
      simpa [fiveMillionTotalOddCharge] using
        Finset.card_union_le charged
          (fiveMillionSparseCellChargeAfter N B charged)
    _ ≤ 83 + 45 := by
      omega
    _ = 128 := by norm_num

lemma fiveMillionActiveCellAfter_has_finalStructuredPoint
    {N : ℕ} {B charged : Finset ℕ} {cell : Fin 9}
    (hcell : cell ∈
      fiveMillionActiveModNineCellsAfterCharge N B charged) :
    ∃ x ∈ fiveMillionStructuredResidual N B
        (fiveMillionTotalOddCharge N B charged),
      oddModNineResidue x = cell := by
  have hcellParts := Finset.mem_filter.mp hcell
  have hnonempty :
      (fiveMillionChargedResidualModNineCell N B charged cell).Nonempty :=
    Finset.card_pos.mp (lt_of_lt_of_le (by norm_num) hcellParts.2)
  obtain ⟨x, hx⟩ := hnonempty
  have hxParts := Finset.mem_filter.mp hx
  refine ⟨x, ?_, hxParts.2⟩
  apply Finset.mem_sdiff.mpr
  refine ⟨(Finset.mem_sdiff.mp hxParts.1).1, ?_⟩
  intro hxTotal
  rcases Finset.mem_union.mp hxTotal with hxCharged | hxSparse
  · exact (Finset.mem_sdiff.mp hxParts.1).2 hxCharged
  · have hxSparseParts := Finset.mem_filter.mp hxSparse
    exact hxSparseParts.2 (by simpa [hxParts.2] using hcell)

lemma fiveMillionFinalStructured_mem_activeCellAfter
    {N x : ℕ} {B charged : Finset ℕ}
    (hx : x ∈ fiveMillionStructuredResidual N B
      (fiveMillionTotalOddCharge N B charged)) :
    oddModNineResidue x ∈
      fiveMillionActiveModNineCellsAfterCharge N B charged := by
  have hxParts := Finset.mem_sdiff.mp hx
  have hxNotTotal := hxParts.2
  have hxNotCharged : x ∉ charged := by
    intro hxCharged
    exact hxNotTotal (Finset.mem_union_left _ hxCharged)
  have hxBase : x ∈ fiveMillionStructuredResidual N B charged :=
    Finset.mem_sdiff.mpr ⟨hxParts.1, hxNotCharged⟩
  by_contra hnotActive
  apply hxNotTotal
  apply Finset.mem_union_right
  exact Finset.mem_filter.mpr ⟨hxBase, hnotActive⟩

/-- The controlling odd `s=6,7` row after any earlier valuation charge of at
most `83` actual residual points.  Adding the at-most-45 sparse-cell charge
stays within the paper's literal allowance `128`. -/
theorem fiveMillionPivotSieveWitness_of_chargedOneOddSixSevenActiveCells
    {N : ℕ} {B charged : Finset ℕ}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hcharged : charged ⊆ hallResidual N B)
    (hchargedCard : charged.card ≤ 83)
    (parity : Bool)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (hcellsLower : 6 ≤
      (fiveMillionActiveModNineCellsAfterCharge N B charged).card)
    (hcellsUpper :
      (fiveMillionActiveModNineCellsAfterCharge N B charged).card ≤ 7) :
    FiveMillionPivotSieveWitness N B := by
  apply fiveMillionPivotSieveWitness_of_oneOddActiveCells
    hLower hUpper hBout hBprop parity
      (fiveMillionActiveModNineCellsAfterCharge N B charged)
  · exact fiveMillionTotalOddCharge_subset_residual hcharged
  · exact fiveMillionTotalOddCharge_card_le_128 hchargedCard
  · exact hcellsLower
  · exact hcellsUpper
  · intro cell hcell
    exact fiveMillionActiveCellAfter_has_finalStructuredPoint hcell
  · intro x hx
    apply hclass x
    have hxParts := Finset.mem_sdiff.mp hx
    have hxNotCharged : x ∉ charged := by
      intro hxCharged
      exact hxParts.2 (Finset.mem_union_left _ hxCharged)
    exact Finset.mem_sdiff.mpr ⟨hxParts.1, hxNotCharged⟩
  · intro x hx
    exact fiveMillionFinalStructured_mem_activeCellAfter hx

/-- Everything outside one literal valuation part.  This is the exact raw
charge used when an odd class is the surviving terminal branch. -/
def fiveMillionOutsideValuationCharge
    (N : ℕ) (B : Finset ℕ) (cls : FiveMillionValuationClass) : Finset ℕ :=
  hallResidual N B \ fiveMillionValuationPart N B cls

lemma fiveMillionOutsideValuationCharge_subset_residual
    (N : ℕ) (B : Finset ℕ) (cls : FiveMillionValuationClass) :
    fiveMillionOutsideValuationCharge N B cls ⊆ hallResidual N B :=
  Finset.sdiff_subset

lemma fiveMillionStructuredResidual_outsideValuationCharge
    (N : ℕ) (B : Finset ℕ) (cls : FiveMillionValuationClass) :
    fiveMillionStructuredResidual N B
        (fiveMillionOutsideValuationCharge N B cls) =
      fiveMillionValuationPart N B cls := by
  ext x
  simp [fiveMillionStructuredResidual, fiveMillionOutsideValuationCharge,
    fiveMillionValuationPart]

/-- Direct adapter from the actual `1 mod 4` valuation part to the already
kernelized controlling odd-cell row. -/
theorem fiveMillionPivotSieveWitness_of_oddOneValuationPart
    {N : ℕ} {B : Finset ℕ}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (houtside :
      (fiveMillionOutsideValuationCharge N B .oddOne).card ≤ 83)
    (hcellsLower : 6 ≤
      (fiveMillionActiveModNineCellsAfterCharge N B
        (fiveMillionOutsideValuationCharge N B .oddOne)).card)
    (hcellsUpper :
      (fiveMillionActiveModNineCellsAfterCharge N B
        (fiveMillionOutsideValuationCharge N B .oddOne)).card ≤ 7) :
    FiveMillionPivotSieveWitness N B := by
  apply fiveMillionPivotSieveWitness_of_chargedOneOddSixSevenActiveCells
    hLower hUpper hBout hBprop
      (fiveMillionOutsideValuationCharge_subset_residual N B .oddOne)
      houtside false
  · intro x hx
    rw [fiveMillionStructuredResidual_outsideValuationCharge] at hx
    simpa using fiveMillionValuationPart_oddOne hx
  · exact hcellsLower
  · exact hcellsUpper

/-- Direct adapter from the actual `3 mod 4` valuation part to the already
kernelized controlling odd-cell row. -/
theorem fiveMillionPivotSieveWitness_of_oddThreeValuationPart
    {N : ℕ} {B : Finset ℕ}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (houtside :
      (fiveMillionOutsideValuationCharge N B .oddThree).card ≤ 83)
    (hcellsLower : 6 ≤
      (fiveMillionActiveModNineCellsAfterCharge N B
        (fiveMillionOutsideValuationCharge N B .oddThree)).card)
    (hcellsUpper :
      (fiveMillionActiveModNineCellsAfterCharge N B
        (fiveMillionOutsideValuationCharge N B .oddThree)).card ≤ 7) :
    FiveMillionPivotSieveWitness N B := by
  apply fiveMillionPivotSieveWitness_of_chargedOneOddSixSevenActiveCells
    hLower hUpper hBout hBprop
      (fiveMillionOutsideValuationCharge_subset_residual N B .oddThree)
      houtside true
  · intro x hx
    rw [fiveMillionStructuredResidual_outsideValuationCharge] at hx
    simpa using fiveMillionValuationPart_oddThree hx
  · exact hcellsLower
  · exact hcellsUpper

#print axioms fiveMillionValuationParts_cover
#print axioms fiveMillionValuationParts_card_sum
#print axioms exists_fiveMillionValuationPart_card_gt
#print axioms fiveMillionSparseCellChargeAfter_card_le_fortyFive
#print axioms fiveMillionPivotSieveWitness_of_chargedOneOddSixSevenActiveCells
#print axioms fiveMillionPivotSieveWitness_of_oddOneValuationPart
#print axioms fiveMillionPivotSieveWitness_of_oddThreeValuationPart

end Erdos848
