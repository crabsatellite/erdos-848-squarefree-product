import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00530_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 118228)

theorem progressionSegment00530_2_0000Check :
    progressionSegment00530_2_0000Tree.check indexedMarker 73633561 1124242 0 = true :=
  by decide

theorem progressionSegment00530_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 73633561 1124242 0 1 :=
  by simpa [progressionSegment00530_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00530_2_0000Check

def progressionSegment00546_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 43685)

theorem progressionSegment00546_2_0000Check :
    progressionSegment00546_2_0000Tree.check indexedMarker 78092569 415433 0 = true :=
  by decide

theorem progressionSegment00546_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 78092569 415433 0 1 :=
  by simpa [progressionSegment00546_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00546_2_0000Check

def progressionSegment00591_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 141233)

theorem progressionSegment00591_1_0000Check :
    progressionSegment00591_1_0000Tree.check indexedMarker 93334921 1343018 0 = true :=
  by decide

theorem progressionSegment00591_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 93334921 1343018 0 1 :=
  by simpa [progressionSegment00591_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00591_1_0000Check

def progressionSegment00606_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 147416)

theorem progressionSegment00606_1_0000Check :
    progressionSegment00606_1_0000Tree.check indexedMarker 98823481 1401822 0 = true :=
  by decide

theorem progressionSegment00606_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 98823481 1401822 0 1 :=
  by simpa [progressionSegment00606_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00606_1_0000Check

end Erdos848.GeneratedDiagonalCoverage
