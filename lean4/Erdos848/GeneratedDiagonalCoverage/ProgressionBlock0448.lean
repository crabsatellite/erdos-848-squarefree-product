import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00279_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 20746)

theorem progressionSegment00279_1_0000Check :
    progressionSegment00279_1_0000Tree.check indexedMarker 17280649 197140 0 = true :=
  by decide

theorem progressionSegment00279_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 17280649 197140 0 1 :=
  by simpa [progressionSegment00279_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00279_1_0000Check

def progressionSegment00288_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 1859)

theorem progressionSegment00288_2_0000Check :
    progressionSegment00288_2_0000Tree.check indexedMarker 18395521 17684 0 = true :=
  by decide

theorem progressionSegment00288_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 18395521 17684 0 1 :=
  by simpa [progressionSegment00288_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00288_2_0000Check

def progressionSegment00291_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 116101)

theorem progressionSegment00291_1_0000Check :
    progressionSegment00291_1_0000Tree.check indexedMarker 18913801 1104038 0 = true :=
  by decide

theorem progressionSegment00291_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 18913801 1104038 0 1 :=
  by simpa [progressionSegment00291_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00291_1_0000Check

def progressionSegment00292_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 15129)

theorem progressionSegment00292_1_0000Check :
    progressionSegment00292_1_0000Tree.check indexedMarker 18983449 143847 0 = true :=
  by decide

theorem progressionSegment00292_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 18983449 143847 0 1 :=
  by simpa [progressionSegment00292_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00292_1_0000Check

end Erdos848.GeneratedDiagonalCoverage
