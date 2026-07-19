import Erdos848.GeneratedPrefixTraceCoverage.CandidateCertificate
import Erdos848.GeneratedDiagonalCoverage.Certificate

namespace Erdos848.GeneratedPrefixTraceCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def historyCertificate :
    Erdos848.PrefixTraceHistoryCertificate squarefreeOracle :=
  { limit := 1500000
    marker := Erdos848.GeneratedDiagonalCoverage.indexedMarker
    anchors := anchorHistories
    candidates := candidateHistories
    markerLimit := rfl
    anchorsValid := anchorHistoriesValid
    candidateSize := rfl
    candidatesValid := candidateHistoriesValid }

theorem colouringCertificate : Erdos848.PrefixColouringCertificate 1500000 :=
  historyCertificate.prefixColouringCertificate (by
    intro x hx hxLimit hnotSquarefree
    exact Erdos848.GeneratedDiagonalCoverage.certificateContainsOfNotSquarefree
      hx hxLimit hnotSquarefree)

theorem prefixClose : Erdos848.Erdos848PrefixClose :=
  Erdos848.erdos848PrefixClose_of_colouringCertificate colouringCertificate

#print axioms prefixClose

end Erdos848.GeneratedPrefixTraceCoverage
