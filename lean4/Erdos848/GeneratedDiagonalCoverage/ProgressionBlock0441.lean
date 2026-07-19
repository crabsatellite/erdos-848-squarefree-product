import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00193_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 118981)

theorem progressionSegment00193_2_0000Check :
    progressionSegment00193_2_0000Tree.check indexedMarker 7447441 1131433 0 = true :=
  by decide

theorem progressionSegment00193_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 7447441 1131433 0 1 :=
  by simpa [progressionSegment00193_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00193_2_0000Check

def progressionSegment00196_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 18620)

theorem progressionSegment00196_2_0000Check :
    progressionSegment00196_2_0000Tree.check indexedMarker 7579009 176986 0 = true :=
  by decide

theorem progressionSegment00196_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 7579009 176986 0 1 :=
  by simpa [progressionSegment00196_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00196_2_0000Check

def progressionSegment00199_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 10943)

theorem progressionSegment00199_2_0000Check :
    progressionSegment00199_2_0000Tree.check indexedMarker 7823209 104092 0 = true :=
  by decide

theorem progressionSegment00199_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 7823209 104092 0 1 :=
  by simpa [progressionSegment00199_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00199_2_0000Check

def progressionSegment00200_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 100593)

theorem progressionSegment00200_2_0000Check :
    progressionSegment00200_2_0000Tree.check indexedMarker 7845601 956684 0 = true :=
  by decide

theorem progressionSegment00200_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 7845601 956684 0 1 :=
  by simpa [progressionSegment00200_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00200_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
