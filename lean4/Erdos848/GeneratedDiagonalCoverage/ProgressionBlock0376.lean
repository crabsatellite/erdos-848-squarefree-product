import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00032_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 8605) (.leaf 21435)) (.node (.leaf 34227) (.leaf 47036))) (.node (.node (.leaf 59842) (.leaf 72649)) (.node (.leaf 85456) (.leaf 98258))))

theorem progressionSegment00032_1_0000Check :
    progressionSegment00032_1_0000Tree.check indexedMarker 121801 81879 0 = true :=
  by decide

theorem progressionSegment00032_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 121801 81879 0 8 :=
  by simpa [progressionSegment00032_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00032_1_0000Check

def progressionSegment00032_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 111067) (.leaf 123885)) (.node (.leaf 136701) (.leaf 149497)))

theorem progressionSegment00032_1_0001Check :
    progressionSegment00032_1_0001Tree.check indexedMarker 121801 81879 8 = true :=
  by decide

theorem progressionSegment00032_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 121801 81879 8 12 :=
  by simpa [progressionSegment00032_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00032_1_0001Check

def progressionSegment00032_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 4196) (.leaf 17010)) (.node (.leaf 29821) (.leaf 42621))) (.node (.node (.leaf 55433) (.leaf 68240)) (.node (.leaf 81043) (.leaf 93848))))

theorem progressionSegment00032_2_0000Check :
    progressionSegment00032_2_0000Tree.check indexedMarker 121801 39922 0 = true :=
  by decide

theorem progressionSegment00032_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 121801 39922 0 8 :=
  by simpa [progressionSegment00032_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00032_2_0000Check

def progressionSegment00032_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 106657) (.leaf 119475)) (.node (.leaf 132275) (.leaf 145088)))

theorem progressionSegment00032_2_0001Check :
    progressionSegment00032_2_0001Tree.check indexedMarker 121801 39922 8 = true :=
  by decide

theorem progressionSegment00032_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 121801 39922 8 12 :=
  by simpa [progressionSegment00032_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00032_2_0001Check

end Erdos848.GeneratedDiagonalCoverage
