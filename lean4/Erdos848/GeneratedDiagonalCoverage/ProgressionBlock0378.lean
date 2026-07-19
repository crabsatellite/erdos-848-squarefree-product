import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00034_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 637) (.leaf 15274)) (.node (.leaf 29905) (.leaf 44536))) (.node (.node (.leaf 59161) (.leaf 73788)) (.node (.leaf 88409) (.leaf 103050))))

theorem progressionSegment00034_1_0000Check :
    progressionSegment00034_1_0000Tree.check indexedMarker 139129 6072 0 = true :=
  by decide

theorem progressionSegment00034_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 139129 6072 0 8 :=
  by simpa [progressionSegment00034_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00034_1_0000Check

def progressionSegment00034_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 117681) (.leaf 132310))

theorem progressionSegment00034_1_0001Check :
    progressionSegment00034_1_0001Tree.check indexedMarker 139129 6072 8 = true :=
  by decide

theorem progressionSegment00034_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 139129 6072 8 10 :=
  by simpa [progressionSegment00034_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00034_1_0001Check

def progressionSegment00034_1_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 146948)

theorem progressionSegment00034_1_0002Check :
    progressionSegment00034_1_0002Tree.check indexedMarker 139129 6072 10 = true :=
  by decide

theorem progressionSegment00034_1_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 139129 6072 10 11 :=
  by simpa [progressionSegment00034_1_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00034_1_0002Check

def progressionSegment00034_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 13991) (.leaf 28631)) (.node (.leaf 43258) (.leaf 57880))) (.node (.node (.leaf 72510) (.leaf 87144)) (.node (.leaf 101764) (.leaf 116413))))

theorem progressionSegment00034_2_0000Check :
    progressionSegment00034_2_0000Tree.check indexedMarker 139129 133057 0 = true :=
  by decide

theorem progressionSegment00034_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 139129 133057 0 8 :=
  by simpa [progressionSegment00034_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00034_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
