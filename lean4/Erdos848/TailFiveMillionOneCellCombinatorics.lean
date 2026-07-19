import Erdos848.TailFiveMillionOneCellSelectedProducer
import Erdos848.TailTenMillionCombinatorics

namespace Erdos848

/-!
# The literal one-active-cell mod-49 dichotomy

Four fibres of size at least two give the eight-pivot capacity-two branch.
Otherwise the points outside the at most three heavy fibres form a charge of
at most 49 points.  The six pivots used in the failure branch are selected
before this extra charge.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def fiveMillionNatModFortyNine (x : Nat) : FiveMillionModFortyNine :=
  ⟨x % 49, Nat.mod_lt x (by norm_num)⟩

def fiveMillionOneCellHeavyRoots (points : Finset Nat) :
    Finset FiveMillionModFortyNine :=
  Finset.univ.filter fun residue =>
    2 ≤ (fiveMillionSelectedModFortyNineFibre points residue).card

def fiveMillionOneCellLightCharge (points : Finset Nat) : Finset Nat :=
  points.filter fun x =>
    fiveMillionNatModFortyNine x ∉ fiveMillionOneCellHeavyRoots points

noncomputable def fiveMillionChooseTwoFromFibre
    (points : Finset Nat) (residue : FiveMillionModFortyNine) : Finset Nat := by
  classical
  exact if h : 2 ≤
      (fiveMillionSelectedModFortyNineFibre points residue).card then
    Classical.choose (Finset.exists_subset_card_eq h)
  else ∅

lemma fiveMillionChooseTwoFromFibre_subset
    {points : Finset Nat} {residue : FiveMillionModFortyNine}
    (hheavy : residue ∈ fiveMillionOneCellHeavyRoots points) :
    fiveMillionChooseTwoFromFibre points residue ⊆
      fiveMillionSelectedModFortyNineFibre points residue := by
  classical
  have htwo : 2 ≤
      (fiveMillionSelectedModFortyNineFibre points residue).card :=
    (Finset.mem_filter.mp hheavy).2
  rw [fiveMillionChooseTwoFromFibre, dif_pos htwo]
  exact (Classical.choose_spec (Finset.exists_subset_card_eq htwo)).1

lemma fiveMillionChooseTwoFromFibre_card
    {points : Finset Nat} {residue : FiveMillionModFortyNine}
    (hheavy : residue ∈ fiveMillionOneCellHeavyRoots points) :
    (fiveMillionChooseTwoFromFibre points residue).card = 2 := by
  classical
  have htwo : 2 ≤
      (fiveMillionSelectedModFortyNineFibre points residue).card :=
    (Finset.mem_filter.mp hheavy).2
  rw [fiveMillionChooseTwoFromFibre, dif_pos htwo]
  exact (Classical.choose_spec (Finset.exists_subset_card_eq htwo)).2

