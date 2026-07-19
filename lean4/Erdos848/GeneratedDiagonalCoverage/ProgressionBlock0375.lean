import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00031_1_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 146591)

theorem progressionSegment00031_1_0002Check :
    progressionSegment00031_1_0002Tree.check indexedMarker 113569 31152 12 = true :=
  by decide

theorem progressionSegment00031_1_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 113569 31152 12 13 :=
  by simpa [progressionSegment00031_1_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00031_1_0002Check

def progressionSegment00031_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 8665) (.leaf 20621)) (.node (.leaf 32565) (.leaf 44499))) (.node (.node (.leaf 56438) (.leaf 68381)) (.node (.leaf 80318) (.leaf 92253))))

theorem progressionSegment00031_2_0000Check :
    progressionSegment00031_2_0000Tree.check indexedMarker 113569 82417 0 = true :=
  by decide

theorem progressionSegment00031_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 113569 82417 0 8 :=
  by simpa [progressionSegment00031_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00031_2_0000Check

def progressionSegment00031_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 104193) (.leaf 116155)) (.node (.leaf 128093) (.leaf 140036)))

theorem progressionSegment00031_2_0001Check :
    progressionSegment00031_2_0001Tree.check indexedMarker 113569 82417 8 = true :=
  by decide

theorem progressionSegment00031_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 113569 82417 8 12 :=
  by simpa [progressionSegment00031_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00031_2_0001Check

def progressionSegment00031_2_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 151985)

theorem progressionSegment00031_2_0002Check :
    progressionSegment00031_2_0002Tree.check indexedMarker 113569 82417 12 = true :=
  by decide

theorem progressionSegment00031_2_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 113569 82417 12 13 :=
  by simpa [progressionSegment00031_2_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00031_2_0002Check

end Erdos848.GeneratedDiagonalCoverage
