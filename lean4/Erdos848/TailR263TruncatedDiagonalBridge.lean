import Erdos848.TailR263EvenOneDiagonalChecker
import Erdos848.TailTruncatedDiagonalAtomBounds

namespace Erdos848

/-!
# R263 branch predicates as unions of truncated-diagonal atoms

The old five-million close names its terminal diagonal sets by two-adic,
mod-nine, and mod-forty-nine predicates.  The long-marker certificate uses a
single disjoint atom partition.  This file proves the exact containment needed
to feed the old R263 combinatorial assembly from the new certificate while
paying the kernel Pell remainder only once per terminal branch.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

noncomputable def tailR263LowTwoAtoms : Finset TruncatedDiagonalAtom :=
  by
    classical
    exact Finset.univ.filter fun atom =>
      match atom with
      | .divisibleByEight => True
      | .oddCell _ _ => True
      | _ => False

noncomputable def tailR263EvenTwoCellAtoms (cell : Fin 9) :
    Finset TruncatedDiagonalAtom :=
  insert (.evenTwoCell cell) tailR263LowTwoAtoms

noncomputable def tailR263EvenTwoAllAtoms :
    Finset TruncatedDiagonalAtom :=
  by
    classical
    exact Finset.univ.filter fun atom =>
      match atom with
      | .divisibleByEight => True
      | .evenTwoCell _ => True
      | .oddCell _ _ => True
      | _ => False

noncomputable def tailR263EvenOneCellAtoms (cell : Fin 9) :
    Finset TruncatedDiagonalAtom :=
  by
    classical
    exact Finset.univ.filter fun atom =>
      match atom with
      | .divisibleByEight => True
      | .evenTwoCell _ => True
      | .evenOneFibre storedCell _ => storedCell = cell
      | .oddCell _ _ => True

noncomputable def tailR263EvenOneFibreCoverAtoms
    (cells : Finset (Fin 9)) (residues : Fin 9 → Fin 49) :
    Finset TruncatedDiagonalAtom :=
  by
    classical
    exact Finset.univ.filter fun atom =>
      match atom with
      | .divisibleByEight => True
      | .evenTwoCell _ => True
      | .evenOneFibre cell residue =>
          cell ∈ cells ∧ residue = residues cell
      | .oddCell _ _ => True

lemma truncatedDiagonalAtomOf_eq_divisibleByEight
    {x : Nat} (hx : x % 8 = 0) :
    truncatedDiagonalAtomOf x = .divisibleByEight := by
  have htwo : x % 2 = 0 := by
    calc
      x % 2 = x % 8 % 2 :=
        (Nat.mod_mod_of_dvd x (by norm_num : 2 ∣ 8)).symm
      _ = 0 := by rw [hx]
  have hfour : x % 4 = 0 := by
    calc
      x % 4 = x % 8 % 4 :=
        (Nat.mod_mod_of_dvd x (by norm_num : 4 ∣ 8)).symm
      _ = 0 := by rw [hx]
  simp [truncatedDiagonalAtomOf, htwo, hfour, hx]

lemma truncatedDiagonalAtomOf_eq_evenTwoCell
    {x : Nat} (hx : x % 8 = 4) :
    truncatedDiagonalAtomOf x =
      .evenTwoCell ⟨x % 9, Nat.mod_lt _ (by norm_num)⟩ := by
  have htwo : x % 2 = 0 := by
    calc
      x % 2 = x % 8 % 2 :=
        (Nat.mod_mod_of_dvd x (by norm_num : 2 ∣ 8)).symm
      _ = 0 := by rw [hx]
  have hfour : x % 4 = 0 := by
    calc
      x % 4 = x % 8 % 4 :=
        (Nat.mod_mod_of_dvd x (by norm_num : 4 ∣ 8)).symm
      _ = 0 := by rw [hx]
  simp [truncatedDiagonalAtomOf, htwo, hfour, hx]

lemma truncatedDiagonalAtomOf_eq_evenOneFibre
    {x : Nat} (hx : x % 4 = 2) :
    truncatedDiagonalAtomOf x =
      .evenOneFibre
        ⟨x % 9, Nat.mod_lt _ (by norm_num)⟩
        ⟨x % 49, Nat.mod_lt _ (by norm_num)⟩ := by
  have htwo : x % 2 = 0 := by
    calc
      x % 2 = x % 4 % 2 :=
        (Nat.mod_mod_of_dvd x (by norm_num : 2 ∣ 4)).symm
      _ = 0 := by rw [hx]
  simp [truncatedDiagonalAtomOf, htwo, hx]

