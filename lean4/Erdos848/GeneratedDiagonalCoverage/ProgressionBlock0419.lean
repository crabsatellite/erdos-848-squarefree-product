import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00092_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 4501) (.leaf 144296))

theorem progressionSegment00092_1_0000Check :
    progressionSegment00092_1_0000Tree.check indexedMarker 1329409 42801 0 = true :=
  by decide

theorem progressionSegment00092_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1329409 42801 0 2 :=
  by simpa [progressionSegment00092_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00092_1_0000Check

def progressionSegment00092_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 135295)

theorem progressionSegment00092_2_0000Check :
    progressionSegment00092_2_0000Tree.check indexedMarker 1329409 1286608 0 = true :=
  by decide

theorem progressionSegment00092_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1329409 1286608 0 1 :=
  by simpa [progressionSegment00092_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00092_2_0000Check

def progressionSegment00093_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 21149)

theorem progressionSegment00093_1_0000Check :
    progressionSegment00093_1_0000Tree.check indexedMarker 1394761 201013 0 = true :=
  by decide

theorem progressionSegment00093_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1394761 201013 0 1 :=
  by simpa [progressionSegment00093_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00093_1_0000Check

def progressionSegment00093_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 125533)

theorem progressionSegment00093_2_0000Check :
    progressionSegment00093_2_0000Tree.check indexedMarker 1394761 1193748 0 = true :=
  by decide

theorem progressionSegment00093_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1394761 1193748 0 1 :=
  by simpa [progressionSegment00093_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00093_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
