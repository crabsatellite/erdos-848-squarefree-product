import Erdos848.TailPeriodicGeneric

namespace Erdos848

/-!
# Finite periodic combinatorics for the two-odd R263 rows

The finite primes are `2,3,7`, hence the quotient period is
`4 * 9 * 49 = 1764`.  Root functions are allowed to be partial; a missing
root only removes events.  The lemmas below count actual root fibres, not a
floating-point density.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def optionRootFibre
    {Form : Type*} [DecidableEq Form] {m : Nat}
    (forms : Finset Form) (root : Form -> Option (Fin m))
    (residue : Fin m) : Finset Form :=
  forms.filter fun form => root form = some residue

def successfulOptionRoots
    {Form : Type*} [DecidableEq Form] {m : Nat}
    (forms base : Finset Form) (threshold : Nat)
    (root : Form -> Option (Fin m)) : Finset (Fin m) :=
  Finset.univ.filter fun residue =>
    threshold <=
      (base ∪ optionRootFibre forms root residue).card

def optionRootPeriodicThresholdResidues
    {Form : Type*} [DecidableEq Form]
    (forms : Finset Form) (threshold : Nat)
    (rootFour : Form -> Option (Fin 4))
    (rootNine : Form -> Option (Fin 9))
    (rootFortyNine : Form -> Option (Fin 49)) :
    Finset (Fin 4 × (Fin 9 × Fin 49)) :=
  Finset.univ.filter fun residue =>
    threshold <=
      (optionRootFibre forms rootFour residue.1 ∪
        optionRootFibre forms rootNine residue.2.1 ∪
        optionRootFibre forms rootFortyNine residue.2.2).card

theorem optionRootPeriodicThresholdResidues_card
    {Form : Type*} [DecidableEq Form]
    (forms : Finset Form) (threshold : Nat)
    (rootFour : Form -> Option (Fin 4))
    (rootNine : Form -> Option (Fin 9))
    (rootFortyNine : Form -> Option (Fin 49)) :
    (optionRootPeriodicThresholdResidues forms threshold
      rootFour rootNine rootFortyNine).card =
      ∑ residueFour : Fin 4, ∑ residueNine : Fin 9,
        (successfulOptionRoots forms
          (optionRootFibre forms rootFour residueFour ∪
            optionRootFibre forms rootNine residueNine)
          threshold rootFortyNine).card := by
  classical
  unfold optionRootPeriodicThresholdResidues successfulOptionRoots
  rw [Finset.card_eq_sum_ones]
  simp only [Finset.sum_filter, Fintype.sum_prod_type]
  apply Finset.sum_congr rfl
  intro residueFour _hFour
  apply Finset.sum_congr rfl
  intro residueNine _hNine
  rw [Finset.card_eq_sum_ones]
  simp only [Finset.sum_filter]

private theorem sum_optionRootFibre_card_le
    {Form : Type*} [DecidableEq Form] {m : Nat}
    (forms : Finset Form) (root : Form -> Option (Fin m)) :
    (∑ residue : Fin m,
      (optionRootFibre forms root residue).card) <= forms.card := by
  classical
  have hpartition := Finset.card_eq_sum_card_fiberwise
    (s := forms)
    (t := (Finset.univ : Finset (Option (Fin m))))
    (f := root) (by simp)
  have hfull :
      (∑ residue : Option (Fin m),
        (forms.filter fun form => root form = residue).card) =
        forms.card := by
    simpa only using hpartition.symm
  rw [Fintype.sum_option] at hfull
  simpa [optionRootFibre] using
    (show
      (∑ residue : Fin m,
        (forms.filter fun form => root form = some residue).card) <=
          (forms.filter fun form => root form = none).card +
            ∑ residue : Fin m,
              (forms.filter fun form => root form = some residue).card by
      omega).trans_eq hfull

