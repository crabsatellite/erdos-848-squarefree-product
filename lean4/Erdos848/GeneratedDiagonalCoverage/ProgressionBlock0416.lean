import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00086_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 29432) (.leaf 149596))

theorem progressionSegment00086_1_0000Check :
    progressionSegment00086_1_0000Tree.check indexedMarker 1142761 279829 0 = true :=
  by decide

theorem progressionSegment00086_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1142761 279829 0 2 :=
  by simpa [progressionSegment00086_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00086_1_0000Check

def progressionSegment00086_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 90736)

theorem progressionSegment00086_2_0000Check :
    progressionSegment00086_2_0000Tree.check indexedMarker 1142761 862932 0 = true :=
  by decide

theorem progressionSegment00086_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1142761 862932 0 1 :=
  by simpa [progressionSegment00086_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00086_2_0000Check

def progressionSegment00087_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 39021)

theorem progressionSegment00087_1_0000Check :
    progressionSegment00087_1_0000Tree.check indexedMarker 1194649 371057 0 = true :=
  by decide

theorem progressionSegment00087_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1194649 371057 0 1 :=
  by simpa [progressionSegment00087_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00087_1_0000Check

def progressionSegment00087_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 86604)

theorem progressionSegment00087_2_0000Check :
    progressionSegment00087_2_0000Tree.check indexedMarker 1194649 823592 0 = true :=
  by decide

theorem progressionSegment00087_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1194649 823592 0 1 :=
  by simpa [progressionSegment00087_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00087_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
