import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00221_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 115098)

theorem progressionSegment00221_2_0000Check :
    progressionSegment00221_2_0000Tree.check indexedMarker 10118761 1094546 0 = true :=
  by decide

theorem progressionSegment00221_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 10118761 1094546 0 1 :=
  by simpa [progressionSegment00221_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00221_2_0000Check

def progressionSegment00223_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 70182)

theorem progressionSegment00223_2_0000Check :
    progressionSegment00223_2_0000Tree.check indexedMarker 10349089 667355 0 = true :=
  by decide

theorem progressionSegment00223_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 10349089 667355 0 1 :=
  by simpa [progressionSegment00223_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00223_2_0000Check

def progressionSegment00229_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 82252)

theorem progressionSegment00229_2_0000Check :
    progressionSegment00229_2_0000Tree.check indexedMarker 10975969 782275 0 = true :=
  by decide

theorem progressionSegment00229_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 10975969 782275 0 1 :=
  by simpa [progressionSegment00229_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00229_2_0000Check

def progressionSegment00235_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 92231)

theorem progressionSegment00235_1_0000Check :
    progressionSegment00235_1_0000Tree.check indexedMarker 11785489 877197 0 = true :=
  by decide

theorem progressionSegment00235_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 11785489 877197 0 1 :=
  by simpa [progressionSegment00235_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00235_1_0000Check

end Erdos848.GeneratedDiagonalCoverage
