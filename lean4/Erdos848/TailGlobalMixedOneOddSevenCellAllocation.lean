import Erdos848.TailFiveMillionEightNineCellGenerated
import Erdos848.TailGlobalMixedOneOddTwoCell
import Erdos848.TailGlobalMixedOneOddThreeCell
import Erdos848.TailGlobalMixedOneOddFourCell
import Erdos848.TailGlobalMixedOneOddFiveCell
import Erdos848.TailGlobalMixedOneOddOneCell
import Erdos848.TailGlobalMixedValuationPartition

namespace Erdos848

/-!
# Literal allocation producer for the controlling R263 branch

The earlier branches may charge at most 83 actual residual points.  Sparse
mod-nine cells in the surviving odd class cost at most another 45 points.
What remains is supported on six or seven active cells and therefore feeds the
generated diagonal producer without any quantitative premise.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def fiveMillionR263ChargedResidualModNineCell
    (N : Nat) (B charged : Finset Nat) (cell : Fin 9) : Finset Nat :=
  (fiveMillionStructuredResidual N B charged).filter fun x =>
    oddModNineResidue x = cell

def fiveMillionR263ActiveModNineCellsAfterCharge
    (N : Nat) (B charged : Finset Nat) : Finset (Fin 9) :=
  Finset.univ.filter fun cell =>
    6 ≤ (fiveMillionR263ChargedResidualModNineCell N B charged cell).card

def fiveMillionR263SparseCellChargeAfter
    (N : Nat) (B charged : Finset Nat) : Finset Nat :=
  (fiveMillionStructuredResidual N B charged).filter fun x =>
    oddModNineResidue x ∉
      fiveMillionR263ActiveModNineCellsAfterCharge N B charged

def fiveMillionR263TotalOddCharge
    (N : Nat) (B charged : Finset Nat) : Finset Nat :=
  charged ∪ fiveMillionR263SparseCellChargeAfter N B charged

lemma fiveMillionR263SparseCellChargeAfter_subset_structured
    (N : Nat) (B charged : Finset Nat) :
    fiveMillionR263SparseCellChargeAfter N B charged ⊆
      fiveMillionStructuredResidual N B charged :=
  Finset.filter_subset _ _

lemma fiveMillionR263InactiveModNineCellAfter_card_le_five
    {N : Nat} {B charged : Finset Nat} {cell : Fin 9}
    (hcell : cell ∈ Finset.univ \
      fiveMillionR263ActiveModNineCellsAfterCharge N B charged) :
    (fiveMillionR263ChargedResidualModNineCell N B charged cell).card ≤ 5 := by
  have hnotActive := (Finset.mem_sdiff.mp hcell).2
  have hnotSix : ¬ 6 ≤
      (fiveMillionR263ChargedResidualModNineCell N B charged cell).card := by
    intro hsix
    exact hnotActive (Finset.mem_filter.mpr ⟨Finset.mem_univ _, hsix⟩)
  omega

theorem fiveMillionR263SparseCellChargeAfter_card_le_fortyFive
    (N : Nat) (B charged : Finset Nat) :
    (fiveMillionR263SparseCellChargeAfter N B charged).card ≤ 45 := by
  let inactive := Finset.univ \
    fiveMillionR263ActiveModNineCellsAfterCharge N B charged
  have hsubset : fiveMillionR263SparseCellChargeAfter N B charged ⊆
      inactive.biUnion
        (fiveMillionR263ChargedResidualModNineCell N B charged) := by
    intro x hx
    have hxParts := Finset.mem_filter.mp hx
    apply Finset.mem_biUnion.mpr
    refine ⟨oddModNineResidue x, ?_, ?_⟩
    · exact Finset.mem_sdiff.mpr ⟨Finset.mem_univ _, hxParts.2⟩
    · exact Finset.mem_filter.mpr ⟨hxParts.1, rfl⟩
  calc
    (fiveMillionR263SparseCellChargeAfter N B charged).card ≤
        (inactive.biUnion
          (fiveMillionR263ChargedResidualModNineCell N B charged)).card :=
      Finset.card_le_card hsubset
    _ ≤ ∑ cell ∈ inactive,
        (fiveMillionR263ChargedResidualModNineCell N B charged cell).card := by
      simpa using Finset.card_biUnion_le
        (s := inactive)
        (t := fiveMillionR263ChargedResidualModNineCell N B charged)
    _ ≤ ∑ _cell ∈ inactive, 5 := by
      apply Finset.sum_le_sum
      intro cell hcell
      exact fiveMillionR263InactiveModNineCellAfter_card_le_five hcell
    _ = inactive.card * 5 := by simp
    _ ≤ 9 * 5 := by
      gcongr
      exact Finset.card_le_univ inactive
    _ = 45 := by norm_num

