import Erdos848.TailR263EvenOneFinite23Classified
import Erdos848.TailR263EvenOneDiagonalChecker
import Erdos848.LowRangeDegreeReduction
import Erdos848.TailPrimeProgressionCounting
import Erdos848.TailTenMillionCombinatorics

namespace Erdos848

/-!
# E1 cells and the two-coordinate fibre dichotomy

This is the structural part of the lower-block allocation.  A good mod-nine
cell supplies a pair breaking both the mod-49 and mod-121 coordinates.
Every other paired cell lies in one of those two fibres.  The progression
charges below are all-`N` lemmas, not interval scans.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def fiveMillionR263EvenOneCell
    (N : Nat) (B : Finset Nat) (cell : Fin 9) : Finset Nat :=
  (fiveMillionValuationPart N B .evenOne).filter fun x =>
    oddModNineResidue x = cell

def fiveMillionR263EvenOneCellContained49
    (N : Nat) (B : Finset Nat) (cell : Fin 9) : Prop :=
  ∃ residue : Fin 49, ∀ x ∈ fiveMillionR263EvenOneCell N B cell,
    x % 49 = residue.val

def fiveMillionR263EvenOneCellContained121
    (N : Nat) (B : Finset Nat) (cell : Fin 9) : Prop :=
  ∃ residue : Fin 121, ∀ x ∈ fiveMillionR263EvenOneCell N B cell,
    x % 121 = residue.val

def fiveMillionR263EvenOneGoodCell
    (N : Nat) (B : Finset Nat) (cell : Fin 9) : Prop :=
  ¬ fiveMillionR263EvenOneCellContained49 N B cell ∧
    ¬ fiveMillionR263EvenOneCellContained121 N B cell

lemma fiveMillionR263EvenOneCell_subset_part
    (N : Nat) (B : Finset Nat) (cell : Fin 9) :
    fiveMillionR263EvenOneCell N B cell ⊆
      fiveMillionValuationPart N B .evenOne :=
  Finset.filter_subset _ _

private lemma exists_coordinate_ne_fixed_of_not_contained
    {α : Type*} [Nonempty α]
    {points : Finset Nat} (coordinate : Nat → α)
    {fixed : Nat} (hfixed : fixed ∈ points)
    (hnot : ¬ ∃ residue : α, ∀ x ∈ points, coordinate x = residue) :
    ∃ x ∈ points, coordinate x ≠ coordinate fixed := by
  by_contra hnone
  apply hnot
  refine ⟨coordinate fixed, ?_⟩
  intro x hx
  by_contra hne
  exact hnone ⟨x, hx, hne⟩