private theorem successfulOptionRoots_mul_le_outside
    {Form : Type*} [DecidableEq Form] {m threshold need : Nat}
    (forms base : Finset Form) (root : Form -> Option (Fin m))
    (hneed : ∀ residue ∈
        successfulOptionRoots forms base threshold root,
      need <=
        (optionRootFibre forms root residue \ base).card) :
    need * (successfulOptionRoots forms base threshold root).card <=
      (forms \ base).card := by
  classical
  let success := successfulOptionRoots forms base threshold root
  have hlower :
      need * success.card <=
        ∑ residue ∈ success,
          (optionRootFibre forms root residue \ base).card := by
    simpa [Nat.mul_comm] using
      Finset.sum_le_sum (fun residue hresidue => hneed residue hresidue)
  have hfibreEq : ∀ residue : Fin m,
      optionRootFibre forms root residue \ base =
        optionRootFibre (forms \ base) root residue := by
    intro residue
    ext form
    simp only [optionRootFibre, Finset.mem_sdiff, Finset.mem_filter]
    constructor
    · rintro ⟨⟨hform, hroot⟩, hbase⟩
      exact ⟨⟨hform, hbase⟩, hroot⟩
    · rintro ⟨⟨hform, hbase⟩, hroot⟩
      exact ⟨⟨hform, hroot⟩, hbase⟩
  have hupper :
      (∑ residue ∈ success,
          (optionRootFibre forms root residue \ base).card) <=
        (forms \ base).card := by
    calc
      (∑ residue ∈ success,
          (optionRootFibre forms root residue \ base).card) <=
          ∑ residue : Fin m,
            (optionRootFibre forms root residue \ base).card := by
        exact Finset.sum_le_sum_of_subset (by
          intro residue _hResidue
          exact Finset.mem_univ residue)
      _ = ∑ residue : Fin m,
          (optionRootFibre (forms \ base) root residue).card := by
        apply Finset.sum_congr rfl
        intro residue _hResidue
        rw [hfibreEq residue]
      _ <= (forms \ base).card :=
        sum_optionRootFibre_card_le (forms \ base) root
  exact hlower.trans hupper

private theorem successfulOptionRoots_card_le_two_of_base_two
    {Form : Type*} [DecidableEq Form] {m : Nat}
    {forms base : Finset Form} {root : Form -> Option (Fin m)}
    (hforms : forms.card = 4) (hbase : base.card = 2)
    (hbaseSubset : base ⊆ forms) :
    (successfulOptionRoots forms base 3 root).card <= 2 := by
  have hmul := successfulOptionRoots_mul_le_outside
    (forms := forms) (base := base) (root := root)
    (threshold := 3) (need := 1) (by
      intro residue hresidue
      have hsuccess := (Finset.mem_filter.mp hresidue).2
      have hcover :
          base ∪ optionRootFibre forms root residue ⊆
            base ∪ (optionRootFibre forms root residue \ base) := by
        intro form hform
        rcases Finset.mem_union.mp hform with hform | hform
        · exact Finset.mem_union_left _ hform
        · by_cases hbaseMem : form ∈ base
          · exact Finset.mem_union_left _ hbaseMem
          · exact Finset.mem_union_right _
              (Finset.mem_sdiff.mpr ⟨hform, hbaseMem⟩)
      have hcard := (Finset.card_le_card hcover).trans
        (Finset.card_union_le base
          (optionRootFibre forms root residue \ base))
      omega)
  have hsplit :
      (forms \ base).card + base.card = forms.card :=
    Finset.card_sdiff_add_card_eq_card hbaseSubset
  omega

private theorem successfulOptionRoots_card_le_one_of_empty_base
    {Form : Type*} [DecidableEq Form] {m : Nat}
    {forms : Finset Form} {root : Form -> Option (Fin m)}
    (hforms : forms.card = 4) :
    (successfulOptionRoots forms ∅ 3 root).card <= 1 := by
  have hmul := successfulOptionRoots_mul_le_outside
    (forms := forms) (base := ∅) (root := root)
    (threshold := 3) (need := 3) (by
      intro residue hresidue
      simpa [successfulOptionRoots] using
        (Finset.mem_filter.mp hresidue).2)
  simp only [Finset.sdiff_empty, hforms] at hmul
  omega

private theorem optionRootFibre_subset_forms
    {Form : Type*} [DecidableEq Form] {m : Nat}
    (forms : Finset Form) (root : Form -> Option (Fin m))
    (residue : Fin m) :
    optionRootFibre forms root residue ⊆ forms := by
  intro form hform
  exact (Finset.mem_filter.mp hform).1

private theorem sum_optionRootFibre_sdiff_card_le
    {Form : Type*} [DecidableEq Form] {m : Nat}
    (forms base : Finset Form) (root : Form -> Option (Fin m)) :
    (∑ residue : Fin m,
      (optionRootFibre forms root residue \ base).card) <=
        (forms \ base).card := by
  classical
  calc
    (∑ residue : Fin m,
      (optionRootFibre forms root residue \ base).card) =
        ∑ residue : Fin m,
          (optionRootFibre (forms \ base) root residue).card := by
      apply Finset.sum_congr rfl
      intro residue _hResidue
      congr 1
      ext form
      simp only [optionRootFibre, Finset.mem_sdiff, Finset.mem_filter]
      constructor
      · rintro ⟨⟨hform, hroot⟩, hbase⟩
        exact ⟨⟨hform, hbase⟩, hroot⟩
      · rintro ⟨⟨hform, hbase⟩, hroot⟩
        exact ⟨⟨hform, hroot⟩, hbase⟩
    _ <= (forms \ base).card :=
      sum_optionRootFibre_card_le (forms \ base) root

