import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00118_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 133905)

theorem progressionSegment00118_1_0000Check :
    progressionSegment00118_1_0000Tree.check indexedMarker 2550409 1273419 0 = true :=
  by decide

theorem progressionSegment00118_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 2550409 1273419 0 1 :=
  by simpa [progressionSegment00118_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00118_1_0000Check

def progressionSegment00118_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 134284)

theorem progressionSegment00118_2_0000Check :
    progressionSegment00118_2_0000Tree.check indexedMarker 2550409 1276990 0 = true :=
  by decide

theorem progressionSegment00118_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 2550409 1276990 0 1 :=
  by simpa [progressionSegment00118_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00118_2_0000Check

def progressionSegment00119_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 3368)

theorem progressionSegment00119_2_0000Check :
    progressionSegment00119_2_0000Tree.check indexedMarker 2563201 32060 0 = true :=
  by decide

theorem progressionSegment00119_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 2563201 32060 0 1 :=
  by simpa [progressionSegment00119_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00119_2_0000Check

def progressionSegment00120_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 100951)

theorem progressionSegment00120_1_0000Check :
    progressionSegment00120_1_0000Tree.check indexedMarker 2588881 960050 0 = true :=
  by decide

theorem progressionSegment00120_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 2588881 960050 0 1 :=
  by simpa [progressionSegment00120_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00120_1_0000Check

end Erdos848.GeneratedDiagonalCoverage
