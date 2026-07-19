import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00142_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 150756)

theorem progressionSegment00142_2_0000Check :
    progressionSegment00142_2_0000Tree.check indexedMarker 3736489 1433688 0 = true :=
  by decide

theorem progressionSegment00142_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 3736489 1433688 0 1 :=
  by simpa [progressionSegment00142_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00142_2_0000Check

def progressionSegment00143_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 41344)

theorem progressionSegment00143_2_0000Check :
    progressionSegment00143_2_0000Tree.check indexedMarker 3798601 393109 0 = true :=
  by decide

theorem progressionSegment00143_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 3798601 393109 0 1 :=
  by simpa [progressionSegment00143_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00143_2_0000Check

def progressionSegment00144_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 94836)

theorem progressionSegment00144_1_0000Check :
    progressionSegment00144_1_0000Tree.check indexedMarker 3892729 901920 0 = true :=
  by decide

theorem progressionSegment00144_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 3892729 901920 0 1 :=
  by simpa [progressionSegment00144_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00144_1_0000Check

def progressionSegment00145_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 9306)

theorem progressionSegment00145_1_0000Check :
    progressionSegment00145_1_0000Tree.check indexedMarker 3972049 88526 0 = true :=
  by decide

theorem progressionSegment00145_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 3972049 88526 0 1 :=
  by simpa [progressionSegment00145_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00145_1_0000Check

end Erdos848.GeneratedDiagonalCoverage
