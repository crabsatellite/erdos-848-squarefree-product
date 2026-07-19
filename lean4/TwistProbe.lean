import Erdos848.TailGlobalPureSupportChecker
import Erdos848.TailFiveMillionFiveTwistCore

open Erdos848

def globalTwistOddCount (support : List ℕ) (squareCoset : Bool) : ℕ :=
  countNatRange
    (fun m => decide (m % 2 = 1) &&
      oddRootFiveTwistSupportAccepts support squareCoset m)
    1 135

def globalNormalAllCount (support : List ℕ) (squareCoset : Bool) : ℕ :=
  countNatRange (oddRootWordPointAccepts support squareCoset) 1 676

def globalTwistAllCount (support : List ℕ) (squareCoset : Bool) : ℕ :=
  countNatRange
    (oddRootFiveTwistSupportAccepts support squareCoset) 1 135

def maxTwistForK (k : ℕ) (squareCoset : Bool) : ℕ × List ℕ :=
  (globalOddRootFeasiblePrefixes k).foldl
    (fun best support =>
      let value := globalTwistOddCount support squareCoset
      if best.1 < value then (value, support) else best)
    (0, [])

def maxTwistEndpointRowForK (k : ℕ) (squareCoset : Bool) : ℚ × List ℕ :=
  (globalOddRootFeasiblePrefixes k).foldl
    (fun best support =>
      let N := globalPureSupportEndpoint support
      let Y := N / 26
      let H := 2 ^ (k + 1)
      let s := globalTwistOddCount support squareCoset
      let row : ℚ := (H * s : ℚ) / N + H / (5 * Y) + (2 * H : ℚ) / (Y * N)
      if best.1 < row then (row, support) else best)
    (0, [])

def reportK (k : ℕ) :=
  (k, (globalOddRootFeasiblePrefixes k).length,
    maxTwistForK k false, maxTwistForK k true,
    maxTwistEndpointRowForK k false, maxTwistEndpointRowForK k true)

def maxMixedEndpointRowForK
    (twist : Bool) (k : ℕ) (squareCoset : Bool) : ℚ × List ℕ × ℕ :=
  (globalOddRootFeasiblePrefixes k).foldl
    (fun best support =>
      let N := globalPureSupportEndpoint support
      let Y := N / 26
      let H := 2 ^ (k + 1)
      let s := if twist then globalTwistAllCount support squareCoset
        else globalNormalAllCount support squareCoset
      let row : ℚ := (H * s : ℚ) / N +
        (2 * H : ℚ) / (25 * Y) + (4 * H : ℚ) / (Y * N)
      if best.1 < row then (row, support, s) else best)
    (0, [], 0)

def reportMixedK (k : ℕ) :=
  (k,
    maxMixedEndpointRowForK false k false,
    maxMixedEndpointRowForK false k true,
    maxMixedEndpointRowForK true k false,
    maxMixedEndpointRowForK true k true)

#eval (List.range 9).map reportK
#eval (List.range 9).map reportMixedK
