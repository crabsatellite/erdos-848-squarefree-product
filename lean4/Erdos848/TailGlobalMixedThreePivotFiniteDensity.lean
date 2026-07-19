import Erdos848.TailCRTCounting

namespace Erdos848

/-!
# Uniform cutoff-seven density for three pivots

For each of three forms, a square event at `3` selects at most one residue
modulo `9`, and a square event at `7` selects at most one residue modulo `49`.
This file proves, uniformly over all partial choices of those roots, that at
most `58` of the `9 * 49 = 441` CRT cells activate at least two forms.

The proof is combinatorial.  A modulus can have at most one fibre of size at
least two.  We cover a successful cell by a large mod-nine row, a large
mod-forty-nine column outside those rows, or a crossing of two singleton
fibres.  The resulting budget is

`49 a + (9 - a) b + s t <= 58`,

where `2a + s <= 3` and `2b + t <= 3`.
-/

abbrev GlobalMixedThreePivotForm := Fin 3
abbrev GlobalMixedModNine := Fin 9
abbrev GlobalMixedModFortyNine := Fin 49
abbrev GlobalMixedThreePivotResidue :=
  GlobalMixedModNine × GlobalMixedModFortyNine

def globalMixedPartialRootFibre
    {α : Type*} [Fintype α] [DecidableEq α]
    (root : GlobalMixedThreePivotForm → Option α) (r : α) :
    Finset GlobalMixedThreePivotForm :=
  Finset.univ.filter fun i => root i = some r

def globalMixedLargeRoots
    {α : Type*} [Fintype α] [DecidableEq α]
    (root : GlobalMixedThreePivotForm → Option α) : Finset α :=
  Finset.univ.filter fun r =>
    2 ≤ (globalMixedPartialRootFibre root r).card

def globalMixedSingletonRoots
    {α : Type*} [Fintype α] [DecidableEq α]
    (root : GlobalMixedThreePivotForm → Option α) : Finset α :=
  Finset.univ.filter fun r =>
    (globalMixedPartialRootFibre root r).card = 1

private theorem sum_partialRootFibre_card_le_three
    {α : Type*} [Fintype α] [DecidableEq α]
    (root : GlobalMixedThreePivotForm → Option α) :
    ∑ r : α, (globalMixedPartialRootFibre root r).card ≤ 3 := by
  classical
  calc
    ∑ r : α, (globalMixedPartialRootFibre root r).card =
        ∑ r : α, ∑ i : GlobalMixedThreePivotForm,
          if root i = some r then 1 else 0 := by
            apply Finset.sum_congr rfl
            intro r _hr
            change (Finset.univ.filter fun i : GlobalMixedThreePivotForm =>
              root i = some r).card = _
            simpa only [Finset.mem_univ, ↓reduceIte] using
              (Finset.card_filter
                (fun i : GlobalMixedThreePivotForm => root i = some r)
                Finset.univ)
    _ = ∑ i : GlobalMixedThreePivotForm, ∑ r : α,
          if root i = some r then 1 else 0 := by
            rw [Finset.sum_comm]
    _ ≤ ∑ _i : GlobalMixedThreePivotForm, 1 := by
          apply Finset.sum_le_sum
          intro i _hi
          cases hroot : root i with
          | none => simp
          | some r => simp
    _ = 3 := by norm_num

