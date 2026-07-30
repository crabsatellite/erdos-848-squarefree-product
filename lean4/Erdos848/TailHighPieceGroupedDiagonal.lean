import Erdos848.TailHighGroupedDiagonal
import Erdos848.TailPaperDiagonalSelectionBridge

namespace Erdos848

/-!
# Piece-grouped high diagonal counting

The first grouped diagonal bound paid one endpoint discrepancy for every
residue modulo the full selection period.  That is unnecessarily expensive
for the structured selections used by the ten Hall branches.  Each selection
is a union of at most four coarser progressions:

* a concentrated class is three progressions modulo `4` and one modulo `36`;
* an `evenTwoCell` is one progression modulo `2`, one modulo `8`, and one
  modulo `72`;
* all other restricted selections need at most two progressions.

This file proves that decomposition and applies the already checked
modulo-`25` endpoint theorem once per coarse piece.  The reciprocal-square
main term is unchanged, while the prime-count endpoint coefficient depends
only on the number of pieces rather than the number of fine residues.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

structure HighDiagonalProgressionPiece where
  period : Nat
  residue : Nat
  deriving DecidableEq

private def crtFourNine (residueClass : Fin 4) (cell : Fin 9) : Nat :=
  Nat.chineseRemainder (by norm_num : Nat.Coprime 4 9)
    residueClass cell

private def crtEightNine (residue : Nat) (cell : Fin 9) : Nat :=
  Nat.chineseRemainder (by norm_num : Nat.Coprime 8 9)
    residue cell

def highDiagonalSelectionPieces :
    PaperDiagonalSelection → List HighDiagonalProgressionPiece
  | .unrestricted =>
      [⟨1, 0⟩]
  | .concentrated residueClass cell =>
      (([0, 1, 2, 3].filter fun residue =>
          residue ≠ residueClass.val).map fun residue => ⟨4, residue⟩) ++
        [⟨36, crtFourNine residueClass cell⟩]
  | .lowTwoAdic =>
      [⟨2, 1⟩, ⟨8, 0⟩]
  | .evenTwoCell cell =>
      [⟨2, 1⟩, ⟨8, 0⟩, ⟨72, crtEightNine 4 cell⟩]
  | .oddUnion =>
      [⟨2, 1⟩]
  | .oddPlusCell parity cell =>
      [⟨4, oddModFourClass parity⟩,
        ⟨36, crtFourNine
          ⟨oddModFourClass (oppositeOddParity parity), by
            cases parity <;> norm_num [oddModFourClass,
              oppositeOddParity]⟩ cell⟩]
  | .oneOdd parity =>
      [⟨4, oddModFourClass parity⟩]
  | .oneOddCell parity cell =>
      [⟨36, crtFourNine
        ⟨oddModFourClass parity, by
          cases parity <;> norm_num [oddModFourClass]⟩ cell⟩]

def PaperDiagonalSelection.highPieceCount :
    PaperDiagonalSelection → Nat
  | .unrestricted => 1
  | .concentrated _ _ => 4
  | .lowTwoAdic => 2
  | .evenTwoCell _ => 3
  | .oddUnion => 1
  | .oddPlusCell _ _ => 2
  | .oneOdd _ => 1
  | .oneOddCell _ _ => 1

private theorem crtFourNine_spec
    (residueClass : Fin 4) (cell : Fin 9) :
    crtFourNine residueClass cell % 4 = residueClass ∧
      crtFourNine residueClass cell % 9 = cell := by
  have hfour :=
    (Nat.chineseRemainder
      (by norm_num : Nat.Coprime 4 9)
      residueClass cell).prop.1
  have hnine :=
    (Nat.chineseRemainder
      (by norm_num : Nat.Coprime 4 9)
      residueClass cell).prop.2
  constructor
  · change crtFourNine residueClass cell % 4 =
      residueClass.val
    change
      (Nat.chineseRemainder
        (by norm_num : Nat.Coprime 4 9)
        residueClass cell) % 4 = residueClass.val % 4 at hfour
    simpa [Nat.mod_eq_of_lt residueClass.isLt] using hfour
  · change crtFourNine residueClass cell % 9 = cell.val
    change
      (Nat.chineseRemainder
        (by norm_num : Nat.Coprime 4 9)
        residueClass cell) % 9 = cell.val % 9 at hnine
    simpa [Nat.mod_eq_of_lt cell.isLt] using hnine

