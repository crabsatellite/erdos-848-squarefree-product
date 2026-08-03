import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedData

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def unifiedBlock3K5ScanAt
    (need product start : Nat) (words : List Nat) : Bool :=
  Erdos848.hybridPaperRootScanPasses
    (unifiedLookup .oneToTwoBillion)
    (Erdos848.HybridPaperDiagonalRegime.rootTarget
      .oneToTwoBillion 5)
    2000000000 need product (Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes.drop start) words

theorem unifiedBlock3K5ScanStep
    (lookup : Nat → List Nat) (target bound need product p : Nat)
    (primes words : List Nat)
    (hProduct :
      ¬ bound < product * ((p :: primes).take (need + 2)).prod)
    (hCount :
      Erdos848.hybridPaperCoreCountWordsWithin target words = false) :
    Erdos848.hybridPaperRootScanPasses lookup target bound
        (need + 1) product (p :: primes) words =
      (Erdos848.hybridPaperRootScanPasses lookup target bound
          need (product * p) primes
          (Erdos848.globalMixedCoreIntersectWords (lookup p) words) &&
        Erdos848.hybridPaperRootScanPasses lookup target bound
          (need + 1) product primes words) := by
  have hProduct' :
      ¬ bound < product * (p * (primes.take (need + 1)).prod) := by
    simpa [Nat.add_assoc] using hProduct
  simp [Erdos848.hybridPaperRootScanPasses, hProduct', hCount]

end Erdos848.GeneratedHybridPaperRootTwistCoverage
