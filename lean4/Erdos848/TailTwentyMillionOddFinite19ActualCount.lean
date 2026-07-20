import Erdos848.TailTwentyMillionOddFinite19ActualPattern

namespace Erdos848

/-!
# Actual cutoff-19 counts for odd three-pivot rows

The untrusted generator only checks equality-pattern arithmetic.  This file
maps literal cutoff-19 Hall events on either mod-25 base progression into the
corresponding total root cover.  The quotient map is injective on a fixed
base residue, so no computation is hidden in this bridge.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

attribute [local instance] Classical.propDecidable

def twentyMillionOddFinite19Primes : Finset Nat :=
  {2, 3, 7, 11, 13, 17, 19}

@[simp] theorem mem_twentyMillionOddFinite19Primes {p : Nat} :
    p ∈ twentyMillionOddFinite19Primes ↔
      p = 2 ∨ p = 3 ∨ p = 7 ∨ p = 11 ∨ p = 13 ∨
        p = 17 ∨ p = 19 := by
  simp [twentyMillionOddFinite19Primes]

theorem finiteSquarePrimeEvent_iff_residualPrime19
    {N pivot point : Nat} {B : Finset Nat}
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpoint : point ∈ lowBaseSet N) :
    finiteSquarePrimeEvent 19 pivot point ↔
      ∃ p ∈ twentyMillionOddFinite19Primes,
        p ^ 2 ∣ pivot * point + 1 := by
  constructor
  · rintro ⟨p, hpPrime, hpCut, hpDiv⟩
    have hpNotFive : p ≠ 5 := by
      intro hp
      subst p
      exact five_square_not_dvd_residual_base
        hBout hpivotResidual hpoint hpDiv
    have hpTwoLe : 2 ≤ p := hpPrime.two_le
    have hpCases :
        p = 2 ∨ p = 3 ∨ p = 7 ∨ p = 11 ∨ p = 13 ∨
          p = 17 ∨ p = 19 := by
      interval_cases p <;>
        norm_num at hpPrime <;>
        omega
    exact ⟨p, mem_twentyMillionOddFinite19Primes.mpr hpCases, hpDiv⟩
  · rintro ⟨p, hpFinite, hpDiv⟩
    have hpCases := mem_twentyMillionOddFinite19Primes.mp hpFinite
    rcases hpCases with rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
      exact ⟨_, by norm_num, by norm_num, hpDiv⟩

noncomputable def twentyMillionOddFinite19ActualForms
    (pivots : Finset Nat) (hcard : pivots.card = 3)
    (point : Nat) : Finset (Fin 3) :=
  Finset.univ.filter fun i =>
    finiteSquarePrimeEvent 19
      (globalMixedThreePivotAt pivots hcard i) point

theorem twentyMillionOddFinite19ActualForms_card
    (pivots : Finset Nat) (hcard : pivots.card = 3)
    (point : Nat) :
    (twentyMillionOddFinite19ActualForms pivots hcard point).card =
      (pivots.filter fun pivot =>
        finiteSquarePrimeEvent 19 pivot point).card := by
  classical
  unfold twentyMillionOddFinite19ActualForms
  apply Finset.card_bij (fun i _hi =>
    globalMixedThreePivotAt pivots hcard i)
  · intro i hi
    exact Finset.mem_filter.mpr
      ⟨globalMixedThreePivotAt_mem pivots hcard i,
        (Finset.mem_filter.mp hi).2⟩
  · intro i _hi j _hj hij
    exact globalMixedThreePivotAt_injective pivots hcard hij
  · intro pivot hpivot
    obtain ⟨i, hi⟩ := globalMixedThreePivotAt_surjective_on
      pivots hcard (Finset.mem_filter.mp hpivot).1
    refine ⟨i, ?_, hi⟩
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_univ i, ?_⟩
    simpa [hi] using (Finset.mem_filter.mp hpivot).2

