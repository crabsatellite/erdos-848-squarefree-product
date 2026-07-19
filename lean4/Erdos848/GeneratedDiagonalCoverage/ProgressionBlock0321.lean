import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00007_2_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 150568) (.leaf 150963)) (.node (.leaf 151359) (.leaf 151750))) (.node (.node (.leaf 152145) (.leaf 152535)) (.node (.leaf 152927) (.leaf 153317)))) (.node (.node (.node (.leaf 153709) (.leaf 154101)) (.node (.leaf 154489) (.leaf 154882))) (.node (.node (.leaf 155269) (.leaf 155662)) (.node (.leaf 156054) (.leaf 156441)))))

theorem progressionSegment00007_2_0002Check :
    progressionSegment00007_2_0002Tree.check indexedMarker 3721 3039 384 = true :=
  by decide

theorem progressionSegment00007_2_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 3721 3039 384 400 :=
  by simpa [progressionSegment00007_2_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00007_2_0002Check

def progressionSegment00007_2_0003Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 156837) (.leaf 157229))

theorem progressionSegment00007_2_0003Check :
    progressionSegment00007_2_0003Tree.check indexedMarker 3721 3039 400 = true :=
  by decide

theorem progressionSegment00007_2_0003 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 3721 3039 400 402 :=
  by simpa [progressionSegment00007_2_0003Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00007_2_0003Check

def progressionSegment00007_2_0004Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 157614)

theorem progressionSegment00007_2_0004Check :
    progressionSegment00007_2_0004Tree.check indexedMarker 3721 3039 402 = true :=
  by decide

theorem progressionSegment00007_2_0004 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 3721 3039 402 403 :=
  by simpa [progressionSegment00007_2_0004Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00007_2_0004Check

end Erdos848.GeneratedDiagonalCoverage
