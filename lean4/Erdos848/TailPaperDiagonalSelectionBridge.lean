import Erdos848.TailPaperDiagonalGridChecker

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

#print axioms paperDiagonalUnrestrictedAtoms_eq
#print axioms paperDiagonalConcentratedAtoms_eq
#print axioms paperDiagonalOddUnionAtoms_eq
#print axioms paperDiagonalOneOddAtoms_eq
#print axioms paperDiagonalOneOddCellAtoms_eq
#print axioms paperDiagonalOddPlusCellAtoms_eq

end Erdos848
