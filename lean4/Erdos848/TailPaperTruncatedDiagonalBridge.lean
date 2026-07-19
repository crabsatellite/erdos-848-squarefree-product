import Erdos848.TailTruncatedDiagonalAtomBounds

namespace Erdos848

/-!
# Paper residue classes as unions of truncated-diagonal atoms

Every atom now retains both its mod-four valuation class and its mod-nine
cell.  The paper's unrestricted, concentrated, odd-union, one-odd-class, and
one-odd-cell diagonal supports can therefore be represented without loss.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def TruncatedDiagonalAtom.modFourClass :
    TruncatedDiagonalAtom → Fin 4
  | .divisibleByEightCell _ => ⟨0, by decide⟩
  | .evenTwoCell _ => ⟨0, by decide⟩
  | .evenOneFibre _ _ => ⟨2, by decide⟩
  | .oddCell false _ => ⟨1, by decide⟩
  | .oddCell true _ => ⟨3, by decide⟩

def TruncatedDiagonalAtom.modNineCell :
    TruncatedDiagonalAtom → Fin 9
  | .divisibleByEightCell cell => cell
  | .evenTwoCell cell => cell
  | .evenOneFibre cell _ => cell
  | .oddCell _ cell => cell

def oddModFourClass : Bool → Fin 4
  | false => ⟨1, by decide⟩
  | true => ⟨3, by decide⟩

def oppositeOddParity : Bool → Bool
  | false => true
  | true => false

theorem truncatedDiagonalAtomOf_modNineCell (x : Nat) :
    (truncatedDiagonalAtomOf x).modNineCell =
      ⟨x % 9, Nat.mod_lt _ (by norm_num)⟩ := by
  unfold truncatedDiagonalAtomOf
  split_ifs <;> rfl

theorem truncatedDiagonalAtomOf_modFourClass (x : Nat) :
    (truncatedDiagonalAtomOf x).modFourClass =
      ⟨x % 4, Nat.mod_lt _ (by norm_num)⟩ := by
  have htwo : x % 2 = x % 4 % 2 := by
    exact (Nat.mod_mod_of_dvd x (by norm_num : 2 ∣ 4)).symm
  have hlt : x % 4 < 4 := Nat.mod_lt _ (by norm_num)
  have hcases :
      x % 4 = 0 ∨ x % 4 = 1 ∨ x % 4 = 2 ∨ x % 4 = 3 := by
    omega
  rcases hcases with hfour | hfour | hfour | hfour
  all_goals
    unfold truncatedDiagonalAtomOf
    split_ifs <;>
      simp_all [TruncatedDiagonalAtom.modFourClass]

noncomputable def tailUnrestrictedAtoms :
    Finset TruncatedDiagonalAtom :=
  Finset.univ

noncomputable def tailModFourClassAtoms (residueClass : Fin 4) :
    Finset TruncatedDiagonalAtom := by
  classical
  exact Finset.univ.filter fun atom =>
    atom.modFourClass = residueClass

noncomputable def tailModFourClassCellAtoms
    (residueClass : Fin 4) (cell : Fin 9) :
    Finset TruncatedDiagonalAtom := by
  classical
  exact Finset.univ.filter fun atom =>
    atom.modFourClass = residueClass ∧ atom.modNineCell = cell

/-- All residue atoms except that one mod-four class is restricted to one
mod-nine cell.  This is `U_25 - E_e + Cell_(e,c)` in the paper audit. -/
noncomputable def tailConcentratedAtoms
    (residueClass : Fin 4) (cell : Fin 9) :
    Finset TruncatedDiagonalAtom := by
  classical
  exact Finset.univ.filter fun atom =>
    atom.modFourClass ≠ residueClass ∨ atom.modNineCell = cell

noncomputable def tailOddUnionAtoms :
    Finset TruncatedDiagonalAtom := by
  classical
  exact Finset.univ.filter fun atom =>
    atom.modFourClass = oddModFourClass false ∨
      atom.modFourClass = oddModFourClass true

noncomputable def tailOneOddAtoms (parity : Bool) :
    Finset TruncatedDiagonalAtom :=
  tailModFourClassAtoms (oddModFourClass parity)

noncomputable def tailOneOddCellAtoms
    (parity : Bool) (cell : Fin 9) :
    Finset TruncatedDiagonalAtom :=
  tailModFourClassCellAtoms (oddModFourClass parity) cell

noncomputable def tailOddPlusCellAtoms
    (parity : Bool) (cell : Fin 9) :
    Finset TruncatedDiagonalAtom :=
  tailOneOddAtoms parity ∪
    tailOneOddCellAtoms (oppositeOddParity parity) cell

theorem truncatedDiagonalAtomOf_mem_modFourClass
    {x : Nat} {residueClass : Fin 4}
    (hclass : x % 4 = residueClass) :
    truncatedDiagonalAtomOf x ∈
      tailModFourClassAtoms residueClass := by
  simp only [tailModFourClassAtoms, Finset.mem_filter,
    Finset.mem_univ, true_and]
  rw [truncatedDiagonalAtomOf_modFourClass]
  apply Fin.ext
  exact hclass

theorem truncatedDiagonalAtomOf_mem_modFourClassCell
    {x : Nat} {residueClass : Fin 4} {cell : Fin 9}
    (hclass : x % 4 = residueClass) (hcell : x % 9 = cell) :
    truncatedDiagonalAtomOf x ∈
      tailModFourClassCellAtoms residueClass cell := by
  simp only [tailModFourClassCellAtoms, Finset.mem_filter,
    Finset.mem_univ, true_and]
  constructor
  · rw [truncatedDiagonalAtomOf_modFourClass]
    apply Fin.ext
    exact hclass
  · rw [truncatedDiagonalAtomOf_modNineCell]
    apply Fin.ext
    exact hcell

