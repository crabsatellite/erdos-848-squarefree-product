import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00023_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 4531) (.leaf 10631)) (.node (.leaf 16747) (.leaf 22861))) (.node (.node (.leaf 28970) (.leaf 35073)) (.node (.leaf 41179) (.leaf 47286)))) (.node (.node (.node (.leaf 53387) (.leaf 59501)) (.node (.leaf 65608) (.leaf 71712))) (.node (.node (.leaf 77821) (.leaf 83926)) (.node (.leaf 90026) (.leaf 96133)))))

theorem progressionSegment00023_1_0000Check :
    progressionSegment00023_1_0000Tree.check indexedMarker 58081 43075 0 = true :=
  by decide

theorem progressionSegment00023_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 58081 43075 0 16 :=
  by simpa [progressionSegment00023_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00023_1_0000Check

def progressionSegment00023_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 102251) (.leaf 108352)) (.node (.leaf 114472) (.leaf 120579))) (.node (.node (.leaf 126682) (.leaf 132784)) (.node (.leaf 138906) (.leaf 145000))))

theorem progressionSegment00023_1_0001Check :
    progressionSegment00023_1_0001Tree.check indexedMarker 58081 43075 16 = true :=
  by decide

theorem progressionSegment00023_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 58081 43075 16 24 :=
  by simpa [progressionSegment00023_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00023_1_0001Check

def progressionSegment00023_1_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 151107) (.leaf 157223))

theorem progressionSegment00023_1_0002Check :
    progressionSegment00023_1_0002Tree.check indexedMarker 58081 43075 24 = true :=
  by decide

theorem progressionSegment00023_1_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 58081 43075 24 26 :=
  by simpa [progressionSegment00023_1_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00023_1_0002Check

def progressionSegment00023_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 1577) (.leaf 7684)) (.node (.leaf 13792) (.leaf 19908))) (.node (.node (.leaf 26015) (.leaf 32120)) (.node (.leaf 38221) (.leaf 44332)))) (.node (.node (.node (.leaf 50448) (.leaf 56546)) (.node (.leaf 62658) (.leaf 68761))) (.node (.node (.leaf 74866) (.leaf 80972)) (.node (.leaf 87082) (.leaf 93179)))))

theorem progressionSegment00023_2_0000Check :
    progressionSegment00023_2_0000Tree.check indexedMarker 58081 15006 0 = true :=
  by decide

theorem progressionSegment00023_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 58081 15006 0 16 :=
  by simpa [progressionSegment00023_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00023_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