theorem fiveMillionOneCell_fourHeavy_select_eight
    {points : Finset Nat}
    (hfour : 4 ≤ (fiveMillionOneCellHeavyRoots points).card) :
    ∃ selected : Finset Nat,
      selected ⊆ points ∧ selected.card = 8 ∧
      ∀ residue : FiveMillionModFortyNine,
        (fiveMillionSelectedModFortyNineFibre selected residue).card ≤ 2 := by
  classical
  let fourExists := Finset.exists_subset_card_eq hfour
  let roots : Finset FiveMillionModFortyNine := Classical.choose fourExists
  have hrootsSubset : roots ⊆ fiveMillionOneCellHeavyRoots points :=
    (Classical.choose_spec fourExists).1
  have hrootsCard : roots.card = 4 :=
    (Classical.choose_spec fourExists).2
  let selected := roots.biUnion fun residue =>
    fiveMillionChooseTwoFromFibre points residue
  have hselectedSubset : selected ⊆ points := by
    intro x hx
    obtain ⟨residue, hresidue, hxPair⟩ := Finset.mem_biUnion.mp hx
    exact (Finset.mem_filter.mp
      (fiveMillionChooseTwoFromFibre_subset
        (hrootsSubset hresidue) hxPair)).1
  have hpairsDisjoint : ∀ left ∈ roots, ∀ right ∈ roots, left ≠ right →
      Disjoint (fiveMillionChooseTwoFromFibre points left)
        (fiveMillionChooseTwoFromFibre points right) := by
    intro left hleft right hright hne
    apply Finset.disjoint_left.mpr
    intro x hxLeft hxRight
    have hxLeftFibre := fiveMillionChooseTwoFromFibre_subset
      (hrootsSubset hleft) hxLeft
    have hxRightFibre := fiveMillionChooseTwoFromFibre_subset
      (hrootsSubset hright) hxRight
    have hleftValue := (Finset.mem_filter.mp hxLeftFibre).2
    have hrightValue := (Finset.mem_filter.mp hxRightFibre).2
    apply hne
    apply Fin.ext
    exact hleftValue.symm.trans hrightValue
  have hselectedCard : selected.card = 8 := by
    calc
      selected.card = ∑ residue ∈ roots,
          (fiveMillionChooseTwoFromFibre points residue).card := by
        dsimp [selected]
        rw [Finset.card_biUnion]
        exact hpairsDisjoint
      _ = ∑ _residue ∈ roots, 2 := by
        apply Finset.sum_congr rfl
        intro residue hresidue
        exact fiveMillionChooseTwoFromFibre_card
          (hrootsSubset hresidue)
      _ = 8 := by simp [hrootsCard]
  refine ⟨selected, hselectedSubset, hselectedCard, ?_⟩
  intro residue
  by_cases hresidue : residue ∈ roots
  · have hsubset :
        fiveMillionSelectedModFortyNineFibre selected residue ⊆
          fiveMillionChooseTwoFromFibre points residue := by
      intro x hx
      have hxValue := (Finset.mem_filter.mp hx).2
      obtain ⟨source, hsource, hxSource⟩ :=
        Finset.mem_biUnion.mp (Finset.mem_filter.mp hx).1
      have hxSourceFibre := fiveMillionChooseTwoFromFibre_subset
        (hrootsSubset hsource) hxSource
      have hsourceValue := (Finset.mem_filter.mp hxSourceFibre).2
      have hsourceEq : source = residue := by
        apply Fin.ext
        exact hsourceValue.symm.trans hxValue
      simpa [hsourceEq] using hxSource
    calc
      (fiveMillionSelectedModFortyNineFibre selected residue).card ≤
          (fiveMillionChooseTwoFromFibre points residue).card :=
        Finset.card_le_card hsubset
      _ = 2 := fiveMillionChooseTwoFromFibre_card
        (hrootsSubset hresidue)
  · have hempty :
        fiveMillionSelectedModFortyNineFibre selected residue = ∅ := by
      apply Finset.not_nonempty_iff_eq_empty.mp
      intro hnonempty
      obtain ⟨x, hx⟩ := hnonempty
      have hxValue := (Finset.mem_filter.mp hx).2
      obtain ⟨source, hsource, hxSource⟩ :=
        Finset.mem_biUnion.mp (Finset.mem_filter.mp hx).1
      have hxSourceFibre := fiveMillionChooseTwoFromFibre_subset
        (hrootsSubset hsource) hxSource
      have hsourceValue := (Finset.mem_filter.mp hxSourceFibre).2
      apply hresidue
      have hsourceEq : source = residue := by
        apply Fin.ext
        exact hsourceValue.symm.trans hxValue
      simpa [hsourceEq] using hsource
    simp [hempty]

lemma fiveMillionOneCellLightCharge_subset (points : Finset Nat) :
    fiveMillionOneCellLightCharge points ⊆ points :=
  Finset.filter_subset _ _

