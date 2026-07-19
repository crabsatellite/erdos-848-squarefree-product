import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00021_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 91987) (.leaf 97504)) (.node (.leaf 103028) (.leaf 108536))) (.node (.node (.leaf 114055) (.leaf 119575)) (.node (.leaf 125092) (.leaf 130598))))

theorem progressionSegment00021_2_0001Check :
    progressionSegment00021_2_0001Tree.check indexedMarker 52441 35831 16 = true :=
  by decide

theorem progressionSegment00021_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 52441 35831 16 24 :=
  by simpa [progressionSegment00021_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00021_2_0001Check

def progressionSegment00021_2_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 136122) (.leaf 141633)) (.node (.leaf 147151) (.leaf 152662)))

theorem progressionSegment00021_2_0002Check :
    progressionSegment00021_2_0002Tree.check indexedMarker 52441 35831 24 = true :=
  by decide

theorem progressionSegment00021_2_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 52441 35831 24 28 :=
  by simpa [progressionSegment00021_2_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00021_2_0002Check

def progressionSegment00022_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 2873) (.leaf 8585)) (.node (.leaf 14302) (.leaf 20017))) (.node (.node (.leaf 25724) (.leaf 31432)) (.node (.leaf 37134) (.leaf 42843)))) (.node (.node (.node (.leaf 48561) (.leaf 54261)) (.node (.leaf 59972) (.leaf 65688))) (.node (.node (.leaf 71396) (.leaf 77096)) (.node (.leaf 82798) (.leaf 88505)))))

theorem progressionSegment00022_1_0000Check :
    progressionSegment00022_1_0000Tree.check indexedMarker 54289 27405 0 = true :=
  by decide

theorem progressionSegment00022_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 54289 27405 0 16 :=
  by simpa [progressionSegment00022_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00022_1_0000Check

def progressionSegment00022_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 94216) (.leaf 99919)) (.node (.leaf 105638) (.leaf 111349))) (.node (.node (.leaf 117069) (.leaf 122768)) (.node (.leaf 128474) (.leaf 134190))))

theorem progressionSegment00022_1_0001Check :
    progressionSegment00022_1_0001Tree.check indexedMarker 54289 27405 16 = true :=
  by decide

theorem progressionSegment00022_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 54289 27405 16 24 :=
  by simpa [progressionSegment00022_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00022_1_0001Check

end Erdos848.GeneratedDiagonalCoverage
