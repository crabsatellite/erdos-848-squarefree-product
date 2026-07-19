import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00251_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 74872)

theorem progressionSegment00251_2_0000Check :
    progressionSegment00251_2_0000Tree.check indexedMarker 13520329 712029 0 = true :=
  by decide

theorem progressionSegment00251_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 13520329 712029 0 1 :=
  by simpa [progressionSegment00251_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00251_2_0000Check

def progressionSegment00252_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 107951)

theorem progressionSegment00252_2_0000Check :
    progressionSegment00252_2_0000Tree.check indexedMarker 13667809 1026635 0 = true :=
  by decide

theorem progressionSegment00252_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 13667809 1026635 0 1 :=
  by simpa [progressionSegment00252_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00252_2_0000Check

def progressionSegment00258_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 7491)

theorem progressionSegment00258_2_0000Check :
    progressionSegment00258_2_0000Tree.check indexedMarker 14386849 71264 0 = true :=
  by decide

theorem progressionSegment00258_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 14386849 71264 0 1 :=
  by simpa [progressionSegment00258_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00258_2_0000Check

def progressionSegment00265_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 148901)

theorem progressionSegment00265_1_0000Check :
    progressionSegment00265_1_0000Tree.check indexedMarker 15124321 1416050 0 = true :=
  by decide

theorem progressionSegment00265_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 15124321 1416050 0 1 :=
  by simpa [progressionSegment00265_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00265_1_0000Check

end Erdos848.GeneratedDiagonalCoverage
