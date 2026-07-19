import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00175_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 148870)

theorem progressionSegment00175_1_0000Check :
    progressionSegment00175_1_0000Tree.check indexedMarker 5841889 1415770 0 = true :=
  by decide

theorem progressionSegment00175_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 5841889 1415770 0 1 :=
  by simpa [progressionSegment00175_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00175_1_0000Check

def progressionSegment00178_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 62358)

theorem progressionSegment00178_1_0000Check :
    progressionSegment00178_1_0000Tree.check indexedMarker 6115729 592953 0 = true :=
  by decide

theorem progressionSegment00178_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 6115729 592953 0 1 :=
  by simpa [progressionSegment00178_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00178_1_0000Check

def progressionSegment00180_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 18836)

theorem progressionSegment00180_1_0000Check :
    progressionSegment00180_1_0000Tree.check indexedMarker 6355441 179062 0 = true :=
  by decide

theorem progressionSegment00180_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 6355441 179062 0 1 :=
  by simpa [progressionSegment00180_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00180_1_0000Check

def progressionSegment00190_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 8924)

theorem progressionSegment00190_1_0000Check :
    progressionSegment00190_1_0000Tree.check indexedMarker 7230721 84906 0 = true :=
  by decide

theorem progressionSegment00190_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 7230721 84906 0 1 :=
  by simpa [progressionSegment00190_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00190_1_0000Check

end Erdos848.GeneratedDiagonalCoverage
