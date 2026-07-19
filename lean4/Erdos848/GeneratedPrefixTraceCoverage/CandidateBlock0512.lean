import Erdos848.GeneratedPrefixTraceCoverage.AnchorData
import Erdos848.GeneratedDiagonalCoverage.IndexedData
import Erdos848.GeneratedPrefixTraceCoverage.CandidateDataChunk0512

namespace Erdos848.GeneratedPrefixTraceCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem candidateRange_0512 :
    candidateHistoryChunk0512.IndexedValid
      Erdos848.GeneratedDiagonalCoverage.indexedMarker
      anchorHistories 1500000 131072 := by decide

end Erdos848.GeneratedPrefixTraceCoverage
