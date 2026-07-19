import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00076_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 45119) (.leaf 138233))

theorem progressionSegment00076_1_0000Check :
    progressionSegment00076_1_0000Tree.check indexedMarker 885481 428999 0 = true :=
  by decide

theorem progressionSegment00076_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 885481 428999 0 2 :=
  by simpa [progressionSegment00076_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00076_1_0000Check

def progressionSegment00076_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 48006) (.leaf 141122))

theorem progressionSegment00076_2_0000Check :
    progressionSegment00076_2_0000Tree.check indexedMarker 885481 456482 0 = true :=
  by decide

theorem progressionSegment00076_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 885481 456482 0 2 :=
  by simpa [progressionSegment00076_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00076_2_0000Check

def progressionSegment00077_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 43947) (.leaf 139453))

theorem progressionSegment00077_1_0000Check :
    progressionSegment00077_1_0000Tree.check indexedMarker 908209 417925 0 = true :=
  by decide

theorem progressionSegment00077_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 908209 417925 0 2 :=
  by simpa [progressionSegment00077_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00077_1_0000Check

def progressionSegment00077_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 51562) (.leaf 147066))

theorem progressionSegment00077_2_0000Check :
    progressionSegment00077_2_0000Tree.check indexedMarker 908209 490284 0 = true :=
  by decide

theorem progressionSegment00077_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 908209 490284 0 2 :=
  by simpa [progressionSegment00077_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00077_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
