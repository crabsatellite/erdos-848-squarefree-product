import Erdos848.TailGlobalMixedEvenSupportCheckerCore

namespace Erdos848

/-!
# Proof-producing BitVec computation for even terminal counts

Closed `BitVec 64` expressions are normalized by Lean's proof-producing
bit-vector simplifier.  This avoids reducing large `Nat.and` expressions in
the kernel while retaining an ordinary proof term with no native oracle.
-/

abbrev GlobalMixedWord := BitVec 64

def globalMixedBitVecIntersect :
    List GlobalMixedWord -> List GlobalMixedWord -> List GlobalMixedWord
  | left :: lefts, right :: rights =>
      (left &&& right) :: globalMixedBitVecIntersect lefts rights
  | _, _ => []

def globalMixedBitVecSupportWords
    (lookup : Nat -> List Nat) (support cosetWords : List Nat) :
    List GlobalMixedWord :=
  support.foldl
    (fun words p =>
      globalMixedBitVecIntersect ((lookup p).map (BitVec.ofNat 64)) words)
    (cosetWords.map (BitVec.ofNat 64))

def globalMixedBitVecCount : List GlobalMixedWord -> GlobalMixedWord
  | [] => 0
  | word :: words => word.cpop + globalMixedBitVecCount words

def globalMixedBitVecRestrictedCount
    (supportWords valuationWords : List GlobalMixedWord) : GlobalMixedWord :=
  globalMixedBitVecCount
    (globalMixedBitVecIntersect supportWords valuationWords)

structure GlobalMixedEvenBitVecRows where
  normalFalseTwo : List GlobalMixedWord
  normalTrueTwo : List GlobalMixedWord
  twistFalseTwo : List GlobalMixedWord
  twistTrueTwo : List GlobalMixedWord
  normalFalseThree : List GlobalMixedWord
  normalTrueThree : List GlobalMixedWord
  twistFalseThree : List GlobalMixedWord
  twistTrueThree : List GlobalMixedWord

def globalMixedBitVecRestrictedRows
    (normalLookup twistLookup : Nat -> List Nat)
    (support : List Nat) : GlobalMixedEvenBitVecRows :=
  let normalFalse := globalMixedBitVecSupportWords normalLookup support
    (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords false)
  let normalTrue := globalMixedBitVecSupportWords normalLookup support
    (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords true)
  let twistFalse := globalMixedBitVecSupportWords twistLookup support
    (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords false)
  let twistTrue := globalMixedBitVecSupportWords twistLookup support
    (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords true)
  let normalTwo :=
    (GeneratedTailGlobalMixedEvenSupportCoverage.normalValuationWords .two).map
      (BitVec.ofNat 64)
  let twistTwo :=
    (GeneratedTailGlobalMixedEvenSupportCoverage.twistValuationWords .two).map
      (BitVec.ofNat 64)
  let normalThree :=
    (GeneratedTailGlobalMixedEvenSupportCoverage.normalValuationWords .three).map
      (BitVec.ofNat 64)
  let twistThree :=
    (GeneratedTailGlobalMixedEvenSupportCoverage.twistValuationWords .three).map
      (BitVec.ofNat 64)
  { normalFalseTwo := globalMixedBitVecIntersect normalFalse normalTwo
    normalTrueTwo := globalMixedBitVecIntersect normalTrue normalTwo
    twistFalseTwo := globalMixedBitVecIntersect twistFalse twistTwo
    twistTrueTwo := globalMixedBitVecIntersect twistTrue twistTwo
    normalFalseThree := globalMixedBitVecIntersect normalFalse normalThree
    normalTrueThree := globalMixedBitVecIntersect normalTrue normalThree
    twistFalseThree := globalMixedBitVecIntersect twistFalse twistThree
    twistTrueThree := globalMixedBitVecIntersect twistTrue twistThree }

def globalMixedBitVecContinueWords
    (lookup : Nat -> List Nat) (support : List Nat)
    (words : List GlobalMixedWord) : List GlobalMixedWord :=
  support.foldl
    (fun current p =>
      globalMixedBitVecIntersect ((lookup p).map (BitVec.ofNat 64)) current)
    words

