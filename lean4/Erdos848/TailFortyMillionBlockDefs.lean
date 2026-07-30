import Mathlib.Data.Fintype.Basic
import Mathlib.Tactic.DeriveFintype

namespace Erdos848

/-! Lightweight six-block index shared by the `40M--200M` certificates. -/

inductive FortyMillionTenBranchBlock where
  | fortyToFifty
  | fiftyToSeventy
  | seventyToEighty
  | eightyToHundred
  | hundredToHundredFifty
  | hundredFiftyToTwoHundred
  deriving DecidableEq, Fintype

def FortyMillionTenBranchBlock.lower : FortyMillionTenBranchBlock -> Nat
  | .fortyToFifty => 40_000_000
  | .fiftyToSeventy => 50_000_000
  | .seventyToEighty => 70_000_000
  | .eightyToHundred => 80_000_000
  | .hundredToHundredFifty => 100_000_000
  | .hundredFiftyToTwoHundred => 150_000_000

def FortyMillionTenBranchBlock.upper : FortyMillionTenBranchBlock -> Nat
  | .fortyToFifty => 50_000_000
  | .fiftyToSeventy => 70_000_000
  | .seventyToEighty => 80_000_000
  | .eightyToHundred => 100_000_000
  | .hundredToHundredFifty => 150_000_000
  | .hundredFiftyToTwoHundred => 200_000_000

def FortyMillionTenBranchBlock.Covers
    (block : FortyMillionTenBranchBlock) (N : Nat) : Prop :=
  block.lower <= N ∧ N < block.upper

end Erdos848
