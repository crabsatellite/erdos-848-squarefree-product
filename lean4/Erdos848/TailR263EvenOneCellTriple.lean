import Erdos848.TailFiniteTripleCommon

namespace Erdos848

/-!
# Exact three-pivot selection inside one E1 cell

A large mod-nine cell must not be sampled arbitrarily.  The three selected
pivots have to retain exactly the mod-49 and mod-121 fibre information of the
whole cell.  This module proves that such a triple always exists.  It is a
pure finite-set argument; no numerical certificate is used.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem exists_pair_mod_ne_of_not_contained
    {points : Finset Nat} {modulus : Nat} (hmodulus : 0 < modulus)
    (hnot : ¬ ∃ residue : Fin modulus, ∀ x ∈ points,
      x % modulus = residue.val) :
    ∃ x ∈ points, ∃ y ∈ points,
      x ≠ y ∧ x % modulus ≠ y % modulus := by
  have hnonempty : points.Nonempty := by
    by_contra hempty
    apply hnot
    have hpoints : points = ∅ :=
      Finset.not_nonempty_iff_eq_empty.mp hempty
    subst points
    exact ⟨⟨0, hmodulus⟩, by simp⟩
  obtain ⟨x, hx⟩ := hnonempty
  have hdiff : ∃ y ∈ points, y % modulus ≠ x % modulus := by
    by_contra hnone
    push_neg at hnone
    apply hnot
    refine ⟨⟨x % modulus, Nat.mod_lt _ hmodulus⟩, ?_⟩
    intro y hy
    exact hnone y hy
  obtain ⟨y, hy, hyx⟩ := hdiff
  refine ⟨x, hx, y, hy, ?_, ?_⟩
  · intro hxy
    subst y
    exact hyx rfl
  · exact fun hxy => hyx hxy.symm

theorem exists_triple_superset_pair
    {points : Finset Nat} {x y : Nat}
    (hx : x ∈ points) (hy : y ∈ points) (hxy : x ≠ y)
    (hcard : 3 ≤ points.card) :
    ∃ pivots : Finset Nat,
      {x, y} ⊆ pivots ∧ pivots ⊆ points ∧ pivots.card = 3 := by
  have hpair : {x, y} ⊆ points := by
    intro z hz
    simp only [Finset.mem_insert, Finset.mem_singleton] at hz
    rcases hz with rfl | rfl
    · exact hx
    · exact hy
  obtain ⟨pivots, hpairPivots, hpivotsPoints, hpivotsCard⟩ :=
    Finset.exists_subsuperset_card_eq hpair (by
      simp [hxy]) hcard
  exact ⟨pivots, hpairPivots, hpivotsPoints, hpivotsCard⟩

structure FiveMillionR263EvenOneCellTripleSelection
    (N : Nat) (B : Finset Nat) (cell : Fin 9) where
  pivots : Finset Nat
  subsetCell :
    pivots ⊆ fiveMillionR263EvenOneCell N B cell
  card : pivots.card = 3
  common49 :
    e1FiniteTripleCommonAt pivots card 1 ↔
      fiveMillionR263EvenOneCellContained49 N B cell
  common121 :
    e1FiniteTripleCommonAt pivots card 2 ↔
      fiveMillionR263EvenOneCellContained121 N B cell

private theorem e1CellTripleCommon49_of_contained
    {N : Nat} {B : Finset Nat} {cell : Fin 9}
    {pivots : Finset Nat}
    (hsubset : pivots ⊆ fiveMillionR263EvenOneCell N B cell)
    (hcard : pivots.card = 3)
    (hcontained : fiveMillionR263EvenOneCellContained49 N B cell) :
    e1FiniteTripleCommonAt pivots hcard 1 := by
  obtain ⟨residue, hresidue⟩ := hcontained
  refine ⟨residue, ?_⟩
  intro index
  simpa [e1FiniteModulus] using
    hresidue _ (hsubset (globalMixedThreePivotAt_mem pivots hcard index))

private theorem e1CellTripleCommon121_of_contained
    {N : Nat} {B : Finset Nat} {cell : Fin 9}
    {pivots : Finset Nat}
    (hsubset : pivots ⊆ fiveMillionR263EvenOneCell N B cell)
    (hcard : pivots.card = 3)
    (hcontained : fiveMillionR263EvenOneCellContained121 N B cell) :
    e1FiniteTripleCommonAt pivots hcard 2 := by
  obtain ⟨residue, hresidue⟩ := hcontained
  refine ⟨residue, ?_⟩
  intro index
  simpa [e1FiniteModulus] using
    hresidue _ (hsubset (globalMixedThreePivotAt_mem pivots hcard index))

