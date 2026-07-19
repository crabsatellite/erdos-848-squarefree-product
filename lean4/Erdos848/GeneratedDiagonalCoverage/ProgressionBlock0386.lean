import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00042_1_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 151514)

theorem progressionSegment00042_1_0002Check :
    progressionSegment00042_1_0002Tree.check indexedMarker 208849 187718 6 = true :=
  by decide

theorem progressionSegment00042_1_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 208849 187718 6 7 :=
  by simpa [progressionSegment00042_1_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00042_1_0002Check

def progressionSegment00042_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 2216) (.leaf 24187)) (.node (.leaf 46157) (.leaf 68110))) (.node (.node (.leaf 90060) (.leaf 112035)) (.node (.leaf 133991) (.leaf 155957))))

theorem progressionSegment00042_2_0000Check :
    progressionSegment00042_2_0000Tree.check indexedMarker 208849 21131 0 = true :=
  by decide

theorem progressionSegment00042_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 208849 21131 0 8 :=
  by simpa [progressionSegment00042_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00042_2_0000Check

def progressionSegment00043_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 5822) (.leaf 28183)) (.node (.leaf 50532) (.leaf 72864)))

theorem progressionSegment00043_1_0000Check :
    progressionSegment00043_1_0000Tree.check indexedMarker 212521 55368 0 = true :=
  by decide

theorem progressionSegment00043_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 212521 55368 0 4 :=
  by simpa [progressionSegment00043_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00043_1_0000Check

def progressionSegment00043_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 95203) (.leaf 117566))

theorem progressionSegment00043_1_0001Check :
    progressionSegment00043_1_0001Tree.check indexedMarker 212521 55368 4 = true :=
  by decide

theorem progressionSegment00043_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 212521 55368 4 6 :=
  by simpa [progressionSegment00043_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00043_1_0001Check

end Erdos848.GeneratedDiagonalCoverage
