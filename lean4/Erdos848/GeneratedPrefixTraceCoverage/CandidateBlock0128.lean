import Erdos848.GeneratedPrefixTraceCoverage.AnchorData
import Erdos848.GeneratedDiagonalCoverage.IndexedData
import Erdos848.GeneratedPrefixTraceCoverage.CandidateDataChunk0128

namespace Erdos848.GeneratedPrefixTraceCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem candidateRange_0128 :
    candidateHistoryChunk0128.IndexedValid
      Erdos848.GeneratedDiagonalCoverage.indexedMarker
      anchorHistories 1500000 32768 := by decide

end Erdos848.GeneratedPrefixTraceCoverage