def globalMixedBitVecContinueRows
    (normalLookup twistLookup : Nat -> List Nat)
    (support : List Nat) (rows : GlobalMixedEvenBitVecRows) :
    GlobalMixedEvenBitVecRows :=
  { normalFalseTwo := globalMixedBitVecContinueWords normalLookup support rows.normalFalseTwo
    normalTrueTwo := globalMixedBitVecContinueWords normalLookup support rows.normalTrueTwo
    twistFalseTwo := globalMixedBitVecContinueWords twistLookup support rows.twistFalseTwo
    twistTrueTwo := globalMixedBitVecContinueWords twistLookup support rows.twistTrueTwo
    normalFalseThree := globalMixedBitVecContinueWords normalLookup support rows.normalFalseThree
    normalTrueThree := globalMixedBitVecContinueWords normalLookup support rows.normalTrueThree
    twistFalseThree := globalMixedBitVecContinueWords twistLookup support rows.twistFalseThree
    twistTrueThree := globalMixedBitVecContinueWords twistLookup support rows.twistTrueThree }

def GlobalMixedEvenBitVecCounts :=
  GlobalMixedWord × GlobalMixedWord × GlobalMixedWord × GlobalMixedWord ×
    GlobalMixedWord × GlobalMixedWord × GlobalMixedWord × GlobalMixedWord

def GlobalMixedEvenCounts.toBitVec
    (counts : GlobalMixedEvenCounts) : GlobalMixedEvenBitVecCounts :=
  (counts.normalFalseTwo, counts.normalTrueTwo,
    counts.twistFalseTwo, counts.twistTrueTwo,
    counts.normalFalseThree, counts.normalTrueThree,
    counts.twistFalseThree, counts.twistTrueThree)

def GlobalMixedEvenBitVecRows.counts
    (rows : GlobalMixedEvenBitVecRows) : GlobalMixedEvenBitVecCounts :=
  (globalMixedBitVecCount rows.normalFalseTwo,
    globalMixedBitVecCount rows.normalTrueTwo,
    globalMixedBitVecCount rows.twistFalseTwo,
    globalMixedBitVecCount rows.twistTrueTwo,
    globalMixedBitVecCount rows.normalFalseThree,
    globalMixedBitVecCount rows.normalTrueThree,
    globalMixedBitVecCount rows.twistFalseThree,
    globalMixedBitVecCount rows.twistTrueThree)

def globalMixedBitVecEvenCounts
    (normalLookup twistLookup : Nat -> List Nat)
    (support : List Nat) : GlobalMixedEvenBitVecCounts :=
  (globalMixedBitVecRestrictedRows normalLookup twistLookup support).counts

def globalMixedEvenCountsPasses
    (k endpoint : Nat) (counts : GlobalMixedEvenCounts) : Bool :=
  let discount := globalMixedCoreLineDiscount endpoint
  globalMixedCoreLinePassesAt
      (globalMixedCoreEvenCheckerCoefficient100 .two k counts.normalFalseTwo)
      endpoint discount &&
    globalMixedCoreLinePassesAt
      (globalMixedCoreEvenCheckerCoefficient100 .two k counts.normalTrueTwo)
      endpoint discount &&
    globalMixedCoreLinePassesAt
      (globalMixedCoreEvenCheckerCoefficient100 .two k counts.twistFalseTwo)
      endpoint discount &&
    globalMixedCoreLinePassesAt
      (globalMixedCoreEvenCheckerCoefficient100 .two k counts.twistTrueTwo)
      endpoint discount &&
    globalMixedCoreLinePassesAt
      (globalMixedCoreEvenCheckerCoefficient100 .three k counts.normalFalseThree)
      endpoint discount &&
    globalMixedCoreLinePassesAt
      (globalMixedCoreEvenCheckerCoefficient100 .three k counts.normalTrueThree)
      endpoint discount &&
    globalMixedCoreLinePassesAt
      (globalMixedCoreEvenCheckerCoefficient100 .three k counts.twistFalseThree)
      endpoint discount &&
    globalMixedCoreLinePassesAt
      (globalMixedCoreEvenCheckerCoefficient100 .three k counts.twistTrueThree)
      endpoint discount

def globalMixedEvenTerminalCountsPasses
    (k : Nat) (terminal : GlobalMixedEvenTerminal) : Bool :=
  globalMixedEvenCountsPasses k terminal.endpoint terminal.counts

end Erdos848