private theorem successfulOptionRoots_mul_le_of_exact_base
    {Form : Type*} [DecidableEq Form] {m : Nat}
    {forms base : Finset Form} {root : Form -> Option (Fin m)}
    {formCard baseCard threshold need : Nat}
    (hforms : forms.card = formCard)
    (hbase : base.card = baseCard)
    (hbaseSubset : base ⊆ forms)
    (hthreshold : threshold = baseCard + need) :
    need * (successfulOptionRoots forms base threshold root).card <=
      formCard - baseCard := by
  have hmul := successfulOptionRoots_mul_le_outside
    (forms := forms) (base := base) (root := root)
    (threshold := threshold) (need := need) (by
      intro residue hresidue
      have hsuccess := (Finset.mem_filter.mp hresidue).2
      have hcover :
          base ∪ optionRootFibre forms root residue ⊆
            base ∪ (optionRootFibre forms root residue \ base) := by
        intro form hform
        rcases Finset.mem_union.mp hform with hform | hform
        · exact Finset.mem_union_left _ hform
        · by_cases hbaseMem : form ∈ base
          · exact Finset.mem_union_left _ hbaseMem
          · exact Finset.mem_union_right _
              (Finset.mem_sdiff.mpr ⟨hform, hbaseMem⟩)
      have hcard := (Finset.card_le_card hcover).trans
        (Finset.card_union_le base
          (optionRootFibre forms root residue \ base))
      omega)
  have hsplit :
      (forms \ base).card + base.card = forms.card :=
    Finset.card_sdiff_add_card_eq_card hbaseSubset
  omega

private theorem finNine_sum_49_else_2 (distinguished : Fin 9) :
    (∑ residue : Fin 9, if residue = distinguished then 49 else 2) = 65 := by
  let f : Fin 9 -> Nat :=
    fun residue => if residue = distinguished then 49 else 2
  have hrest :
      (∑ residue ∈ (Finset.univ : Finset (Fin 9)).erase distinguished,
        f residue) = 16 := by
    calc
      (∑ residue ∈ (Finset.univ : Finset (Fin 9)).erase distinguished,
        f residue) =
          ∑ _residue ∈ (Finset.univ : Finset (Fin 9)).erase distinguished,
            2 := by
        apply Finset.sum_congr rfl
        intro residue hresidue
        have hne := (Finset.mem_erase.mp hresidue).1
        simp [f, hne]
      _ = 16 := by simp
  calc
    (∑ residue : Fin 9, if residue = distinguished then 49 else 2) =
        (∑ residue ∈ (Finset.univ : Finset (Fin 9)).erase distinguished,
          f residue) + f distinguished := by
      simpa [f] using
        (Finset.sum_erase_add (Finset.univ : Finset (Fin 9)) f
          (Finset.mem_univ distinguished)).symm
    _ = 65 := by simp [hrest, f]

private theorem finNine_sum_49_else_1 (distinguished : Fin 9) :
    (∑ residue : Fin 9, if residue = distinguished then 49 else 1) = 57 := by
  let f : Fin 9 -> Nat :=
    fun residue => if residue = distinguished then 49 else 1
  have hrest :
      (∑ residue ∈ (Finset.univ : Finset (Fin 9)).erase distinguished,
        f residue) = 8 := by
    calc
      (∑ residue ∈ (Finset.univ : Finset (Fin 9)).erase distinguished,
        f residue) =
          ∑ _residue ∈ (Finset.univ : Finset (Fin 9)).erase distinguished,
            1 := by
        apply Finset.sum_congr rfl
        intro residue hresidue
        have hne := (Finset.mem_erase.mp hresidue).1
        simp [f, hne]
      _ = 8 := by simp
  calc
    (∑ residue : Fin 9, if residue = distinguished then 49 else 1) =
        (∑ residue ∈ (Finset.univ : Finset (Fin 9)).erase distinguished,
          f residue) + f distinguished := by
      simpa [f] using
        (Finset.sum_erase_add (Finset.univ : Finset (Fin 9)) f
          (Finset.mem_univ distinguished)).symm
    _ = 57 := by simp [hrest, f]

