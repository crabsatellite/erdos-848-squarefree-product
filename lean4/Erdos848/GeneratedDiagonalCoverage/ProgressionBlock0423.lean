import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00100_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 27521)

theorem progressionSegment00100_1_0000Check :
    progressionSegment00100_1_0000Tree.check indexedMarker 1560001 261626 0 = true :=
  by decide

theorem progressionSegment00100_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1560001 261626 0 1 :=
  by simpa [progressionSegment00100_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00100_1_0000Check

def progressionSegment00100_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 136541)

theorem progressionSegment00100_2_0000Check :
    progressionSegment00100_2_0000Tree.check indexedMarker 1560001 1298375 0 = true :=
  by decide

theorem progressionSegment00100_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1560001 1298375 0 1 :=
  by simpa [progressionSegment00100_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00100_2_0000Check

def progressionSegment00101_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 75883)

theorem progressionSegment00101_1_0000Check :
    progressionSegment00101_1_0000Tree.check indexedMarker 1630729 721618 0 = true :=
  by decide

theorem progressionSegment00101_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1630729 721618 0 1 :=
  by simpa [progressionSegment00101_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00101_1_0000Check

def progressionSegment00101_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 95590)

theorem progressionSegment00101_2_0000Check :
    progressionSegment00101_2_0000Tree.check indexedMarker 1630729 909111 0 = true :=
  by decide

theorem progressionSegment00101_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1630729 909111 0 1 :=
  by simpa [progressionSegment00101_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00101_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