private theorem crtEightNine_spec
    (residue : Nat) (cell : Fin 9) :
    crtEightNine residue cell % 8 = residue % 8 ∧
      crtEightNine residue cell % 9 = cell := by
  have height :=
    (Nat.chineseRemainder
      (by norm_num : Nat.Coprime 8 9)
      residue cell).prop.1
  have hnine :=
    (Nat.chineseRemainder
      (by norm_num : Nat.Coprime 8 9)
      residue cell).prop.2
  constructor
  · change crtEightNine residue cell % 8 = residue % 8
    exact height
  · change crtEightNine residue cell % 9 = cell.val
    change
      (Nat.chineseRemainder
        (by norm_num : Nat.Coprime 8 9)
        residue cell) % 9 = cell.val % 9 at hnine
    simpa [Nat.mod_eq_of_lt cell.isLt] using hnine

private theorem mod_thirtySix_eq_crtFourNine
    {x : Nat} {residueClass : Fin 4} {cell : Fin 9}
    (hfour : x % 4 = residueClass)
    (hnine : x % 9 = cell) :
    x % 36 = crtFourNine residueClass cell := by
  have hxFour : x ≡ residueClass [MOD 4] := by
    change x % 4 = residueClass.val % 4
    rw [Nat.mod_eq_of_lt residueClass.isLt]
    exact hfour
  have hxNine : x ≡ cell [MOD 9] := by
    change x % 9 = cell.val % 9
    rw [Nat.mod_eq_of_lt cell.isLt]
    exact hnine
  have hcrt :=
    Nat.chineseRemainder_modEq_unique
      (by norm_num : Nat.Coprime 4 9) hxFour hxNine
  change x % 36 = crtFourNine residueClass cell % 36 at hcrt
  have hlt :
      crtFourNine residueClass cell < 36 := by
    exact Nat.chineseRemainder_lt_mul
      (by norm_num : Nat.Coprime 4 9) residueClass cell
        (by norm_num) (by norm_num)
  simpa [Nat.mod_eq_of_lt hlt] using hcrt

private theorem mod_seventyTwo_eq_crtEightNine
    {x residue : Nat} {cell : Fin 9}
    (hresidue : residue < 8)
    (height : x % 8 = residue)
    (hnine : x % 9 = cell) :
    x % 72 = crtEightNine residue cell := by
  have hxEight : x ≡ residue [MOD 8] := by
    change x % 8 = residue % 8
    simpa [Nat.mod_eq_of_lt hresidue] using height
  have hxNine : x ≡ cell [MOD 9] := by
    change x % 9 = cell.val % 9
    rw [Nat.mod_eq_of_lt cell.isLt]
    exact hnine
  have hcrt :=
    Nat.chineseRemainder_modEq_unique
      (by norm_num : Nat.Coprime 8 9) hxEight hxNine
  change x % 72 = crtEightNine residue cell % 72 at hcrt
  have hlt :
      crtEightNine residue cell < 72 := by
    exact Nat.chineseRemainder_lt_mul
      (by norm_num : Nat.Coprime 8 9) residue cell
        (by norm_num) (by norm_num)
  simpa [Nat.mod_eq_of_lt hlt] using hcrt

private theorem mod_two_eq_one_of_mod_eight_eq
    {x residue : Nat} (hresidue : x % 8 = residue)
    (hodd : residue % 2 = 1) :
    x % 2 = 1 := by
  calc
    x % 2 = (x % 8) % 2 := by
      symm
      exact Nat.mod_mod_of_dvd x (by norm_num : 2 ∣ 8)
    _ = residue % 2 := by rw [hresidue]
    _ = 1 := hodd

private theorem mod_two_eq_one_of_mod_four_eq
    {x residue : Nat} (hresidue : x % 4 = residue)
    (hodd : residue % 2 = 1) :
    x % 2 = 1 := by
  calc
    x % 2 = (x % 4) % 2 := by
      symm
      exact Nat.mod_mod_of_dvd x (by norm_num : 2 ∣ 4)
    _ = residue % 2 := by rw [hresidue]
    _ = 1 := hodd

