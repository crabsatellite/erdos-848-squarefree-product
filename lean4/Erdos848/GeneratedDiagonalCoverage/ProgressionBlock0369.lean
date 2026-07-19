import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00027_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 133317) (.leaf 141625))

theorem progressionSegment00027_1_0001Check :
    progressionSegment00027_1_0001Tree.check indexedMarker 78961 4443 16 = true :=
  by decide

theorem progressionSegment00027_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 78961 4443 16 18 :=
  by simpa [progressionSegment00027_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00027_1_0001Check

def progressionSegment00027_1_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 149924)

theorem progressionSegment00027_1_0002Check :
    progressionSegment00027_1_0002Tree.check indexedMarker 78961 4443 18 = true :=
  by decide

theorem progressionSegment00027_1_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 78961 4443 18 19 :=
  by simpa [progressionSegment00027_1_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00027_1_0002Check

def progressionSegment00027_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 7833) (.leaf 16130)) (.node (.leaf 24447) (.leaf 32755))) (.node (.node (.leaf 41053) (.leaf 49364)) (.node (.leaf 57650) (.leaf 65967)))) (.node (.node (.node (.leaf 74261) (.leaf 82556)) (.node (.leaf 90861) (.leaf 99155))) (.node (.node (.leaf 107473) (.leaf 115786)) (.node (.leaf 124082) (.leaf 132381)))))

theorem progressionSegment00027_2_0000Check :
    progressionSegment00027_2_0000Tree.check indexedMarker 78961 74518 0 = true :=
  by decide

theorem progressionSegment00027_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 78961 74518 0 16 :=
  by simpa [progressionSegment00027_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00027_2_0000Check

def progressionSegment00027_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 140695) (.leaf 148987))

theorem progressionSegment00027_2_0001Check :
    progressionSegment00027_2_0001Tree.check indexedMarker 78961 74518 16 = true :=
  by decide

theorem progressionSegment00027_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 78961 74518 16 18 :=
  by simpa [progressionSegment00027_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00027_2_0001Check

end Erdos848.GeneratedDiagonalCoverage
