import Erdos848.TailHighOutsideProgression
import Erdos848.TailHighDiagonalRootPair
import Erdos848.TailHighDiagonalPrimeUnion

namespace Erdos848

/-!
# Grouped diagonal-prime counting

The original high-tail union treated the `23` admissible residues modulo
`25` as separate CRT classes and paid a floor error for every class.  Here
we first fix only the diagonal-selection residue.  Along that progression,
the modulo-`25` exclusion is periodic with density `23 / 25`, so the
endpoint discrepancy is paid once for the whole progression.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def paperCRTOutsideClass
    (N modulus root period residue : Nat) : Finset Nat :=
  (paperCRTClass N modulus root period residue).filter OutsideLowBase

theorem paperCRTOutsideClass_card_scaled_le
    {N modulus root period residue : Nat}
    (hcoprime : Nat.Coprime modulus period)
    (hmodulus : 0 < modulus) (hperiod : 0 < period)
    (hstep25 : Nat.Coprime (modulus * period) 25) :
    25 * (paperCRTOutsideClass
        N modulus root period residue).card ≤
      23 * ((N + 1) / (modulus * period) + 1) + 46 := by
  let step := modulus * period
  let anchor : Nat :=
    Nat.chineseRemainder hcoprime root residue
  let length := (N + 1) / step + 1
  let target :=
    (Finset.range length).filter fun index =>
      OutsideLowBase (anchor + step * index)
  have hstep : 0 < step := Nat.mul_pos hmodulus hperiod
  have hanchor :
      anchor < step := by
    dsimp [anchor, step]
    exact Nat.chineseRemainder_lt_mul hcoprime root residue
      (Nat.ne_of_gt hmodulus) (Nat.ne_of_gt hperiod)
  have hmap :
      Set.MapsTo (fun x : Nat => x / step)
        (paperCRTOutsideClass N modulus root period residue : Set Nat)
        target := by
    intro x hx
    have hxOutside := (Finset.mem_filter.mp hx).2
    have hxCRT := (Finset.mem_filter.mp hx).1
    have hxParts := Finset.mem_filter.mp hxCRT
    have hxCombined :
        x ≡ anchor [MOD step] := by
      dsimp [anchor, step]
      exact Nat.chineseRemainder_modEq_unique hcoprime
        hxParts.2.1 hxParts.2.2
    have hxmod : x % step = anchor := by
      change x % step = anchor % step at hxCombined
      simpa [Nat.mod_eq_of_lt hanchor] using hxCombined
    have hxdecomp :
        x = anchor + step * (x / step) := by
      calc
        x = x % step + step * (x / step) :=
          (Nat.mod_add_div x step).symm
        _ = anchor + step * (x / step) := by rw [hxmod]
    change x / step ∈ target
    rw [Finset.mem_filter]
    refine ⟨Finset.mem_range.mpr ?_, ?_⟩
    · have hxUpper : x < N + 1 :=
        Finset.mem_range.mp hxParts.1
      have hquotient :
          x / step ≤ N / step :=
        Nat.div_le_div_right (Nat.le_of_lt_succ hxUpper)
      have hN :
          N / step ≤ (N + 1) / step :=
        Nat.div_le_div_right (by omega)
      dsimp [length]
      exact Nat.lt_succ_of_le (hquotient.trans hN)
    · simpa [← hxdecomp] using hxOutside
  have hinjective :
      Set.InjOn (fun x : Nat => x / step)
        (paperCRTOutsideClass
          N modulus root period residue : Set Nat) := by
    intro x hx y hy hquotient
    have hxCRT := (Finset.mem_filter.mp hx).1
    have hyCRT := (Finset.mem_filter.mp hy).1
    have hxParts := Finset.mem_filter.mp hxCRT
    have hyParts := Finset.mem_filter.mp hyCRT
    have hxCombined :
        x ≡ anchor [MOD step] := by
      dsimp [anchor, step]
      exact Nat.chineseRemainder_modEq_unique hcoprime
        hxParts.2.1 hxParts.2.2
    have hyCombined :
        y ≡ anchor [MOD step] := by
      dsimp [anchor, step]
      exact Nat.chineseRemainder_modEq_unique hcoprime
        hyParts.2.1 hyParts.2.2
    have hxmod : x % step = anchor := by
      change x % step = anchor % step at hxCombined
      simpa [Nat.mod_eq_of_lt hanchor] using hxCombined
    have hymod : y % step = anchor := by
      change y % step = anchor % step at hyCombined
      simpa [Nat.mod_eq_of_lt hanchor] using hyCombined
    change x / step = y / step at hquotient
    calc
      x = x % step + step * (x / step) :=
        (Nat.mod_add_div x step).symm
      _ = y % step + step * (y / step) := by
        rw [hxmod, hymod, hquotient]
      _ = y := Nat.mod_add_div y step
  have hcard :
      (paperCRTOutsideClass
          N modulus root period residue).card ≤ target.card :=
    Finset.card_le_card_of_injOn
      (fun x : Nat => x / step) hmap hinjective
  have htarget :
      25 * target.card ≤ 23 * length + 46 := by
    simpa [target] using
      outsideProgression_count_scaled_le anchor step length hstep25
  dsimp [length, step] at htarget ⊢
  nlinarith

