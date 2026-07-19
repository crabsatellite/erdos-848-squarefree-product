import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00011_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 137370) (.leaf 138440)) (.node (.leaf 139510) (.leaf 140585))) (.node (.node (.leaf 141656) (.leaf 142728)) (.node (.leaf 143801) (.leaf 144866)))) (.node (.node (.node (.leaf 145945) (.leaf 147020)) (.node (.leaf 148088) (.leaf 149156))) (.node (.node (.leaf 150230) (.leaf 151306)) (.node (.leaf 152384) (.leaf 153456)))))

theorem progressionSegment00011_1_0001Check :
    progressionSegment00011_1_0001Tree.check indexedMarker 10201 515 128 = true :=
  by decide

theorem progressionSegment00011_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 10201 515 128 144 :=
  by simpa [progressionSegment00011_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00011_1_0001Check

def progressionSegment00011_1_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 154527) (.leaf 155599))

theorem progressionSegment00011_1_0002Check :
    progressionSegment00011_1_0002Tree.check indexedMarker 10201 515 144 = true :=
  by decide

theorem progressionSegment00011_1_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 10201 515 144 146 :=
  by simpa [progressionSegment00011_1_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00011_1_0002Check

def progressionSegment00011_1_0003Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 156670)

theorem progressionSegment00011_1_0003Check :
    progressionSegment00011_1_0003Tree.check indexedMarker 10201 515 146 = true :=
  by decide

theorem progressionSegment00011_1_0003 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 10201 515 146 147 :=
  by simpa [progressionSegment00011_1_0003Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00011_1_0003Check

end Erdos848.GeneratedDiagonalCoverage
