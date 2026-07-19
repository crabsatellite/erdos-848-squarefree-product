import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00114_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 132641)

theorem progressionSegment00114_2_0000Check :
    progressionSegment00114_2_0000Tree.check indexedMarker 2217121 1261408 0 = true :=
  by decide

theorem progressionSegment00114_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 2217121 1261408 0 1 :=
  by simpa [progressionSegment00114_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00114_2_0000Check

def progressionSegment00115_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 19836)

theorem progressionSegment00115_1_0000Check :
    progressionSegment00115_1_0000Tree.check indexedMarker 2229049 188550 0 = true :=
  by decide

theorem progressionSegment00115_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 2229049 188550 0 1 :=
  by simpa [progressionSegment00115_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00115_1_0000Check

def progressionSegment00116_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 35848)

theorem progressionSegment00116_1_0000Check :
    progressionSegment00116_1_0000Tree.check indexedMarker 2399401 340868 0 = true :=
  by decide

theorem progressionSegment00116_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 2399401 340868 0 1 :=
  by simpa [progressionSegment00116_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00116_1_0000Check

def progressionSegment00117_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 19482)

theorem progressionSegment00117_2_0000Check :
    progressionSegment00117_2_0000Tree.check indexedMarker 2411809 185146 0 = true :=
  by decide

theorem progressionSegment00117_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 2411809 185146 0 1 :=
  by simpa [progressionSegment00117_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00117_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