theorem exists_highDiagonalSelectionPiece
    (selection : PaperDiagonalSelection) (x : Nat)
    (hselection :
      truncatedDiagonalAtomOf x ∈ selection.atoms) :
    ∃ piece ∈ highDiagonalSelectionPieces selection,
      x % piece.period = piece.residue := by
  cases selection with
  | unrestricted =>
      exact ⟨⟨1, 0⟩, by simp [highDiagonalSelectionPieces],
        Nat.mod_one x⟩
  | concentrated residueClass cell =>
      have hcases :=
        mem_paperDiagonalConcentratedAtoms_iff.mp hselection
      by_cases hclass : x % 4 = residueClass
      · have hcell : x % 9 = cell :=
          hcases.resolve_left (by simpa [hclass])
        refine
          ⟨⟨36, crtFourNine residueClass cell⟩, ?_, ?_⟩
        · simp [highDiagonalSelectionPieces]
        · exact mod_thirtySix_eq_crtFourNine hclass hcell
      · refine
          ⟨⟨4, x % 4⟩, ?_, rfl⟩
        simp only [highDiagonalSelectionPieces, List.mem_append,
          List.mem_map, List.mem_filter, List.mem_cons,
          List.mem_singleton]
        left
        refine ⟨x % 4, ?_, rfl⟩
        have hlt : x % 4 < 4 := Nat.mod_lt _ (by norm_num)
        interval_cases hvalue : x % 4 <;> simp_all
  | lowTwoAdic =>
      have h :=
        mem_paperDiagonalLowTwoAdicAtoms_iff.mp hselection
      rcases h with hzero | hone | hthree | hfive | hseven
      · exact ⟨⟨8, 0⟩, by simp [highDiagonalSelectionPieces],
          hzero⟩
      · exact ⟨⟨2, 1⟩, by simp [highDiagonalSelectionPieces],
          mod_two_eq_one_of_mod_eight_eq hone (by norm_num)⟩
      · exact ⟨⟨2, 1⟩, by simp [highDiagonalSelectionPieces],
          mod_two_eq_one_of_mod_eight_eq hthree (by norm_num)⟩
      · exact ⟨⟨2, 1⟩, by simp [highDiagonalSelectionPieces],
          mod_two_eq_one_of_mod_eight_eq hfive (by norm_num)⟩
      · exact ⟨⟨2, 1⟩, by simp [highDiagonalSelectionPieces],
          mod_two_eq_one_of_mod_eight_eq hseven (by norm_num)⟩
  | evenTwoCell cell =>
      have h :=
        mem_paperDiagonalEvenTwoCellAtoms_iff.mp hselection
      rcases h with hzero | hone | hthree | hfive | hseven |
        ⟨hfour, hcell⟩
      · exact ⟨⟨8, 0⟩, by simp [highDiagonalSelectionPieces],
          hzero⟩
      · exact ⟨⟨2, 1⟩, by simp [highDiagonalSelectionPieces],
          mod_two_eq_one_of_mod_eight_eq hone (by norm_num)⟩
      · exact ⟨⟨2, 1⟩, by simp [highDiagonalSelectionPieces],
          mod_two_eq_one_of_mod_eight_eq hthree (by norm_num)⟩
      · exact ⟨⟨2, 1⟩, by simp [highDiagonalSelectionPieces],
          mod_two_eq_one_of_mod_eight_eq hfive (by norm_num)⟩
      · exact ⟨⟨2, 1⟩, by simp [highDiagonalSelectionPieces],
          mod_two_eq_one_of_mod_eight_eq hseven (by norm_num)⟩
      · exact
          ⟨⟨72, crtEightNine 4 cell⟩,
            by simp [highDiagonalSelectionPieces],
            mod_seventyTwo_eq_crtEightNine
              (by norm_num) hfour hcell⟩
  | oddUnion =>
      rcases mem_paperDiagonalOddUnionAtoms_iff.mp hselection with
        hone | hthree
      · exact ⟨⟨2, 1⟩, by simp [highDiagonalSelectionPieces],
          mod_two_eq_one_of_mod_four_eq hone (by norm_num)⟩
      · exact ⟨⟨2, 1⟩, by simp [highDiagonalSelectionPieces],
          mod_two_eq_one_of_mod_four_eq hthree (by norm_num)⟩
  | oddPlusCell parity cell =>
      rcases
          mem_paperDiagonalOddPlusCellAtoms_iff.mp hselection with
        hparity | ⟨hopposite, hcell⟩
      · exact
          ⟨⟨4, oddModFourClass parity⟩,
            by simp [highDiagonalSelectionPieces], hparity⟩
      · let oppositeClass : Fin 4 :=
          ⟨oddModFourClass (oppositeOddParity parity), by
            cases parity <;>
              norm_num [oddModFourClass, oppositeOddParity]⟩
        refine
          ⟨⟨36, crtFourNine oppositeClass cell⟩, ?_, ?_⟩
        · simp [highDiagonalSelectionPieces, oppositeClass]
        · exact mod_thirtySix_eq_crtFourNine
            (by simpa [oppositeClass] using hopposite) hcell
  | oneOdd parity =>
      exact
        ⟨⟨4, oddModFourClass parity⟩,
          by simp [highDiagonalSelectionPieces],
          mem_paperDiagonalOneOddAtoms_iff.mp hselection⟩
  | oneOddCell parity cell =>
      let parityClass : Fin 4 :=
        ⟨oddModFourClass parity, by
          cases parity <;> norm_num [oddModFourClass]⟩
      have hparts :=
        mem_paperDiagonalOneOddCellAtoms_iff.mp hselection
      refine
        ⟨⟨36, crtFourNine parityClass cell⟩, ?_, ?_⟩
      · simp [highDiagonalSelectionPieces, parityClass]
      · exact mod_thirtySix_eq_crtFourNine
          (by simpa [parityClass] using hparts.1) hparts.2