theorem fiveMillionOneCellLightCharge_card_le_fortyNine
    (points : Finset Nat) :
    (fiveMillionOneCellLightCharge points).card ≤ 49 := by
  classical
  apply card_le_cellCount_mul_of_fibres_le
    (points := fiveMillionOneCellLightCharge points)
    (cell := fiveMillionNatModFortyNine) (gap := 1)
  intro residue
  by_cases hheavy : residue ∈ fiveMillionOneCellHeavyRoots points
  · have hempty : cellFibre (fiveMillionOneCellLightCharge points)
        fiveMillionNatModFortyNine residue = ∅ := by
      apply Finset.not_nonempty_iff_eq_empty.mp
      intro hnonempty
      obtain ⟨x, hx⟩ := hnonempty
      have hxCharge := (Finset.mem_filter.mp
        (Finset.mem_filter.mp hx).1).2
      have hxResidue := (Finset.mem_filter.mp hx).2
      apply hxCharge
      simpa [hxResidue] using hheavy
    simp [hempty]
  · have horiginal :
        (fiveMillionSelectedModFortyNineFibre points residue).card ≤ 1 := by
      have hnotTwo : ¬ 2 ≤
          (fiveMillionSelectedModFortyNineFibre points residue).card := by
        intro htwo
        exact hheavy (Finset.mem_filter.mpr ⟨Finset.mem_univ _, htwo⟩)
      omega
    have hsubset :
        cellFibre (fiveMillionOneCellLightCharge points)
            fiveMillionNatModFortyNine residue ⊆
          fiveMillionSelectedModFortyNineFibre points residue := by
      intro x hx
      have hxCharge := (Finset.mem_filter.mp hx).1
      have hxPoint := (Finset.mem_filter.mp hxCharge).1
      have hxResidue := congrArg Fin.val (Finset.mem_filter.mp hx).2
      apply Finset.mem_filter.mpr
      refine ⟨hxPoint, ?_⟩
      simpa [fiveMillionNatModFortyNine] using hxResidue
    exact (Finset.card_le_card hsubset).trans horiginal

theorem fiveMillionOneCellCapacityOrThreeFibreCharge
    (points : Finset Nat) :
    (∃ selected : Finset Nat,
      selected ⊆ points ∧ selected.card = 8 ∧
      ∀ residue : FiveMillionModFortyNine,
        (fiveMillionSelectedModFortyNineFibre selected residue).card ≤ 2) ∨
    (∃ charge : Finset Nat,
      charge ⊆ points ∧ charge.card ≤ 49 ∧
      (fiveMillionOneCellHeavyRoots points).card ≤ 3 ∧
      ∀ x ∈ points \ charge,
        fiveMillionNatModFortyNine x ∈ fiveMillionOneCellHeavyRoots points) := by
  classical
  by_cases hfour : 4 ≤ (fiveMillionOneCellHeavyRoots points).card
  · exact Or.inl (fiveMillionOneCell_fourHeavy_select_eight hfour)
  · apply Or.inr
    refine ⟨fiveMillionOneCellLightCharge points,
      fiveMillionOneCellLightCharge_subset points,
      fiveMillionOneCellLightCharge_card_le_fortyNine points, by omega, ?_⟩
    intro x hx
    have hxNotCharge := (Finset.mem_sdiff.mp hx).2
    have hxPoint := (Finset.mem_sdiff.mp hx).1
    by_contra hnotHeavy
    apply hxNotCharge
    exact Finset.mem_filter.mpr ⟨hxPoint, hnotHeavy⟩

def fiveMillionSelectedRawRoots
    (selected : Finset Nat) (threshold : Nat) :
    Finset FiveMillionModFortyNine :=
  Finset.univ.filter fun residue =>
    threshold ≤
      (fiveMillionSelectedModFortyNineFibre selected residue).card

