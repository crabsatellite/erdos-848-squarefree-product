import Erdos848.GeneratedHybridPaperSupportDomainCoverage.Certificate
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticCertificate
import Erdos848.GeneratedHybridPaperRootCoverage.Block0CosetBaseCertificate
import Erdos848.GeneratedHybridPaperRootCoverage.Block1CosetBaseCertificate
import Erdos848.GeneratedHybridPaperRootCoverage.Block2CosetBaseCertificate
import Erdos848.GeneratedHybridPaperRootCoverage.Block3CosetBaseCertificate
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedScanK3
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedScanK4
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedScanK5
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedScanK6
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedScanK7
import Erdos848.GeneratedHybridPaperRootCoverage.UnifiedScanK8

namespace Erdos848.GeneratedHybridPaperRootCoverage

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
      regime.rootLookup
      (regime.rootTarget k) regime.stop (k - 1) 1
      Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes
      (regime.rootBaseWords squareCoset) = true := by
  change unifiedScanStatement regime squareCoset k
  exact
    unifiedScanStatementPasses regime squareCoset hLower hUpper

theorem unifiedBaseCount
    (regime : Erdos848.HybridPaperDiagonalRegime)
    (squareCoset : Bool) :
    Erdos848.globalMixedCoreCountWords
        (regime.rootBaseWords squareCoset) =
      regime.rootTarget 0 := by
  cases regime <;> cases squareCoset <;> decide

def unifiedCertificateProvider :
    Erdos848.HybridPaperRootCertificateProvider where
  supportPrimeCertificate := by
    intro p hp hUpper
    exact
      Erdos848.GeneratedHybridPaperSupportDomainCoverage.mem_rootSupportPrimes_of_supportPrime
        hp hUpper
  baseCertificate := by
    intro regime squareCoset
    cases regime <;> cases squareCoset
    · exact block0NonsquareBaseCertificate
    · exact block0SquareBaseCertificate
    · exact block1NonsquareBaseCertificate
    · exact block1SquareBaseCertificate
    · exact block2NonsquareBaseCertificate
    · exact block2SquareBaseCertificate
    · exact block3NonsquareBaseCertificate
    · exact block3SquareBaseCertificate
  maskCertificate := by
    intro regime p hp
    have hlarge := block3QrMaskWords_certificate hp
    cases regime <;>
      simpa [Erdos848.HybridPaperDiagonalRegime.rootBound,
        Erdos848.HybridPaperDiagonalRegime.rootLookup] using
          hlarge.restrictBound (by norm_num)
  scanPasses := unifiedScanPasses
  smallTargetCovers := by
    intro regime squareCoset k hk
    have hbase := unifiedBaseCount regime squareCoset
    interval_cases k <;> cases regime <;>
      simpa [Erdos848.HybridPaperDiagonalRegime.rootTarget] using
        (le_of_eq hbase)

#print axioms unifiedCertificateProvider

end Erdos848.GeneratedHybridPaperRootCoverage
