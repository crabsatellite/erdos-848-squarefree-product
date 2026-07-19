import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00006_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 151292) (.leaf 151590)) (.node (.leaf 151885) (.leaf 152182))) (.node (.node (.leaf 152477) (.leaf 152769)) (.node (.leaf 153066) (.leaf 153363)))) (.node (.node (.node (.leaf 153657) (.leaf 153955)) (.node (.leaf 154249) (.leaf 154545))) (.node (.node (.leaf 154839) (.leaf 155129)) (.node (.leaf 155429) (.leaf 155720)))))

theorem progressionSegment00006_2_0001Check :
    progressionSegment00006_2_0001Tree.check indexedMarker 2809 500 512 = true :=
  by decide

theorem progressionSegment00006_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 2809 500 512 528 :=
  by simpa [progressionSegment00006_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00006_2_0001Check

def progressionSegment00006_2_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 156016) (.leaf 156316)) (.node (.leaf 156606) (.leaf 156903)))

theorem progressionSegment00006_2_0002Check :
    progressionSegment00006_2_0002Tree.check indexedMarker 2809 500 528 = true :=
  by decide

theorem progressionSegment00006_2_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 2809 500 528 532 :=
  by simpa [progressionSegment00006_2_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00006_2_0002Check

def progressionSegment00006_2_0003Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 157198) (.leaf 157491))

theorem progressionSegment00006_2_0003Check :
    progressionSegment00006_2_0003Tree.check indexedMarker 2809 500 532 = true :=
  by decide

theorem progressionSegment00006_2_0003 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 2809 500 532 534 :=
  by simpa [progressionSegment00006_2_0003Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00006_2_0003Check

end Erdos848.GeneratedDiagonalCoverage
