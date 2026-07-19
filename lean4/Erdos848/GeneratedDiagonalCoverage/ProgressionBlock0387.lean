import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00043_1_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 139912)

theorem progressionSegment00043_1_0002Check :
    progressionSegment00043_1_0002Tree.check indexedMarker 212521 55368 6 = true :=
  by decide

theorem progressionSegment00043_1_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 212521 55368 6 7 :=
  by simpa [progressionSegment00043_1_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00043_1_0002Check

def progressionSegment00043_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 16527) (.leaf 38877)) (.node (.leaf 61232) (.leaf 83564)))

theorem progressionSegment00043_2_0000Check :
    progressionSegment00043_2_0000Tree.check indexedMarker 212521 157153 0 = true :=
  by decide

theorem progressionSegment00043_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 212521 157153 0 4 :=
  by simpa [progressionSegment00043_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00043_2_0000Check

def progressionSegment00043_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 105911) (.leaf 128266))

theorem progressionSegment00043_2_0001Check :
    progressionSegment00043_2_0001Tree.check indexedMarker 212521 157153 4 = true :=
  by decide

theorem progressionSegment00043_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 212521 157153 4 6 :=
  by simpa [progressionSegment00043_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00043_2_0001Check

def progressionSegment00043_2_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 150607)

theorem progressionSegment00043_2_0002Check :
    progressionSegment00043_2_0002Tree.check indexedMarker 212521 157153 6 = true :=
  by decide

theorem progressionSegment00043_2_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 212521 157153 6 7 :=
  by simpa [progressionSegment00043_2_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00043_2_0002Check

end Erdos848.GeneratedDiagonalCoverage
