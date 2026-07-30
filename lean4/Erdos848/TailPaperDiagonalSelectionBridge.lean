import Erdos848.TailPaperDiagonalRatio

namespace Erdos848

/-!
# Semantic names for the compact paper diagonal selections

The generated grid uses the computable `PaperDiagonalSelection.atoms`
presentation.  Earlier semantic lemmas use the named atom unions from
`TailPaperTruncatedDiagonalBridge`.  These equalities connect the two
presentations without trusting the certificate producer.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem paperDiagonalUnrestrictedAtoms_eq :
    PaperDiagonalSelection.unrestricted.atoms =
      tailUnrestrictedAtoms := by
  classical
  ext atom
  simp [PaperDiagonalSelection.atoms,
    PaperDiagonalSelection.AcceptsAtom, tailUnrestrictedAtoms]

theorem paperDiagonalConcentratedAtoms_eq
    (residueClass : Fin 4) (cell : Fin 9) :
    (PaperDiagonalSelection.concentrated residueClass cell).atoms =
      tailConcentratedAtoms residueClass cell := by
  classical
  ext atom
  simp [PaperDiagonalSelection.atoms,
    PaperDiagonalSelection.AcceptsAtom, tailConcentratedAtoms]

theorem paperDiagonalOddUnionAtoms_eq :
    PaperDiagonalSelection.oddUnion.atoms =
      tailOddUnionAtoms := by
  classical
  ext atom
  cases atom with
  | divisibleByEightCell cell =>
      simp [PaperDiagonalSelection.atoms,
        PaperDiagonalSelection.AcceptsAtom, tailOddUnionAtoms,
        TruncatedDiagonalAtom.modFourClass, oddModFourClass]
  | evenTwoCell cell =>
      simp [PaperDiagonalSelection.atoms,
        PaperDiagonalSelection.AcceptsAtom, tailOddUnionAtoms,
        TruncatedDiagonalAtom.modFourClass, oddModFourClass]
  | evenOneFibre cell residue =>
      simp [PaperDiagonalSelection.atoms,
        PaperDiagonalSelection.AcceptsAtom, tailOddUnionAtoms,
        TruncatedDiagonalAtom.modFourClass, oddModFourClass]
  | oddCell storedParity cell =>
      cases storedParity <;>
        simp [PaperDiagonalSelection.atoms,
          PaperDiagonalSelection.AcceptsAtom, tailOddUnionAtoms,
          TruncatedDiagonalAtom.modFourClass, oddModFourClass]

theorem paperDiagonalOneOddAtoms_eq
    (parity : Bool) :
    (PaperDiagonalSelection.oneOdd parity).atoms =
      tailOneOddAtoms parity := by
  classical
  ext atom
  cases parity <;>
    cases atom with
    | divisibleByEightCell cell =>
        simp [PaperDiagonalSelection.atoms,
          PaperDiagonalSelection.AcceptsAtom, tailOneOddAtoms,
          tailModFourClassAtoms, TruncatedDiagonalAtom.modFourClass,
          oddModFourClass]
    | evenTwoCell cell =>
        simp [PaperDiagonalSelection.atoms,
          PaperDiagonalSelection.AcceptsAtom, tailOneOddAtoms,
          tailModFourClassAtoms, TruncatedDiagonalAtom.modFourClass,
          oddModFourClass]
    | evenOneFibre cell residue =>
        simp [PaperDiagonalSelection.atoms,
          PaperDiagonalSelection.AcceptsAtom, tailOneOddAtoms,
          tailModFourClassAtoms, TruncatedDiagonalAtom.modFourClass,
          oddModFourClass]
    | oddCell storedParity cell =>
        cases storedParity <;>
          simp [PaperDiagonalSelection.atoms,
            PaperDiagonalSelection.AcceptsAtom, tailOneOddAtoms,
            tailModFourClassAtoms, TruncatedDiagonalAtom.modFourClass,
            oddModFourClass]

theorem paperDiagonalOneOddCellAtoms_eq
    (parity : Bool) (cell : Fin 9) :
    (PaperDiagonalSelection.oneOddCell parity cell).atoms =
      tailOneOddCellAtoms parity cell := by
  classical
  ext atom
  cases parity <;>
    cases atom with
    | divisibleByEightCell storedCell =>
        simp [PaperDiagonalSelection.atoms,
          PaperDiagonalSelection.AcceptsAtom, tailOneOddCellAtoms,
          tailModFourClassCellAtoms, TruncatedDiagonalAtom.modFourClass,
          TruncatedDiagonalAtom.modNineCell, oddModFourClass]
    | evenTwoCell storedCell =>
        simp [PaperDiagonalSelection.atoms,
          PaperDiagonalSelection.AcceptsAtom, tailOneOddCellAtoms,
          tailModFourClassCellAtoms, TruncatedDiagonalAtom.modFourClass,
          TruncatedDiagonalAtom.modNineCell, oddModFourClass]
    | evenOneFibre storedCell residue =>
        simp [PaperDiagonalSelection.atoms,
          PaperDiagonalSelection.AcceptsAtom, tailOneOddCellAtoms,
          tailModFourClassCellAtoms, TruncatedDiagonalAtom.modFourClass,
          TruncatedDiagonalAtom.modNineCell, oddModFourClass]
    | oddCell storedParity storedCell =>
        cases storedParity <;>
          simp [PaperDiagonalSelection.atoms,
            PaperDiagonalSelection.AcceptsAtom, tailOneOddCellAtoms,
            tailModFourClassCellAtoms, TruncatedDiagonalAtom.modFourClass,
            TruncatedDiagonalAtom.modNineCell, oddModFourClass]