lemma fiveMillionR263TotalOddCharge_subset_residual
    {N : Nat} {B charged : Finset Nat}
    (hcharged : charged ⊆ hallResidual N B) :
    fiveMillionR263TotalOddCharge N B charged ⊆ hallResidual N B := by
  intro x hx
  rcases Finset.mem_union.mp hx with hxCharged | hxSparse
  · exact hcharged hxCharged
  · exact (Finset.mem_sdiff.mp
      (fiveMillionR263SparseCellChargeAfter_subset_structured N B charged
        hxSparse)).1

lemma fiveMillionR263TotalOddCharge_card_le_128
    {N : Nat} {B charged : Finset Nat}
    (hchargedCard : charged.card ≤ 83) :
    (fiveMillionR263TotalOddCharge N B charged).card ≤ 128 := by
  have hsparse := fiveMillionR263SparseCellChargeAfter_card_le_fortyFive
    N B charged
  calc
    (fiveMillionR263TotalOddCharge N B charged).card ≤
        charged.card +
          (fiveMillionR263SparseCellChargeAfter N B charged).card := by
      simpa [fiveMillionR263TotalOddCharge] using
        Finset.card_union_le charged
          (fiveMillionR263SparseCellChargeAfter N B charged)
    _ ≤ 83 + 45 := by omega
    _ = 128 := by norm_num

lemma fiveMillionR263ActiveCellAfter_has_finalStructuredPoint
    {N : Nat} {B charged : Finset Nat} {cell : Fin 9}
    (hcell : cell ∈
      fiveMillionR263ActiveModNineCellsAfterCharge N B charged) :
    ∃ x ∈ fiveMillionStructuredResidual N B
        (fiveMillionR263TotalOddCharge N B charged),
      oddModNineResidue x = cell := by
  have hcellParts := Finset.mem_filter.mp hcell
  have hnonempty :
      (fiveMillionR263ChargedResidualModNineCell N B charged cell).Nonempty :=
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

lemma fiveMillionR263FinalStructured_mem_activeCellAfter
    {N x : Nat} {B charged : Finset Nat}
    (hx : x ∈ fiveMillionStructuredResidual N B
      (fiveMillionR263TotalOddCharge N B charged)) :
    oddModNineResidue x ∈
      fiveMillionR263ActiveModNineCellsAfterCharge N B charged := by
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

lemma fiveMillionR263FinalActiveCell_eq_chargedCell
    {N : Nat} {B charged : Finset Nat} {cell : Fin 9}
    (hcell : cell ∈
      fiveMillionR263ActiveModNineCellsAfterCharge N B charged) :
    (fiveMillionStructuredResidual N B
        (fiveMillionR263TotalOddCharge N B charged)).filter (fun x =>
          oddModNineResidue x = cell) =
      fiveMillionR263ChargedResidualModNineCell N B charged cell := by
  ext x
  constructor
  · intro hx
    have hxParts := Finset.mem_filter.mp hx
    have hxFinal := Finset.mem_sdiff.mp hxParts.1
    have hxNotCharged : x ∉ charged := by
      intro hxCharged
      exact hxFinal.2 (Finset.mem_union_left _ hxCharged)
    apply Finset.mem_filter.mpr
    exact ⟨Finset.mem_sdiff.mpr ⟨hxFinal.1, hxNotCharged⟩, hxParts.2⟩
  · intro hx
    have hxParts := Finset.mem_filter.mp hx
    have hxStructured := Finset.mem_sdiff.mp hxParts.1
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_sdiff.mpr ⟨hxStructured.1, ?_⟩, hxParts.2⟩
    intro hxTotal
    rcases Finset.mem_union.mp hxTotal with hxCharged | hxSparse
    · exact hxStructured.2 hxCharged
    · have hxSparseParts := Finset.mem_filter.mp hxSparse
      exact hxSparseParts.2 (by simpa [hxParts.2] using hcell)

lemma fiveMillionR263FinalActiveCell_card_ge_six
    {N : Nat} {B charged : Finset Nat} {cell : Fin 9}
    (hcell : cell ∈
      fiveMillionR263ActiveModNineCellsAfterCharge N B charged) :
    6 <= ((fiveMillionStructuredResidual N B
        (fiveMillionR263TotalOddCharge N B charged)).filter (fun x =>
          oddModNineResidue x = cell)).card := by
  rw [fiveMillionR263FinalActiveCell_eq_chargedCell hcell]
  exact (Finset.mem_filter.mp hcell).2

