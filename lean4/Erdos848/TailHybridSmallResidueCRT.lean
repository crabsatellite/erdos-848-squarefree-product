import Erdos848.TailHybridSmallResidueCounts

namespace Erdos848

/-!
# CRT factorization of the small-prime residue payment

The old executable proof evaluated the complete period (up to `1800`) once
for every paper selection.  Since the base exclusion has period `25` and all
selection conditions have coprime period `1`, `4`, `8`, `36`, or `72`, the
cardinality factors.  The only executable checks below therefore have size at
most `72`.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

private theorem mod_mod_selectionPeriod
    (selection : PaperDiagonalSelection) (x modulus : Nat)
    (hmodulus : modulus ∣ selection.selectionPeriod) :
    x % selection.selectionPeriod % modulus = x % modulus :=
  Nat.mod_mod_of_dvd x hmodulus

theorem PaperDiagonalSelection.mem_atoms_mod_selectionPeriod
    (selection : PaperDiagonalSelection) (x : Nat) :
    truncatedDiagonalAtomOf x ∈ selection.atoms ↔
      truncatedDiagonalAtomOf (x % selection.selectionPeriod) ∈
        selection.atoms := by
  cases selection with
  | unrestricted =>
      simp only [mem_paperDiagonalUnrestrictedAtoms]
  | concentrated residueClass cell =>
      have hm4 := mod_mod_selectionPeriod
        (.concentrated residueClass cell) x 4 (by
          norm_num [PaperDiagonalSelection.selectionPeriod])
      have hm9 := mod_mod_selectionPeriod
        (.concentrated residueClass cell) x 9 (by
          norm_num [PaperDiagonalSelection.selectionPeriod])
      rw [mem_paperDiagonalConcentratedAtoms_iff,
        mem_paperDiagonalConcentratedAtoms_iff]
      omega
  | lowTwoAdic =>
      have hm8 := mod_mod_selectionPeriod .lowTwoAdic x 8 (by
        norm_num [PaperDiagonalSelection.selectionPeriod])
      rw [mem_paperDiagonalLowTwoAdicAtoms_iff,
        mem_paperDiagonalLowTwoAdicAtoms_iff]
      omega
  | evenTwoCell cell =>
      have hm8 := mod_mod_selectionPeriod
        (.evenTwoCell cell) x 8 (by
          norm_num [PaperDiagonalSelection.selectionPeriod])
      have hm9 := mod_mod_selectionPeriod
        (.evenTwoCell cell) x 9 (by
          norm_num [PaperDiagonalSelection.selectionPeriod])
      rw [mem_paperDiagonalEvenTwoCellAtoms_iff,
        mem_paperDiagonalEvenTwoCellAtoms_iff]
      omega
  | oddUnion =>
      have hm4 := mod_mod_selectionPeriod .oddUnion x 4 (by
        norm_num [PaperDiagonalSelection.selectionPeriod])
      rw [mem_paperDiagonalOddUnionAtoms_iff,
        mem_paperDiagonalOddUnionAtoms_iff]
      omega
  | oddPlusCell parity cell =>
      have hm4 := mod_mod_selectionPeriod
        (.oddPlusCell parity cell) x 4 (by
          norm_num [PaperDiagonalSelection.selectionPeriod])
      have hm9 := mod_mod_selectionPeriod
        (.oddPlusCell parity cell) x 9 (by
          norm_num [PaperDiagonalSelection.selectionPeriod])
      rw [mem_paperDiagonalOddPlusCellAtoms_iff,
        mem_paperDiagonalOddPlusCellAtoms_iff]
      omega
  | oneOdd parity =>
      have hm4 := mod_mod_selectionPeriod
        (.oneOdd parity) x 4 (by
          norm_num [PaperDiagonalSelection.selectionPeriod])
      rw [mem_paperDiagonalOneOddAtoms_iff,
        mem_paperDiagonalOneOddAtoms_iff]
      omega
  | oneOddCell parity cell =>
      have hm4 := mod_mod_selectionPeriod
        (.oneOddCell parity cell) x 4 (by
          norm_num [PaperDiagonalSelection.selectionPeriod])
      have hm9 := mod_mod_selectionPeriod
        (.oneOddCell parity cell) x 9 (by
          norm_num [PaperDiagonalSelection.selectionPeriod])
      rw [mem_paperDiagonalOneOddCellAtoms_iff,
        mem_paperDiagonalOneOddCellAtoms_iff]
      omega