theorem paperDiagonalOddPlusCellAtoms_eq
    (parity : Bool) (cell : Fin 9) :
    (PaperDiagonalSelection.oddPlusCell parity cell).atoms =
      tailOddPlusCellAtoms parity cell := by
  classical
  ext atom
  cases parity <;>
    cases atom with
    | divisibleByEightCell storedCell =>
        simp [PaperDiagonalSelection.atoms,
          PaperDiagonalSelection.AcceptsAtom, tailOddPlusCellAtoms,
          tailOneOddAtoms, tailOneOddCellAtoms,
          tailModFourClassAtoms, tailModFourClassCellAtoms,
          TruncatedDiagonalAtom.modFourClass,
          TruncatedDiagonalAtom.modNineCell, oddModFourClass,
          oppositeOddParity]
    | evenTwoCell storedCell =>
        simp [PaperDiagonalSelection.atoms,
          PaperDiagonalSelection.AcceptsAtom, tailOddPlusCellAtoms,
          tailOneOddAtoms, tailOneOddCellAtoms,
          tailModFourClassAtoms, tailModFourClassCellAtoms,
          TruncatedDiagonalAtom.modFourClass,
          TruncatedDiagonalAtom.modNineCell, oddModFourClass,
          oppositeOddParity]
    | evenOneFibre storedCell residue =>
        simp [PaperDiagonalSelection.atoms,
          PaperDiagonalSelection.AcceptsAtom, tailOddPlusCellAtoms,
          tailOneOddAtoms, tailOneOddCellAtoms,
          tailModFourClassAtoms, tailModFourClassCellAtoms,
          TruncatedDiagonalAtom.modFourClass,
          TruncatedDiagonalAtom.modNineCell, oddModFourClass,
          oppositeOddParity]
    | oddCell storedParity storedCell =>
        cases storedParity <;>
          simp [PaperDiagonalSelection.atoms,
            PaperDiagonalSelection.AcceptsAtom, tailOddPlusCellAtoms,
            tailOneOddAtoms, tailOneOddCellAtoms,
            tailModFourClassAtoms, tailModFourClassCellAtoms,
            TruncatedDiagonalAtom.modFourClass,
            TruncatedDiagonalAtom.modNineCell, oddModFourClass,
            oppositeOddParity]

theorem mem_paperDiagonalUnrestrictedAtoms (x : Nat) :
    truncatedDiagonalAtomOf x ∈
      PaperDiagonalSelection.unrestricted.atoms := by
  rw [paperDiagonalUnrestrictedAtoms_eq]
  simp [tailUnrestrictedAtoms]

theorem mem_paperDiagonalConcentratedAtoms_iff
    {x : Nat} {residueClass : Fin 4} {cell : Fin 9} :
    truncatedDiagonalAtomOf x ∈
        (PaperDiagonalSelection.concentrated residueClass cell).atoms ↔
      x % 4 ≠ residueClass ∨ x % 9 = cell := by
  rw [paperDiagonalConcentratedAtoms_eq]
  simp only [tailConcentratedAtoms, Finset.mem_filter,
    Finset.mem_univ, true_and]
  rw [truncatedDiagonalAtomOf_modFourClass,
    truncatedDiagonalAtomOf_modNineCell]
  constructor
  · rintro (hclass | hcell)
    · left
      intro hx
      apply hclass
      exact Fin.ext hx
    · right
      exact congrArg Fin.val hcell
  · rintro (hclass | hcell)
    · left
      intro hx
      apply hclass
      exact congrArg Fin.val hx
    · right
      apply Fin.ext
      exact hcell

theorem mem_paperDiagonalOddUnionAtoms_iff
    {x : Nat} :
    truncatedDiagonalAtomOf x ∈ PaperDiagonalSelection.oddUnion.atoms ↔
      x % 4 = 1 ∨ x % 4 = 3 := by
  rw [paperDiagonalOddUnionAtoms_eq]
  simp only [tailOddUnionAtoms, Finset.mem_filter,
    Finset.mem_univ, true_and]
  rw [truncatedDiagonalAtomOf_modFourClass]
  constructor
  · rintro (hone | hthree)
    · left
      exact congrArg Fin.val hone
    · right
      exact congrArg Fin.val hthree
  · rintro (hone | hthree)
    · left
      apply Fin.ext
      simpa [oddModFourClass] using hone
    · right
      apply Fin.ext
      simpa [oddModFourClass] using hthree