noncomputable def globalMixedOneOddExactlyOneCellR263Terminal_of_chargedClass
    {N : Nat} {B charged : Finset Nat}
    (hLower : 5_000_000 <= N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hcharged : charged ⊆ hallResidual N B)
    (hchargedCard : charged.card <= 83)
    (parity : Bool)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (hcells :
      (fiveMillionR263ActiveModNineCellsAfterCharge N B charged).card = 1) :
    FiveMillionR263TerminalCertificate N B := by
  classical
  let totalCharge := fiveMillionR263TotalOddCharge N B charged
  let cells := fiveMillionR263ActiveModNineCellsAfterCharge N B charged
  have hcells' : cells.card = 1 := by simpa [cells] using hcells
  have hcellsNonempty : cells.Nonempty := Finset.card_pos.mp (by omega)
  let cell : Fin 9 := Classical.choose hcellsNonempty
  have hcellMem : cell ∈ cells := Classical.choose_spec hcellsNonempty
  have hcellsAtMostOne : cells.card ≤ 1 := by omega
  have hfinalClass : ∀ x ∈ fiveMillionStructuredResidual N B totalCharge,
      x % 4 = if parity then 3 else 1 := by
    intro x hx
    apply hclass x
    have hxParts := Finset.mem_sdiff.mp hx
    have hxNotCharged : x ∉ charged := by
      intro hxCharged
      exact hxParts.2 (Finset.mem_union_left _ hxCharged)
    exact Finset.mem_sdiff.mpr ⟨hxParts.1, hxNotCharged⟩
  have honeCell : ∀ x ∈ fiveMillionStructuredResidual N B totalCharge,
      oddModNineResidue x = cell := by
    intro x hx
    have hxCell := fiveMillionR263FinalStructured_mem_activeCellAfter hx
    exact (Finset.card_le_one.mp hcellsAtMostOne)
      (oddModNineResidue x) hxCell cell hcellMem
  exact globalMixedOneOddOneCellR263Terminal_of_generated
    hLower hUpper hBout hBprop parity cell
      (fiveMillionR263TotalOddCharge_subset_residual hcharged)
      (fiveMillionR263TotalOddCharge_card_le_128 hchargedCard)
      (fiveMillionR263FinalActiveCell_card_ge_six hcellMem)
      hfinalClass honeCell

/-- The exact five-cell allocation now feeds the literal five-cell R263
terminal.  The six-point activity threshold is stronger than the two points
needed to form the unique double pivot fibre. -/
noncomputable def globalMixedOneOddExactlyFiveCellsR263Terminal_of_chargedClass
    {N : Nat} {B charged : Finset Nat}
    (hLower : 5_000_000 <= N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hcharged : charged ⊆ hallResidual N B)
    (hchargedCard : charged.card <= 83)
    (parity : Bool)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (hcells :
      (fiveMillionR263ActiveModNineCellsAfterCharge N B charged).card = 5) :
    FiveMillionR263TerminalCertificate N B := by
  let totalCharge := fiveMillionR263TotalOddCharge N B charged
  let cells := fiveMillionR263ActiveModNineCellsAfterCharge N B charged
  apply globalMixedOneOddFiveCellR263Terminal_of_generated
    hLower hUpper hBout hBprop parity cells
  · exact fiveMillionR263TotalOddCharge_subset_residual hcharged
  · exact fiveMillionR263TotalOddCharge_card_le_128 hchargedCard
  · exact hcells
  · intro cell hcell
    exact (fiveMillionR263FinalActiveCell_card_ge_six hcell).trans' (by norm_num)
  · intro x hx
    apply hclass x
    have hxParts := Finset.mem_sdiff.mp hx
    have hxNotCharged : x ∉ charged := by
      intro hxCharged
      exact hxParts.2 (Finset.mem_union_left _ hxCharged)
    exact Finset.mem_sdiff.mpr ⟨hxParts.1, hxNotCharged⟩
  · intro x hx
    exact fiveMillionR263FinalStructured_mem_activeCellAfter hx

noncomputable def globalMixedOneOddExactlyFourCellsR263Terminal_of_chargedClass
    {N : Nat} {B charged : Finset Nat}
    (hLower : 5_000_000 <= N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hcharged : charged ⊆ hallResidual N B)
    (hchargedCard : charged.card <= 83)
    (parity : Bool)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (hcells :
      (fiveMillionR263ActiveModNineCellsAfterCharge N B charged).card = 4) :
    FiveMillionR263TerminalCertificate N B := by
  let totalCharge := fiveMillionR263TotalOddCharge N B charged
  let cells := fiveMillionR263ActiveModNineCellsAfterCharge N B charged
  apply globalMixedOneOddFourCellR263Terminal_of_generated
    hLower hUpper hBout hBprop parity cells
  · exact fiveMillionR263TotalOddCharge_subset_residual hcharged
  · exact fiveMillionR263TotalOddCharge_card_le_128 hchargedCard
  · exact hcells
  · intro cell hcell
    exact (fiveMillionR263FinalActiveCell_card_ge_six hcell).trans' (by norm_num)
  · intro x hx
    apply hclass x
    have hxParts := Finset.mem_sdiff.mp hx
    have hxNotCharged : x ∉ charged := by
      intro hxCharged
      exact hxParts.2 (Finset.mem_union_left _ hxCharged)
    exact Finset.mem_sdiff.mpr ⟨hxParts.1, hxNotCharged⟩
  · intro x hx
    exact fiveMillionR263FinalStructured_mem_activeCellAfter hx