private def rangeFilterEquiv
    (period : Nat) (predicate : Nat → Prop) [DecidablePred predicate] :
    {x // x ∈ (Finset.range period).filter predicate} ≃
      {x : Fin period // predicate x.val} where
  toFun x :=
    ⟨⟨x.val, Finset.mem_range.mp (Finset.mem_filter.mp x.property).1⟩,
      (Finset.mem_filter.mp x.property).2⟩
  invFun x :=
    ⟨x.val, Finset.mem_filter.mpr
      ⟨Finset.mem_range.mpr x.val.isLt, x.property⟩⟩
  left_inv x := by
    apply Subtype.ext
    rfl
  right_inv x := by
    apply Subtype.ext
    apply Fin.ext
    rfl

private theorem card_range_filter_eq_fintype_card
    (period : Nat) (predicate : Nat → Prop) [DecidablePred predicate] :
    ((Finset.range period).filter predicate).card =
      Fintype.card {x : Fin period // predicate x.val} := by
  calc
    ((Finset.range period).filter predicate).card =
        Fintype.card
          {x // x ∈ (Finset.range period).filter predicate} :=
      (Fintype.card_coe _).symm
    _ = Fintype.card {x : Fin period // predicate x.val} :=
      Fintype.card_congr (rangeFilterEquiv period predicate)

private def finCRTEquiv
    (m : Nat) (hm : 0 < m) (hcoprime : Nat.Coprime 25 m) :
    Fin (25 * m) ≃ Fin 25 × Fin m where
  toFun x :=
    (⟨x.val % 25, Nat.mod_lt _ (by norm_num)⟩,
      ⟨x.val % m, Nat.mod_lt _ hm⟩)
  invFun x :=
    ⟨(Nat.chineseRemainder hcoprime x.1.val x.2.val).val,
      Nat.chineseRemainder_lt_mul hcoprime _ _
        (by norm_num) (Nat.ne_of_gt hm)⟩
  left_inv x := by
    apply Fin.ext
    have hmod := Nat.chineseRemainder_modEq_unique hcoprime
      (Nat.mod_modEq x.val 25).symm
      (Nat.mod_modEq x.val m).symm
    change
      (Nat.chineseRemainder hcoprime
        (x.val % 25) (x.val % m)).val = x.val
    exact (hmod.eq_of_lt_of_lt x.isLt
      (Nat.chineseRemainder_lt_mul hcoprime _ _
        (by norm_num) (Nat.ne_of_gt hm))).symm
  right_inv x := by
    apply Prod.ext
    · apply Fin.ext
      have hleft :=
        (Nat.chineseRemainder hcoprime
          x.1.val x.2.val).property.1
      change
        (Nat.chineseRemainder hcoprime
          x.1.val x.2.val).val % 25 = x.1.val % 25 at hleft
      simpa [Nat.mod_eq_of_lt x.1.isLt] using hleft
    · apply Fin.ext
      have hright :=
        (Nat.chineseRemainder hcoprime
          x.1.val x.2.val).property.2
      change
        (Nat.chineseRemainder hcoprime
          x.1.val x.2.val).val % m = x.2.val % m at hright
      simpa [Nat.mod_eq_of_lt x.2.isLt] using hright

private theorem crt_filter_card
    (m : Nat) (hm : 0 < m) (hcoprime : Nat.Coprime 25 m)
    (left : Fin 25 → Prop) [DecidablePred left]
    (right : Fin m → Prop) [DecidablePred right] :
    Fintype.card
        {x : Fin (25 * m) //
          left ⟨x.val % 25, Nat.mod_lt _ (by norm_num)⟩ ∧
          right ⟨x.val % m, Nat.mod_lt _ hm⟩} =
      Fintype.card {x : Fin 25 // left x} *
        Fintype.card {x : Fin m // right x} := by
  let equivalence := finCRTEquiv m hm hcoprime
  calc
    Fintype.card
          {x : Fin (25 * m) //
            left ⟨x.val % 25, Nat.mod_lt _ (by norm_num)⟩ ∧
            right ⟨x.val % m, Nat.mod_lt _ hm⟩} =
        Fintype.card
          {x : Fin 25 × Fin m // left x.1 ∧ right x.2} := by
      exact Fintype.card_congr <|
        equivalence.subtypeEquiv fun _ => Iff.rfl
    _ = Fintype.card ({x : Fin 25 // left x} ×
          {x : Fin m // right x}) :=
      Fintype.card_congr Equiv.subtypeProdEquivProd
    _ = Fintype.card {x : Fin 25 // left x} *
          Fintype.card {x : Fin m // right x} :=
      Fintype.card_prod _ _

private theorem outsideResidues_card :
    Fintype.card {x : Fin 25 // x.val ≠ 7 ∧ x.val ≠ 18} = 23 := by
  decide

theorem PaperDiagonalSelection.smallResidueCount_eq
    (selection : PaperDiagonalSelection) :
    selection.smallResidueCount =
      23 * selection.selectionResidueCount := by
  cases selection <;>
    norm_num [PaperDiagonalSelection.smallResidueCount,
      PaperDiagonalSelection.selectionResidueCount]

theorem PaperDiagonalSelection.smallResidues_card
    (selection : PaperDiagonalSelection) :
    selection.smallResidues.card = selection.smallResidueCount := by
  let m := selection.selectionPeriod
  let left : Fin 25 → Prop := fun residue =>
    residue.val ≠ 7 ∧ residue.val ≠ 18
  let right : Fin m → Prop := fun residue =>
    truncatedDiagonalAtomOf residue.val ∈ selection.atoms
  have hm : 0 < m := selection.selectionPeriod_pos
  have hcoprime : Nat.Coprime 25 m :=
    selection.coprime_twentyFive_selectionPeriod
  have hfactor :
      Fintype.card
          {x : Fin (25 * m) //
            left ⟨x.val % 25, Nat.mod_lt _ (by norm_num)⟩ ∧
            right ⟨x.val % m, Nat.mod_lt _ hm⟩} =
        23 * selection.selectionResidueCount := by
    rw [crt_filter_card m hm hcoprime left right,
      show Fintype.card {x : Fin 25 // left x} = 23 by
        exact outsideResidues_card]
    have hright :
        Fintype.card {x : Fin m // right x} =
          selection.selectionResidues.card := by
      exact (card_range_filter_eq_fintype_card m
        (fun residue =>
          truncatedDiagonalAtomOf residue ∈ selection.atoms)).symm
    rw [hright, selection.selectionResidues_card]
  rw [PaperDiagonalSelection.smallResidues,
    selection.smallPeriod_eq]
  calc
    ((Finset.range (25 * m)).filter fun residue =>
        OutsideLowBase residue ∧
          truncatedDiagonalAtomOf residue ∈ selection.atoms).card =
        Fintype.card
          {x : Fin (25 * m) //
            OutsideLowBase x.val ∧
              truncatedDiagonalAtomOf x.val ∈ selection.atoms} :=
      card_range_filter_eq_fintype_card _ _
    _ = Fintype.card
          {x : Fin (25 * m) //
            left ⟨x.val % 25, Nat.mod_lt _ (by norm_num)⟩ ∧
            right ⟨x.val % m, Nat.mod_lt _ hm⟩} := by
      apply Fintype.card_congr
      exact (Equiv.refl (Fin (25 * m))).subtypeEquiv fun x => by
        apply and_congr
        · rfl
        · exact selection.mem_atoms_mod_selectionPeriod x.val
    _ = 23 * selection.selectionResidueCount := hfactor
    _ = selection.smallResidueCount := selection.smallResidueCount_eq.symm

end Erdos848