theorem twentyMillionOddFinite19ActualForms_subset_rootBad
    {N : Nat} {B pivots : Finset Nat}
    (hBout : Erdos848OutsideSet N B)
    (hpivotsResidual : pivots ⊆ hallResidual N B)
    (hpivotsOdd : ∀ pivot ∈ pivots,
      pivot % 4 = 1 ∨ pivot % 4 = 3)
    (hcard : pivots.card = 3)
    {baseResidue point : Nat}
    (hpointLow : point ∈ lowBaseSet N)
    (hpointMod : point % 25 = baseResidue)
    {roots : TwentyMillionOddFinite19PivotRootFamily}
    (hextends : ∀ index i q,
      twentyMillionOddFinite19ActualPartialRoots
          baseResidue pivots hcard index i = some q →
        roots i index = q) :
    twentyMillionOddFinite19ActualForms pivots hcard point ⊆
      Finset.univ.filter fun i : Fin 3 =>
        twentyMillionOddFinite19RootBad roots i (point / 25) := by
  classical
  intro i hi
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_univ i, ?_⟩
  have hpivotMem :=
    globalMixedThreePivotAt_mem pivots hcard i
  have hevent := (Finset.mem_filter.mp hi).2
  obtain ⟨p, hpFinite, hpDiv⟩ :=
    (finiteSquarePrimeEvent_iff_residualPrime19
      hBout (hpivotsResidual hpivotMem) hpointLow).mp hevent
  have hbadFor (index : TwentyMillionOddFinite19Index)
      (hpDivIndex :
        (twentyMillionOddDegreePrime index) ^ 2 ∣
          globalMixedThreePivotAt pivots hcard i * point + 1) :
      twentyMillionOddFinite19RootBad roots i (point / 25) := by
    refine ⟨index, ?_⟩
    have hpartial :=
      twentyMillionOddFinite19ActualPartialRoot_eq_some_of_event
        hpivotsOdd hpointMod hpDivIndex
    have hroot := hextends index i _ hpartial
    simpa [twentyMillionOddFinite19RootNat, hroot]
  have hpCases := mem_twentyMillionOddFinite19Primes.mp hpFinite
  rcases hpCases with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact hbadFor 0 (by
      simpa [twentyMillionOddDegreePrime] using hpDiv)
  · exact hbadFor 1 (by
      simpa [twentyMillionOddDegreePrime] using hpDiv)
  · exact hbadFor 2 (by
      simpa [twentyMillionOddDegreePrime] using hpDiv)
  · exact hbadFor 3 (by
      simpa [twentyMillionOddDegreePrime] using hpDiv)
  · exact hbadFor 4 (by
      simpa [twentyMillionOddDegreePrime] using hpDiv)
  · exact hbadFor 5 (by
      simpa [twentyMillionOddDegreePrime] using hpDiv)
  · exact hbadFor 6 (by
      simpa [twentyMillionOddDegreePrime] using hpDiv)

noncomputable def twentyMillionOddFinite19ActualAllThreeResidue
    (N : Nat) (pivots : Finset Nat) (baseResidue : Nat) :
    Finset Nat :=
  (lowBaseSet N).filter fun point =>
    point % 25 = baseResidue ∧
      3 ≤ (pivots.filter fun pivot =>
        finiteSquarePrimeEvent 19 pivot point).card

noncomputable def twentyMillionOddFinite19ActualTwoOfThreeResidue
    (N : Nat) (pivots : Finset Nat) (baseResidue : Nat) :
    Finset Nat :=
  (lowBaseSet N).filter fun point =>
    point % 25 = baseResidue ∧
      2 ≤ (pivots.filter fun pivot =>
        finiteSquarePrimeEvent 19 pivot point).card

noncomputable def twentyMillionOddFinite19RootAllThreePrefix
    (N : Nat) (roots : TwentyMillionOddFinite19PivotRootFamily) :
    Finset Nat :=
  (Finset.range (N / 25 + 1)).filter fun q =>
    e1FiniteAllThreeBad
      (twentyMillionOddFinite19RootBad roots) q