noncomputable def globalMixedOneOddExactlyThreeCellsR263Terminal_of_chargedClass
    {N : Nat} {B charged : Finset Nat}
    (hLower : 5_000_000 <= N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hcharged : charged ⊆ hallResidual N B)
    (hchargedCard : charged.card <= 83)
    (parity : Bool)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (hcells :
      (fiveMillionR263ActiveModNineCellsAfterCharge N B charged).card = 3) :
    FiveMillionR263TerminalCertificate N B := by
  let totalCharge := fiveMillionR263TotalOddCharge N B charged
  let cells := fiveMillionR263ActiveModNineCellsAfterCharge N B charged
  apply globalMixedOneOddThreeCellR263Terminal_of_generated
    hLower hUpper hBout hBprop parity cells
  · exact fiveMillionR263TotalOddCharge_subset_residual hcharged
  · exact fiveMillionR263TotalOddCharge_card_le_128 hchargedCard
  · exact hcells
  · intro cell hcell
    exact (fiveMillionR263FinalActiveCell_card_ge_six hcell).trans' (by norm_num)
  · intro x hx
    apply hclass x
    have hxParts := Finset.mem_sdiff.mp hx
    have hxNotCharged : x ∉ charged := by
      intro hxCharged
      exact hxParts.2 (Finset.mem_union_left _ hxCharged)
    exact Finset.mem_sdiff.mpr ⟨hxParts.1, hxNotCharged⟩
  · intro x hx
    exact fiveMillionR263FinalStructured_mem_activeCellAfter hx

noncomputable def globalMixedOneOddExactlyTwoCellsR263Terminal_of_chargedClass
    {N : Nat} {B charged : Finset Nat}
    (hLower : 5_000_000 <= N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hcharged : charged ⊆ hallResidual N B)
    (hchargedCard : charged.card <= 83)
    (parity : Bool)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (hcells :
      (fiveMillionR263ActiveModNineCellsAfterCharge N B charged).card = 2) :
    FiveMillionR263TerminalCertificate N B := by
  let totalCharge := fiveMillionR263TotalOddCharge N B charged
  let cells := fiveMillionR263ActiveModNineCellsAfterCharge N B charged
  apply globalMixedOneOddTwoCellR263Terminal_of_generated
    hLower hUpper hBout hBprop parity cells
  · exact fiveMillionR263TotalOddCharge_subset_residual hcharged
  · exact fiveMillionR263TotalOddCharge_card_le_128 hchargedCard
  · exact hcells
  · intro cell hcell
    exact (fiveMillionR263FinalActiveCell_card_ge_six hcell).trans' (by norm_num)
  · intro x hx
    apply hclass x
    have hxParts := Finset.mem_sdiff.mp hx
    have hxNotCharged : x ∉ charged := by
      intro hxCharged
      exact hxParts.2 (Finset.mem_union_left _ hxCharged)
    exact Finset.mem_sdiff.mpr ⟨hxParts.1, hxNotCharged⟩
  · intro x hx
    exact fiveMillionR263FinalStructured_mem_activeCellAfter hx

/-- Direct close of the controlling allocation row.  The conclusion is a
literal R263 terminal certificate with actual pivots and component bounds. -/
noncomputable def globalMixedOneOddSevenCellR263Terminal_of_chargedClass
    {N : Nat} {B charged : Finset Nat}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hcharged : charged ⊆ hallResidual N B)
    (hchargedCard : charged.card ≤ 83)
    (parity : Bool)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (hcellsLower : 6 ≤
      (fiveMillionR263ActiveModNineCellsAfterCharge N B charged).card)
    (hcellsUpper :
      (fiveMillionR263ActiveModNineCellsAfterCharge N B charged).card ≤ 7) :
    FiveMillionR263TerminalCertificate N B := by
  let totalCharge := fiveMillionR263TotalOddCharge N B charged
  let cells := fiveMillionR263ActiveModNineCellsAfterCharge N B charged
  apply globalMixedOneOddSevenCellR263Terminal_of_generated
    hLower hUpper hBout hBprop parity cells
  · exact fiveMillionR263TotalOddCharge_subset_residual hcharged
  · exact fiveMillionR263TotalOddCharge_card_le_128 hchargedCard
  · exact hcellsLower
  · exact hcellsUpper
  · intro cell hcell
    exact fiveMillionR263ActiveCellAfter_has_finalStructuredPoint hcell
  · intro x hx
    apply hclass x
    have hxParts := Finset.mem_sdiff.mp hx
    have hxNotCharged : x ∉ charged := by
      intro hxCharged
      exact hxParts.2 (Finset.mem_union_left _ hxCharged)
    exact Finset.mem_sdiff.mpr ⟨hxParts.1, hxNotCharged⟩
  · intro x hx
    exact fiveMillionR263FinalStructured_mem_activeCellAfter hx

