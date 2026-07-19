import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeCertificate
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideCertificate
import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def historyCertificate :
    Erdos848.LowRangePrefixTraceHistoryCertificate squarefreeOracle :=
  { limit := 5000000
    outsideCoverage := Erdos848.GeneratedLowDiagonalCoverage.certificate
    anchors := anchorHistories
    oppositeCandidates := oppositeHistories
    outsideCandidates := outsideHistories
    sameLimit := rfl
    anchorsValid := anchorHistoriesValid
    anchorSize := rfl
    oppositeSize := rfl
    oppositeValid := oppositeHistoriesValid
    outsideSize := rfl
    outsideValid := outsideHistoriesValid }

theorem colouringCertificate : Erdos848.PrefixColouringCertificate 5000000 :=
  historyCertificate.prefixColouringCertificate

theorem closeThroughFiveMillion :
    ∀ N, N ≤ 5000000 → Erdos848.OriginalProblem848Statement N := by
  intro N hN
  by_cases hzero : N = 0
  · simpa [hzero] using Erdos848.erdos848_original_N0
  · exact Erdos848.originalProblem_prefix_of_colouringCertificate
      colouringCertificate N (Nat.one_le_iff_ne_zero.mpr hzero) hN

#print axioms closeThroughFiveMillion

end Erdos848.GeneratedFiveMillionPrefixTrace
