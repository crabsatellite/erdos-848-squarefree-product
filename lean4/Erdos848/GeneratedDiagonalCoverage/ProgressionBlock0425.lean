import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00106_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 100685)

theorem progressionSegment00106_1_0000Check :
    progressionSegment00106_1_0000Tree.check indexedMarker 1852321 957530 0 = true :=
  by decide

theorem progressionSegment00106_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1852321 957530 0 1 :=
  by simpa [progressionSegment00106_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00106_1_0000Check

def progressionSegment00106_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 94087)

theorem progressionSegment00106_2_0000Check :
    progressionSegment00106_2_0000Tree.check indexedMarker 1852321 894791 0 = true :=
  by decide

theorem progressionSegment00106_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1852321 894791 0 1 :=
  by simpa [progressionSegment00106_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00106_2_0000Check

def progressionSegment00107_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 12049)

theorem progressionSegment00107_1_0000Check :
    progressionSegment00107_1_0000Tree.check indexedMarker 1885129 114627 0 = true :=
  by decide

theorem progressionSegment00107_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1885129 114627 0 1 :=
  by simpa [progressionSegment00107_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00107_1_0000Check

def progressionSegment00108_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 29303)

theorem progressionSegment00108_2_0000Check :
    progressionSegment00108_2_0000Tree.check indexedMarker 1907161 278596 0 = true :=
  by decide

theorem progressionSegment00108_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1907161 278596 0 1 :=
  by simpa [progressionSegment00108_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00108_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