theorem highDiagonalSelectionPieces_length
    (selection : PaperDiagonalSelection) :
    (highDiagonalSelectionPieces selection).length =
      selection.highPieceCount := by
  cases selection with
  | unrestricted | lowTwoAdic | evenTwoCell | oddUnion |
      oddPlusCell | oneOdd | oneOddCell =>
      simp [highDiagonalSelectionPieces,
        PaperDiagonalSelection.highPieceCount]
  | concentrated residueClass cell =>
      fin_cases residueClass <;>
        simp [highDiagonalSelectionPieces,
          PaperDiagonalSelection.highPieceCount]

theorem highDiagonalSelectionPieces_reciprocal_sum
    (selection : PaperDiagonalSelection) :
    ((highDiagonalSelectionPieces selection).map
        (fun piece => (1 : Rat) / piece.period)).sum =
      (selection.selectionResidueCount : Rat) /
        selection.selectionPeriod := by
  cases selection with
  | unrestricted | lowTwoAdic | evenTwoCell | oddUnion |
      oddPlusCell | oneOdd | oneOddCell =>
      norm_num [highDiagonalSelectionPieces,
        PaperDiagonalSelection.selectionResidueCount,
        PaperDiagonalSelection.selectionPeriod]
  | concentrated residueClass cell =>
      fin_cases residueClass <;>
        norm_num [highDiagonalSelectionPieces,
          PaperDiagonalSelection.selectionResidueCount,
          PaperDiagonalSelection.selectionPeriod]

theorem highDiagonalSelectionPiece_period_dvd
    {selection : PaperDiagonalSelection}
    {piece : HighDiagonalProgressionPiece}
    (hpiece : piece ∈ highDiagonalSelectionPieces selection) :
    piece.period ∣ selection.selectionPeriod := by
  cases selection with
  | unrestricted =>
      simp [highDiagonalSelectionPieces,
        PaperDiagonalSelection.selectionPeriod] at hpiece ⊢
      subst piece
      norm_num
  | concentrated residueClass cell =>
      simp only [highDiagonalSelectionPieces, List.mem_append,
        List.mem_map, List.mem_filter, List.mem_cons,
        List.mem_singleton] at hpiece
      rcases hpiece with
        ⟨residue, _hresidue, rfl⟩ |
          (rfl | hfalse)
      · norm_num [PaperDiagonalSelection.selectionPeriod]
      · norm_num [PaperDiagonalSelection.selectionPeriod]
      · simp at hfalse
  | lowTwoAdic =>
      simp [highDiagonalSelectionPieces] at hpiece
      rcases hpiece with rfl | rfl
      · norm_num [PaperDiagonalSelection.selectionPeriod]
      · norm_num [PaperDiagonalSelection.selectionPeriod]
  | evenTwoCell cell =>
      simp [highDiagonalSelectionPieces] at hpiece
      rcases hpiece with rfl | rfl | rfl
      · norm_num [PaperDiagonalSelection.selectionPeriod]
      · norm_num [PaperDiagonalSelection.selectionPeriod]
      · norm_num [PaperDiagonalSelection.selectionPeriod]
  | oddUnion =>
      simp [highDiagonalSelectionPieces] at hpiece
      subst piece
      norm_num [PaperDiagonalSelection.selectionPeriod]
  | oddPlusCell parity cell =>
      simp [highDiagonalSelectionPieces] at hpiece
      rcases hpiece with rfl | rfl
      · norm_num [PaperDiagonalSelection.selectionPeriod]
      · norm_num [PaperDiagonalSelection.selectionPeriod]
  | oneOdd parity =>
      simp [highDiagonalSelectionPieces] at hpiece
      subst piece
      norm_num [PaperDiagonalSelection.selectionPeriod]
  | oneOddCell parity cell =>
      simp [highDiagonalSelectionPieces] at hpiece
      subst piece
      norm_num [PaperDiagonalSelection.selectionPeriod]