/-- The same literal allocation closes every case with at least six surviving
active cells.  Cardinalities six and seven use the original producer; eight
and nine use the capacity matching/failure close. -/
noncomputable def globalMixedOneOddAtLeastSixCellsR263Terminal_of_chargedClass
    {N : Nat} {B charged : Finset Nat}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hcharged : charged ⊆ hallResidual N B)
    (hchargedCard : charged.card ≤ 83)
    (parity : Bool)
    (hclass : ∀ x ∈ fiveMillionStructuredResidual N B charged,
      x % 4 = if parity then 3 else 1)
    (hcellsLower : 6 ≤
      (fiveMillionR263ActiveModNineCellsAfterCharge N B charged).card) :
    FiveMillionR263TerminalCertificate N B := by
  classical
  let totalCharge := fiveMillionR263TotalOddCharge N B charged
  let cells := fiveMillionR263ActiveModNineCellsAfterCharge N B charged
  have hcellsUpper : cells.card ≤ 9 := by
    calc
      cells.card ≤ Fintype.card (Fin 9) := Finset.card_le_univ cells
      _ = 9 := by simp
  by_cases hcellsSeven : cells.card ≤ 7
  · exact globalMixedOneOddSevenCellR263Terminal_of_chargedClass
      hLower hUpper hBout hBprop hcharged hchargedCard parity hclass
        hcellsLower hcellsSeven
  have htotalSubset : totalCharge ⊆ hallResidual N B :=
    fiveMillionR263TotalOddCharge_subset_residual hcharged
  have htotalCard : totalCharge.card ≤ 128 :=
    fiveMillionR263TotalOddCharge_card_le_128 hchargedCard
  have hactive : ∀ cell ∈ cells,
      ∃ x ∈ fiveMillionStructuredResidual N B totalCharge,
        oddModNineResidue x = cell := by
    intro cell hcell
    exact fiveMillionR263ActiveCellAfter_has_finalStructuredPoint hcell
  have hfinalClass : ∀ x ∈ fiveMillionStructuredResidual N B totalCharge,
      x % 4 = if parity then 3 else 1 := by
    intro x hx
    apply hclass x
    have hxParts := Finset.mem_sdiff.mp hx
    have hxNotCharged : x ∉ charged := by
      intro hxCharged
      exact hxParts.2 (Finset.mem_union_left _ hxCharged)
    exact Finset.mem_sdiff.mpr ⟨hxParts.1, hxNotCharged⟩
  have hfinalCells : ∀ x ∈ fiveMillionStructuredResidual N B totalCharge,
      oddModNineResidue x ∈ cells := by
    intro x hx
    exact fiveMillionR263FinalStructured_mem_activeCellAfter hx
  by_cases hcellsEight : cells.card = 8
  · exact Classical.choice (fiveMillionOneOddEightCellsKernelClose
      hLower hUpper hBout hBprop parity cells hcellsEight hactive
        htotalSubset htotalCard hfinalClass hfinalCells)
  · have hcellsNine : cells.card = 9 := by omega
    exact Classical.choice (fiveMillionOneOddNineCellsKernelClose
      hLower hUpper hBout hBprop parity cells hcellsNine hactive
        htotalSubset htotalCard hfinalClass hfinalCells)

def fiveMillionR263OutsideValuationCharge
    (N : Nat) (B : Finset Nat) (cls : FiveMillionValuationClass) : Finset Nat :=
  hallResidual N B \ fiveMillionValuationPart N B cls

lemma fiveMillionR263OutsideValuationCharge_subset_residual
    (N : Nat) (B : Finset Nat) (cls : FiveMillionValuationClass) :
    fiveMillionR263OutsideValuationCharge N B cls ⊆ hallResidual N B :=
  Finset.sdiff_subset

lemma fiveMillionStructuredResidual_r263OutsideValuationCharge
    (N : Nat) (B : Finset Nat) (cls : FiveMillionValuationClass) :
    fiveMillionStructuredResidual N B
        (fiveMillionR263OutsideValuationCharge N B cls) =
      fiveMillionValuationPart N B cls := by
  ext x
  simp [fiveMillionStructuredResidual,
    fiveMillionR263OutsideValuationCharge, fiveMillionValuationPart]

