import Erdos848.TailFortyMillionBudget
import Erdos848.TailPaperDiagonalSelectionBridge

namespace Erdos848

/-!
# Paper diagonal selections for the mixed-joint interval

The six mixed-joint branches use four of the compact paper selections:

* even generic: unrestricted;
* even concentrated: a residue/cell complement;
* odd two-class (generic or common-three): the union of both odd classes;
* odd one-class: one parity, optionally restricted to one mod-nine cell.

All residue, parity, and cell parameters remain universally quantified.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def mixedJointPaperDiagonalRatio
    (N : Nat) (selection : PaperDiagonalSelection) : Rat :=
  (((tailDiagonalBad N).filter
    (fun x => truncatedDiagonalAtomOf x ∈ selection.atoms)).card : Rat) / N

def MixedJointPaperDiagonalGridBound : Prop :=
  ∀ N, 40_000_000 ≤ N → N < 200_000_000 →
    ∀ selection : PaperDiagonalSelection,
      mixedJointPaperDiagonalRatio N selection ≤
        ((paperDiagonalRegimeAt N).envelopeNumerator selection : Rat) /
          1_000_000_000

def MixedJointBlock.paperDiagonalRegime :
    MixedJointBlock → PaperDiagonalRegime
  | .fortyToFifty => .fortyToFifty
  | .fiftyToSeventy => .fiftyToSeventy
  | .seventyToEighty => .seventyToEighty
  | .eightyToHundred => .eightyToHundred
  | .hundredToHundredFifty => .hundredToHundredFifty
  | .hundredFiftyToTwoHundred => .hundredFiftyToTwoHundred

theorem MixedJointBlock.lower_le_of_covers
    {block : MixedJointBlock} {N : Nat}
    (hcover : block.Covers N) :
    40_000_000 ≤ N := by
  cases block <;>
    simp [MixedJointBlock.Covers, MixedJointBlock.lower,
      MixedJointBlock.upper] at hcover ⊢ <;>
    omega

theorem MixedJointBlock.lt_twoHundredMillion_of_covers
    {block : MixedJointBlock} {N : Nat}
    (hcover : block.Covers N) :
    N < 200_000_000 := by
  cases block <;>
    simp [MixedJointBlock.Covers, MixedJointBlock.lower,
      MixedJointBlock.upper] at hcover ⊢ <;>
    omega

theorem MixedJointBlock.paperDiagonalRegimeAt_eq
    {block : MixedJointBlock} {N : Nat}
    (hcover : block.Covers N) :
    paperDiagonalRegimeAt N = block.paperDiagonalRegime := by
  symm
  apply PaperDiagonalRegime.eq_regimeAt_of_mem
    (rowLower := N) (rowUpper := N)
  · cases block <;>
      simp [MixedJointBlock.Covers, MixedJointBlock.lower,
        MixedJointBlock.upper, MixedJointBlock.paperDiagonalRegime,
        PaperDiagonalRegime.lower, PaperDiagonalRegime.stop] at hcover ⊢ <;>
      omega
  · rfl
  · rfl

structure MixedJointPaperDiagonalCertificates : Prop where
  evenGeneric :
    ∀ N block, block.Covers N →
      mixedJointPaperDiagonalRatio N .unrestricted ≤
        mixedJointDiagonalUpper block .evenGeneric
  evenConcentrated :
    ∀ N block, block.Covers N →
      ∀ residueClass : Fin 4, ∀ cell : Fin 9,
        mixedJointPaperDiagonalRatio N
            (.concentrated residueClass cell) ≤
          mixedJointDiagonalUpper block .evenConcentrated
  oddTwo :
    ∀ N block, block.Covers N →
      mixedJointPaperDiagonalRatio N .oddUnion ≤
        mixedJointDiagonalUpper block .oddTwo
  oddTwoCommonThree :
    ∀ N block, block.Covers N →
      mixedJointPaperDiagonalRatio N .oddUnion ≤
        mixedJointDiagonalUpper block .oddTwoCommonThree
  oddOne :
    ∀ N block, block.Covers N →
      ∀ parity : Bool,
        mixedJointPaperDiagonalRatio N (.oneOdd parity) ≤
          mixedJointDiagonalUpper block .oddOne
  oddOneCommonTwoThree :
    ∀ N block, block.Covers N →
      ∀ parity : Bool, ∀ cell : Fin 9,
        mixedJointPaperDiagonalRatio N (.oneOddCell parity cell) ≤
          mixedJointDiagonalUpper block .oddOneCommonTwoThree