lemma fiveMillionSelectedFibre_card_sum (selected : Finset Nat) :
    ∑ residue : FiveMillionModFortyNine,
        (fiveMillionSelectedModFortyNineFibre selected residue).card =
      selected.card := by
  classical
  have hmaps : Set.MapsTo fiveMillionNatModFortyNine
      (selected : Set Nat) (Finset.univ : Finset FiveMillionModFortyNine) := by
    intro x hx
    exact Finset.mem_univ _
  rw [Finset.card_eq_sum_card_fiberwise hmaps]
  apply Finset.sum_congr rfl
  intro residue _hresidue
  congr 1
  ext x
  simp only [fiveMillionSelectedModFortyNineFibre,
    fiveMillionNatModFortyNine, Finset.mem_filter]
  constructor
  · intro hx
    refine ⟨hx.1, ?_⟩
    apply Fin.ext
    exact hx.2
  · intro hx
    refine ⟨hx.1, ?_⟩
    exact congrArg Fin.val hx.2

theorem fiveMillionSixSelected_threshold_dichotomy
    {selected : Finset Nat} (hcard : selected.card = 6) :
    (fiveMillionSelectedRawRoots selected 2).card ≤ 2 ∨
      (fiveMillionSelectedRawRoots selected 3).card = 0 := by
  classical
  by_cases htwo : (fiveMillionSelectedRawRoots selected 2).card ≤ 2
  · exact Or.inl htwo
  · apply Or.inr
    apply Nat.eq_zero_of_not_pos
    intro hthreePositive
    obtain ⟨root, hrootThree⟩ := Finset.card_pos.mp hthreePositive
    let rootsTwo := fiveMillionSelectedRawRoots selected 2
    let fibre := fiveMillionSelectedModFortyNineFibre selected
    have hrootTwo : root ∈ fiveMillionSelectedRawRoots selected 2 := by
      have hthree := (Finset.mem_filter.mp hrootThree).2
      exact Finset.mem_filter.mpr ⟨Finset.mem_univ _, by omega⟩
    have hrootTwo' : root ∈ rootsTwo := by
      simpa [rootsTwo] using hrootTwo
    have heraseLower :
        2 * (rootsTwo.erase root).card ≤
          ∑ residue ∈ rootsTwo.erase root, (fibre residue).card := by
      calc
        2 * (rootsTwo.erase root).card =
            ∑ _residue ∈ rootsTwo.erase root, 2 := by simp [Nat.mul_comm]
        _ ≤ ∑ residue ∈ rootsTwo.erase root, (fibre residue).card := by
          exact Finset.sum_le_sum fun residue hresidue =>
            (Finset.mem_filter.mp
              (Finset.mem_of_mem_erase hresidue)).2
    have hrootThreeCard : 3 ≤ (fibre root).card :=
      (Finset.mem_filter.mp hrootThree).2
    have hrootsTwoLower :
        2 * rootsTwo.card + 1 ≤
          ∑ residue ∈ rootsTwo, (fibre residue).card := by
      rw [← Finset.sum_erase_add _ _ hrootTwo']
      have heraseCard := Finset.card_erase_of_mem hrootTwo'
      have hrootsPositive : 0 < rootsTwo.card :=
        Finset.card_pos.mpr ⟨root, hrootTwo'⟩
      omega
    have hsubsetSum :
        ∑ residue ∈ rootsTwo, (fibre residue).card ≤
          ∑ residue : FiveMillionModFortyNine, (fibre residue).card := by
      exact Finset.sum_le_sum_of_subset (by simp [rootsTwo])
    have htotal := fiveMillionSelectedFibre_card_sum selected
    dsimp [fibre] at hrootsTwoLower hsubsetSum htotal
    have hthreeRoots : 3 ≤ rootsTwo.card := by
      dsimp [rootsTwo]
      omega
    omega

#print axioms fiveMillionOneCell_fourHeavy_select_eight
#print axioms fiveMillionOneCellLightCharge_card_le_fortyNine
#print axioms fiveMillionOneCellCapacityOrThreeFibreCharge
#print axioms fiveMillionSixSelected_threshold_dichotomy

end Erdos848