noncomputable def globalMixedOneOddSevenCellR263Terminal_of_oddOneValuationPart
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (houtside :
      (fiveMillionR263OutsideValuationCharge N B .oddOne).card ≤ 83)
    (hcellsLower : 6 ≤
      (fiveMillionR263ActiveModNineCellsAfterCharge N B
        (fiveMillionR263OutsideValuationCharge N B .oddOne)).card)
    (hcellsUpper :
      (fiveMillionR263ActiveModNineCellsAfterCharge N B
        (fiveMillionR263OutsideValuationCharge N B .oddOne)).card ≤ 7) :
    FiveMillionR263TerminalCertificate N B := by
  apply globalMixedOneOddSevenCellR263Terminal_of_chargedClass
    hLower hUpper hBout hBprop
      (fiveMillionR263OutsideValuationCharge_subset_residual N B .oddOne)
      houtside false
  · intro x hx
    rw [fiveMillionStructuredResidual_r263OutsideValuationCharge] at hx
    simpa using fiveMillionValuationPart_oddOne hx
  · exact hcellsLower
  · exact hcellsUpper

noncomputable def globalMixedOneOddSevenCellR263Terminal_of_oddThreeValuationPart
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (houtside :
      (fiveMillionR263OutsideValuationCharge N B .oddThree).card ≤ 83)
    (hcellsLower : 6 ≤
      (fiveMillionR263ActiveModNineCellsAfterCharge N B
        (fiveMillionR263OutsideValuationCharge N B .oddThree)).card)
    (hcellsUpper :
      (fiveMillionR263ActiveModNineCellsAfterCharge N B
        (fiveMillionR263OutsideValuationCharge N B .oddThree)).card ≤ 7) :
    FiveMillionR263TerminalCertificate N B := by
  apply globalMixedOneOddSevenCellR263Terminal_of_chargedClass
    hLower hUpper hBout hBprop
      (fiveMillionR263OutsideValuationCharge_subset_residual N B .oddThree)
      houtside true
  · intro x hx
    rw [fiveMillionStructuredResidual_r263OutsideValuationCharge] at hx
    simpa using fiveMillionValuationPart_oddThree hx
  · exact hcellsLower
  · exact hcellsUpper

noncomputable def globalMixedOneOddAtLeastSixCellsR263Terminal_of_oddOneValuationPart
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (houtside :
      (fiveMillionR263OutsideValuationCharge N B .oddOne).card ≤ 83)
    (hcellsLower : 6 ≤
      (fiveMillionR263ActiveModNineCellsAfterCharge N B
        (fiveMillionR263OutsideValuationCharge N B .oddOne)).card) :
    FiveMillionR263TerminalCertificate N B := by
  apply globalMixedOneOddAtLeastSixCellsR263Terminal_of_chargedClass
    hLower hUpper hBout hBprop
      (fiveMillionR263OutsideValuationCharge_subset_residual N B .oddOne)
      houtside false
  · intro x hx
    rw [fiveMillionStructuredResidual_r263OutsideValuationCharge] at hx
    simpa using fiveMillionValuationPart_oddOne hx
  · exact hcellsLower

noncomputable def globalMixedOneOddAtLeastSixCellsR263Terminal_of_oddThreeValuationPart
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (houtside :
      (fiveMillionR263OutsideValuationCharge N B .oddThree).card ≤ 83)
    (hcellsLower : 6 ≤
      (fiveMillionR263ActiveModNineCellsAfterCharge N B
        (fiveMillionR263OutsideValuationCharge N B .oddThree)).card) :
    FiveMillionR263TerminalCertificate N B := by
  apply globalMixedOneOddAtLeastSixCellsR263Terminal_of_chargedClass
    hLower hUpper hBout hBprop
      (fiveMillionR263OutsideValuationCharge_subset_residual N B .oddThree)
      houtside true
  · intro x hx
    rw [fiveMillionStructuredResidual_r263OutsideValuationCharge] at hx
    simpa using fiveMillionValuationPart_oddThree hx
  · exact hcellsLower

noncomputable def globalMixedOneOddExactlyFiveCellsR263Terminal_of_oddOneValuationPart
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (houtside :
      (fiveMillionR263OutsideValuationCharge N B .oddOne).card <= 83)
    (hcells :
      (fiveMillionR263ActiveModNineCellsAfterCharge N B
        (fiveMillionR263OutsideValuationCharge N B .oddOne)).card = 5) :
    FiveMillionR263TerminalCertificate N B := by
  apply globalMixedOneOddExactlyFiveCellsR263Terminal_of_chargedClass
    hLower hUpper hBout hBprop
      (fiveMillionR263OutsideValuationCharge_subset_residual N B .oddOne)
      houtside false
  · intro x hx
    rw [fiveMillionStructuredResidual_r263OutsideValuationCharge] at hx
    simpa using fiveMillionValuationPart_oddOne hx
  · exact hcells

noncomputable def globalMixedOneOddExactlyFiveCellsR263Terminal_of_oddThreeValuationPart
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (houtside :
      (fiveMillionR263OutsideValuationCharge N B .oddThree).card <= 83)
    (hcells :
      (fiveMillionR263ActiveModNineCellsAfterCharge N B
        (fiveMillionR263OutsideValuationCharge N B .oddThree)).card = 5) :
    FiveMillionR263TerminalCertificate N B := by
  apply globalMixedOneOddExactlyFiveCellsR263Terminal_of_chargedClass
    hLower hUpper hBout hBprop
      (fiveMillionR263OutsideValuationCharge_subset_residual N B .oddThree)
      houtside true
  · intro x hx
    rw [fiveMillionStructuredResidual_r263OutsideValuationCharge] at hx
    simpa using fiveMillionValuationPart_oddThree hx
  · exact hcells

