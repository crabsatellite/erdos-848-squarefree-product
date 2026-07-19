import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00171_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 28623)

theorem progressionSegment00171_2_0000Check :
    progressionSegment00171_2_0000Tree.check indexedMarker 5650129 272112 0 = true :=
  by decide

theorem progressionSegment00171_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 5650129 272112 0 1 :=
  by simpa [progressionSegment00171_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00171_2_0000Check

def progressionSegment00172_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 17295)

theorem progressionSegment00172_2_0000Check :
    progressionSegment00172_2_0000Tree.check indexedMarker 5669161 164358 0 = true :=
  by decide

theorem progressionSegment00172_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 5669161 164358 0 1 :=
  by simpa [progressionSegment00172_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00172_2_0000Check

def progressionSegment00173_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 16865)

theorem progressionSegment00173_2_0000Check :
    progressionSegment00173_2_0000Tree.check indexedMarker 5707321 160348 0 = true :=
  by decide

theorem progressionSegment00173_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 5707321 160348 0 1 :=
  by simpa [progressionSegment00173_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00173_2_0000Check

def progressionSegment00174_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 38399)

theorem progressionSegment00174_2_0000Check :
    progressionSegment00174_2_0000Tree.check indexedMarker 5726449 365158 0 = true :=
  by decide

theorem progressionSegment00174_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 5726449 365158 0 1 :=
  by simpa [progressionSegment00174_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00174_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