lemma truncatedDiagonalAtomOf_eq_odd
    {x : Nat} (hx : x % 2 = 1) :
    truncatedDiagonalAtomOf x =
      .oddCell (x % 4 = 3)
        ⟨x % 9, Nat.mod_lt _ (by norm_num)⟩ := by
  simp [truncatedDiagonalAtomOf, hx]

lemma truncatedDiagonalAtomOf_mem_lowTwo
    {x : Nat}
    (hx : TailR263DiagonalTarget.Accepts .lowTwo x) :
    truncatedDiagonalAtomOf x ∈ tailR263LowTwoAtoms := by
  simp only [TailR263DiagonalTarget.Accepts] at hx
  rcases hx with hzero | hone | hthree | hfive | hseven
  · rw [truncatedDiagonalAtomOf_eq_divisibleByEight hzero]
    simp [tailR263LowTwoAtoms]
  · rw [truncatedDiagonalAtomOf_eq_odd (by
      calc
        x % 2 = x % 8 % 2 :=
          (Nat.mod_mod_of_dvd x (by norm_num : 2 ∣ 8)).symm
        _ = 1 := by rw [hone])]
    simp [tailR263LowTwoAtoms]
  · rw [truncatedDiagonalAtomOf_eq_odd (by
      calc
        x % 2 = x % 8 % 2 :=
          (Nat.mod_mod_of_dvd x (by norm_num : 2 ∣ 8)).symm
        _ = 1 := by rw [hthree])]
    simp [tailR263LowTwoAtoms]
  · rw [truncatedDiagonalAtomOf_eq_odd (by
      calc
        x % 2 = x % 8 % 2 :=
          (Nat.mod_mod_of_dvd x (by norm_num : 2 ∣ 8)).symm
        _ = 1 := by rw [hfive])]
    simp [tailR263LowTwoAtoms]
  · rw [truncatedDiagonalAtomOf_eq_odd (by
      calc
        x % 2 = x % 8 % 2 :=
          (Nat.mod_mod_of_dvd x (by norm_num : 2 ∣ 8)).symm
        _ = 1 := by rw [hseven])]
    simp [tailR263LowTwoAtoms]

lemma truncatedDiagonalAtomOf_mem_evenTwoCell
    {x : Nat} {cell : Fin 9}
    (hx : TailR263DiagonalTarget.Accepts (.evenTwoCell cell) x) :
    truncatedDiagonalAtomOf x ∈ tailR263EvenTwoCellAtoms cell := by
  simp only [TailR263DiagonalTarget.Accepts] at hx
  rw [truncatedDiagonalAtomOf_eq_evenTwoCell hx.1]
  have hcell :
      (⟨x % 9, Nat.mod_lt _ (by norm_num)⟩ : Fin 9) = cell := by
    apply Fin.ext
    exact hx.2
  rw [hcell]
  simp [tailR263EvenTwoCellAtoms]

lemma truncatedDiagonalAtomOf_mem_evenTwoAll_of_lowTwo
    {x : Nat}
    (hx : TailR263DiagonalTarget.Accepts .lowTwo x) :
    truncatedDiagonalAtomOf x ∈ tailR263EvenTwoAllAtoms := by
  have hlow := truncatedDiagonalAtomOf_mem_lowTwo hx
  generalize hatom : truncatedDiagonalAtomOf x = atom at hlow ⊢
  cases atom <;>
    simp [tailR263LowTwoAtoms, tailR263EvenTwoAllAtoms] at hlow ⊢

lemma truncatedDiagonalAtomOf_mem_evenTwoAll_of_cell
    {x : Nat} {cell : Fin 9}
    (hx : TailR263DiagonalTarget.Accepts (.evenTwoCell cell) x) :
    truncatedDiagonalAtomOf x ∈ tailR263EvenTwoAllAtoms := by
  simp only [TailR263DiagonalTarget.Accepts] at hx
  rw [truncatedDiagonalAtomOf_eq_evenTwoCell hx.1]
  simp [tailR263EvenTwoAllAtoms]

