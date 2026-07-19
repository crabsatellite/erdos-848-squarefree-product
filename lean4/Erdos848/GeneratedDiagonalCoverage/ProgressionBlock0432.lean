import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00129_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 42123)

theorem progressionSegment00129_2_0000Check :
    progressionSegment00129_2_0000Tree.check indexedMarker 2961841 400520 0 = true :=
  by decide

theorem progressionSegment00129_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 2961841 400520 0 1 :=
  by simpa [progressionSegment00129_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00129_2_0000Check

def progressionSegment00130_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 149840)

theorem progressionSegment00130_2_0000Check :
    progressionSegment00130_2_0000Tree.check indexedMarker 3003289 1424936 0 = true :=
  by decide

theorem progressionSegment00130_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 3003289 1424936 0 1 :=
  by simpa [progressionSegment00130_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00130_2_0000Check

def progressionSegment00131_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 10801)

theorem progressionSegment00131_1_0000Check :
    progressionSegment00131_1_0000Tree.check indexedMarker 3031081 102778 0 = true :=
  by decide

theorem progressionSegment00131_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 3031081 102778 0 1 :=
  by simpa [progressionSegment00131_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00131_1_0000Check

def progressionSegment00132_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 7666)

theorem progressionSegment00132_1_0000Check :
    progressionSegment00132_1_0000Tree.check indexedMarker 3073009 72913 0 = true :=
  by decide

theorem progressionSegment00132_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 3073009 72913 0 1 :=
  by simpa [progressionSegment00132_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00132_1_0000Check

end Erdos848.GeneratedDiagonalCoverage