theorem two_coordinate_pair_of_not_contained
    {points : Finset Nat}
    (h49 : ¬ ∃ residue : Fin 49, ∀ x ∈ points,
      x % 49 = residue.val)
    (h121 : ¬ ∃ residue : Fin 121, ∀ x ∈ points,
      x % 121 = residue.val) :
    ∃ x ∈ points, ∃ y ∈ points,
      x ≠ y ∧ x % 49 ≠ y % 49 ∧ x % 121 ≠ y % 121 := by
  have hnonempty : points.Nonempty := by
    by_contra hempty
    have hpoints : points = ∅ :=
      Finset.not_nonempty_iff_eq_empty.mp hempty
    apply h49
    subst points
    exact ⟨0, by simp⟩
  obtain ⟨a, ha⟩ := hnonempty
  have h49Fin :
      ¬ ∃ residue : Fin 49, ∀ x ∈ points,
        (⟨x % 49, Nat.mod_lt _ (by norm_num)⟩ : Fin 49) = residue := by
    intro hcontained
    apply h49
    obtain ⟨residue, hresidue⟩ := hcontained
    refine ⟨residue, ?_⟩
    intro x hx
    exact congrArg Fin.val (hresidue x hx)
  have h121Fin :
      ¬ ∃ residue : Fin 121, ∀ x ∈ points,
        (⟨x % 121, Nat.mod_lt _ (by norm_num)⟩ : Fin 121) = residue := by
    intro hcontained
    apply h121
    obtain ⟨residue, hresidue⟩ := hcontained
    refine ⟨residue, ?_⟩
    intro x hx
    exact congrArg Fin.val (hresidue x hx)
  obtain ⟨b, hb, hab49⟩ :=
    exists_coordinate_ne_fixed_of_not_contained
      (points := points) (fun x => (⟨x % 49, Nat.mod_lt _ (by norm_num)⟩ :
        Fin 49)) ha h49Fin
  have hab49' : b % 49 ≠ a % 49 := by
    intro heq
    apply hab49
    exact Fin.ext heq
  by_cases hab121 : b % 121 = a % 121
  · obtain ⟨c, hc, hca121⟩ :=
      exists_coordinate_ne_fixed_of_not_contained
        (points := points) (fun x =>
          (⟨x % 121, Nat.mod_lt _ (by norm_num)⟩ : Fin 121)) ha h121Fin
    have hca121' : c % 121 ≠ a % 121 := by
      intro heq
      apply hca121
      exact Fin.ext heq
    by_cases hca49 : c % 49 = a % 49
    · refine ⟨b, hb, c, hc, ?_, ?_, ?_⟩
      · intro hbc
        subst c
        exact hab49' hca49
      · exact fun hbc => hab49' (hbc.trans hca49)
      · exact fun hbc => hca121' (hbc.symm.trans hab121)
    · exact ⟨a, ha, c, hc,
        fun hac => hca49 (by subst c; rfl), Ne.symm hca49, Ne.symm hca121'⟩
  · exact ⟨a, ha, b, hb,
      fun hab => hab49' (by subst b; rfl), Ne.symm hab49', Ne.symm hab121⟩

theorem fiveMillionR263EvenOneGoodCell_pair
    {N : Nat} {B : Finset Nat} {cell : Fin 9}
    (hgood : fiveMillionR263EvenOneGoodCell N B cell) :
    ∃ x ∈ fiveMillionR263EvenOneCell N B cell,
      ∃ y ∈ fiveMillionR263EvenOneCell N B cell,
        x ≠ y ∧ x % 49 ≠ y % 49 ∧ x % 121 ≠ y % 121 :=
  two_coordinate_pair_of_not_contained hgood.1 hgood.2

private theorem fiveMillionR263EvenOneCell_card_le_ceilDiv
    {N modulus : Nat} {B : Finset Nat} {cell : Fin 9}
    (hBout : Erdos848OutsideSet N B)
    (hmodulus : 0 < modulus)
    (hcoprime : Nat.Coprime 36 modulus)
    (hcontained : ∃ residue : Fin modulus,
      ∀ x ∈ fiveMillionR263EvenOneCell N B cell,
        x % modulus = residue.val) :
    (fiveMillionR263EvenOneCell N B cell).card <=
      N ⌈/⌉ (36 * modulus) := by
  obtain ⟨residue, hresidue⟩ := hcontained
  apply card_le_ceilDiv_of_pairwise_modEq
      (fiveMillionR263EvenOneCell N B cell) N (36 * modulus)
      (Nat.mul_pos (by norm_num) hmodulus)
  · intro x hx
    have hxPart :=
      fiveMillionR263EvenOneCell_subset_part N B cell hx
    have hxResidual :=
      fiveMillionValuationPart_subset_residual N B .evenOne hxPart
    exact hallCompletion_subset_Icc hBout (Finset.mem_sdiff.mp hxResidual).1
  · intro a ha b hb
    have haPart := fiveMillionR263EvenOneCell_subset_part N B cell ha
    have hbPart := fiveMillionR263EvenOneCell_subset_part N B cell hb
    have haCell := (Finset.mem_filter.mp ha).2
    have hbCell := (Finset.mem_filter.mp hb).2
    have h4 : a ≡ b [MOD 4] := by
      simpa [Nat.ModEq] using
        (fiveMillionValuationPart_evenOne haPart).trans
          (fiveMillionValuationPart_evenOne hbPart).symm
    have h9 : a ≡ b [MOD 9] := by
      have ha9 : a % 9 = cell.val := by
        simpa [oddModNineResidue] using congrArg Fin.val haCell
      have hb9 : b % 9 = cell.val := by
        simpa [oddModNineResidue] using congrArg Fin.val hbCell
      simpa [Nat.ModEq] using ha9.trans hb9.symm
    have hm : a ≡ b [MOD modulus] := by
      simpa [Nat.ModEq] using
        (hresidue a ha).trans (hresidue b hb).symm
    have h36 : a ≡ b [MOD 36] := by
      simpa using
        (Nat.modEq_and_modEq_iff_modEq_mul
          (by norm_num : Nat.Coprime 4 9)).mp ⟨h4, h9⟩
    exact (Nat.modEq_and_modEq_iff_modEq_mul hcoprime).mp ⟨h36, hm⟩

