import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00020_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 130736) (.leaf 134818)) (.node (.leaf 138911) (.leaf 142991)))

theorem progressionSegment00020_2_0001Check :
    progressionSegment00020_2_0001Tree.check indexedMarker 38809 1393 32 = true :=
  by decide

theorem progressionSegment00020_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 38809 1393 32 36 :=
  by simpa [progressionSegment00020_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00020_2_0001Check

def progressionSegment00020_2_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 147069) (.leaf 151141))

theorem progressionSegment00020_2_0002Check :
    progressionSegment00020_2_0002Tree.check indexedMarker 38809 1393 36 = true :=
  by decide

theorem progressionSegment00020_2_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 38809 1393 36 38 :=
  by simpa [progressionSegment00020_2_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00020_2_0002Check

def progressionSegment00020_2_0003Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 155224)

theorem progressionSegment00020_2_0003Check :
    progressionSegment00020_2_0003Tree.check indexedMarker 38809 1393 38 = true :=
  by decide

theorem progressionSegment00020_2_0003 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 38809 1393 38 39 :=
  by simpa [progressionSegment00020_2_0003Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00020_2_0003Check

def progressionSegment00021_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 1743) (.leaf 7257)) (.node (.leaf 12775) (.leaf 18296))) (.node (.node (.leaf 23814) (.leaf 29325)) (.node (.leaf 34838) (.leaf 40351)))) (.node (.node (.node (.leaf 45871) (.leaf 51379)) (.node (.leaf 56892) (.leaf 62413))) (.node (.node (.leaf 67925) (.leaf 73433)) (.node (.leaf 78945) (.leaf 84464)))))

theorem progressionSegment00021_1_0000Check :
    progressionSegment00021_1_0000Tree.check indexedMarker 52441 16610 0 = true :=
  by decide

theorem progressionSegment00021_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 52441 16610 0 16 :=
  by simpa [progressionSegment00021_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00021_1_0000Check

end Erdos848.GeneratedDiagonalCoverage