lemma truncatedDiagonalAtomOf_mem_evenOneCell
    {x : Nat} {cell : Fin 9}
    (hfour : x % 4 = 2) (hnine : x % 9 = cell) :
    truncatedDiagonalAtomOf x ∈ tailR263EvenOneCellAtoms cell := by
  rw [truncatedDiagonalAtomOf_eq_evenOneFibre hfour]
  have hcell :
      (⟨x % 9, Nat.mod_lt _ (by norm_num)⟩ : Fin 9) = cell := by
    apply Fin.ext
    exact hnine
  rw [hcell]
  simp [tailR263EvenOneCellAtoms]

lemma truncatedDiagonalAtomOf_mem_evenOneFibreCover
    {x : Nat} {cells : Finset (Fin 9)} {residues : Fin 9 → Fin 49}
    {cell : Fin 9} (hcell : cell ∈ cells)
    (hfour : x % 4 = 2) (hnine : x % 9 = cell)
    (hfortyNine : x % 49 = residues cell) :
    truncatedDiagonalAtomOf x ∈
      tailR263EvenOneFibreCoverAtoms cells residues := by
  rw [truncatedDiagonalAtomOf_eq_evenOneFibre hfour]
  have hcellEq :
      (⟨x % 9, Nat.mod_lt _ (by norm_num)⟩ : Fin 9) = cell := by
    apply Fin.ext
    exact hnine
  have hresidueEq :
      (⟨x % 49, Nat.mod_lt _ (by norm_num)⟩ : Fin 49) =
        residues cell := by
    apply Fin.ext
    exact hfortyNine
  rw [hcellEq, hresidueEq]
  simp [tailR263EvenOneFibreCoverAtoms, hcell]

lemma tailR263EvenTwoAllAtoms_subset_evenOneCellAtoms
    (cell : Fin 9) :
    tailR263EvenTwoAllAtoms ⊆ tailR263EvenOneCellAtoms cell := by
  intro atom hatom
  cases atom <;>
    simp [tailR263EvenTwoAllAtoms, tailR263EvenOneCellAtoms] at hatom ⊢

lemma tailR263EvenTwoAllAtoms_subset_evenOneFibreCoverAtoms
    (cells : Finset (Fin 9)) (residues : Fin 9 → Fin 49) :
    tailR263EvenTwoAllAtoms ⊆
      tailR263EvenOneFibreCoverAtoms cells residues := by
  intro atom hatom
  cases atom <;>
    simp [tailR263EvenTwoAllAtoms,
      tailR263EvenOneFibreCoverAtoms] at hatom ⊢

theorem tailR263LowTwoDiagonal_subset_atomUnion (N : Nat) :
    tailR263LowTwoDiagonal N ⊆
      (tailDiagonalBad N).filter
        (fun x => truncatedDiagonalAtomOf x ∈ tailR263LowTwoAtoms) := by
  intro x hx
  have hparts := Finset.mem_filter.mp hx
  exact Finset.mem_filter.mpr
    ⟨hparts.1, truncatedDiagonalAtomOf_mem_lowTwo hparts.2⟩

theorem tailR263EvenTwoCellDiagonal_subset_atomUnion
    (N : Nat) (cell : Fin 9) :
    tailR263EvenTwoCellDiagonal N cell ⊆
      (tailDiagonalBad N).filter
        (fun x =>
          truncatedDiagonalAtomOf x ∈ tailR263EvenTwoCellAtoms cell) := by
  intro x hx
  rcases Finset.mem_union.mp hx with hlow | hcell
  · have hparts := Finset.mem_filter.mp hlow
    exact Finset.mem_filter.mpr
      ⟨hparts.1, Finset.mem_insert_of_mem
        (truncatedDiagonalAtomOf_mem_lowTwo hparts.2)⟩
  · have hparts := Finset.mem_filter.mp hcell
    exact Finset.mem_filter.mpr
      ⟨hparts.1, truncatedDiagonalAtomOf_mem_evenTwoCell hparts.2⟩

theorem tailR263EvenTwoAllDiagonal_subset_atomUnion (N : Nat) :
    tailR263EvenTwoAllDiagonal N ⊆
      (tailDiagonalBad N).filter
        (fun x => truncatedDiagonalAtomOf x ∈ tailR263EvenTwoAllAtoms) := by
  intro x hx
  rcases Finset.mem_union.mp hx with hlow | hcells
  · have hparts := Finset.mem_filter.mp hlow
    exact Finset.mem_filter.mpr
      ⟨hparts.1, truncatedDiagonalAtomOf_mem_evenTwoAll_of_lowTwo hparts.2⟩
  · obtain ⟨cell, _hcell, hxcell⟩ := Finset.mem_biUnion.mp hcells
    have hparts := Finset.mem_filter.mp hxcell
    exact Finset.mem_filter.mpr
      ⟨hparts.1, truncatedDiagonalAtomOf_mem_evenTwoAll_of_cell hparts.2⟩