theorem fiveMillionR263EvenOneCell_card_le_ceilDiv49
    {N : Nat} {B : Finset Nat} {cell : Fin 9}
    (hBout : Erdos848OutsideSet N B)
    (hcontained : fiveMillionR263EvenOneCellContained49 N B cell) :
    (fiveMillionR263EvenOneCell N B cell).card <= N ⌈/⌉ 1764 := by
  simpa [fiveMillionR263EvenOneCellContained49] using
    fiveMillionR263EvenOneCell_card_le_ceilDiv
      hBout (by norm_num : 0 < 49)
      (by norm_num : Nat.Coprime 36 49) hcontained

theorem fiveMillionR263EvenOneCell_card_le_ceilDiv121
    {N : Nat} {B : Finset Nat} {cell : Fin 9}
    (hBout : Erdos848OutsideSet N B)
    (hcontained : fiveMillionR263EvenOneCellContained121 N B cell) :
    (fiveMillionR263EvenOneCell N B cell).card <= N ⌈/⌉ 4356 := by
  simpa [fiveMillionR263EvenOneCellContained121] using
    fiveMillionR263EvenOneCell_card_le_ceilDiv
      hBout (by norm_num : 0 < 121)
      (by norm_num : Nat.Coprime 36 121) hcontained

theorem ceilDiv4356_le_ceilDiv1764 (N : Nat) :
    N ⌈/⌉ 4356 <= N ⌈/⌉ 1764 := by
  apply (ceilDiv_le_iff_le_mul (by norm_num : 0 < 4356)).mpr
  have hsmall :
      N <= 1764 * (N ⌈/⌉ 1764) :=
    (ceilDiv_le_iff_le_mul (by norm_num : 0 < 1764)).mp le_rfl
  nlinarith

theorem fiveMillionR263EvenOneCell_ratio_le49
    {N : Nat} {B : Finset Nat} {cell : Fin 9}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hcontained : fiveMillionR263EvenOneCellContained49 N B cell) :
    ((fiveMillionR263EvenOneCell N B cell).card : Rat) / N <=
      1 / 1764 + 1 / N := by
  have hcard := fiveMillionR263EvenOneCell_card_le_ceilDiv49
    hBout hcontained
  have hcardQ :
      ((fiveMillionR263EvenOneCell N B cell).card : Rat) <=
        ((N ⌈/⌉ 1764 : Nat) : Rat) := by
    exact_mod_cast hcard
  have hceil := ceilDiv_cast_le_div_add_one N 1764 (by norm_num)
  have hNpos : (0 : Rat) < N := by
    exact_mod_cast (lt_of_lt_of_le (by norm_num : 0 < 5_000_000) hLower)
  calc
    ((fiveMillionR263EvenOneCell N B cell).card : Rat) / N <=
        ((N ⌈/⌉ 1764 : Nat) : Rat) / N :=
      div_le_div_of_nonneg_right hcardQ hNpos.le
    _ <= ((N : Rat) / 1764 + 1) / N :=
      div_le_div_of_nonneg_right hceil hNpos.le
    _ = 1 / 1764 + 1 / N := by field_simp

