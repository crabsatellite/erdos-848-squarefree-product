import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00137_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 20570)

theorem progressionSegment00137_2_0000Check :
    progressionSegment00137_2_0000Tree.check indexedMarker 3508129 195529 0 = true :=
  by decide

theorem progressionSegment00137_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 3508129 195529 0 1 :=
  by simpa [progressionSegment00137_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00137_2_0000Check

def progressionSegment00138_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 135220)

theorem progressionSegment00138_1_0000Check :
    progressionSegment00138_1_0000Tree.check indexedMarker 3523129 1285882 0 = true :=
  by decide

theorem progressionSegment00138_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 3523129 1285882 0 1 :=
  by simpa [progressionSegment00138_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00138_1_0000Check

def progressionSegment00139_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 30629)

theorem progressionSegment00139_2_0000Check :
    progressionSegment00139_2_0000Tree.check indexedMarker 3568321 291237 0 = true :=
  by decide

theorem progressionSegment00139_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 3568321 291237 0 1 :=
  by simpa [progressionSegment00139_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00139_2_0000Check

def progressionSegment00141_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 121385)

theorem progressionSegment00141_1_0000Check :
    progressionSegment00141_1_0000Tree.check indexedMarker 3659569 1154251 0 = true :=
  by decide

theorem progressionSegment00141_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 3659569 1154251 0 1 :=
  by simpa [progressionSegment00141_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00141_1_0000Check

end Erdos848.GeneratedDiagonalCoverage