theorem highDiagonalSelectionPiece_period_pos
    {selection : PaperDiagonalSelection}
    {piece : HighDiagonalProgressionPiece}
    (hpiece : piece ∈ highDiagonalSelectionPieces selection) :
    0 < piece.period := by
  have hdvd :=
    highDiagonalSelectionPiece_period_dvd hpiece
  have hselection := selection.selectionPeriod_pos
  exact Nat.pos_of_dvd_of_pos hdvd hselection

theorem highDiagonalSelectionPiece_residue_lt
    {selection : PaperDiagonalSelection}
    {piece : HighDiagonalProgressionPiece}
    (hpiece : piece ∈ highDiagonalSelectionPieces selection) :
    piece.residue < piece.period := by
  cases selection with
  | unrestricted =>
      simp [highDiagonalSelectionPieces] at hpiece
      subst piece
      norm_num
  | concentrated residueClass cell =>
      simp only [highDiagonalSelectionPieces, List.mem_append,
        List.mem_map, List.mem_filter, List.mem_cons] at hpiece
      rcases hpiece with
        ⟨residue, hresidue, rfl⟩ |
          (rfl | hfalse)
      · rcases hresidue with ⟨hvalues, _hne⟩
        rcases hvalues with rfl | rfl | rfl | hlast
        · norm_num
        · norm_num
        · norm_num
        · rcases hlast with rfl | hnil
          · norm_num
          · simp at hnil
      · exact Nat.chineseRemainder_lt_mul
          (by norm_num : Nat.Coprime 4 9)
          residueClass cell (by norm_num) (by norm_num)
      · simp at hfalse
  | lowTwoAdic =>
      simp [highDiagonalSelectionPieces] at hpiece
      rcases hpiece with rfl | rfl <;> norm_num
  | evenTwoCell cell =>
      simp [highDiagonalSelectionPieces] at hpiece
      rcases hpiece with rfl | rfl | rfl
      · norm_num
      · norm_num
      · exact Nat.chineseRemainder_lt_mul
          (by norm_num : Nat.Coprime 8 9)
          4 cell (by norm_num) (by norm_num)
  | oddUnion =>
      simp [highDiagonalSelectionPieces] at hpiece
      subst piece
      norm_num
  | oddPlusCell parity cell =>
      simp [highDiagonalSelectionPieces] at hpiece
      rcases hpiece with rfl | rfl
      · cases parity <;> norm_num [oddModFourClass]
      · exact Nat.chineseRemainder_lt_mul
          (by norm_num : Nat.Coprime 4 9)
          (oddModFourClass (oppositeOddParity parity))
          cell (by
            cases parity <;>
              norm_num [oddModFourClass, oppositeOddParity])
          (by norm_num)
  | oneOdd parity =>
      simp [highDiagonalSelectionPieces] at hpiece
      subst piece
      cases parity <;> norm_num [oddModFourClass]
  | oneOddCell parity cell =>
      simp [highDiagonalSelectionPieces] at hpiece
      subst piece
      exact Nat.chineseRemainder_lt_mul
        (by norm_num : Nat.Coprime 4 9)
        (oddModFourClass parity) cell
        (by cases parity <;> norm_num [oddModFourClass])
        (by norm_num)

private def paperRootPieceCover
    (N modulus root : Nat)
    (pieces : List HighDiagonalProgressionPiece) : Finset Nat :=
  pieces.foldr
    (fun piece accumulated =>
      paperCRTOutsideClass N modulus root
          piece.period piece.residue ∪ accumulated)
    ∅