private theorem large_singleton_root_budget
    {α : Type*} [Fintype α] [DecidableEq α]
    (root : GlobalMixedThreePivotForm → Option α) :
    2 * (globalMixedLargeRoots root).card +
        (globalMixedSingletonRoots root).card ≤ 3 := by
  classical
  let large := globalMixedLargeRoots root
  let single := globalMixedSingletonRoots root
  let fibre := globalMixedPartialRootFibre root
  have hdisjoint : Disjoint large single := by
    refine Finset.disjoint_left.mpr ?_
    intro r hrLarge hrSingle
    have hlarge : 2 ≤ (fibre r).card := by
      exact (Finset.mem_filter.mp hrLarge).2
    have hsingle : (fibre r).card = 1 := by
      exact (Finset.mem_filter.mp hrSingle).2
    omega
  have hlargeLower :
      (∑ r ∈ large, 2) ≤ (∑ r ∈ large, (fibre r).card) := by
    exact Finset.sum_le_sum fun r hr =>
      (Finset.mem_filter.mp hr).2
  have hsingleExact :
      (∑ r ∈ single, 1) = (∑ r ∈ single, (fibre r).card) := by
    apply Finset.sum_congr rfl
    intro r hr
    exact (Finset.mem_filter.mp hr).2.symm
  have hunionUpper :
      (∑ r ∈ large ∪ single, (fibre r).card) ≤
        ∑ r : α, (fibre r).card := by
    exact Finset.sum_le_sum_of_subset (by simp)
  have htotal : ∑ r : α, (fibre r).card ≤ 3 := by
    exact sum_partialRootFibre_card_le_three root
  have hunion :
      (∑ r ∈ large, (fibre r).card) +
          (∑ r ∈ single, (fibre r).card) ≤ 3 := by
    rw [← Finset.sum_union hdisjoint]
    exact hunionUpper.trans htotal
  have hlargeCard : (∑ r ∈ large, 2) = 2 * large.card := by
    simp [Nat.mul_comm]
  have hsingleCard : (∑ r ∈ single, 1) = single.card := by simp
  rw [hlargeCard] at hlargeLower
  rw [hsingleCard] at hsingleExact
  dsimp [large, single] at hlargeLower hsingleExact hunion ⊢
  omega

def globalMixedThreePivotSuccessfulResidues
    (rootNine : GlobalMixedThreePivotForm → Option GlobalMixedModNine)
    (rootFortyNine :
      GlobalMixedThreePivotForm → Option GlobalMixedModFortyNine) :
    Finset GlobalMixedThreePivotResidue :=
  Finset.univ.filter fun residue =>
    2 ≤ ((globalMixedPartialRootFibre rootNine residue.1) ∪
      (globalMixedPartialRootFibre rootFortyNine residue.2)).card

private theorem threePivot_budget_arithmetic
    (a s b t : ℕ)
    (ha : 2 * a + s ≤ 3) (hb : 2 * b + t ≤ 3) :
    49 * a + (9 - a) * b + s * t ≤ 58 := by
  have haOne : a ≤ 1 := by omega
  have hbOne : b ≤ 1 := by omega
  have hs : s ≤ 3 - 2 * a := by omega
  have ht : t ≤ 3 - 2 * b := by omega
  have hst : s * t ≤ (3 - 2 * a) * (3 - 2 * b) :=
    Nat.mul_le_mul hs ht
  interval_cases a <;> interval_cases b <;> norm_num at hst ⊢ <;> omega

