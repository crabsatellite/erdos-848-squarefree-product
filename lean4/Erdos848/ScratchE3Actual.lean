import Erdos848.ScratchE3RootBound
import Erdos848.TailGlobalMixedThreePivotFiniteProducer

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

attribute [local instance] Classical.propDecidable

theorem e3FiniteRoot_zero_eq_of_modNine_eq
    {baseResidue left right : Nat}
    (hmod : left % 9 = right % 9) :
    e3FiniteRoot 0 baseResidue left =
      e3FiniteRoot 0 baseResidue right := by
  have hz : (left : ZMod 9) = (right : ZMod 9) :=
    (ZMod.natCast_eq_natCast_iff' left right 9).2 hmod
  have hz' :
      (left : ZMod (e3FiniteModulus 0)) =
        (right : ZMod (e3FiniteModulus 0)) := by
    simpa [e3FiniteModulus] using hz
  have hequation : ∀ q : Fin (e3FiniteModulus 0),
      e3FiniteRootEquation 0 baseResidue left q ↔
        e3FiniteRootEquation 0 baseResidue right q := by
    intro q
    simp only [e3FiniteRootEquation]
    constructor
    · intro h
      rwa [← hz']
    · intro h
      rwa [hz']
  by_cases hleft : ∃ q, e3FiniteRootEquation 0 baseResidue left q
  · obtain ⟨q, hq⟩ := hleft
    have hqRight := (hequation q).mp hq
    exact (e3FiniteRoot_eq_of_equation hq).trans
      (e3FiniteRoot_eq_of_equation hqRight).symm
  · have hright : ¬∃ q, e3FiniteRootEquation 0 baseResidue right q := by
      intro h
      obtain ⟨q, hq⟩ := h
      exact hleft ⟨q, (hequation q).mpr hq⟩
    rw [e3FiniteRoot, dif_neg hleft, e3FiniteRoot, dif_neg hright]

noncomputable def scratchE3ActualRoots
    (baseResidue : Nat) (pivots : Finset Nat)
    (hcard : pivots.card = 3) : ScratchE3PivotRootFamily :=
  fun pivot index =>
    e3FiniteRoot index baseResidue
      (globalMixedThreePivotAt pivots hcard pivot)

theorem scratchE3ActualRoots_common
    {baseResidue cell : Nat} {pivots : Finset Nat}
    {hcard : pivots.card = 3}
    (hmod : ∀ pivot : Fin 3,
      globalMixedThreePivotAt pivots hcard pivot % 9 = cell) :
    scratchE3ActualRoots baseResidue pivots hcard 0 0 =
        scratchE3ActualRoots baseResidue pivots hcard 1 0 ∧
      scratchE3ActualRoots baseResidue pivots hcard 0 0 =
        scratchE3ActualRoots baseResidue pivots hcard 2 0 := by
  constructor <;>
    apply e3FiniteRoot_zero_eq_of_modNine_eq <;>
    rw [hmod 0, hmod _]

noncomputable def scratchE3ActualFiniteForms
    (pivots : Finset Nat) (hcard : pivots.card = 3)
    (point : Nat) : Finset (Fin 3) :=
  Finset.univ.filter fun pivot =>
    finiteSquarePrimeEvent 19
      (globalMixedThreePivotAt pivots hcard pivot) point

theorem scratchE3ActualFiniteForms_card
    (pivots : Finset Nat) (hcard : pivots.card = 3)
    (point : Nat) :
    (scratchE3ActualFiniteForms pivots hcard point).card =
      (pivots.filter fun pivot =>
        finiteSquarePrimeEvent 19 pivot point).card := by
  classical
  unfold scratchE3ActualFiniteForms
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

theorem scratchE3BadCount_eq_filter_card
    (bad : Fin 3 -> Nat -> Prop) (q : Nat) :
    scratchE3BadCount bad q =
      (Finset.univ.filter fun pivot : Fin 3 => bad pivot q).card := by
  classical
  have hcard :
      ((Finset.univ.filter fun pivot : Fin 3 => bad pivot q).card : Nat) =
        ∑ pivot : Fin 3, if bad pivot q then 1 else 0 := by
    simpa using (Finset.sum_boole (R := Nat)
      (fun pivot : Fin 3 => bad pivot q) Finset.univ).symm
  calc
    scratchE3BadCount bad q =
        (if bad 0 q then 1 else 0) +
          (if bad 1 q then 1 else 0) +
          (if bad 2 q then 1 else 0) := by
      simp [scratchE3BadCount, add_assoc]
    _ = ∑ pivot : Fin 3, if bad pivot q then 1 else 0 := by
      symm
      rw [Fin.sum_univ_succ]
      rw [Fin.sum_univ_succ]
      rw [Fin.sum_univ_succ]
      simp only [Fin.sum_univ_zero, add_zero]
      norm_num
      exact (add_assoc _ _ _).symm
    _ = (Finset.univ.filter fun pivot : Fin 3 => bad pivot q).card :=
      hcard.symm

theorem scratchE3ActualFiniteForms_subset_rootBad
    {N : Nat} {B pivots : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (hcard : pivots.card = 3)
    {baseResidue point : Nat}
    (hpointLow : point ∈ lowBaseSet N)
    (hpointMod : point % 25 = baseResidue) :
    scratchE3ActualFiniteForms pivots hcard point ⊆
      Finset.univ.filter fun pivot : Fin 3 =>
        scratchE3RootBad
          (scratchE3ActualRoots baseResidue pivots hcard)
          pivot (point / 25) := by
  classical
  intro pivot hpivot
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_univ pivot, ?_⟩
  have hpivotPart := hpivots
    (globalMixedThreePivotAt_mem pivots hcard pivot)
  have hevent := (Finset.mem_filter.mp hpivot).2
  obtain ⟨p, hpFinite, hpDiv⟩ :=
    (finiteSquarePrimeEvent_iff_evenValuationPrime19
      hBout hvaluation hpivotPart hpointLow).mp hevent
  have hpCases := mem_e3FinitePrimes19.mp hpFinite
  rcases hpCases with rfl | rfl | rfl | rfl | rfl | rfl
  · refine ⟨0, ?_⟩
    have hroot := e3FiniteRoot_classifies (index := 0)
      hpointMod (by simpa [e3FinitePrime] using hpDiv)
    simpa [scratchE3ActualRoots, scratchE3RootNat] using congrArg Fin.val hroot
  · refine ⟨1, ?_⟩
    have hroot := e3FiniteRoot_classifies (index := 1)
      hpointMod (by simpa [e3FinitePrime] using hpDiv)
    simpa [scratchE3ActualRoots, scratchE3RootNat] using congrArg Fin.val hroot
  · refine ⟨2, ?_⟩
    have hroot := e3FiniteRoot_classifies (index := 2)
      hpointMod (by simpa [e3FinitePrime] using hpDiv)
    simpa [scratchE3ActualRoots, scratchE3RootNat] using congrArg Fin.val hroot
  · refine ⟨3, ?_⟩
    have hroot := e3FiniteRoot_classifies (index := 3)
      hpointMod (by simpa [e3FinitePrime] using hpDiv)
    simpa [scratchE3ActualRoots, scratchE3RootNat] using congrArg Fin.val hroot
  · refine ⟨4, ?_⟩
    have hroot := e3FiniteRoot_classifies (index := 4)
      hpointMod (by simpa [e3FinitePrime] using hpDiv)
    simpa [scratchE3ActualRoots, scratchE3RootNat] using congrArg Fin.val hroot
  · refine ⟨5, ?_⟩
    have hroot := e3FiniteRoot_classifies (index := 5)
      hpointMod (by simpa [e3FinitePrime] using hpDiv)
    simpa [scratchE3ActualRoots, scratchE3RootNat] using congrArg Fin.val hroot

theorem scratchE3Actual_threshold_implies_rootThreshold
    {N : Nat} {B pivots : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (hcard : pivots.card = 3)
    {baseResidue point : Nat}
    (hpointLow : point ∈ lowBaseSet N)
    (hpointMod : point % 25 = baseResidue)
    (hthreshold : 2 <= (pivots.filter fun pivot =>
      finiteSquarePrimeEvent 19 pivot point).card) :
    2 <= scratchE3BadCount
      (scratchE3RootBad
        (scratchE3ActualRoots baseResidue pivots hcard))
      (point / 25) := by
  rw [scratchE3BadCount_eq_filter_card]
  rw [← scratchE3ActualFiniteForms_card pivots hcard point] at hthreshold
  exact hthreshold.trans (Finset.card_le_card
    (scratchE3ActualFiniteForms_subset_rootBad
      hBout hvaluation hpivots hcard hpointLow hpointMod))

#print axioms e3FiniteRoot_zero_eq_of_modNine_eq
#print axioms scratchE3ActualRoots_common
#print axioms scratchE3ActualFiniteForms_card
#print axioms scratchE3ActualFiniteForms_subset_rootBad
#print axioms scratchE3Actual_threshold_implies_rootThreshold

end Erdos848
