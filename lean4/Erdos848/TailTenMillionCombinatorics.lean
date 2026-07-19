import Erdos848.TailCombinatorics

namespace Erdos848

/-!
Small, unconditional combinatorial steps specific to the
`10_000_000 ≤ N < 20_000_000` cell descent.  They are kept separate from
the numerical certificate so the latter cannot hide a cell-selection or
fibre argument inside a decimal constant.
-/

section Cells

variable {X C Q : Type*} [DecidableEq X] [DecidableEq C]

def cellFibre (points : Finset X) (cell : X → C) (c : C) : Finset X :=
  points.filter fun x => cell x = c

/-- Raw charging of sparse cells: if every fibre costs at most `gap`, their
union costs at most the number of cells times `gap`. -/
theorem card_le_cellCount_mul_of_fibres_le
    [Fintype C] (points : Finset X) (cell : X → C) (gap : ℕ)
    (hsparse : ∀ c : C, (cellFibre points cell c).card ≤ gap) :
    points.card ≤ Fintype.card C * gap := by
  have hmaps : (points : Set X).MapsTo cell (Finset.univ : Finset C) := by
    intro x hx
    simp
  rw [Finset.card_eq_sum_card_fiberwise hmaps]
  calc
    ∑ c ∈ (Finset.univ : Finset C),
        (points.filter fun x => cell x = c).card ≤
        ∑ _c ∈ (Finset.univ : Finset C), gap := by
      exact Finset.sum_le_sum fun c _hc => hsparse c
    _ = Fintype.card C * gap := by simp

/-- Charging all cells except one distinguished dense cell costs only
`(#cells - 1) * gap`.  This is the exact source of the factors `8`, `17`,
and `35` in the paper's mod-nine cell rows, rather than a rounded density
estimate. -/
theorem card_le_erasedCellCount_mul_of_fibres_le
    [Fintype C] (points : Finset X) (cell : X → C)
    (chosen : C) (gap : Nat)
    (houtside : ∀ x ∈ points, cell x ≠ chosen)
    (hsparse :
      ∀ c : C, c ≠ chosen →
        (cellFibre points cell c).card ≤ gap) :
    points.card ≤ (Fintype.card C - 1) * gap := by
  have hmaps :
      (points : Set X).MapsTo cell
        (Finset.univ.erase chosen : Finset C) := by
    intro x hx
    exact Finset.mem_erase.mpr
      ⟨houtside x hx, Finset.mem_univ _⟩
  rw [Finset.card_eq_sum_card_fiberwise hmaps]
  calc
    ∑ c ∈ (Finset.univ.erase chosen : Finset C),
        (points.filter fun x => cell x = c).card ≤
        ∑ _c ∈ (Finset.univ.erase chosen : Finset C), gap := by
      exact Finset.sum_le_sum fun c hc =>
        hsparse c (Finset.ne_of_mem_erase hc)
    _ = (Fintype.card C - 1) * gap := by simp

/-- A dense cell supplies the three distinct pivots used by every one-cell
terminal row. -/
theorem one_cell_supplies_three_pivots
    (points : Finset X) (cell : X → C) (c : C)
    (hdense : 3 ≤ (cellFibre points cell c).card) :
    ∃ x ∈ points, ∃ y ∈ points, ∃ z ∈ points,
      cell x = c ∧ cell y = c ∧ cell z = c ∧
        x ≠ y ∧ x ≠ z ∧ y ≠ z := by
  have hthree : 2 < (cellFibre points cell c).card := by omega
  obtain ⟨x, hx, y, hy, z, hz, hxy, hxz, hyz⟩ :=
    Finset.two_lt_card.mp hthree
  have hx' := Finset.mem_filter.mp hx
  have hy' := Finset.mem_filter.mp hy
  have hz' := Finset.mem_filter.mp hz
  exact ⟨x, hx'.1, y, hy'.1, z, hz'.1,
    hx'.2, hy'.2, hz'.2, hxy, hxz, hyz⟩

/-- Two distinct dense cells supply two pivots apiece, hence four pairwise
distinct pivots.  This is the exact selection step preceding the four-pivot
Boolean inequality. -/
theorem two_cells_supply_four_pivots
    (points : Finset X) (cell : X → C) {c d : C} (hcd : c ≠ d)
    (hc : 2 ≤ (cellFibre points cell c).card)
    (hd : 2 ≤ (cellFibre points cell d).card) :
    ∃ x₁ ∈ points, ∃ x₂ ∈ points,
      ∃ y₁ ∈ points, ∃ y₂ ∈ points,
        cell x₁ = c ∧ cell x₂ = c ∧
        cell y₁ = d ∧ cell y₂ = d ∧
        x₁ ≠ x₂ ∧ y₁ ≠ y₂ ∧
        x₁ ≠ y₁ ∧ x₁ ≠ y₂ ∧
        x₂ ≠ y₁ ∧ x₂ ≠ y₂ := by
  have hc' : 1 < (cellFibre points cell c).card := by omega
  have hd' : 1 < (cellFibre points cell d).card := by omega
  obtain ⟨x₁, hx₁, x₂, hx₂, hxx⟩ := Finset.one_lt_card.mp hc'
  obtain ⟨y₁, hy₁, y₂, hy₂, hyy⟩ := Finset.one_lt_card.mp hd'
  have hx₁' := Finset.mem_filter.mp hx₁
  have hx₂' := Finset.mem_filter.mp hx₂
  have hy₁' := Finset.mem_filter.mp hy₁
  have hy₂' := Finset.mem_filter.mp hy₂
  have cross_ne {x y : X} (hxc : cell x = c) (hyd : cell y = d) : x ≠ y := by
    intro hxy
    apply hcd
    exact hxc.symm.trans ((congrArg cell hxy).trans hyd)
  exact ⟨x₁, hx₁'.1, x₂, hx₂'.1,
    y₁, hy₁'.1, y₂, hy₂'.1,
    hx₁'.2, hx₂'.2, hy₁'.2, hy₂'.2,
    hxx, hyy,
    cross_ne hx₁'.2 hy₁'.2, cross_ne hx₁'.2 hy₂'.2,
    cross_ne hx₂'.2 hy₁'.2, cross_ne hx₂'.2 hy₂'.2⟩

/-- If a cutoff prime is common to the selected pair and no point outside the
chosen mod-nine cell breaks that prime, then all such points lie in one
mod-`q²` fibre. -/
theorem no_break_outside_cell_in_common_fibre
    (points : Finset X) (cell : X → C) (qResidue : X → Q)
    {chosenCell : C} {x y : X}
    (hcommon : qResidue x = qResidue y)
    (hnoBreak : ∀ z ∈ points, cell z ≠ chosenCell →
      qResidue z = qResidue x ∨ qResidue z = qResidue y) :
    ∃ fibre : Q, ∀ z ∈ points, cell z ≠ chosenCell →
      qResidue z = fibre := by
  refine ⟨qResidue x, ?_⟩
  intro z hz hcell
  rcases hnoBreak z hz hcell with hzx | hzy
  · exact hzx
  · exact hzy.trans hcommon.symm

#print axioms card_le_erasedCellCount_mul_of_fibres_le

end Cells

end Erdos848