/-- Uniform `58 / 441` theorem for every partial collision pattern of the
three literal forms. -/
theorem globalMixedThreePivotSuccessfulResidues_card_le_fiftyEight
    (rootNine : GlobalMixedThreePivotForm → Option GlobalMixedModNine)
    (rootFortyNine :
      GlobalMixedThreePivotForm → Option GlobalMixedModFortyNine) :
    (globalMixedThreePivotSuccessfulResidues
      rootNine rootFortyNine).card ≤ 58 := by
  classical
  let largeNine := globalMixedLargeRoots rootNine
  let singleNine := globalMixedSingletonRoots rootNine
  let largeFortyNine := globalMixedLargeRoots rootFortyNine
  let singleFortyNine := globalMixedSingletonRoots rootFortyNine
  let rows : Finset GlobalMixedThreePivotResidue :=
    largeNine ×ˢ (Finset.univ : Finset GlobalMixedModFortyNine)
  let columns : Finset GlobalMixedThreePivotResidue :=
    ((Finset.univ : Finset GlobalMixedModNine) \ largeNine) ×ˢ
      largeFortyNine
  let crossings : Finset GlobalMixedThreePivotResidue :=
    singleNine ×ˢ singleFortyNine
  have hcover : globalMixedThreePivotSuccessfulResidues
      rootNine rootFortyNine ⊆ rows ∪ columns ∪ crossings := by
    intro residue hresidue
    have hsuccess := (Finset.mem_filter.mp hresidue).2
    by_cases hlargeNine : residue.1 ∈ largeNine
    · exact Finset.mem_union_left _
        (Finset.mem_union_left _
          (Finset.mem_product.mpr ⟨hlargeNine, Finset.mem_univ _⟩))
    by_cases hlargeFortyNine : residue.2 ∈ largeFortyNine
    · exact Finset.mem_union_left _
        (Finset.mem_union_right _
          (Finset.mem_product.mpr
            ⟨Finset.mem_sdiff.mpr ⟨Finset.mem_univ _, hlargeNine⟩,
              hlargeFortyNine⟩))
    · apply Finset.mem_union_right
      apply Finset.mem_product.mpr
      have hnineNotLarge :
          ¬ 2 ≤ (globalMixedPartialRootFibre rootNine residue.1).card := by
        simpa [largeNine, globalMixedLargeRoots] using hlargeNine
      have hfortyNineNotLarge :
          ¬ 2 ≤
            (globalMixedPartialRootFibre rootFortyNine residue.2).card := by
        simpa [largeFortyNine, globalMixedLargeRoots] using
          hlargeFortyNine
      have hunion := Finset.card_union_le
        (globalMixedPartialRootFibre rootNine residue.1)
        (globalMixedPartialRootFibre rootFortyNine residue.2)
      have hnineOne :
          (globalMixedPartialRootFibre rootNine residue.1).card = 1 := by
        omega
      have hfortyNineOne :
          (globalMixedPartialRootFibre rootFortyNine residue.2).card = 1 := by
        omega
      constructor
      · exact Finset.mem_filter.mpr ⟨Finset.mem_univ _, hnineOne⟩
      · exact Finset.mem_filter.mpr ⟨Finset.mem_univ _, hfortyNineOne⟩
  have hcoverCard := Finset.card_le_card hcover
  have hunionCard : (rows ∪ columns ∪ crossings).card ≤
      rows.card + columns.card + crossings.card := by
    calc
      (rows ∪ columns ∪ crossings).card ≤
          (rows ∪ columns).card + crossings.card :=
        Finset.card_union_le _ _
      _ ≤ rows.card + columns.card + crossings.card := by
        exact Nat.add_le_add_right (Finset.card_union_le rows columns) _
  have hrows : rows.card = largeNine.card * 49 := by
    simp [rows]
  have hcolumns : columns.card =
      (9 - largeNine.card) * largeFortyNine.card := by
    rw [show columns =
      ((Finset.univ : Finset GlobalMixedModNine) \ largeNine) ×ˢ
        largeFortyNine by rfl]
    rw [Finset.card_product, Finset.card_sdiff_of_subset (by simp)]
    norm_num
  have hcrossings : crossings.card =
      singleNine.card * singleFortyNine.card := by
    simp [crossings]
  have hnineBudget : 2 * largeNine.card + singleNine.card ≤ 3 := by
    exact large_singleton_root_budget rootNine
  have hfortyNineBudget :
      2 * largeFortyNine.card + singleFortyNine.card ≤ 3 := by
    exact large_singleton_root_budget rootFortyNine
  have harithmetic :
      49 * largeNine.card +
          (9 - largeNine.card) * largeFortyNine.card +
            singleNine.card * singleFortyNine.card ≤ 58 :=
    threePivot_budget_arithmetic _ _ _ _ hnineBudget hfortyNineBudget
  rw [hrows, hcolumns, hcrossings] at hunionCard
  omega

def globalMixedThreePivotNatResidues
    (rootNine : GlobalMixedThreePivotForm → Option GlobalMixedModNine)
    (rootFortyNine :
      GlobalMixedThreePivotForm → Option GlobalMixedModFortyNine) :
    Finset ℕ :=
  (Finset.range 441).filter fun residue =>
    (⟨residue % 9, Nat.mod_lt residue (by norm_num)⟩,
      ⟨residue % 49, Nat.mod_lt residue (by norm_num)⟩) ∈
        globalMixedThreePivotSuccessfulResidues rootNine rootFortyNine

