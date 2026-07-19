import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00153_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 14455)

theorem progressionSegment00153_2_0000Check :
    progressionSegment00153_2_0000Tree.check indexedMarker 4464769 137410 0 = true :=
  by decide

theorem progressionSegment00153_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 4464769 137410 0 1 :=
  by simpa [progressionSegment00153_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00153_2_0000Check

def progressionSegment00154_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 153099)

theorem progressionSegment00154_2_0000Check :
    progressionSegment00154_2_0000Tree.check indexedMarker 4532641 1455864 0 = true :=
  by decide

theorem progressionSegment00154_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 4532641 1455864 0 1 :=
  by simpa [progressionSegment00154_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00154_2_0000Check

def progressionSegment00155_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 77049)

theorem progressionSegment00155_1_0000Check :
    progressionSegment00155_1_0000Tree.check indexedMarker 4566769 732695 0 = true :=
  by decide

theorem progressionSegment00155_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 4566769 732695 0 1 :=
  by simpa [progressionSegment00155_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00155_1_0000Check

def progressionSegment00156_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 11524)

theorem progressionSegment00156_1_0000Check :
    progressionSegment00156_1_0000Tree.check indexedMarker 4583881 109610 0 = true :=
  by decide

theorem progressionSegment00156_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 4583881 109610 0 1 :=
  by simpa [progressionSegment00156_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00156_1_0000Check

end Erdos848.GeneratedDiagonalCoverage
