import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00007_1_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 150323) (.leaf 150713)) (.node (.leaf 151103) (.leaf 151504))) (.node (.node (.leaf 151899) (.leaf 152289)) (.node (.leaf 152678) (.leaf 153069)))) (.node (.node (.node (.leaf 153461) (.leaf 153854)) (.node (.leaf 154244) (.leaf 154636))) (.node (.node (.leaf 155023) (.leaf 155415)) (.node (.leaf 155806) (.leaf 156199)))))

theorem progressionSegment00007_1_0002Check :
    progressionSegment00007_1_0002Tree.check indexedMarker 3721 682 384 = true :=
  by decide

theorem progressionSegment00007_1_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 3721 682 384 400 :=
  by simpa [progressionSegment00007_1_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00007_1_0002Check

def progressionSegment00007_1_0003Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 156584) (.leaf 156980))

theorem progressionSegment00007_1_0003Check :
    progressionSegment00007_1_0003Tree.check indexedMarker 3721 682 400 = true :=
  by decide

theorem progressionSegment00007_1_0003 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 3721 682 400 402 :=
  by simpa [progressionSegment00007_1_0003Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00007_1_0003Check

def progressionSegment00007_1_0004Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 157371)

theorem progressionSegment00007_1_0004Check :
    progressionSegment00007_1_0004Tree.check indexedMarker 3721 682 402 = true :=
  by decide

theorem progressionSegment00007_1_0004 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 3721 682 402 403 :=
  by simpa [progressionSegment00007_1_0004Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00007_1_0004Check

end Erdos848.GeneratedDiagonalCoverage
