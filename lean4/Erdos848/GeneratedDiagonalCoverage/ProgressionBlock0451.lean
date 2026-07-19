import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00354_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 21334)

theorem progressionSegment00354_1_0000Check :
    progressionSegment00354_1_0000Tree.check indexedMarker 29997529 202723 0 = true :=
  by decide

theorem progressionSegment00354_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 29997529 202723 0 1 :=
  by simpa [progressionSegment00354_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00354_1_0000Check

def progressionSegment00365_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 116288)

theorem progressionSegment00365_2_0000Check :
    progressionSegment00365_2_0000Tree.check indexedMarker 32364721 1105790 0 = true :=
  by decide

theorem progressionSegment00365_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 32364721 1105790 0 1 :=
  by simpa [progressionSegment00365_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00365_2_0000Check

def progressionSegment00370_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 855)

theorem progressionSegment00370_2_0000Check :
    progressionSegment00370_2_0000Tree.check indexedMarker 32959081 8119 0 = true :=
  by decide

theorem progressionSegment00370_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 32959081 8119 0 1 :=
  by simpa [progressionSegment00370_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00370_2_0000Check

def progressionSegment00385_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 146103)

theorem progressionSegment00385_1_0000Check :
    progressionSegment00385_1_0000Tree.check indexedMarker 36638809 1389358 0 = true :=
  by decide

theorem progressionSegment00385_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 36638809 1389358 0 1 :=
  by simpa [progressionSegment00385_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00385_1_0000Check

end Erdos848.GeneratedDiagonalCoverage