noncomputable def twentyMillionOddFinite19RootTwoOfThreePrefix
    (N : Nat) (roots : TwentyMillionOddFinite19PivotRootFamily) :
    Finset Nat :=
  (Finset.range (N / 25 + 1)).filter fun q =>
    2 ≤ e1FiniteBadCount
      (twentyMillionOddFinite19RootBad roots) q

theorem twentyMillionOddFinite19BadCount_eq_filter_card
    (bad : Fin 3 → Nat → Prop) (q : Nat) :
    e1FiniteBadCount bad q =
      (Finset.univ.filter fun i : Fin 3 => bad i q).card := by
  classical
  have hcard :
      ((Finset.univ.filter fun i : Fin 3 => bad i q).card : Nat) =
        ∑ i : Fin 3, if bad i q then 1 else 0 := by
    simpa using (Finset.sum_boole (R := Nat)
      (fun i : Fin 3 => bad i q) Finset.univ).symm
  calc
    e1FiniteBadCount bad q =
        (if bad 0 q then 1 else 0) +
          (if bad 1 q then 1 else 0) +
          (if bad 2 q then 1 else 0) := by
      simp [e1FiniteBadCount, add_assoc]
    _ = ∑ i : Fin 3, if bad i q then 1 else 0 := by
      symm
      rw [Fin.sum_univ_succ, Fin.sum_univ_succ, Fin.sum_univ_succ]
      simp only [Fin.sum_univ_zero, add_zero]
      norm_num
      exact (add_assoc _ _ _).symm
    _ = (Finset.univ.filter fun i : Fin 3 => bad i q).card :=
      hcard.symm

private theorem twentyMillionOddFinite19Quotient_injective
    {N baseResidue threshold : Nat}
    {pivots source : Finset Nat}
    (hsource : source =
      (lowBaseSet N).filter fun point =>
        point % 25 = baseResidue ∧
          threshold ≤ (pivots.filter fun pivot =>
            finiteSquarePrimeEvent 19 pivot point).card) :
    Set.InjOn (fun point : Nat => point / 25) (source : Set Nat) := by
  intro left hleft right hright heq
  rw [hsource] at hleft hright
  have hleftMod := (Finset.mem_filter.mp hleft).2.1
  have hrightMod := (Finset.mem_filter.mp hright).2.1
  have hleftDecomp := Nat.mod_add_div left 25
  have hrightDecomp := Nat.mod_add_div right 25
  change left / 25 = right / 25 at heq
  omega

theorem twentyMillionOddFinite19ActualAllThreeResidue_card_le_rootPrefix
    {N : Nat} {B pivots : Finset Nat}
    (hBout : Erdos848OutsideSet N B)
    (hpivotsResidual : pivots ⊆ hallResidual N B)
    (hpivotsOdd : ∀ pivot ∈ pivots,
      pivot % 4 = 1 ∨ pivot % 4 = 3)
    (hcard : pivots.card = 3)
    {baseResidue : Nat}
    {roots : TwentyMillionOddFinite19PivotRootFamily}
    (hextends : ∀ index i q,
      twentyMillionOddFinite19ActualPartialRoots
          baseResidue pivots hcard index i = some q →
        roots i index = q) :
    (twentyMillionOddFinite19ActualAllThreeResidue
        N pivots baseResidue).card ≤
      (twentyMillionOddFinite19RootAllThreePrefix N roots).card := by
  classical
  let source :=
    twentyMillionOddFinite19ActualAllThreeResidue
      N pivots baseResidue
  let target :=
    twentyMillionOddFinite19RootAllThreePrefix N roots
  let quotient : Nat → Nat := fun point => point / 25
  have hmap : Set.MapsTo quotient (source : Set Nat) target := by
    intro point hpoint
    have hparts := Finset.mem_filter.mp hpoint
    have hbounds := Finset.mem_Icc.mp
      (lowBaseSet_subset_Icc N hparts.1)
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_range.mpr ?_, ?_⟩
    · dsimp [quotient]
      have hdiv : point / 25 ≤ N / 25 :=
        Nat.div_le_div_right hbounds.2
      omega
    · dsimp [quotient]
      have hforms :
          3 ≤
            (twentyMillionOddFinite19ActualForms
              pivots hcard point).card := by
        rw [twentyMillionOddFinite19ActualForms_card]
        exact hparts.2.2
      have hsubset :=
        twentyMillionOddFinite19ActualForms_subset_rootBad
          hBout hpivotsResidual hpivotsOdd hcard
          hparts.1 hparts.2.1 hextends
      have hrootCard :
          3 ≤ (Finset.univ.filter fun i : Fin 3 =>
            twentyMillionOddFinite19RootBad
              roots i (point / 25)).card :=
        hforms.trans (Finset.card_le_card hsubset)
      rw [← twentyMillionOddFinite19BadCount_eq_filter_card] at hrootCard
      exact e1FiniteAllThreeBad_of_three_le_badCount
        (twentyMillionOddFinite19RootBad roots)
        (point / 25) hrootCard
  have hinjective : Set.InjOn quotient (source : Set Nat) := by
    apply twentyMillionOddFinite19Quotient_injective
    rfl
  exact Finset.card_le_card_of_injOn quotient hmap hinjective