theorem globalMixedThreePivotNatResidues_card_le_fiftyEight
    (rootNine : GlobalMixedThreePivotForm → Option GlobalMixedModNine)
    (rootFortyNine :
      GlobalMixedThreePivotForm → Option GlobalMixedModFortyNine) :
    (globalMixedThreePivotNatResidues rootNine rootFortyNine).card ≤ 58 := by
  let residues := globalMixedThreePivotNatResidues rootNine rootFortyNine
  let triples := globalMixedThreePivotSuccessfulResidues
    rootNine rootFortyNine
  let toTriple : ℕ → GlobalMixedThreePivotResidue := fun residue =>
    (⟨residue % 9, Nat.mod_lt residue (by norm_num)⟩,
      ⟨residue % 49, Nat.mod_lt residue (by norm_num)⟩)
  have hmap : Set.MapsTo toTriple (residues : Set ℕ) triples := by
    intro residue hresidue
    exact (Finset.mem_filter.mp hresidue).2
  have hinjective : Set.InjOn toTriple (residues : Set ℕ) := by
    intro x hx y hy hxy
    have hxBound := Finset.mem_range.mp (Finset.mem_filter.mp hx).1
    have hyBound := Finset.mem_range.mp (Finset.mem_filter.mp hy).1
    simp only [toTriple, Prod.mk.injEq, Fin.mk.injEq] at hxy
    omega
  exact (Finset.card_le_card_of_injOn toTriple hmap hinjective).trans
    (globalMixedThreePivotSuccessfulResidues_card_le_fiftyEight
      rootNine rootFortyNine)

/-- A prefix of a `441`-periodic set with at most `58` residues costs its
main density plus a uniform endpoint of `58`. -/
theorem globalMixedThreePivotPeriodic_count_le
    (residues : Finset ℕ) (length : ℕ)
    (hresidues : residues ⊆ Finset.range 441)
    (hcard : residues.card ≤ 58) :
    (((Finset.range length).filter fun x =>
        x % 441 ∈ residues).card : ℚ) ≤
      (58 / 441 : ℚ) * length + 58 := by
  have hscaled := finiteResidueCount_scaled_le
    residues 441 length (by norm_num) hresidues
  have hperiodCard : residues.card ≤ 441 := by
    simpa using Finset.card_le_card hresidues
  have hmain : residues.card * length ≤ 58 * length :=
    Nat.mul_le_mul_right length hcard
  have hendpoint :
      residues.card * (441 - residues.card) ≤ 58 * 441 := by
    calc
      residues.card * (441 - residues.card) ≤ residues.card * 441 :=
        Nat.mul_le_mul_left _ (Nat.sub_le _ _)
      _ ≤ 58 * 441 := Nat.mul_le_mul_right 441 hcard
  have hscaled' :
      441 * ((Finset.range length).filter fun x =>
          x % 441 ∈ residues).card ≤
        58 * length + 58 * 441 := by
    exact hscaled.trans (Nat.add_le_add hmain hendpoint)
  have hscaledQ :
      (441 : ℚ) * (((Finset.range length).filter fun x =>
          x % 441 ∈ residues).card : ℚ) ≤
        58 * (length : ℚ) + 58 * 441 := by
    exact_mod_cast hscaled'
  norm_num at hscaledQ ⊢
  linarith

/-! ## The sharper all-three row used by the `E2` four-pivot terminal -/

def globalMixedThreePivotAllThreeSuccessfulResidues
    (rootNine : GlobalMixedThreePivotForm -> Option GlobalMixedModNine)
    (rootFortyNine :
      GlobalMixedThreePivotForm -> Option GlobalMixedModFortyNine) :
    Finset GlobalMixedThreePivotResidue :=
  Finset.univ.filter fun residue =>
    3 <= ((globalMixedPartialRootFibre rootNine residue.1) ∪
      (globalMixedPartialRootFibre rootFortyNine residue.2)).card

def globalMixedNonemptyRoots
    {α : Type*} [Fintype α] [DecidableEq α]
    (root : GlobalMixedThreePivotForm -> Option α) : Finset α :=
  Finset.univ.filter fun residue =>
    (globalMixedPartialRootFibre root residue).Nonempty

private theorem globalMixedNonemptyRoots_card_le_three
    {α : Type*} [Fintype α] [DecidableEq α]
    (root : GlobalMixedThreePivotForm -> Option α) :
    (globalMixedNonemptyRoots root).card <= 3 := by
  classical
  let support := globalMixedNonemptyRoots root
  let fibre := globalMixedPartialRootFibre root
  have hlower :
      (∑ residue ∈ support, 1) <=
        ∑ residue ∈ support, (fibre residue).card := by
    apply Finset.sum_le_sum
    intro residue hresidue
    have hnonempty : (fibre residue).Nonempty :=
      (Finset.mem_filter.mp hresidue).2
    exact Finset.one_le_card.mpr hnonempty
  have hupper :
      (∑ residue ∈ support, (fibre residue).card) <=
        ∑ residue : α, (fibre residue).card := by
    exact Finset.sum_le_sum_of_subset (by simp)
  have htotal : ∑ residue : α, (fibre residue).card <= 3 :=
    sum_partialRootFibre_card_le_three root
  have hcard : support.card <= 3 := by
    simpa using hlower.trans (hupper.trans htotal)
  simpa [support] using hcard

