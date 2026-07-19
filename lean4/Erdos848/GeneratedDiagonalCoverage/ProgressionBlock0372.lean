import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00029_1_0003Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 153711)

theorem progressionSegment00029_1_0003Check :
    progressionSegment00029_1_0003Tree.check indexedMarker 97969 90119 14 = true :=
  by decide

theorem progressionSegment00029_1_0003 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 97969 90119 14 15 :=
  by simpa [progressionSegment00029_1_0003Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00029_1_0003Check

def progressionSegment00029_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 825) (.leaf 11124)) (.node (.leaf 21449) (.leaf 31734))) (.node (.node (.leaf 42038) (.leaf 52338)) (.node (.leaf 62643) (.leaf 72941)))) (.node (.node (.node (.leaf 83238) (.leaf 93534)) (.node (.leaf 103840) (.leaf 114145))) (.node (.node (.leaf 124456) (.leaf 134753)) (.node (.leaf 145051) (.leaf 155359)))))

theorem progressionSegment00029_2_0000Check :
    progressionSegment00029_2_0000Tree.check indexedMarker 97969 7850 0 = true :=
  by decide

theorem progressionSegment00029_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 97969 7850 0 16 :=
  by simpa [progressionSegment00029_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00029_2_0000Check

def progressionSegment00030_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 6620) (.leaf 17199)) (.node (.leaf 27764) (.leaf 38322))) (.node (.node (.leaf 48901) (.leaf 59461)) (.node (.leaf 70029) (.leaf 80589))))

theorem progressionSegment00030_1_0000Check :
    progressionSegment00030_1_0000Tree.check indexedMarker 100489 62969 0 = true :=
  by decide

theorem progressionSegment00030_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 100489 62969 0 8 :=
  by simpa [progressionSegment00030_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00030_1_0000Check

def progressionSegment00030_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 91144) (.leaf 101718)) (.node (.leaf 112297) (.leaf 122864)))

theorem progressionSegment00030_1_0001Check :
    progressionSegment00030_1_0001Tree.check indexedMarker 100489 62969 8 = true :=
  by decide

theorem progressionSegment00030_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 100489 62969 8 12 :=
  by simpa [progressionSegment00030_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00030_1_0001Check

end Erdos848.GeneratedDiagonalCoverage
