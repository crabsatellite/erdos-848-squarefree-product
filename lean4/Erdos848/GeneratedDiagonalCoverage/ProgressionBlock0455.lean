import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00615_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 57718)

theorem progressionSegment00615_2_0000Check :
    progressionSegment00615_2_0000Tree.check indexedMarker 102839881 548927 0 = true :=
  by decide

theorem progressionSegment00615_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 102839881 548927 0 1 :=
  by simpa [progressionSegment00615_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00615_2_0000Check

def progressionSegment00623_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 5525)

theorem progressionSegment00623_1_0000Check :
    progressionSegment00623_1_0000Tree.check indexedMarker 106110601 52525 0 = true :=
  by decide

theorem progressionSegment00623_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 106110601 52525 0 1 :=
  by simpa [progressionSegment00623_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00623_1_0000Check

def progressionSegment00627_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 36664)

theorem progressionSegment00627_2_0000Check :
    progressionSegment00627_2_0000Tree.check indexedMarker 106853569 348711 0 = true :=
  by decide

theorem progressionSegment00627_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 106853569 348711 0 1 :=
  by simpa [progressionSegment00627_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00627_2_0000Check

def progressionSegment00695_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 139609)

theorem progressionSegment00695_2_0000Check :
    progressionSegment00695_2_0000Tree.check indexedMarker 138980521 1327611 0 = true :=
  by decide

theorem progressionSegment00695_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 138980521 1327611 0 1 :=
  by simpa [progressionSegment00695_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00695_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
