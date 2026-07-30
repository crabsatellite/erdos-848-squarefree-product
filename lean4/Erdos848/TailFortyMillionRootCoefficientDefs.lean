import Erdos848.TailFortyMillionBlockDefs
import Erdos848.TailGlobalMixedEvenSupportClass

namespace Erdos848

/-! Shared finite indices for the derived `40M--200M` root certificate. -/

inductive FortyMillionRootClass where
  | odd
  | evenOne
  | evenTwo
  | evenThree
  deriving DecidableEq, Fintype

def fortyMillionRootClasses : List FortyMillionRootClass :=
  [.odd, .evenOne, .evenTwo, .evenThree]

def fortyMillionRootBlocks : List FortyMillionTenBranchBlock :=
  [.fortyToFifty, .fiftyToSeventy, .seventyToEighty,
    .eightyToHundred, .hundredToHundredFifty,
    .hundredFiftyToTwoHundred]

def FortyMillionRootClass.rootFactor : FortyMillionRootClass -> Nat
  | .odd => 1
  | .evenOne => 1
  | .evenTwo => 2
  | .evenThree => 4

def FortyMillionRootClass.evenValuation? :
    FortyMillionRootClass -> Option GlobalMixedEvenValuation
  | .odd => none
  | .evenOne => some .one
  | .evenTwo => some .two
  | .evenThree => some .three

end Erdos848