theorem fiveMillionR263EvenOneCell_ratio_le121
    {N : Nat} {B : Finset Nat} {cell : Fin 9}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hcontained : fiveMillionR263EvenOneCellContained121 N B cell) :
    ((fiveMillionR263EvenOneCell N B cell).card : Rat) / N <=
      1 / 4356 + 1 / N := by
  have hcard := fiveMillionR263EvenOneCell_card_le_ceilDiv121
    hBout hcontained
  have hcardQ :
      ((fiveMillionR263EvenOneCell N B cell).card : Rat) <=
        ((N ⌈/⌉ 4356 : Nat) : Rat) := by
    exact_mod_cast hcard
  have hceil := ceilDiv_cast_le_div_add_one N 4356 (by norm_num)
  have hNpos : (0 : Rat) < N := by
    exact_mod_cast (lt_of_lt_of_le (by norm_num : 0 < 5_000_000) hLower)
  calc
    ((fiveMillionR263EvenOneCell N B cell).card : Rat) / N <=
        ((N ⌈/⌉ 4356 : Nat) : Rat) / N :=
      div_le_div_of_nonneg_right hcardQ hNpos.le
    _ <= ((N : Rat) / 4356 + 1) / N :=
      div_le_div_of_nonneg_right hceil hNpos.le
    _ = 1 / 4356 + 1 / N := by field_simp

theorem card_sdiff_cellFibre_finNine_le_eight_mul
    {X : Type*} [DecidableEq X]
    (points : Finset X) (cell : X → Fin 9) (chosen : Fin 9)
    (cap : Nat)
    (hother : ∀ other : Fin 9, other ≠ chosen →
      (cellFibre points cell other).card <= cap) :
    (points \ cellFibre points cell chosen).card <= 8 * cap := by
  classical
  let outside := points \ cellFibre points cell chosen
  have hmaps : (outside : Set X).MapsTo cell
      (Finset.univ.erase chosen : Finset (Fin 9)) := by
    intro x hx
    have hxout : x ∈ points \ cellFibre points cell chosen := hx
    have hxpoint : x ∈ points := (Finset.mem_sdiff.mp hxout).1
    have hxnot : x ∉ cellFibre points cell chosen :=
      (Finset.mem_sdiff.mp hxout).2
    have hxcell : cell x ≠ chosen := by
      intro heq
      exact hxnot (Finset.mem_filter.mpr ⟨hxpoint, heq⟩)
    exact Finset.mem_erase.mpr ⟨hxcell, Finset.mem_univ _⟩
  rw [Finset.card_eq_sum_card_fiberwise hmaps]
  calc
    ∑ other ∈ (Finset.univ.erase chosen : Finset (Fin 9)),
        (outside.filter fun x => cell x = other).card <=
        ∑ _other ∈ (Finset.univ.erase chosen : Finset (Fin 9)), cap := by
      apply Finset.sum_le_sum
      intro other hotherMem
      have hne : other ≠ chosen := (Finset.mem_erase.mp hotherMem).1
      have hsubset :
          (outside.filter fun x => cell x = other) ⊆
            cellFibre points cell other := by
        intro x hx
        have hxf := Finset.mem_filter.mp hx
        exact Finset.mem_filter.mpr
          ⟨(Finset.mem_sdiff.mp hxf.1).1, hxf.2⟩
      exact (Finset.card_le_card hsubset).trans (hother other hne)
    _ = 8 * cap := by simp [Fintype.card_fin]

#print axioms two_coordinate_pair_of_not_contained
#print axioms fiveMillionR263EvenOneCell_card_le_ceilDiv49
#print axioms fiveMillionR263EvenOneCell_card_le_ceilDiv121
#print axioms card_sdiff_cellFibre_finNine_le_eight_mul

end Erdos848