private theorem finNine_sum_pair_2_else_1
    (first second : Fin 9) (hne : first ≠ second) :
    (∑ residue : Fin 9,
      if residue = first ∨ residue = second then 2 else 1) = 11 := by
  let f : Fin 9 -> Nat := fun residue =>
    if residue = first ∨ residue = second then 2 else 1
  have hsecond :
      second ∈ (Finset.univ : Finset (Fin 9)).erase first := by
    simp [Ne.symm hne]
  have hrest :
      (∑ residue ∈
        ((Finset.univ : Finset (Fin 9)).erase first).erase second,
        f residue) = 7 := by
    calc
      (∑ residue ∈
        ((Finset.univ : Finset (Fin 9)).erase first).erase second,
        f residue) =
          ∑ _residue ∈
            ((Finset.univ : Finset (Fin 9)).erase first).erase second,
            1 := by
        apply Finset.sum_congr rfl
        intro residue hresidue
        have hsecondNe := (Finset.mem_erase.mp hresidue).1
        have hfirstNe :=
          (Finset.mem_erase.mp (Finset.mem_erase.mp hresidue).2).1
        simp [f, hfirstNe, hsecondNe]
      _ = 7 := by simp [hsecond]
  calc
    (∑ residue : Fin 9,
      if residue = first ∨ residue = second then 2 else 1) =
        (∑ residue ∈ (Finset.univ : Finset (Fin 9)).erase first,
          f residue) + f first := by
      simpa [f] using
        (Finset.sum_erase_add (Finset.univ : Finset (Fin 9)) f
          (Finset.mem_univ first)).symm
    _ = ((∑ residue ∈
          ((Finset.univ : Finset (Fin 9)).erase first).erase second,
          f residue) + f second) + f first := by
      rw [Finset.sum_erase_add
        ((Finset.univ : Finset (Fin 9)).erase first) f hsecond]
    _ = 11 := by simp [hrest, f, hne, Ne.symm hne]

private theorem finFour_sum_two_rows
    (first second : Fin 4) (hne : first ≠ second)
    (exceptional ordinary : Nat) :
    (∑ residue : Fin 4,
      if residue = first then exceptional
      else if residue = second then exceptional else ordinary) =
        2 * exceptional + 2 * ordinary := by
  let f : Fin 4 -> Nat := fun residue =>
    if residue = first then exceptional
    else if residue = second then exceptional else ordinary
  have hsecond :
      second ∈ (Finset.univ : Finset (Fin 4)).erase first := by
    simp [Ne.symm hne]
  have hrest :
      (∑ residue ∈
        ((Finset.univ : Finset (Fin 4)).erase first).erase second,
        f residue) = 2 * ordinary := by
    calc
      (∑ residue ∈
        ((Finset.univ : Finset (Fin 4)).erase first).erase second,
        f residue) =
          ∑ _residue ∈
            ((Finset.univ : Finset (Fin 4)).erase first).erase second,
            ordinary := by
        apply Finset.sum_congr rfl
        intro residue hresidue
        have hsecondNe := (Finset.mem_erase.mp hresidue).1
        have hfirstNe :=
          (Finset.mem_erase.mp (Finset.mem_erase.mp hresidue).2).1
        simp [f, hfirstNe, hsecondNe]
      _ = 2 * ordinary := by simp [hsecond]
  calc
    (∑ residue : Fin 4,
      if residue = first then exceptional
      else if residue = second then exceptional else ordinary) =
        (∑ residue ∈ (Finset.univ : Finset (Fin 4)).erase first,
          f residue) + f first := by
      simpa [f] using
        (Finset.sum_erase_add (Finset.univ : Finset (Fin 4)) f
          (Finset.mem_univ first)).symm
    _ = ((∑ residue ∈
          ((Finset.univ : Finset (Fin 4)).erase first).erase second,
          f residue) + f second) + f first := by
      rw [Finset.sum_erase_add
        ((Finset.univ : Finset (Fin 4)).erase first) f hsecond]
    _ = 2 * exceptional + 2 * ordinary := by
      simp only [hrest, f, if_pos, Ne.symm hne, if_false]
      omega