noncomputable def globalMixedOneOddExactlyFourCellsR263Terminal_of_oddOneValuationPart
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (houtside :
      (fiveMillionR263OutsideValuationCharge N B .oddOne).card <= 83)
    (hcells :
      (fiveMillionR263ActiveModNineCellsAfterCharge N B
        (fiveMillionR263OutsideValuationCharge N B .oddOne)).card = 4) :
    FiveMillionR263TerminalCertificate N B := by
  apply globalMixedOneOddExactlyFourCellsR263Terminal_of_chargedClass
    hLower hUpper hBout hBprop
      (fiveMillionR263OutsideValuationCharge_subset_residual N B .oddOne)
      houtside false
  · intro x hx
    rw [fiveMillionStructuredResidual_r263OutsideValuationCharge] at hx
    simpa using fiveMillionValuationPart_oddOne hx
  · exact hcells

noncomputable def globalMixedOneOddExactlyFourCellsR263Terminal_of_oddThreeValuationPart
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (houtside :
      (fiveMillionR263OutsideValuationCharge N B .oddThree).card <= 83)
    (hcells :
      (fiveMillionR263ActiveModNineCellsAfterCharge N B
        (fiveMillionR263OutsideValuationCharge N B .oddThree)).card = 4) :
    FiveMillionR263TerminalCertificate N B := by
  apply globalMixedOneOddExactlyFourCellsR263Terminal_of_chargedClass
    hLower hUpper hBout hBprop
      (fiveMillionR263OutsideValuationCharge_subset_residual N B .oddThree)
      houtside true
  · intro x hx
    rw [fiveMillionStructuredResidual_r263OutsideValuationCharge] at hx
    simpa using fiveMillionValuationPart_oddThree hx
  · exact hcells

noncomputable def globalMixedOneOddExactlyThreeCellsR263Terminal_of_oddOneValuationPart
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (houtside :
      (fiveMillionR263OutsideValuationCharge N B .oddOne).card <= 83)
    (hcells :
      (fiveMillionR263ActiveModNineCellsAfterCharge N B
        (fiveMillionR263OutsideValuationCharge N B .oddOne)).card = 3) :
    FiveMillionR263TerminalCertificate N B := by
  apply globalMixedOneOddExactlyThreeCellsR263Terminal_of_chargedClass
    hLower hUpper hBout hBprop
      (fiveMillionR263OutsideValuationCharge_subset_residual N B .oddOne)
      houtside false
  · intro x hx
    rw [fiveMillionStructuredResidual_r263OutsideValuationCharge] at hx
    simpa using fiveMillionValuationPart_oddOne hx
  · exact hcells

noncomputable def globalMixedOneOddExactlyThreeCellsR263Terminal_of_oddThreeValuationPart
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (houtside :
      (fiveMillionR263OutsideValuationCharge N B .oddThree).card <= 83)
    (hcells :
      (fiveMillionR263ActiveModNineCellsAfterCharge N B
        (fiveMillionR263OutsideValuationCharge N B .oddThree)).card = 3) :
    FiveMillionR263TerminalCertificate N B := by
  apply globalMixedOneOddExactlyThreeCellsR263Terminal_of_chargedClass
    hLower hUpper hBout hBprop
      (fiveMillionR263OutsideValuationCharge_subset_residual N B .oddThree)
      houtside true
  · intro x hx
    rw [fiveMillionStructuredResidual_r263OutsideValuationCharge] at hx
    simpa using fiveMillionValuationPart_oddThree hx
  · exact hcells

noncomputable def globalMixedOneOddExactlyTwoCellsR263Terminal_of_oddOneValuationPart
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (houtside :
      (fiveMillionR263OutsideValuationCharge N B .oddOne).card <= 83)
    (hcells :
      (fiveMillionR263ActiveModNineCellsAfterCharge N B
        (fiveMillionR263OutsideValuationCharge N B .oddOne)).card = 2) :
    FiveMillionR263TerminalCertificate N B := by
  apply globalMixedOneOddExactlyTwoCellsR263Terminal_of_chargedClass
    hLower hUpper hBout hBprop
      (fiveMillionR263OutsideValuationCharge_subset_residual N B .oddOne)
      houtside false
  · intro x hx
    rw [fiveMillionStructuredResidual_r263OutsideValuationCharge] at hx
    simpa using fiveMillionValuationPart_oddOne hx
  · exact hcells

