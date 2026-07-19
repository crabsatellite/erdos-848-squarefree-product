import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00021_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 89968) (.leaf 95484)) (.node (.leaf 101005) (.leaf 106517))) (.node (.node (.leaf 112040) (.leaf 117556)) (.node (.leaf 123068) (.leaf 128575))))

theorem progressionSegment00021_1_0001Check :
    progressionSegment00021_1_0001Tree.check indexedMarker 52441 16610 16 = true :=
  by decide

theorem progressionSegment00021_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 52441 16610 16 24 :=
  by simpa [progressionSegment00021_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00021_1_0001Check

def progressionSegment00021_1_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 134095) (.leaf 139614)) (.node (.leaf 145126) (.leaf 150631)))

theorem progressionSegment00021_1_0002Check :
    progressionSegment00021_1_0002Tree.check indexedMarker 52441 16610 24 = true :=
  by decide

theorem progressionSegment00021_1_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 52441 16610 24 28 :=
  by simpa [progressionSegment00021_1_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00021_1_0002Check

def progressionSegment00021_1_0003Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 156155)

theorem progressionSegment00021_1_0003Check :
    progressionSegment00021_1_0003Tree.check indexedMarker 52441 16610 28 = true :=
  by decide

theorem progressionSegment00021_1_0003 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 52441 16610 28 29 :=
  by simpa [progressionSegment00021_1_0003Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00021_1_0003Check

def progressionSegment00021_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 3764) (.leaf 9279)) (.node (.leaf 14802) (.leaf 20319))) (.node (.node (.leaf 25832) (.leaf 31344)) (.node (.leaf 36851) (.leaf 42376)))) (.node (.node (.node (.leaf 47890) (.leaf 53397)) (.node (.leaf 58917) (.leaf 64431))) (.node (.node (.leaf 69942) (.leaf 75457)) (.node (.leaf 80965) (.leaf 86482)))))

theorem progressionSegment00021_2_0000Check :
    progressionSegment00021_2_0000Tree.check indexedMarker 52441 35831 0 = true :=
  by decide

theorem progressionSegment00021_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 52441 35831 0 16 :=
  by simpa [progressionSegment00021_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00021_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
