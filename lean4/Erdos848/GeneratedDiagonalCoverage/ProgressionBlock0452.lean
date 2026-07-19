import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00386_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 48279)

theorem progressionSegment00386_2_0000Check :
    progressionSegment00386_2_0000Tree.check indexedMarker 36881329 459024 0 = true :=
  by decide

theorem progressionSegment00386_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 36881329 459024 0 1 :=
  by simpa [progressionSegment00386_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00386_2_0000Check

def progressionSegment00390_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 60878)

theorem progressionSegment00390_1_0000Check :
    progressionSegment00390_1_0000Tree.check indexedMarker 37466641 578912 0 = true :=
  by decide

theorem progressionSegment00390_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 37466641 578912 0 1 :=
  by simpa [progressionSegment00390_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00390_1_0000Check

def progressionSegment00399_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 48081)

theorem progressionSegment00399_2_0000Check :
    progressionSegment00399_2_0000Tree.check indexedMarker 39400729 457188 0 = true :=
  by decide

theorem progressionSegment00399_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 39400729 457188 0 1 :=
  by simpa [progressionSegment00399_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00399_2_0000Check

def progressionSegment00408_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 137103)

theorem progressionSegment00408_2_0000Check :
    progressionSegment00408_2_0000Tree.check indexedMarker 40921609 1303686 0 = true :=
  by decide

theorem progressionSegment00408_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 40921609 1303686 0 1 :=
  by simpa [progressionSegment00408_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00408_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