noncomputable def globalMixedOneOddExactlyTwoCellsR263Terminal_of_oddThreeValuationPart
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (houtside :
      (fiveMillionR263OutsideValuationCharge N B .oddThree).card <= 83)
    (hcells :
      (fiveMillionR263ActiveModNineCellsAfterCharge N B
        (fiveMillionR263OutsideValuationCharge N B .oddThree)).card = 2) :
    FiveMillionR263TerminalCertificate N B := by
  apply globalMixedOneOddExactlyTwoCellsR263Terminal_of_chargedClass
    hLower hUpper hBout hBprop
      (fiveMillionR263OutsideValuationCharge_subset_residual N B .oddThree)
      houtside true
  · intro x hx
    rw [fiveMillionStructuredResidual_r263OutsideValuationCharge] at hx
    simpa using fiveMillionValuationPart_oddThree hx
  · exact hcells

noncomputable def globalMixedOneOddExactlyOneCellR263Terminal_of_oddOneValuationPart
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (houtside :
      (fiveMillionR263OutsideValuationCharge N B .oddOne).card <= 83)
    (hcells :
      (fiveMillionR263ActiveModNineCellsAfterCharge N B
        (fiveMillionR263OutsideValuationCharge N B .oddOne)).card = 1) :
    FiveMillionR263TerminalCertificate N B := by
  apply globalMixedOneOddExactlyOneCellR263Terminal_of_chargedClass
    hLower hUpper hBout hBprop
      (fiveMillionR263OutsideValuationCharge_subset_residual N B .oddOne)
      houtside false
  · intro x hx
    rw [fiveMillionStructuredResidual_r263OutsideValuationCharge] at hx
    simpa using fiveMillionValuationPart_oddOne hx
  · exact hcells

noncomputable def globalMixedOneOddExactlyOneCellR263Terminal_of_oddThreeValuationPart
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N) (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (houtside :
      (fiveMillionR263OutsideValuationCharge N B .oddThree).card <= 83)
    (hcells :
      (fiveMillionR263ActiveModNineCellsAfterCharge N B
        (fiveMillionR263OutsideValuationCharge N B .oddThree)).card = 1) :
    FiveMillionR263TerminalCertificate N B := by
  apply globalMixedOneOddExactlyOneCellR263Terminal_of_chargedClass
    hLower hUpper hBout hBprop
      (fiveMillionR263OutsideValuationCharge_subset_residual N B .oddThree)
      houtside true
  · intro x hx
    rw [fiveMillionStructuredResidual_r263OutsideValuationCharge] at hx
    simpa using fiveMillionValuationPart_oddThree hx
  · exact hcells

#print axioms fiveMillionR263SparseCellChargeAfter_card_le_fortyFive
#print axioms fiveMillionR263FinalActiveCell_card_ge_six
#print axioms globalMixedOneOddExactlyOneCellR263Terminal_of_chargedClass
#print axioms globalMixedOneOddExactlyOneCellR263Terminal_of_oddOneValuationPart
#print axioms globalMixedOneOddExactlyOneCellR263Terminal_of_oddThreeValuationPart
#print axioms globalMixedOneOddExactlyTwoCellsR263Terminal_of_chargedClass
#print axioms globalMixedOneOddExactlyTwoCellsR263Terminal_of_oddOneValuationPart
#print axioms globalMixedOneOddExactlyTwoCellsR263Terminal_of_oddThreeValuationPart
#print axioms globalMixedOneOddExactlyThreeCellsR263Terminal_of_chargedClass
#print axioms globalMixedOneOddExactlyThreeCellsR263Terminal_of_oddOneValuationPart
#print axioms globalMixedOneOddExactlyThreeCellsR263Terminal_of_oddThreeValuationPart
#print axioms globalMixedOneOddExactlyFourCellsR263Terminal_of_chargedClass
#print axioms globalMixedOneOddExactlyFourCellsR263Terminal_of_oddOneValuationPart
#print axioms globalMixedOneOddExactlyFourCellsR263Terminal_of_oddThreeValuationPart
#print axioms globalMixedOneOddExactlyFiveCellsR263Terminal_of_chargedClass
#print axioms globalMixedOneOddExactlyFiveCellsR263Terminal_of_oddOneValuationPart
#print axioms globalMixedOneOddExactlyFiveCellsR263Terminal_of_oddThreeValuationPart
#print axioms globalMixedOneOddSevenCellR263Terminal_of_chargedClass
#print axioms globalMixedOneOddSevenCellR263Terminal_of_oddOneValuationPart
#print axioms globalMixedOneOddSevenCellR263Terminal_of_oddThreeValuationPart
#print axioms globalMixedOneOddAtLeastSixCellsR263Terminal_of_chargedClass
#print axioms globalMixedOneOddAtLeastSixCellsR263Terminal_of_oddOneValuationPart
#print axioms globalMixedOneOddAtLeastSixCellsR263Terminal_of_oddThreeValuationPart

end Erdos848
