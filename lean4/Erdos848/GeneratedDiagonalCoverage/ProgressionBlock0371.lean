import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00028_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 150675)

theorem progressionSegment00028_2_0001Check :
    progressionSegment00028_2_0001Tree.check indexedMarker 85849 59341 16 = true :=
  by decide

theorem progressionSegment00028_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 85849 59341 16 17 :=
  by simpa [progressionSegment00028_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00028_2_0001Check

def progressionSegment00029_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 9475) (.leaf 19787)) (.node (.leaf 30088) (.leaf 40385))) (.node (.node (.leaf 50698) (.leaf 60988)) (.node (.leaf 71298) (.leaf 81585))))

theorem progressionSegment00029_1_0000Check :
    progressionSegment00029_1_0000Tree.check indexedMarker 97969 90119 0 = true :=
  by decide

theorem progressionSegment00029_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 97969 90119 0 8 :=
  by simpa [progressionSegment00029_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00029_1_0000Check

def progressionSegment00029_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 91883) (.leaf 102191)) (.node (.leaf 112500) (.leaf 122800)))

theorem progressionSegment00029_1_0001Check :
    progressionSegment00029_1_0001Tree.check indexedMarker 97969 90119 8 = true :=
  by decide

theorem progressionSegment00029_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 97969 90119 8 12 :=
  by simpa [progressionSegment00029_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00029_1_0001Check

def progressionSegment00029_1_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 133099) (.leaf 143409))

theorem progressionSegment00029_1_0002Check :
    progressionSegment00029_1_0002Tree.check indexedMarker 97969 90119 12 = true :=
  by decide

theorem progressionSegment00029_1_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 97969 90119 12 14 :=
  by simpa [progressionSegment00029_1_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00029_1_0002Check

end Erdos848.GeneratedDiagonalCoverage