private theorem mixedJointPaperDiagonalBound_of_grid
    (hgrid : MixedJointPaperDiagonalGridBound)
    {N : Nat} {block : MixedJointBlock}
    (hcover : block.Covers N)
    (selection : PaperDiagonalSelection) :
    mixedJointPaperDiagonalRatio N selection ≤
      (block.paperDiagonalRegime.envelopeNumerator selection : Rat) /
        1_000_000_000 := by
  have hbound := hgrid N
    (block.lower_le_of_covers hcover)
    (block.lt_twoHundredMillion_of_covers hcover)
    selection
  rwa [block.paperDiagonalRegimeAt_eq hcover] at hbound

theorem mixedJointPaperDiagonalCertificates_of_grid
    (hgrid : MixedJointPaperDiagonalGridBound) :
    MixedJointPaperDiagonalCertificates := by
  refine
    { evenGeneric := ?_
      evenConcentrated := ?_
      oddTwo := ?_
      oddTwoCommonThree := ?_
      oddOne := ?_
      oddOneCommonTwoThree := ?_ }
  · intro N block hcover
    have hbound := mixedJointPaperDiagonalBound_of_grid
      hgrid hcover .unrestricted
    cases block <;>
      simpa [MixedJointBlock.paperDiagonalRegime,
        PaperDiagonalRegime.envelopeNumerator,
        mixedJointDiagonalUpper] using hbound
  · intro N block hcover residueClass cell
    have hbound := mixedJointPaperDiagonalBound_of_grid
      hgrid hcover (.concentrated residueClass cell)
    cases block <;>
      simpa [MixedJointBlock.paperDiagonalRegime,
        PaperDiagonalRegime.envelopeNumerator,
        mixedJointDiagonalUpper] using hbound
  · intro N block hcover
    have hbound := mixedJointPaperDiagonalBound_of_grid
      hgrid hcover .oddUnion
    cases block <;>
      simpa [MixedJointBlock.paperDiagonalRegime,
        PaperDiagonalRegime.envelopeNumerator,
        mixedJointDiagonalUpper] using hbound
  · intro N block hcover
    have hbound := mixedJointPaperDiagonalBound_of_grid
      hgrid hcover .oddUnion
    cases block <;>
      simpa [MixedJointBlock.paperDiagonalRegime,
        PaperDiagonalRegime.envelopeNumerator,
        mixedJointDiagonalUpper] using hbound
  · intro N block hcover parity
    have hbound := mixedJointPaperDiagonalBound_of_grid
      hgrid hcover (.oneOdd parity)
    cases block <;>
      simpa [MixedJointBlock.paperDiagonalRegime,
        PaperDiagonalRegime.envelopeNumerator,
        mixedJointDiagonalUpper] using hbound
  · intro N block hcover parity cell
    have hbound := mixedJointPaperDiagonalBound_of_grid
      hgrid hcover (.oneOddCell parity cell)
    cases block <;>
      simpa [MixedJointBlock.paperDiagonalRegime,
        PaperDiagonalRegime.envelopeNumerator,
        mixedJointDiagonalUpper] using hbound

#print axioms MixedJointBlock.paperDiagonalRegimeAt_eq
#print axioms mixedJointPaperDiagonalCertificates_of_grid

end Erdos848