theorem primeSquareSelectionStep_coprime_twentyFive
    {p : Nat} (hp : Nat.Prime p) (hmod : p % 4 = 1)
    (hpFive : p ≠ 5) (selection : PaperDiagonalSelection) :
    Nat.Coprime
      (p ^ 2 * selection.selectionPeriod) 25 := by
  have hsmall :=
    primeSquare_coprime_smallPeriod hp hmod hpFive selection
  rw [selection.smallPeriod_eq] at hsmall
  have hp25 : Nat.Coprime (p ^ 2) 25 :=
    hsmall.of_dvd_right (by exact dvd_mul_right 25 _)
  rw [Nat.coprime_mul_iff_left]
  exact ⟨hp25, selection.coprime_twentyFive_selectionPeriod.symm⟩

def paperRootSelectionGroupedCover
    (N p root : Nat) (selection : PaperDiagonalSelection) :
    Finset Nat :=
  selection.selectionResidues.biUnion fun residue =>
    paperCRTOutsideClass N (p ^ 2) root
      selection.selectionPeriod residue

theorem mem_paperRootSelectionGroupedCover
    {N p root x : Nat} {selection : PaperDiagonalSelection}
    (hrootLt : root < p ^ 2)
    (hxUpper : x ≤ N)
    (hroot : x % (p ^ 2) = root)
    (houtside : OutsideLowBase x)
    (hselection :
      truncatedDiagonalAtomOf x ∈ selection.atoms) :
    x ∈ paperRootSelectionGroupedCover N p root selection := by
  rw [paperRootSelectionGroupedCover, Finset.mem_biUnion]
  let residue := x % selection.selectionPeriod
  have hresidue :
      residue ∈ selection.selectionResidues := by
    rw [PaperDiagonalSelection.selectionResidues,
      Finset.mem_filter]
    refine ⟨Finset.mem_range.mpr
      (Nat.mod_lt _ selection.selectionPeriod_pos), ?_⟩
    exact (selection.mem_atoms_mod_selectionPeriod x).mp hselection
  refine ⟨residue, hresidue, ?_⟩
  rw [paperCRTOutsideClass, Finset.mem_filter]
  refine ⟨?_, houtside⟩
  rw [paperCRTClass, Finset.mem_filter]
  refine ⟨Finset.mem_range.mpr (by omega), ?_, ?_⟩
  · show x % (p ^ 2) = root % (p ^ 2)
    rw [hroot, Nat.mod_eq_of_lt hrootLt]
  · exact (Nat.mod_modEq x selection.selectionPeriod).symm

