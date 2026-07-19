import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00078_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 38452) (.leaf 138834))

theorem progressionSegment00078_1_0000Check :
    progressionSegment00078_1_0000Tree.check indexedMarker 954529 365650 0 = true :=
  by decide

theorem progressionSegment00078_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 954529 365650 0 2 :=
  by simpa [progressionSegment00078_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00078_1_0000Check

def progressionSegment00078_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 61933)

theorem progressionSegment00078_2_0000Check :
    progressionSegment00078_2_0000Tree.check indexedMarker 954529 588879 0 = true :=
  by decide

theorem progressionSegment00078_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 954529 588879 0 1 :=
  by simpa [progressionSegment00078_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00078_2_0000Check

def progressionSegment00079_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 10391) (.leaf 114924))

theorem progressionSegment00079_1_0000Check :
    progressionSegment00079_1_0000Tree.check indexedMarker 994009 98864 0 = true :=
  by decide

theorem progressionSegment00079_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 994009 98864 0 2 :=
  by simpa [progressionSegment00079_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00079_1_0000Check

def progressionSegment00079_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 94124)

theorem progressionSegment00079_2_0000Check :
    progressionSegment00079_2_0000Tree.check indexedMarker 994009 895145 0 = true :=
  by decide

theorem progressionSegment00079_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 994009 895145 0 1 :=
  by simpa [progressionSegment00079_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00079_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
