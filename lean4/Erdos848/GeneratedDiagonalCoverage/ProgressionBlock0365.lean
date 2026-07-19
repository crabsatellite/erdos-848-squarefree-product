import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00024_1_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 145645) (.leaf 152585))

theorem progressionSegment00024_1_0002Check :
    progressionSegment00024_1_0002Tree.check indexedMarker 66049 63977 20 = true :=
  by decide

theorem progressionSegment00024_1_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 66049 63977 20 22 :=
  by simpa [progressionSegment00024_1_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00024_1_0002Check

def progressionSegment00024_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 216) (.leaf 7156)) (.node (.leaf 14110) (.leaf 21068))) (.node (.node (.leaf 28010) (.leaf 34953)) (.node (.leaf 41893) (.leaf 48850)))) (.node (.node (.node (.leaf 55784) (.leaf 62734)) (.node (.leaf 69675) (.leaf 76617))) (.node (.node (.leaf 83556) (.leaf 90503)) (.node (.leaf 97444) (.leaf 104388)))))

theorem progressionSegment00024_2_0000Check :
    progressionSegment00024_2_0000Tree.check indexedMarker 66049 2072 0 = true :=
  by decide

theorem progressionSegment00024_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 66049 2072 0 16 :=
  by simpa [progressionSegment00024_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00024_2_0000Check

def progressionSegment00024_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 111341) (.leaf 118298)) (.node (.leaf 125244) (.leaf 132181)))

theorem progressionSegment00024_2_0001Check :
    progressionSegment00024_2_0001Tree.check indexedMarker 66049 2072 16 = true :=
  by decide

theorem progressionSegment00024_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 66049 2072 16 20 :=
  by simpa [progressionSegment00024_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00024_2_0001Check

def progressionSegment00024_2_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 139133) (.leaf 146075))

theorem progressionSegment00024_2_0002Check :
    progressionSegment00024_2_0002Tree.check indexedMarker 66049 2072 20 = true :=
  by decide

theorem progressionSegment00024_2_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 66049 2072 20 22 :=
  by simpa [progressionSegment00024_2_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00024_2_0002Check

end Erdos848.GeneratedDiagonalCoverage
