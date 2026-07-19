import Erdos848.TailMixedHall
import Erdos848.TailPaperValuationChargeBridge

namespace Erdos848

/-!
# Literal close triples for the twenty-million allocation

The external search supplies numerical degree and component bounds.  Pivot
selection itself is proved here from the literal Hall residual: a valuation
part larger than the `20001`-bucket count contains a pair at distance at most
`20000`, and its size also leaves a third distinct pivot.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def twentyMillionGapChargeCap (N : Nat) : Nat :=
  (N - 1) / 20_001 + 1

structure TwentyMillionCloseTriple
    (N : Nat) (B : Finset Nat) (cls : FiveMillionValuationClass) where
  pivots : Finset Nat
  card : pivots.card = 3
  subsetPart : pivots ⊆ fiveMillionValuationPart N B cls
  left : Nat
  right : Nat
  leftMem : left ∈ pivots
  rightMem : right ∈ pivots
  left_lt_right : left < right
  gap_le : right - left ≤ 20_000

def TwentyMillionCloseTriple.CommonModNine
    {N : Nat} {B : Finset Nat} {cls : FiveMillionValuationClass}
    (triple : TwentyMillionCloseTriple N B cls) : Prop :=
  ∃ cell : Fin 9, ∀ pivot ∈ triple.pivots,
    paperModNineCell pivot = cell

theorem fiveMillionValuationPart_subset_Icc_of_outside
    {N : Nat} {B : Finset Nat} {cls : FiveMillionValuationClass}
    (hBout : Erdos848OutsideSet N B) :
    fiveMillionValuationPart N B cls ⊆ Finset.Icc 1 N := by
  intro pivot hpivot
  have hpivotResidual :=
    fiveMillionValuationPart_subset_residual N B cls hpivot
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  exact hallCompletion_subset_Icc hBout hpivotCompletion

theorem exists_twentyMillionCloseTriple
    {N : Nat} {B : Finset Nat} {cls : FiveMillionValuationClass}
    (hLower : 20_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hlarge :
      twentyMillionGapChargeCap N <
        (fiveMillionValuationPart N B cls).card) :
    Nonempty (TwentyMillionCloseTriple N B cls) := by
  classical
  let part := fiveMillionValuationPart N B cls
  obtain ⟨x, hx, y, hy, hxy, hgap⟩ :=
    exists_close_pair_of_card
      (S := part) (N := N) (gap := 20_001)
      (by norm_num)
      (fiveMillionValuationPart_subset_Icc_of_outside hBout)
      (by simpa [part, twentyMillionGapChargeCap] using hlarge)
  have hpartCard : 2 < part.card := by
    have hcapLower : 2 ≤ twentyMillionGapChargeCap N := by
      simp [twentyMillionGapChargeCap]
      omega
    have hlargePart :
        twentyMillionGapChargeCap N < part.card := by
      simpa [part] using hlarge
    omega
  have hxyNe : x ≠ y := Nat.ne_of_lt hxy
  have hpairCard : ({x, y} : Finset Nat).card = 2 := by
    simp [hxyNe]
  have hnotSubset : ¬ part ⊆ ({x, y} : Finset Nat) := by
    intro hsubset
    have hcardLe := Finset.card_le_card hsubset
    rw [hpairCard] at hcardLe
    omega
  obtain ⟨z, hzPart, hzPair⟩ := Finset.not_subset.mp hnotSubset
  have hzx : z ≠ x := by
    intro h
    apply hzPair
    simp [h]
  have hzy : z ≠ y := by
    intro h
    apply hzPair
    simp [h]
  have hxz : x ≠ z := Ne.symm hzx
  have hyz : y ≠ z := Ne.symm hzy
  let pivots : Finset Nat := {x, y, z}
  have hpivotsCard : pivots.card = 3 := by
    simp [pivots, hxyNe, hxz, hyz]
  have hpivotsSubset : pivots ⊆ part := by
    intro pivot hpivot
    simp only [pivots, Finset.mem_insert, Finset.mem_singleton] at hpivot
    rcases hpivot with rfl | rfl | rfl
    · exact hx
    · exact hy
    · exact hzPart
  exact ⟨
    { pivots := pivots
      card := hpivotsCard
      subsetPart := by simpa [part] using hpivotsSubset
      left := x
      right := y
      leftMem := by simp [pivots]
      rightMem := by simp [pivots]
      left_lt_right := hxy
      gap_le := by omega }⟩

theorem TwentyMillionCloseTriple.common_or_nonconstant
    {N : Nat} {B : Finset Nat} {cls : FiveMillionValuationClass}
    (triple : TwentyMillionCloseTriple N B cls) :
    triple.CommonModNine ∨
      ∃ left ∈ triple.pivots, ∃ right ∈ triple.pivots,
        paperModNineCell left ≠ paperModNineCell right := by
  classical
  by_cases hcommon : triple.CommonModNine
  · exact Or.inl hcommon
  · right
    have hpivotsPositive : 0 < triple.pivots.card := by
      rw [triple.card]
      norm_num
    obtain ⟨first, hfirst⟩ := Finset.card_pos.mp hpivotsPositive
    have hnotAll :
        ¬ ∀ pivot ∈ triple.pivots,
          paperModNineCell pivot = paperModNineCell first := by
      intro hall
      exact hcommon ⟨paperModNineCell first, hall⟩
    push Not at hnotAll
    obtain ⟨other, hother, hne⟩ := hnotAll
    exact ⟨other, hother, first, hfirst, hne⟩

#print axioms exists_twentyMillionCloseTriple
#print axioms TwentyMillionCloseTriple.common_or_nonconstant

end Erdos848