theorem mem_paperDiagonalOneOddAtoms_iff
    {x : Nat} {parity : Bool} :
    truncatedDiagonalAtomOf x ∈
        (PaperDiagonalSelection.oneOdd parity).atoms ↔
      x % 4 = oddModFourClass parity := by
  rw [paperDiagonalOneOddAtoms_eq]
  simp only [tailOneOddAtoms, tailModFourClassAtoms,
    Finset.mem_filter, Finset.mem_univ, true_and]
  rw [truncatedDiagonalAtomOf_modFourClass]
  constructor
  · intro h
    exact congrArg Fin.val h
  · intro h
    apply Fin.ext
    exact h

theorem mem_paperDiagonalOneOddCellAtoms_iff
    {x : Nat} {parity : Bool} {cell : Fin 9} :
    truncatedDiagonalAtomOf x ∈
        (PaperDiagonalSelection.oneOddCell parity cell).atoms ↔
      x % 4 = oddModFourClass parity ∧ x % 9 = cell := by
  rw [paperDiagonalOneOddCellAtoms_eq]
  simp only [tailOneOddCellAtoms, tailModFourClassCellAtoms,
    Finset.mem_filter, Finset.mem_univ, true_and]
  rw [truncatedDiagonalAtomOf_modFourClass,
    truncatedDiagonalAtomOf_modNineCell]
  constructor
  · rintro ⟨hparity, hcell⟩
    exact ⟨congrArg Fin.val hparity, congrArg Fin.val hcell⟩
  · rintro ⟨hparity, hcell⟩
    exact ⟨Fin.ext hparity, Fin.ext hcell⟩

theorem mem_paperDiagonalOddPlusCellAtoms_iff
    {x : Nat} {parity : Bool} {cell : Fin 9} :
    truncatedDiagonalAtomOf x ∈
        (PaperDiagonalSelection.oddPlusCell parity cell).atoms ↔
      x % 4 = oddModFourClass parity ∨
        (x % 4 = oddModFourClass (oppositeOddParity parity) ∧
          x % 9 = cell) := by
  rw [paperDiagonalOddPlusCellAtoms_eq]
  simp only [tailOddPlusCellAtoms, Finset.mem_union,
    tailOneOddAtoms, tailOneOddCellAtoms,
    tailModFourClassAtoms, tailModFourClassCellAtoms,
    Finset.mem_filter, Finset.mem_univ, true_and]
  rw [truncatedDiagonalAtomOf_modFourClass,
    truncatedDiagonalAtomOf_modNineCell]
  constructor
  · rintro (hparity | ⟨hparity, hcell⟩)
    · exact Or.inl (congrArg Fin.val hparity)
    · exact Or.inr
        ⟨congrArg Fin.val hparity, congrArg Fin.val hcell⟩
  · rintro (hparity | ⟨hparity, hcell⟩)
    · exact Or.inl (Fin.ext hparity)
    · exact Or.inr ⟨Fin.ext hparity, Fin.ext hcell⟩

theorem mem_paperDiagonalLowTwoAdicAtoms_iff
    {x : Nat} :
    truncatedDiagonalAtomOf x ∈
        PaperDiagonalSelection.lowTwoAdic.atoms ↔
      x % 8 = 0 ∨ x % 8 = 1 ∨ x % 8 = 3 ∨
        x % 8 = 5 ∨ x % 8 = 7 := by
  simp only [PaperDiagonalSelection.atoms, Finset.mem_filter,
    Finset.mem_univ, true_and]
  unfold truncatedDiagonalAtomOf
  split_ifs <;>
    simp [PaperDiagonalSelection.AcceptsAtom] <;> omega

theorem mem_paperDiagonalEvenTwoCellAtoms_iff
    {x : Nat} {cell : Fin 9} :
    truncatedDiagonalAtomOf x ∈
        (PaperDiagonalSelection.evenTwoCell cell).atoms ↔
      x % 8 = 0 ∨ x % 8 = 1 ∨ x % 8 = 3 ∨
        x % 8 = 5 ∨ x % 8 = 7 ∨
          (x % 8 = 4 ∧ x % 9 = cell) := by
  simp only [PaperDiagonalSelection.atoms, Finset.mem_filter,
    Finset.mem_univ, true_and]
  unfold truncatedDiagonalAtomOf
  split_ifs <;>
    simp [PaperDiagonalSelection.AcceptsAtom, Fin.ext_iff] <;> omega

#print axioms paperDiagonalUnrestrictedAtoms_eq
#print axioms paperDiagonalConcentratedAtoms_eq
#print axioms paperDiagonalOddUnionAtoms_eq
#print axioms paperDiagonalOneOddAtoms_eq
#print axioms paperDiagonalOneOddCellAtoms_eq
#print axioms paperDiagonalOddPlusCellAtoms_eq
#print axioms mem_paperDiagonalConcentratedAtoms_iff
#print axioms mem_paperDiagonalLowTwoAdicAtoms_iff
#print axioms mem_paperDiagonalEvenTwoCellAtoms_iff

end Erdos848