theorem tailR263EvenOneConcentratedDiagonal_subset_atomUnion
    (N : Nat) (cell : Fin 9) :
    tailR263EvenOneConcentratedDiagonal N cell ⊆
      (tailDiagonalBad N).filter
        (fun x =>
          truncatedDiagonalAtomOf x ∈ tailR263EvenOneCellAtoms cell) := by
  intro x hx
  rcases Finset.mem_union.mp hx with hbase | hone
  · have hbase' := tailR263EvenTwoAllDiagonal_subset_atomUnion N hbase
    have hparts := Finset.mem_filter.mp hbase'
    exact Finset.mem_filter.mpr
      ⟨hparts.1,
        tailR263EvenTwoAllAtoms_subset_evenOneCellAtoms cell hparts.2⟩
  · have hparts := Finset.mem_filter.mp hone
    exact Finset.mem_filter.mpr
      ⟨hparts.1,
        truncatedDiagonalAtomOf_mem_evenOneCell hparts.2.1 hparts.2.2⟩

theorem tailR263EvenOneFibreCoverDiagonal_subset_atomUnion
    (N : Nat) (cells : Finset (Fin 9)) (residues : Fin 9 → Fin 49) :
    tailR263EvenOneFibreCoverDiagonal N cells residues ⊆
      (tailDiagonalBad N).filter
        (fun x => truncatedDiagonalAtomOf x ∈
          tailR263EvenOneFibreCoverAtoms cells residues) := by
  intro x hx
  rcases Finset.mem_union.mp hx with hbase | hfibres
  · have hbase' := tailR263EvenTwoAllDiagonal_subset_atomUnion N hbase
    have hparts := Finset.mem_filter.mp hbase'
    exact Finset.mem_filter.mpr
      ⟨hparts.1,
        tailR263EvenTwoAllAtoms_subset_evenOneFibreCoverAtoms
          cells residues hparts.2⟩
  · obtain ⟨cell, hcell, hxfibre⟩ := Finset.mem_biUnion.mp hfibres
    have hfibre := Finset.mem_filter.mp hxfibre
    have hcellParts := Finset.mem_filter.mp hfibre.1
    exact Finset.mem_filter.mpr
      ⟨hcellParts.1,
        truncatedDiagonalAtomOf_mem_evenOneFibreCover hcell
          hcellParts.2.1 hcellParts.2.2 hfibre.2⟩

theorem tailR263Branch_card_le_truncatedAtoms
    (certificate : TruncatedDiagonalCoverageCertificate)
    (targets : TruncatedDiagonalAtom → IndexedMarkerData)
    (atoms : Finset TruncatedDiagonalAtom)
    (counts : TruncatedDiagonalAtom → Nat)
    (branch : Finset Nat)
    {N upper : Nat}
    (hbranch :
      branch ⊆ (tailDiagonalBad N).filter
        (fun x => truncatedDiagonalAtomOf x ∈ atoms))
    (hprojects : certificate.marker.ProjectsTruncatedAtoms targets)
    (hordered :
      ∀ atom ∈ atoms, (targets atom).AdjacentOrdered)
    (hNLimit : N ≤ certificate.marker.limit)
    (hcutoff :
      ∀ atom ∈ atoms, (targets atom).Cutoff upper (counts atom))
    (hNUpper : N ≤ upper)
    (hbound : N + 1 ≤ 2_000_000_000) :
    branch.card ≤
      (∑ atom ∈ atoms, counts atom) +
        (((N + 1) ^ 2 / (certificate.cutoff + 1) ^ 2 + 1) * 13) := by
  exact (Finset.card_le_card hbranch).trans
    (tailDiagonalAtomUnion_card_le certificate targets atoms counts
      hprojects hordered hNLimit hcutoff hNUpper hbound)

#print axioms tailR263LowTwoDiagonal_subset_atomUnion
#print axioms tailR263EvenTwoCellDiagonal_subset_atomUnion
#print axioms tailR263EvenTwoAllDiagonal_subset_atomUnion
#print axioms tailR263EvenOneConcentratedDiagonal_subset_atomUnion
#print axioms tailR263EvenOneFibreCoverDiagonal_subset_atomUnion
#print axioms tailR263Branch_card_le_truncatedAtoms

end Erdos848