theorem paperRootSelectionGroupedCover_card_scaled_le
    {N p root : Nat} (selection : PaperDiagonalSelection)
    (hp : Nat.Prime p) (hmod : p % 4 = 1) (hpFive : p ≠ 5) :
    25 * (paperRootSelectionGroupedCover
        N p root selection).card ≤
      selection.selectionResidues.card *
        (23 * ((N + 1) /
          (p ^ 2 * selection.selectionPeriod) + 1) + 46) := by
  have hcoprime :
      Nat.Coprime (p ^ 2) selection.selectionPeriod := by
    have hsmall :=
      primeSquare_coprime_smallPeriod hp hmod hpFive selection
    exact hsmall.of_dvd_right
      (by
        rw [selection.smallPeriod_eq]
        exact dvd_mul_left _ _)
  have hstep25 :=
    primeSquareSelectionStep_coprime_twentyFive
      hp hmod hpFive selection
  have hcover :
      (paperRootSelectionGroupedCover N p root selection).card ≤
        ∑ residue ∈ selection.selectionResidues,
          (paperCRTOutsideClass N (p ^ 2) root
            selection.selectionPeriod residue).card := by
    exact Finset.card_biUnion_le
  have hterms :
      ∀ residue ∈ selection.selectionResidues,
        25 * (paperCRTOutsideClass N (p ^ 2) root
          selection.selectionPeriod residue).card ≤
        23 * ((N + 1) /
          (p ^ 2 * selection.selectionPeriod) + 1) + 46 := by
    intro residue _hresidue
    exact paperCRTOutsideClass_card_scaled_le hcoprime
      (pow_pos hp.pos 2) selection.selectionPeriod_pos hstep25
  calc
    25 * (paperRootSelectionGroupedCover
        N p root selection).card ≤
      25 * (∑ residue ∈ selection.selectionResidues,
        (paperCRTOutsideClass N (p ^ 2) root
          selection.selectionPeriod residue).card) :=
        Nat.mul_le_mul_left 25 hcover
    _ = ∑ residue ∈ selection.selectionResidues,
        25 * (paperCRTOutsideClass N (p ^ 2) root
          selection.selectionPeriod residue).card := by
      simp [Finset.mul_sum]
    _ ≤ ∑ _residue ∈ selection.selectionResidues,
        (23 * ((N + 1) /
          (p ^ 2 * selection.selectionPeriod) + 1) + 46) := by
      exact Finset.sum_le_sum hterms
    _ = selection.selectionResidues.card *
        (23 * ((N + 1) /
          (p ^ 2 * selection.selectionPeriod) + 1) + 46) := by
      simp

theorem paperPrimeSelectedBad_card_scaled_le_grouped
    {N p : Nat} (selection : PaperDiagonalSelection)
    (hp : Nat.Prime p) (hmod : p % 4 = 1) (hpFive : p ≠ 5) :
    25 * (paperPrimeSelectedBad N p selection).card ≤
      2 * selection.selectionResidues.card *
        (23 * ((N + 1) /
          (p ^ 2 * selection.selectionPeriod) + 1) + 46) := by
  let roots :=
    diagonalRootPairCertificateOfPrime p hp hmod
  let left :=
    paperRootSelectionGroupedCover N p roots.root₁ selection
  let right :=
    paperRootSelectionGroupedCover N p roots.root₂ selection
  have hsubset :
      paperPrimeSelectedBad N p selection ⊆ left ∪ right := by
    intro x hx
    have hxParts := Finset.mem_filter.mp hx
    have hxBounds := bounds_of_mem_tailDiagonalBad hxParts.1
    have hxOutside := outside_of_mem_tailDiagonalBad hxParts.1
    rcases roots.complete hp hmod hxParts.2.1 with hleft | hright
    · exact Finset.mem_union_left _ <|
        mem_paperRootSelectionGroupedCover roots.root₁_lt
          hxBounds.2 hleft hxOutside hxParts.2.2
    · exact Finset.mem_union_right _ <|
        mem_paperRootSelectionGroupedCover roots.root₂_lt
          hxBounds.2 hright hxOutside hxParts.2.2
  have hleft :
      25 * left.card ≤
        selection.selectionResidues.card *
          (23 * ((N + 1) /
            (p ^ 2 * selection.selectionPeriod) + 1) + 46) := by
    exact paperRootSelectionGroupedCover_card_scaled_le
      selection hp hmod hpFive
  have hright :
      25 * right.card ≤
        selection.selectionResidues.card *
          (23 * ((N + 1) /
            (p ^ 2 * selection.selectionPeriod) + 1) + 46) := by
    exact paperRootSelectionGroupedCover_card_scaled_le
      selection hp hmod hpFive
  have hcard :
      (paperPrimeSelectedBad N p selection).card ≤
        left.card + right.card :=
    (Finset.card_le_card hsubset).trans (Finset.card_union_le _ _)
  nlinarith

#print axioms paperCRTOutsideClass_card_scaled_le
#print axioms paperRootSelectionGroupedCover_card_scaled_le
#print axioms paperPrimeSelectedBad_card_scaled_le_grouped

end Erdos848