theorem twentyMillionOddFinite19ActualTwoOfThreeResidue_card_le_rootPrefix
    {N : Nat} {B pivots : Finset Nat}
    (hBout : Erdos848OutsideSet N B)
    (hpivotsResidual : pivots ⊆ hallResidual N B)
    (hpivotsOdd : ∀ pivot ∈ pivots,
      pivot % 4 = 1 ∨ pivot % 4 = 3)
    (hcard : pivots.card = 3)
    {baseResidue : Nat}
    {roots : TwentyMillionOddFinite19PivotRootFamily}
    (hextends : ∀ index i q,
      twentyMillionOddFinite19ActualPartialRoots
          baseResidue pivots hcard index i = some q →
        roots i index = q) :
    (twentyMillionOddFinite19ActualTwoOfThreeResidue
        N pivots baseResidue).card ≤
      (twentyMillionOddFinite19RootTwoOfThreePrefix N roots).card := by
  classical
  let source :=
    twentyMillionOddFinite19ActualTwoOfThreeResidue
      N pivots baseResidue
  let target :=
    twentyMillionOddFinite19RootTwoOfThreePrefix N roots
  let quotient : Nat → Nat := fun point => point / 25
  have hmap : Set.MapsTo quotient (source : Set Nat) target := by
    intro point hpoint
    have hparts := Finset.mem_filter.mp hpoint
    have hbounds := Finset.mem_Icc.mp
      (lowBaseSet_subset_Icc N hparts.1)
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_range.mpr ?_, ?_⟩
    · dsimp [quotient]
      have hdiv : point / 25 ≤ N / 25 :=
        Nat.div_le_div_right hbounds.2
      omega
    · dsimp [quotient]
      rw [twentyMillionOddFinite19BadCount_eq_filter_card]
      have hforms :
          2 ≤
            (twentyMillionOddFinite19ActualForms
              pivots hcard point).card := by
        rw [twentyMillionOddFinite19ActualForms_card]
        exact hparts.2.2
      exact hforms.trans (Finset.card_le_card
        (twentyMillionOddFinite19ActualForms_subset_rootBad
          hBout hpivotsResidual hpivotsOdd hcard
          hparts.1 hparts.2.1 hextends))
  have hinjective : Set.InjOn quotient (source : Set Nat) := by
    apply twentyMillionOddFinite19Quotient_injective
    rfl
  exact Finset.card_le_card_of_injOn quotient hmap hinjective

#print axioms finiteSquarePrimeEvent_iff_residualPrime19
#print axioms twentyMillionOddFinite19ActualForms_subset_rootBad
#print axioms twentyMillionOddFinite19ActualAllThreeResidue_card_le_rootPrefix
#print axioms twentyMillionOddFinite19ActualTwoOfThreeResidue_card_le_rootPrefix

end Erdos848