/-- If no mod-nine root contains all three forms, at most nine of the
`9 * 49` CRT cells activate all three forms. -/
theorem globalMixedThreePivotAllThreeSuccessfulResidues_card_le_nine
    (rootNine : GlobalMixedThreePivotForm -> Option GlobalMixedModNine)
    (rootFortyNine :
      GlobalMixedThreePivotForm -> Option GlobalMixedModFortyNine)
    (hnine : ∀ residue,
      (globalMixedPartialRootFibre rootNine residue).card <= 2) :
    (globalMixedThreePivotAllThreeSuccessfulResidues
      rootNine rootFortyNine).card <= 9 := by
  classical
  by_cases hcommon : ∃ residue,
      (globalMixedPartialRootFibre rootFortyNine residue).card = 3
  · obtain ⟨common, hcommonCard⟩ := hcommon
    have hcommonEq :
        globalMixedPartialRootFibre rootFortyNine common = Finset.univ := by
      apply Finset.eq_of_subset_of_card_le (Finset.subset_univ _)
      simpa [hcommonCard]
    have hsubset :
        globalMixedThreePivotAllThreeSuccessfulResidues
            rootNine rootFortyNine <=
          (Finset.univ : Finset GlobalMixedModNine) ×ˢ {common} := by
      intro residue hresidue
      apply Finset.mem_product.mpr
      refine ⟨Finset.mem_univ _, ?_⟩
      apply Finset.mem_singleton.mpr
      by_contra hne
      have hotherEmpty :
          globalMixedPartialRootFibre rootFortyNine residue.2 = ∅ := by
        apply Finset.not_nonempty_iff_eq_empty.mp
        intro hnonempty
        obtain ⟨i, hi⟩ := hnonempty
        have hiOther := (Finset.mem_filter.mp hi).2
        have hiCommon : rootFortyNine i = some common := by
          have hiUniv : i ∈ (Finset.univ : Finset GlobalMixedThreePivotForm) :=
            Finset.mem_univ i
          have hiFibre : i ∈
              globalMixedPartialRootFibre rootFortyNine common := by
            simpa [hcommonEq] using hiUniv
          exact (Finset.mem_filter.mp hiFibre).2
        have : residue.2 = common := Option.some.inj (hiOther.symm.trans hiCommon)
        exact hne this
      have hsuccess := (Finset.mem_filter.mp hresidue).2
      rw [hotherEmpty, Finset.union_empty] at hsuccess
      have := hnine residue.1
      omega
    calc
      (globalMixedThreePivotAllThreeSuccessfulResidues
          rootNine rootFortyNine).card <=
          ((Finset.univ : Finset GlobalMixedModNine) ×ˢ {common}).card :=
        Finset.card_le_card hsubset
      _ = 9 := by simp
  · let supportNine := globalMixedNonemptyRoots rootNine
    let supportFortyNine := globalMixedNonemptyRoots rootFortyNine
    have hfortyNine : ∀ residue,
        (globalMixedPartialRootFibre rootFortyNine residue).card <= 2 := by
      intro residue
      have hle :
          (globalMixedPartialRootFibre rootFortyNine residue).card <= 3 := by
        calc
          (globalMixedPartialRootFibre rootFortyNine residue).card <=
              (Finset.univ : Finset GlobalMixedThreePivotForm).card :=
            Finset.card_le_card (Finset.filter_subset _ _)
          _ = 3 := by norm_num
      have hne :
          (globalMixedPartialRootFibre rootFortyNine residue).card ≠ 3 := by
        intro heq
        exact hcommon ⟨residue, heq⟩
      omega
    have hsubset :
        globalMixedThreePivotAllThreeSuccessfulResidues
            rootNine rootFortyNine <=
          supportNine ×ˢ supportFortyNine := by
      intro residue hresidue
      have hsuccess := (Finset.mem_filter.mp hresidue).2
      apply Finset.mem_product.mpr
      constructor
      · apply Finset.mem_filter.mpr
        refine ⟨Finset.mem_univ _, ?_⟩
        by_contra hempty
        rw [Finset.not_nonempty_iff_eq_empty.mp hempty,
          Finset.empty_union] at hsuccess
        have := hfortyNine residue.2
        omega
      · apply Finset.mem_filter.mpr
        refine ⟨Finset.mem_univ _, ?_⟩
        by_contra hempty
        rw [Finset.not_nonempty_iff_eq_empty.mp hempty,
          Finset.union_empty] at hsuccess
        have := hnine residue.1
        omega
    have hnineSupport : supportNine.card <= 3 := by
      simpa [supportNine] using globalMixedNonemptyRoots_card_le_three rootNine
    have hfortyNineSupport : supportFortyNine.card <= 3 := by
      simpa [supportFortyNine] using
        globalMixedNonemptyRoots_card_le_three rootFortyNine
    calc
      (globalMixedThreePivotAllThreeSuccessfulResidues
          rootNine rootFortyNine).card <=
          (supportNine ×ˢ supportFortyNine).card := Finset.card_le_card hsubset
      _ = supportNine.card * supportFortyNine.card := Finset.card_product _ _
      _ <= 3 * 3 := Nat.mul_le_mul hnineSupport hfortyNineSupport
      _ = 9 := by norm_num