/-- Four forms split into the same two pairs at the mod-4 and mod-9 layers.
The exact worst count is `152` out of `1764`. -/
theorem oddTwoSplitPairs_periodic_card_le_152
    {Form : Type*} [DecidableEq Form]
    {forms left right : Finset Form}
    {rootFour : Form -> Option (Fin 4)}
    {rootNine : Form -> Option (Fin 9)}
    (rootFortyNine : Form -> Option (Fin 49))
    (hforms : forms.card = 4)
    (hleft : left.card = 2) (hright : right.card = 2)
    (hcover : left ∪ right = forms)
    {leftFour rightFour : Fin 4}
    (hfourNe : leftFour ≠ rightFour)
    (hfour : ∀ residue,
      optionRootFibre forms rootFour residue =
        if residue = leftFour then left
        else if residue = rightFour then right else ∅)
    {leftNine rightNine : Fin 9}
    (hnineNe : leftNine ≠ rightNine)
    (hnine : ∀ residue,
      optionRootFibre forms rootNine residue =
        if residue = leftNine then left
        else if residue = rightNine then right else ∅) :
    (optionRootPeriodicThresholdResidues forms 3
      rootFour rootNine rootFortyNine).card <= 152 := by
  classical
  have hleftSubset : left ⊆ forms := by
    rw [← hcover]
    exact Finset.subset_union_left
  have hrightSubset : right ⊆ forms := by
    rw [← hcover]
    exact Finset.subset_union_right
  have hfourNe' : rightFour ≠ leftFour := Ne.symm hfourNe
  have hnineNe' : rightNine ≠ leftNine := Ne.symm hnineNe
  rw [optionRootPeriodicThresholdResidues_card]
  let bound : Fin 4 -> Fin 9 -> Nat := fun residueFour residueNine =>
    if residueFour = leftFour then
      if residueNine = rightNine then 49 else 2
    else if residueFour = rightFour then
      if residueNine = leftNine then 49 else 2
    else if residueNine = leftNine ∨ residueNine = rightNine then 2 else 1
  have hper : ∀ residueFour residueNine,
      (successfulOptionRoots forms
        (optionRootFibre forms rootFour residueFour ∪
          optionRootFibre forms rootNine residueNine)
        3 rootFortyNine).card <= bound residueFour residueNine := by
    intro residueFour residueNine
    rw [hfour residueFour, hnine residueNine]
    by_cases h4l : residueFour = leftFour
    · subst residueFour
      by_cases h9r : residueNine = rightNine
      · subst residueNine
        simpa [bound, hfourNe, hfourNe', hnineNe, hnineNe', hcover] using
          (Finset.card_le_univ
            (successfulOptionRoots forms forms 3 rootFortyNine))
      · by_cases h9l : residueNine = leftNine
        · subst residueNine
          simpa [bound, hfourNe, hfourNe', hnineNe, hnineNe'] using
            successfulOptionRoots_card_le_two_of_base_two
              (root := rootFortyNine) hforms hleft hleftSubset
        · simpa [bound, hfourNe, hfourNe', hnineNe, hnineNe', h9l, h9r] using
            successfulOptionRoots_card_le_two_of_base_two
              (root := rootFortyNine) hforms hleft hleftSubset
    · by_cases h4r : residueFour = rightFour
      · subst residueFour
        by_cases h9l : residueNine = leftNine
        · subst residueNine
          simpa [bound, hfourNe, hfourNe', hnineNe, hnineNe',
              Finset.union_comm, hcover] using
            (Finset.card_le_univ
              (successfulOptionRoots forms forms 3 rootFortyNine))
        · by_cases h9r : residueNine = rightNine
          · subst residueNine
            simpa [bound, hfourNe, hfourNe', hnineNe, hnineNe'] using
              successfulOptionRoots_card_le_two_of_base_two
                (root := rootFortyNine) hforms hright hrightSubset
          · simpa [bound, hfourNe, hfourNe', hnineNe, hnineNe', h9l, h9r] using
              successfulOptionRoots_card_le_two_of_base_two
                (root := rootFortyNine) hforms hright hrightSubset
      · by_cases h9l : residueNine = leftNine
        · subst residueNine
          simpa [bound, h4l, h4r, hnineNe, hnineNe'] using
            successfulOptionRoots_card_le_two_of_base_two
              (root := rootFortyNine) hforms hleft hleftSubset
        · by_cases h9r : residueNine = rightNine
          · subst residueNine
            simpa [bound, h4l, h4r, hnineNe, hnineNe'] using
              successfulOptionRoots_card_le_two_of_base_two
                (root := rootFortyNine) hforms hright hrightSubset
          · simpa [bound, h4l, h4r, h9l, h9r] using
              successfulOptionRoots_card_le_one_of_empty_base
                (root := rootFortyNine) hforms
  let rowBound : Fin 4 -> Nat := fun residueFour =>
    if residueFour = leftFour then 65
    else if residueFour = rightFour then 65 else 11
  have hrow : ∀ residueFour : Fin 4,
      (∑ residueNine : Fin 9,
        (successfulOptionRoots forms
          (optionRootFibre forms rootFour residueFour ∪
            optionRootFibre forms rootNine residueNine)
          3 rootFortyNine).card) <= rowBound residueFour := by
    intro residueFour
    calc
      (∑ residueNine : Fin 9,
        (successfulOptionRoots forms
          (optionRootFibre forms rootFour residueFour ∪
            optionRootFibre forms rootNine residueNine)
          3 rootFortyNine).card) <=
          ∑ residueNine : Fin 9, bound residueFour residueNine := by
        exact Finset.sum_le_sum fun residueNine _ =>
          hper residueFour residueNine
      _ = rowBound residueFour := by
        by_cases h4l : residueFour = leftFour
        · subst residueFour
          simpa [bound, rowBound] using
            finNine_sum_49_else_2 rightNine
        · by_cases h4r : residueFour = rightFour
          · subst residueFour
            simpa [bound, rowBound, hfourNe'] using
              finNine_sum_49_else_2 leftNine
          · simpa [bound, rowBound, h4l, h4r] using
              finNine_sum_pair_2_else_1 leftNine rightNine hnineNe
  calc
    (∑ residueFour : Fin 4, ∑ residueNine : Fin 9,
      (successfulOptionRoots forms
        (optionRootFibre forms rootFour residueFour ∪
          optionRootFibre forms rootNine residueNine)
        3 rootFortyNine).card) <= ∑ residueFour : Fin 4,
          rowBound residueFour := by
      exact Finset.sum_le_sum fun residueFour _ => hrow residueFour
    _ = 152 := by
      simpa [rowBound] using
        finFour_sum_two_rows leftFour rightFour hfourNe 65 11

/-- If all four forms share the mod-9 root, the exact count is `244`. -/
theorem oddTwoOneResidue_periodic_card_le_244
    {Form : Type*} [DecidableEq Form]
    {forms left right : Finset Form}
    {rootFour : Form -> Option (Fin 4)}
    {rootNine : Form -> Option (Fin 9)}
    (rootFortyNine : Form -> Option (Fin 49))
    (hforms : forms.card = 4)
    (hleft : left.card = 2) (hright : right.card = 2)
    (hcover : left ∪ right = forms)
    {leftFour rightFour : Fin 4}
    (hfourNe : leftFour ≠ rightFour)
    (hfour : ∀ residue,
      optionRootFibre forms rootFour residue =
        if residue = leftFour then left
        else if residue = rightFour then right else ∅)
    {commonNine : Fin 9}
    (hnine : ∀ residue,
      optionRootFibre forms rootNine residue =
        if residue = commonNine then forms else ∅) :
    (optionRootPeriodicThresholdResidues forms 3
      rootFour rootNine rootFortyNine).card <= 244 := by
  classical
  have hleftSubset : left ⊆ forms := by
    rw [← hcover]
    exact Finset.subset_union_left
  have hrightSubset : right ⊆ forms := by
    rw [← hcover]
    exact Finset.subset_union_right
  have hfourNe' : rightFour ≠ leftFour := Ne.symm hfourNe
  rw [optionRootPeriodicThresholdResidues_card]
  let bound : Fin 4 -> Fin 9 -> Nat := fun residueFour residueNine =>
    if residueNine = commonNine then 49
    else if residueFour = leftFour ∨ residueFour = rightFour then 2 else 1
  have hper : ∀ residueFour residueNine,
      (successfulOptionRoots forms
        (optionRootFibre forms rootFour residueFour ∪
          optionRootFibre forms rootNine residueNine)
        3 rootFortyNine).card <= bound residueFour residueNine := by
    intro residueFour residueNine
    rw [hfour residueFour, hnine residueNine]
    by_cases h9 : residueNine = commonNine
    · subst residueNine
      have hbaseSubset :
          (if residueFour = leftFour then left
            else if residueFour = rightFour then right else ∅) ⊆ forms := by
        split_ifs <;> simp_all
      simp only [if_true]
      rw [Finset.union_eq_right.mpr hbaseSubset]
      simpa [bound] using
        (Finset.card_le_univ
          (successfulOptionRoots forms forms 3 rootFortyNine))
    · by_cases h4l : residueFour = leftFour
      · subst residueFour
        simpa [bound, hfourNe, hfourNe', h9] using
          successfulOptionRoots_card_le_two_of_base_two
            (root := rootFortyNine) hforms hleft hleftSubset
      · by_cases h4r : residueFour = rightFour
        · subst residueFour
          simpa [bound, hfourNe, hfourNe', h9] using
            successfulOptionRoots_card_le_two_of_base_two
              (root := rootFortyNine) hforms hright hrightSubset
        · simpa [bound, h9, h4l, h4r] using
            successfulOptionRoots_card_le_one_of_empty_base
              (root := rootFortyNine) hforms
  let rowBound : Fin 4 -> Nat := fun residueFour =>
    if residueFour = leftFour then 65
    else if residueFour = rightFour then 65 else 57
  have hrow : ∀ residueFour : Fin 4,
      (∑ residueNine : Fin 9,
        (successfulOptionRoots forms
          (optionRootFibre forms rootFour residueFour ∪
            optionRootFibre forms rootNine residueNine)
          3 rootFortyNine).card) <= rowBound residueFour := by
    intro residueFour
    calc
      (∑ residueNine : Fin 9,
        (successfulOptionRoots forms
          (optionRootFibre forms rootFour residueFour ∪
            optionRootFibre forms rootNine residueNine)
          3 rootFortyNine).card) <=
          ∑ residueNine : Fin 9, bound residueFour residueNine := by
        exact Finset.sum_le_sum fun residueNine _ =>
          hper residueFour residueNine
      _ = rowBound residueFour := by
        by_cases h4l : residueFour = leftFour
        · subst residueFour
          simpa [bound, rowBound] using
            finNine_sum_49_else_2 commonNine
        · by_cases h4r : residueFour = rightFour
          · subst residueFour
            simpa [bound, rowBound, hfourNe'] using
              finNine_sum_49_else_2 commonNine
          · simpa [bound, rowBound, h4l, h4r] using
              finNine_sum_49_else_1 commonNine
  calc
    (∑ residueFour : Fin 4, ∑ residueNine : Fin 9,
      (successfulOptionRoots forms
        (optionRootFibre forms rootFour residueFour ∪
          optionRootFibre forms rootNine residueNine)
        3 rootFortyNine).card) <= ∑ residueFour : Fin 4,
          rowBound residueFour := by
      exact Finset.sum_le_sum fun residueFour _ => hrow residueFour
    _ = 244 := by
      simpa [rowBound] using
        finFour_sum_two_rows leftFour rightFour hfourNe 65 57

/-- Three pivots in each mod-4 class and six distinct mod-9 cells leave at
most `42` successful residues in the full `1764` period.  The mod-49 roots
are arbitrary. -/
theorem oddTwoBalanced_periodic_card_le_42
    {Form : Type*} [DecidableEq Form]
    {forms left right : Finset Form}
    {rootFour : Form -> Option (Fin 4)}
    {rootNine : Form -> Option (Fin 9)}
    (rootFortyNine : Form -> Option (Fin 49))
    (hforms : forms.card = 6)
    (hleft : left.card = 3) (hright : right.card = 3)
    (hcover : left ∪ right = forms)
    {leftFour rightFour : Fin 4}
    (hfourNe : leftFour ≠ rightFour)
    (hfour : ∀ residue,
      optionRootFibre forms rootFour residue =
        if residue = leftFour then left
        else if residue = rightFour then right else ∅)
    (hnineCapacity : ∀ residue,
      (optionRootFibre forms rootNine residue).card <= 1) :
    (optionRootPeriodicThresholdResidues forms 5
      rootFour rootNine rootFortyNine).card <= 42 := by
  classical
  have hleftSubset : left ⊆ forms := by
    rw [← hcover]
    exact Finset.subset_union_left
  have hrightSubset : right ⊆ forms := by
    rw [← hcover]
    exact Finset.subset_union_right
  have hfourNe' : rightFour ≠ leftFour := Ne.symm hfourNe
  rw [optionRootPeriodicThresholdResidues_card]
  have hclassRow :
      ∀ base : Finset Form, base.card = 3 -> base ⊆ forms ->
        (∑ residueNine : Fin 9,
          (successfulOptionRoots forms
            (base ∪ optionRootFibre forms rootNine residueNine)
            5 rootFortyNine).card) <= 12 := by
    intro base hbase hbaseSubset
    have houtsideCard : (forms \ base).card = 3 := by
      have hsplit :
          (forms \ base).card + base.card = forms.card :=
        Finset.card_sdiff_add_card_eq_card hbaseSubset
      omega
    have hper : ∀ residueNine : Fin 9,
        (successfulOptionRoots forms
          (base ∪ optionRootFibre forms rootNine residueNine)
          5 rootFortyNine).card <=
            1 +
              (optionRootFibre forms rootNine residueNine \ base).card := by
      intro residueNine
      let fibre := optionRootFibre forms rootNine residueNine
      have hfibreSubset : fibre ⊆ forms := by
        exact optionRootFibre_subset_forms forms rootNine residueNine
      have hfibreCard : fibre.card <= 1 := hnineCapacity residueNine
      by_cases hfibreBase : fibre ⊆ base
      · have hunion : base ∪ fibre = base :=
          Finset.union_eq_left.mpr hfibreBase
        have hdiff : (fibre \ base).card = 0 := by
          rw [Finset.card_eq_zero]
          exact Finset.sdiff_eq_empty_iff_subset.mpr hfibreBase
        have hmul := successfulOptionRoots_mul_le_of_exact_base
          (root := rootFortyNine) hforms hbase hbaseSubset
          (show 5 = 3 + 2 by norm_num)
        dsimp [fibre] at hunion hdiff ⊢
        rw [hunion, hdiff]
        omega
      · obtain ⟨outside, houtsideFibre, houtsideBase⟩ :=
          Finset.not_subset.mp hfibreBase
        have hdiffPositive :
            0 < (fibre \ base).card := by
          exact Finset.card_pos.mpr
            ⟨outside, Finset.mem_sdiff.mpr
              ⟨houtsideFibre, houtsideBase⟩⟩
        have hdiffCard : (fibre \ base).card = 1 := by
          have hdiffLe :
              (fibre \ base).card <= fibre.card :=
            Finset.card_le_card Finset.sdiff_subset
          omega
        have hinsert : insert outside base ⊆ base ∪ fibre := by
          intro form hform
          rcases Finset.mem_insert.mp hform with rfl | hform
          · exact Finset.mem_union_right _ houtsideFibre
          · exact Finset.mem_union_left _ hform
        have hinsertCard : (insert outside base).card = 4 := by
          simp [houtsideBase, hbase]
        have hunionUpper :
            (base ∪ fibre).card <= 4 := by
          have hcard := Finset.card_union_le base fibre
          omega
        have hunionCard : (base ∪ fibre).card = 4 := by
          have hlower := Finset.card_le_card hinsert
          omega
        have hunionSubset : base ∪ fibre ⊆ forms :=
          Finset.union_subset hbaseSubset hfibreSubset
        have hmul := successfulOptionRoots_mul_le_of_exact_base
          (root := rootFortyNine) hforms hunionCard hunionSubset
          (show 5 = 4 + 1 by norm_num)
        dsimp [fibre] at hunionCard hdiffCard hmul ⊢
        rw [hdiffCard]
        omega
    have hsumOutside :=
      sum_optionRootFibre_sdiff_card_le forms base rootNine
    calc
      (∑ residueNine : Fin 9,
        (successfulOptionRoots forms
          (base ∪ optionRootFibre forms rootNine residueNine)
          5 rootFortyNine).card) <=
          ∑ residueNine : Fin 9,
            (1 +
              (optionRootFibre forms rootNine residueNine \ base).card) := by
        exact Finset.sum_le_sum fun residueNine _ => hper residueNine
      _ = 9 + ∑ residueNine : Fin 9,
          (optionRootFibre forms rootNine residueNine \ base).card := by
        rw [Finset.sum_add_distrib]
        simp
      _ <= 9 + 3 := Nat.add_le_add_left
        (hsumOutside.trans_eq houtsideCard) 9
      _ = 12 := by norm_num
  have hotherRow :
      (∑ residueNine : Fin 9,
        (successfulOptionRoots forms
          (optionRootFibre forms rootNine residueNine)
          5 rootFortyNine).card) <= 9 := by
    have hper : ∀ residueNine : Fin 9,
        (successfulOptionRoots forms
          (optionRootFibre forms rootNine residueNine)
          5 rootFortyNine).card <= 1 := by
      intro residueNine
      let fibre := optionRootFibre forms rootNine residueNine
      have hfibreSubset : fibre ⊆ forms := by
        exact optionRootFibre_subset_forms forms rootNine residueNine
      have hfibreCard : fibre.card <= 1 := hnineCapacity residueNine
      by_cases hfibreEmpty : fibre.card = 0
      · have hmul := successfulOptionRoots_mul_le_of_exact_base
          (root := rootFortyNine) hforms hfibreEmpty hfibreSubset
          (show 5 = 0 + 5 by norm_num)
        dsimp [fibre] at hmul ⊢
        omega
      · have hfibreOne : fibre.card = 1 := by omega
        have hmul := successfulOptionRoots_mul_le_of_exact_base
          (root := rootFortyNine) hforms hfibreOne hfibreSubset
          (show 5 = 1 + 4 by norm_num)
        dsimp [fibre] at hmul ⊢
        omega
    calc
      (∑ residueNine : Fin 9,
        (successfulOptionRoots forms
          (optionRootFibre forms rootNine residueNine)
          5 rootFortyNine).card) <=
          ∑ _residueNine : Fin 9, 1 := by
        exact Finset.sum_le_sum fun residueNine _ => hper residueNine
      _ = 9 := by simp
  let rowBound : Fin 4 -> Nat := fun residueFour =>
    if residueFour = leftFour then 12
    else if residueFour = rightFour then 12 else 9
  have hrow : ∀ residueFour : Fin 4,
      (∑ residueNine : Fin 9,
        (successfulOptionRoots forms
          (optionRootFibre forms rootFour residueFour ∪
            optionRootFibre forms rootNine residueNine)
          5 rootFortyNine).card) <= rowBound residueFour := by
    intro residueFour
    rw [hfour residueFour]
    by_cases hleftRoot : residueFour = leftFour
    · subst residueFour
      simpa [rowBound] using hclassRow left hleft hleftSubset
    · by_cases hrightRoot : residueFour = rightFour
      · subst residueFour
        simpa [rowBound, hfourNe'] using
          hclassRow right hright hrightSubset
      · simpa [rowBound, hleftRoot, hrightRoot] using hotherRow
  calc
    (∑ residueFour : Fin 4, ∑ residueNine : Fin 9,
      (successfulOptionRoots forms
        (optionRootFibre forms rootFour residueFour ∪
          optionRootFibre forms rootNine residueNine)
        5 rootFortyNine).card) <=
          ∑ residueFour : Fin 4, rowBound residueFour := by
      exact Finset.sum_le_sum fun residueFour _ => hrow residueFour
    _ = 42 := by
      simpa [rowBound] using
        finFour_sum_two_rows leftFour rightFour hfourNe 12 9

#print axioms oddTwoSplitPairs_periodic_card_le_152
#print axioms oddTwoOneResidue_periodic_card_le_244
#print axioms oddTwoBalanced_periodic_card_le_42

end Erdos848