theorem fiveMillionR263EvenOneCell_exists_exact_triple
    {N : Nat} {B : Finset Nat} {cell : Fin 9}
    (hCell : 3 ≤ (fiveMillionR263EvenOneCell N B cell).card) :
    Nonempty (FiveMillionR263EvenOneCellTripleSelection N B cell) := by
  classical
  let points := fiveMillionR263EvenOneCell N B cell
  by_cases h49 : fiveMillionR263EvenOneCellContained49 N B cell
  · by_cases h121 : fiveMillionR263EvenOneCellContained121 N B cell
    · obtain ⟨pivots, hpivots, hpivotsCard⟩ :=
        Finset.exists_subset_card_eq hCell
      refine ⟨{
        pivots := pivots
        subsetCell := hpivots
        card := hpivotsCard
        common49 := ?_
        common121 := ?_ }⟩
      · constructor
        · intro _
          exact h49
        · intro _
          exact e1CellTripleCommon49_of_contained hpivots hpivotsCard h49
      · constructor
        · intro _
          exact h121
        · intro _
          exact e1CellTripleCommon121_of_contained
            hpivots hpivotsCard h121
    · obtain ⟨x, hx, y, hy, hxy, hxy121⟩ :=
        exists_pair_mod_ne_of_not_contained (by norm_num : 0 < 121) h121
      obtain ⟨pivots, hpair, hpivots, hpivotsCard⟩ :=
        exists_triple_superset_pair hx hy hxy hCell
      have hxPivots : x ∈ pivots := hpair (by simp)
      have hyPivots : y ∈ pivots := hpair (by simp)
      have hnotCommon121 :
          ¬ e1FiniteTripleCommonAt pivots hpivotsCard 2 :=
        e1FiniteTripleCommonAt_false_of_two_mem
          hpivotsCard hxPivots hyPivots (index := 2) (by
            simpa [e1FiniteModulus] using hxy121)
      refine ⟨{
        pivots := pivots
        subsetCell := hpivots
        card := hpivotsCard
        common49 := ?_
        common121 := ?_ }⟩
      · constructor
        · intro _
          exact h49
        · intro _
          exact e1CellTripleCommon49_of_contained hpivots hpivotsCard h49
      · constructor
        · intro hcommon
          exact (hnotCommon121 hcommon).elim
        · intro hcontained
          exact (h121 hcontained).elim
  · by_cases h121 : fiveMillionR263EvenOneCellContained121 N B cell
    · obtain ⟨x, hx, y, hy, hxy, hxy49⟩ :=
        exists_pair_mod_ne_of_not_contained (by norm_num : 0 < 49) h49
      obtain ⟨pivots, hpair, hpivots, hpivotsCard⟩ :=
        exists_triple_superset_pair hx hy hxy hCell
      have hxPivots : x ∈ pivots := hpair (by simp)
      have hyPivots : y ∈ pivots := hpair (by simp)
      have hnotCommon49 :
          ¬ e1FiniteTripleCommonAt pivots hpivotsCard 1 :=
        e1FiniteTripleCommonAt_false_of_two_mem
          hpivotsCard hxPivots hyPivots (index := 1) (by
            simpa [e1FiniteModulus] using hxy49)
      refine ⟨{
        pivots := pivots
        subsetCell := hpivots
        card := hpivotsCard
        common49 := ?_
        common121 := ?_ }⟩
      · constructor
        · intro hcommon
          exact (hnotCommon49 hcommon).elim
        · intro hcontained
          exact (h49 hcontained).elim
      · constructor
        · intro _
          exact h121
        · intro _
          exact e1CellTripleCommon121_of_contained
            hpivots hpivotsCard h121
    · obtain ⟨x, hx, y, hy, hxy, hxy49, hxy121⟩ :=
        fiveMillionR263EvenOneGoodCell_pair
          (N := N) (B := B) (cell := cell) ⟨h49, h121⟩
      obtain ⟨pivots, hpair, hpivots, hpivotsCard⟩ :=
        exists_triple_superset_pair hx hy hxy hCell
      have hxPivots : x ∈ pivots := hpair (by simp)
      have hyPivots : y ∈ pivots := hpair (by simp)
      have hnotCommon49 :
          ¬ e1FiniteTripleCommonAt pivots hpivotsCard 1 :=
        e1FiniteTripleCommonAt_false_of_two_mem
          hpivotsCard hxPivots hyPivots (index := 1) (by
            simpa [e1FiniteModulus] using hxy49)
      have hnotCommon121 :
          ¬ e1FiniteTripleCommonAt pivots hpivotsCard 2 :=
        e1FiniteTripleCommonAt_false_of_two_mem
          hpivotsCard hxPivots hyPivots (index := 2) (by
            simpa [e1FiniteModulus] using hxy121)
      refine ⟨{
        pivots := pivots
        subsetCell := hpivots
        card := hpivotsCard
        common49 := ?_
        common121 := ?_ }⟩
      · constructor
        · intro hcommon
          exact (hnotCommon49 hcommon).elim
        · intro hcontained
          exact (h49 hcontained).elim
      · constructor
        · intro hcommon
          exact (hnotCommon121 hcommon).elim
        · intro hcontained
          exact (h121 hcontained).elim

#print axioms exists_pair_mod_ne_of_not_contained
#print axioms exists_triple_superset_pair
#print axioms fiveMillionR263EvenOneCell_exists_exact_triple

end Erdos848