private theorem mem_paperRootPieceCover_of_mem
    {N modulus root x : Nat}
    {pieces : List HighDiagonalProgressionPiece}
    {piece : HighDiagonalProgressionPiece}
    (hpiece : piece ∈ pieces)
    (hx : x ∈ paperCRTOutsideClass N modulus root
      piece.period piece.residue) :
    x ∈ paperRootPieceCover N modulus root pieces := by
  induction pieces with
  | nil => simp at hpiece
  | cons head rest ih =>
      simp only [List.mem_cons] at hpiece
      simp only [paperRootPieceCover, List.foldr]
      rcases hpiece with rfl | hpiece
      · exact Finset.mem_union_left _ hx
      · exact Finset.mem_union_right _
          (ih hpiece)

private theorem paperRootPieceCover_card_scaled_le
    {N modulus root : Nat}
    {pieces : List HighDiagonalProgressionPiece}
    (hterm :
      ∀ piece ∈ pieces,
        25 * (paperCRTOutsideClass N modulus root
          piece.period piece.residue).card ≤
          23 * ((N + 1) /
            (modulus * piece.period) + 1) + 46) :
    25 * (paperRootPieceCover N modulus root pieces).card ≤
      (pieces.map fun piece =>
        23 * ((N + 1) /
          (modulus * piece.period) + 1) + 46).sum := by
  induction pieces with
  | nil =>
      simp [paperRootPieceCover]
  | cons head rest ih =>
      change
        25 * (paperCRTOutsideClass N modulus root
            head.period head.residue ∪
          paperRootPieceCover N modulus root rest).card ≤
          (23 * ((N + 1) /
            (modulus * head.period) + 1) + 46) +
            (rest.map fun piece =>
              23 * ((N + 1) /
                (modulus * piece.period) + 1) + 46).sum
      have hhead := hterm head (by simp)
      have hrest :
          ∀ piece ∈ rest,
            25 * (paperCRTOutsideClass N modulus root
              piece.period piece.residue).card ≤
              23 * ((N + 1) /
                (modulus * piece.period) + 1) + 46 :=
        fun piece hpiece => hterm piece (by simp [hpiece])
      have htail := ih hrest
      have hunion :=
        Finset.card_union_le
          (paperCRTOutsideClass N modulus root
            head.period head.residue)
          (paperRootPieceCover N modulus root rest)
      have hscaledUnion :
          25 * (paperCRTOutsideClass N modulus root
              head.period head.residue ∪
            paperRootPieceCover N modulus root rest).card ≤
            25 * ((paperCRTOutsideClass N modulus root
              head.period head.residue).card +
              (paperRootPieceCover N modulus root rest).card) :=
        Nat.mul_le_mul_left 25 hunion
      omega

def paperRootSelectionPieceCover
    (N p root : Nat) (selection : PaperDiagonalSelection) :
    Finset Nat :=
  paperRootPieceCover N (p ^ 2) root
    (highDiagonalSelectionPieces selection)

theorem mem_paperRootSelectionPieceCover
    {N p root x : Nat} {selection : PaperDiagonalSelection}
    (hrootLt : root < p ^ 2)
    (hxUpper : x ≤ N)
    (hroot : x % (p ^ 2) = root)
    (houtside : OutsideLowBase x)
    (hselection :
      truncatedDiagonalAtomOf x ∈ selection.atoms) :
    x ∈ paperRootSelectionPieceCover N p root selection := by
  obtain ⟨piece, hpiece, hxPiece⟩ :=
    exists_highDiagonalSelectionPiece selection x hselection
  unfold paperRootSelectionPieceCover
  apply mem_paperRootPieceCover_of_mem hpiece
  rw [paperCRTOutsideClass, Finset.mem_filter]
  refine ⟨?_, houtside⟩
  rw [paperCRTClass, Finset.mem_filter]
  refine ⟨Finset.mem_range.mpr (by omega), ?_, ?_⟩
  · show x % (p ^ 2) = root % (p ^ 2)
    rw [hroot, Nat.mod_eq_of_lt hrootLt]
  · change x % piece.period = piece.residue % piece.period
    have hresidueLt :=
      highDiagonalSelectionPiece_residue_lt hpiece
    simpa [Nat.mod_eq_of_lt hresidueLt] using hxPiece

