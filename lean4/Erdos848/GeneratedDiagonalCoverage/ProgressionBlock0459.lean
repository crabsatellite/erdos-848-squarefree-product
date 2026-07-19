import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment02270_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 101381)

theorem progressionSegment02270_1_0000Check :
    progressionSegment02270_1_0000Tree.check indexedMarker 1932569521 964140 0 = true :=
  by decide

theorem progressionSegment02270_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1932569521 964140 0 1 :=
  by simpa [progressionSegment02270_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment02270_1_0000Check

def progressionSegment02707_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 17751)

theorem progressionSegment02707_2_0000Check :
    progressionSegment02707_2_0000Tree.check indexedMarker 2846542609 168717 0 = true :=
  by decide

theorem progressionSegment02707_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 2846542609 168717 0 1 :=
  by simpa [progressionSegment02707_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment02707_2_0000Check

def progressionSegment12304_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 122706)

theorem progressionSegment12304_1_0000Check :
    progressionSegment12304_1_0000Tree.check indexedMarker 80094094081 1166876 0 = true :=
  by decide

theorem progressionSegment12304_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 80094094081 1166876 0 1 :=
  by simpa [progressionSegment12304_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment12304_1_0000Check

end Erdos848.GeneratedDiagonalCoverage
