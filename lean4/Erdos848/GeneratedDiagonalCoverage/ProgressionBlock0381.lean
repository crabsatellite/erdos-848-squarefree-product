import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00036_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 136010) (.leaf 152582))

theorem progressionSegment00036_2_0001Check :
    progressionSegment00036_2_0001Tree.check indexedMarker 157609 32491 8 = true :=
  by decide

theorem progressionSegment00036_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 157609 32491 8 10 :=
  by simpa [progressionSegment00036_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00036_2_0001Check

def progressionSegment00037_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 421) (.leaf 17346)) (.node (.leaf 34242) (.leaf 51155))) (.node (.node (.leaf 68063) (.leaf 84968)) (.node (.leaf 101875) (.leaf 118791))))

theorem progressionSegment00037_1_0000Check :
    progressionSegment00037_1_0000Tree.check indexedMarker 160801 4030 0 = true :=
  by decide

theorem progressionSegment00037_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 160801 4030 0 8 :=
  by simpa [progressionSegment00037_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00037_1_0000Check

def progressionSegment00037_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 135704) (.leaf 152610))

theorem progressionSegment00037_1_0001Check :
    progressionSegment00037_1_0001Tree.check indexedMarker 160801 4030 8 = true :=
  by decide

theorem progressionSegment00037_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 160801 4030 8 10 :=
  by simpa [progressionSegment00037_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00037_1_0001Check

def progressionSegment00037_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 16487) (.leaf 33402)) (.node (.leaf 50311) (.leaf 67213))) (.node (.node (.leaf 84119) (.leaf 101029)) (.node (.leaf 117943) (.leaf 134849))))

theorem progressionSegment00037_2_0000Check :
    progressionSegment00037_2_0000Tree.check indexedMarker 160801 156771 0 = true :=
  by decide

theorem progressionSegment00037_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 160801 156771 0 8 :=
  by simpa [progressionSegment00037_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00037_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