theorem truncatedDiagonalAtomOf_mem_concentrated
    {x : Nat} {residueClass : Fin 4} {cell : Fin 9}
    (hselect : x % 4 ≠ residueClass ∨ x % 9 = cell) :
    truncatedDiagonalAtomOf x ∈
      tailConcentratedAtoms residueClass cell := by
  simp only [tailConcentratedAtoms, Finset.mem_filter,
    Finset.mem_univ, true_and]
  rcases hselect with hclass | hcell
  · left
    intro hatom
    apply hclass
    rw [truncatedDiagonalAtomOf_modFourClass] at hatom
    exact congrArg Fin.val hatom
  · right
    rw [truncatedDiagonalAtomOf_modNineCell]
    apply Fin.ext
    exact hcell

theorem truncatedDiagonalAtomOf_mem_oddUnion
    {x : Nat} (hodd : x % 4 = 1 ∨ x % 4 = 3) :
    truncatedDiagonalAtomOf x ∈ tailOddUnionAtoms := by
  simp only [tailOddUnionAtoms, Finset.mem_filter,
    Finset.mem_univ, true_and]
  rw [truncatedDiagonalAtomOf_modFourClass]
  rcases hodd with hone | hthree
  · left
    apply Fin.ext
    simpa [oddModFourClass] using hone
  · right
    apply Fin.ext
    simpa [oddModFourClass] using hthree

theorem truncatedDiagonalAtomOf_mem_oneOdd
    {x : Nat} {parity : Bool}
    (hodd : x % 4 = oddModFourClass parity) :
    truncatedDiagonalAtomOf x ∈ tailOneOddAtoms parity := by
  exact truncatedDiagonalAtomOf_mem_modFourClass hodd

theorem truncatedDiagonalAtomOf_mem_oneOddCell
    {x : Nat} {parity : Bool} {cell : Fin 9}
    (hodd : x % 4 = oddModFourClass parity)
    (hcell : x % 9 = cell) :
    truncatedDiagonalAtomOf x ∈ tailOneOddCellAtoms parity cell := by
  exact truncatedDiagonalAtomOf_mem_modFourClassCell hodd hcell

lemma mod_two_eq_one_of_mod_four_eq_odd
    {x : Nat} (hodd : x % 4 = 1 ∨ x % 4 = 3) :
    x % 2 = 1 := by
  have hcompat : x % 2 = x % 4 % 2 :=
    (Nat.mod_mod_of_dvd x (by norm_num : 2 ∣ 4)).symm
  rcases hodd with hone | hthree <;> omega

theorem odd_of_truncatedDiagonalAtomOf_mem_oddUnion
    {x : Nat}
    (hx : truncatedDiagonalAtomOf x ∈ tailOddUnionAtoms) :
    x % 2 = 1 := by
  have hatom :
      (truncatedDiagonalAtomOf x).modFourClass =
        oddModFourClass false ∨
      (truncatedDiagonalAtomOf x).modFourClass =
        oddModFourClass true := by
    simpa [tailOddUnionAtoms] using hx
  rw [truncatedDiagonalAtomOf_modFourClass] at hatom
  apply mod_two_eq_one_of_mod_four_eq_odd
  rcases hatom with hone | hthree
  · left
    exact congrArg Fin.val hone
  · right
    exact congrArg Fin.val hthree

theorem odd_of_truncatedDiagonalAtomOf_mem_oneOdd
    {x : Nat} {parity : Bool}
    (hx : truncatedDiagonalAtomOf x ∈ tailOneOddAtoms parity) :
    x % 2 = 1 := by
  have hatom :
      (truncatedDiagonalAtomOf x).modFourClass =
        oddModFourClass parity := by
    simpa [tailOneOddAtoms, tailModFourClassAtoms] using hx
  rw [truncatedDiagonalAtomOf_modFourClass] at hatom
  apply mod_two_eq_one_of_mod_four_eq_odd
  cases parity
  · left
    exact congrArg Fin.val hatom
  · right
    exact congrArg Fin.val hatom

theorem odd_of_truncatedDiagonalAtomOf_mem_oneOddCell
    {x : Nat} {parity : Bool} {cell : Fin 9}
    (hx : truncatedDiagonalAtomOf x ∈
      tailOneOddCellAtoms parity cell) :
    x % 2 = 1 := by
  apply odd_of_truncatedDiagonalAtomOf_mem_oneOdd
    (parity := parity)
  have hparts := Finset.mem_filter.mp hx
  exact Finset.mem_filter.mpr ⟨Finset.mem_univ _, hparts.2.1⟩

theorem odd_of_truncatedDiagonalAtomOf_mem_oddPlusCell
    {x : Nat} {parity : Bool} {cell : Fin 9}
    (hx : truncatedDiagonalAtomOf x ∈
      tailOddPlusCellAtoms parity cell) :
    x % 2 = 1 := by
  rcases Finset.mem_union.mp hx with hone | hcell
  · exact odd_of_truncatedDiagonalAtomOf_mem_oneOdd hone
  · exact odd_of_truncatedDiagonalAtomOf_mem_oneOddCell hcell

#print axioms truncatedDiagonalAtomOf_modNineCell
#print axioms truncatedDiagonalAtomOf_modFourClass
#print axioms truncatedDiagonalAtomOf_mem_concentrated
#print axioms truncatedDiagonalAtomOf_mem_oddUnion
#print axioms odd_of_truncatedDiagonalAtomOf_mem_oddPlusCell

end Erdos848
