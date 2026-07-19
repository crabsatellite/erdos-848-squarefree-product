import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00006_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 151480) (.leaf 151780)) (.node (.leaf 152079) (.leaf 152373))) (.node (.node (.leaf 152664) (.leaf 152961)) (.node (.leaf 153255) (.leaf 153552)))) (.node (.node (.node (.leaf 153849) (.leaf 154142)) (.node (.leaf 154436) (.leaf 154734))) (.node (.node (.leaf 155026) (.leaf 155320)) (.node (.leaf 155619) (.leaf 155912)))))

theorem progressionSegment00006_1_0001Check :
    progressionSegment00006_1_0001Tree.check indexedMarker 2809 2309 512 = true :=
  by decide

theorem progressionSegment00006_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 2809 2309 512 528 :=
  by simpa [progressionSegment00006_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00006_1_0001Check

def progressionSegment00006_1_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 156211) (.leaf 156500)) (.node (.leaf 156798) (.leaf 157097)))

theorem progressionSegment00006_1_0002Check :
    progressionSegment00006_1_0002Tree.check indexedMarker 2809 2309 528 = true :=
  by decide

theorem progressionSegment00006_1_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 2809 2309 528 532 :=
  by simpa [progressionSegment00006_1_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00006_1_0002Check

def progressionSegment00006_1_0003Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 157389) (.leaf 157681))

theorem progressionSegment00006_1_0003Check :
    progressionSegment00006_1_0003Tree.check indexedMarker 2809 2309 532 = true :=
  by decide

theorem progressionSegment00006_1_0003 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 2809 2309 532 534 :=
  by simpa [progressionSegment00006_1_0003Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00006_1_0003Check

end Erdos848.GeneratedDiagonalCoverage