def globalMixedThreePivotAllThreeNatResidues
    (rootNine : GlobalMixedThreePivotForm -> Option GlobalMixedModNine)
    (rootFortyNine :
      GlobalMixedThreePivotForm -> Option GlobalMixedModFortyNine) :
    Finset Nat :=
  (Finset.range 441).filter fun residue =>
    (⟨residue % 9, Nat.mod_lt residue (by norm_num)⟩,
      ⟨residue % 49, Nat.mod_lt residue (by norm_num)⟩) ∈
        globalMixedThreePivotAllThreeSuccessfulResidues
          rootNine rootFortyNine

lemma globalMixedThreePivotAllThreeNatResidues_subset_range
    (rootNine : GlobalMixedThreePivotForm -> Option GlobalMixedModNine)
    (rootFortyNine :
      GlobalMixedThreePivotForm -> Option GlobalMixedModFortyNine) :
    globalMixedThreePivotAllThreeNatResidues rootNine rootFortyNine ⊆
      Finset.range 441 :=
  Finset.filter_subset _ _

theorem globalMixedThreePivotAllThreeNatResidues_card_le_nine
    (rootNine : GlobalMixedThreePivotForm -> Option GlobalMixedModNine)
    (rootFortyNine :
      GlobalMixedThreePivotForm -> Option GlobalMixedModFortyNine)
    (hnine : ∀ residue,
      (globalMixedPartialRootFibre rootNine residue).card <= 2) :
    (globalMixedThreePivotAllThreeNatResidues
      rootNine rootFortyNine).card <= 9 := by
  let residues := globalMixedThreePivotAllThreeNatResidues
    rootNine rootFortyNine
  let pairs := globalMixedThreePivotAllThreeSuccessfulResidues
    rootNine rootFortyNine
  let toPair : Nat -> GlobalMixedThreePivotResidue := fun residue =>
    (⟨residue % 9, Nat.mod_lt residue (by norm_num)⟩,
      ⟨residue % 49, Nat.mod_lt residue (by norm_num)⟩)
  have hmap : Set.MapsTo toPair (residues : Set Nat) pairs := by
    intro residue hresidue
    exact (Finset.mem_filter.mp hresidue).2
  have hinjective : Set.InjOn toPair (residues : Set Nat) := by
    intro x hx y hy hxy
    have hxBound := Finset.mem_range.mp (Finset.mem_filter.mp hx).1
    have hyBound := Finset.mem_range.mp (Finset.mem_filter.mp hy).1
    simp only [toPair, Prod.mk.injEq, Fin.mk.injEq] at hxy
    omega
  exact (Finset.card_le_card_of_injOn toPair hmap hinjective).trans
    (globalMixedThreePivotAllThreeSuccessfulResidues_card_le_nine
      rootNine rootFortyNine hnine)

#print axioms globalMixedThreePivotSuccessfulResidues_card_le_fiftyEight
#print axioms globalMixedThreePivotNatResidues_card_le_fiftyEight
#print axioms globalMixedThreePivotPeriodic_count_le
#print axioms globalMixedThreePivotAllThreeSuccessfulResidues_card_le_nine
#print axioms globalMixedThreePivotAllThreeNatResidues_card_le_nine

end Erdos848
