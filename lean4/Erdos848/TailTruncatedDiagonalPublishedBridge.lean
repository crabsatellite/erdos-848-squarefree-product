import Erdos848.TailTruncatedDiagonalChecker
import Erdos848.GeneratedTailDiagonalCoverage.TailRootAggregate

namespace Erdos848

/-!
# Published ten-million marker as a truncated certificate

This small bridge is an end-to-end regression test for the generalized
short-prime / long-`x` checker.  It reuses the existing published marker at
its original limit; extended markers use the untrusted generator in
`scripts/generate_truncated_diagonal_certificate.py`.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace GeneratedTailDiagonalCoverage

theorem indexedRootsValidUpTo :
    primeRootCoverage.roots.OutsideIndexedValidUpTo indexedMarker 9_999_999 :=
  DiagonalRootTree.outsideIndexedValidUpTo_of_outsideIndexedValid
    indexedRootsValid

def truncatedCertificate : TruncatedDiagonalCoverageCertificate :=
  { coverage := primeRootCoverage
    marker := indexedMarker
    cutoff := 9_999_999
    coverageValid := primeRootCoverageValid
    cutoff_le_coverage_limit := by decide
    rootsValid := indexedRootsValidUpTo }

#print axioms indexedRootsValidUpTo
#print axioms truncatedCertificate

end GeneratedTailDiagonalCoverage

end Erdos848