theorem paperRootSelectionPieceCover_card_scaled_le
    {N p root : Nat} (selection : PaperDiagonalSelection)
    (hp : Nat.Prime p) (hmod : p % 4 = 1)
    (hpFive : p ≠ 5) :
    25 * (paperRootSelectionPieceCover
        N p root selection).card ≤
      ((highDiagonalSelectionPieces selection).map fun piece =>
        23 * ((N + 1) /
          (p ^ 2 * piece.period) + 1) + 46).sum := by
  apply paperRootPieceCover_card_scaled_le
  intro piece hpiece
  have hperiodDvd :=
    highDiagonalSelectionPiece_period_dvd hpiece
  have hperiodPos :=
    highDiagonalSelectionPiece_period_pos hpiece
  have hsmall :=
    primeSquare_coprime_smallPeriod hp hmod hpFive selection
  have hperiodSmall :
      piece.period ∣ selection.smallPeriod := by
    rw [selection.smallPeriod_eq]
    exact dvd_mul_of_dvd_right hperiodDvd 25
  have hcoprime :
      Nat.Coprime (p ^ 2) piece.period :=
    hsmall.of_dvd_right hperiodSmall
  have hstepSelection :=
    primeSquareSelectionStep_coprime_twentyFive
      hp hmod hpFive selection
  have hstepDvd :
      p ^ 2 * piece.period ∣
        p ^ 2 * selection.selectionPeriod :=
    Nat.mul_dvd_mul_left (p ^ 2) hperiodDvd
  have hstep25 :
      Nat.Coprime (p ^ 2 * piece.period) 25 :=
    hstepSelection.of_dvd_left hstepDvd
  exact paperCRTOutsideClass_card_scaled_le
    hcoprime (pow_pos hp.pos 2) hperiodPos hstep25

def highPieceGroupedDiagonalPrimeTerm
    (N p : Nat) (selection : PaperDiagonalSelection) : Nat :=
  (2 * ((highDiagonalSelectionPieces selection).map fun piece =>
    23 * ((N + 1) /
      (p ^ 2 * piece.period) + 1) + 46).sum) / 25

theorem paperPrimeSelectedBad_card_le_pieceGroupedTerm
    {N p : Nat} (selection : PaperDiagonalSelection)
    (hp : Nat.Prime p) (hmod : p % 4 = 1)
    (hpFive : p ≠ 5) :
    (paperPrimeSelectedBad N p selection).card ≤
      highPieceGroupedDiagonalPrimeTerm N p selection := by
  let roots :=
    diagonalRootPairCertificateOfPrime p hp hmod
  let left :=
    paperRootSelectionPieceCover N p roots.root₁ selection
  let right :=
    paperRootSelectionPieceCover N p roots.root₂ selection
  have hsubset :
      paperPrimeSelectedBad N p selection ⊆ left ∪ right := by
    intro x hx
    have hxParts := Finset.mem_filter.mp hx
    have hxBounds := bounds_of_mem_tailDiagonalBad hxParts.1
    have hxOutside := outside_of_mem_tailDiagonalBad hxParts.1
    rcases roots.complete hp hmod hxParts.2.1 with hleft | hright
    · exact Finset.mem_union_left _ <|
        mem_paperRootSelectionPieceCover roots.root₁_lt
          hxBounds.2 hleft hxOutside hxParts.2.2
    · exact Finset.mem_union_right _ <|
        mem_paperRootSelectionPieceCover roots.root₂_lt
          hxBounds.2 hright hxOutside hxParts.2.2
  have hleft :
      25 * left.card ≤
        ((highDiagonalSelectionPieces selection).map fun piece =>
          23 * ((N + 1) /
            (p ^ 2 * piece.period) + 1) + 46).sum :=
    paperRootSelectionPieceCover_card_scaled_le
      selection hp hmod hpFive
  have hright :
      25 * right.card ≤
        ((highDiagonalSelectionPieces selection).map fun piece =>
          23 * ((N + 1) /
            (p ^ 2 * piece.period) + 1) + 46).sum :=
    paperRootSelectionPieceCover_card_scaled_le
      selection hp hmod hpFive
  have hcard :
      (paperPrimeSelectedBad N p selection).card ≤
        left.card + right.card :=
    (Finset.card_le_card hsubset).trans
      (Finset.card_union_le _ _)
  unfold highPieceGroupedDiagonalPrimeTerm
  apply (Nat.le_div_iff_mul_le (by norm_num : 0 < 25)).2
  nlinarith

#print axioms exists_highDiagonalSelectionPiece
#print axioms paperRootSelectionPieceCover_card_scaled_le
#print axioms paperPrimeSelectedBad_card_le_pieceGroupedTerm

end Erdos848
