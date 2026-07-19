import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00009_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 107017) (.leaf 107847)) (.node (.leaf 108682) (.leaf 109517))) (.node (.node (.leaf 110351) (.leaf 111180)) (.node (.leaf 112023) (.leaf 112857)))) (.node (.node (.node (.leaf 113685) (.leaf 114523)) (.node (.leaf 115355) (.leaf 116191))) (.node (.node (.leaf 117026) (.leaf 117854)) (.node (.leaf 118686) (.leaf 119519))))) (.node (.node (.node (.node (.leaf 120352) (.leaf 121185)) (.node (.leaf 122018) (.leaf 122855))) (.node (.node (.leaf 123686) (.leaf 124522)) (.node (.leaf 125352) (.leaf 126182)))) (.node (.node (.node (.leaf 127014) (.leaf 127846)) (.node (.leaf 128678) (.leaf 129510))) (.node (.node (.leaf 130338) (.leaf 131179)) (.node (.leaf 132010) (.leaf 132837))))))

theorem progressionSegment00009_1_0001Check :
    progressionSegment00009_1_0001Tree.check indexedMarker 7921 3861 128 = true :=
  by decide

theorem progressionSegment00009_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 7921 3861 128 160 :=
  by simpa [progressionSegment00009_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00009_1_0001Check

def progressionSegment00009_1_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 133673) (.leaf 134510)) (.node (.leaf 135346) (.leaf 136182))) (.node (.node (.leaf 137018) (.leaf 137845)) (.node (.leaf 138685) (.leaf 139512)))) (.node (.node (.node (.leaf 140344) (.leaf 141180)) (.node (.leaf 142011) (.leaf 142848))) (.node (.node (.leaf 143676) (.leaf 144502)) (.node (.leaf 145337) (.leaf 146174)))))

theorem progressionSegment00009_1_0002Check :
    progressionSegment00009_1_0002Tree.check indexedMarker 7921 3861 160 = true :=
  by decide

theorem progressionSegment00009_1_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 7921 3861 160 176 :=
  by simpa [progressionSegment00009_1_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00009_1_0002Check

def progressionSegment00009_1_0003Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 147011) (.leaf 147838)) (.node (.leaf 148665) (.leaf 149502))) (.node (.node (.leaf 150331) (.leaf 151166)) (.node (.leaf 152009) (.leaf 152838))))

theorem progressionSegment00009_1_0003Check :
    progressionSegment00009_1_0003Tree.check indexedMarker 7921 3861 176 = true :=
  by decide

theorem progressionSegment00009_1_0003 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 7921 3861 176 184 :=
  by simpa [progressionSegment00009_1_0003Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00009_1_0003Check

def progressionSegment00009_1_0004Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 153673) (.leaf 154505)) (.node (.leaf 155335) (.leaf 156167)))

theorem progressionSegment00009_1_0004Check :
    progressionSegment00009_1_0004Tree.check indexedMarker 7921 3861 184 = true :=
  by decide

theorem progressionSegment00009_1_0004 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 7921 3861 184 188 :=
  by simpa [progressionSegment00009_1_0004Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00009_1_0004Check

end Erdos848.GeneratedDiagonalCoverage
