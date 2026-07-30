import Erdos848.TailHybridPaperTwistCertificateABI
import Erdos848.TailHybridPaperWordMaskPrefix
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3MaskSemanticCertificate
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedScanK3
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedScanK4
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedScanK5
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedScanK6
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedScanK7
import Erdos848.GeneratedHybridPaperRootTwistCoverage.UnifiedScanK8

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem unifiedScanStatementPasses
    (regime : Erdos848.HybridPaperDiagonalRegime)
    (squareCoset : Bool) {k : Nat}
    (hLower : 3 ≤ k) (hUpper : k ≤ 8) :
    unifiedScanStatement regime squareCoset k := by
  interval_cases k
  all_goals first
    | exact unifiedScanPassesK3 regime squareCoset
    | exact unifiedScanPassesK4 regime squareCoset
    | exact unifiedScanPassesK5 regime squareCoset
    | exact unifiedScanPassesK6 regime squareCoset
    | exact unifiedScanPassesK7 regime squareCoset
    | exact unifiedScanPassesK8 regime squareCoset

theorem unifiedScanPasses
    (regime : Erdos848.HybridPaperDiagonalRegime)
    (squareCoset : Bool) {k : Nat}
    (hLower : 3 ≤ k) (hUpper : k ≤ 8) :
    Erdos848.hybridPaperRootScanPasses
      (unifiedLookup regime)
      (regime.rootTarget k) regime.stop (k - 1) 1
      Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes
      (regime.rootBaseWords squareCoset) = true := by
  change unifiedScanStatement regime squareCoset k
  exact
    unifiedScanStatementPasses regime squareCoset hLower hUpper

def unifiedCertificateProvider :
    Erdos848.HybridPaperTwistCertificateProvider where
  lookup := unifiedLookup
  maskCertificate := by
    intro regime p hp
    have hlarge := block3TwistQrMaskWords_certificate hp
    cases regime <;>
      simpa [unifiedLookup,
        Erdos848.HybridPaperDiagonalRegime.rootBound,
        Erdos848.HybridPaperDiagonalRegime.rootLookup] using
          hlarge.restrictBound (by norm_num)
  fallbackCertificate := by
    intro regime p hpSupport hpNot
    simpa [unifiedLookup, block3TwistQrMaskWords, hpNot,
      Erdos848.HybridPaperDiagonalRegime.rootFallbackWords] using
        regime.rootFallbackCertificate
  scanPasses := unifiedScanPasses

#print axioms unifiedCertificateProvider

end Erdos848.GeneratedHybridPaperRootTwistCoverage
