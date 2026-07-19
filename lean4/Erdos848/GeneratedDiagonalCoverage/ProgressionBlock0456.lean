import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00712_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 70005)

theorem progressionSegment00712_2_0000Check :
    progressionSegment00712_2_0000Tree.check indexedMarker 146434201 665665 0 = true :=
  by decide

theorem progressionSegment00712_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 146434201 665665 0 1 :=
  by simpa [progressionSegment00712_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00712_2_0000Check

def progressionSegment00749_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 111836)

theorem progressionSegment00749_1_0000Check :
    progressionSegment00749_1_0000Tree.check indexedMarker 161010721 1063532 0 = true :=
  by decide

theorem progressionSegment00749_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 161010721 1063532 0 1 :=
  by simpa [progressionSegment00749_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00749_1_0000Check

def progressionSegment00788_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 82082)

theorem progressionSegment00788_1_0000Check :
    progressionSegment00788_1_0000Tree.check indexedMarker 181090849 780622 0 = true :=
  by decide

theorem progressionSegment00788_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 181090849 780622 0 1 :=
  by simpa [progressionSegment00788_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00788_1_0000Check

def progressionSegment00836_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 90868)

theorem progressionSegment00836_2_0000Check :
    progressionSegment00836_2_0000Tree.check indexedMarker 207388801 864180 0 = true :=
  by decide

theorem progressionSegment00836_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 207388801 864180 0 1 :=
  by simpa [progressionSegment00836_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00836_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
