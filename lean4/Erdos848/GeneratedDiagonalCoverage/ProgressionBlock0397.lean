import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00056_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 121144)

theorem progressionSegment00056_1_0001Check :
    progressionSegment00056_1_0001Tree.check indexedMarker 436921 278175 2 = true :=
  by decide

theorem progressionSegment00056_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 436921 278175 2 3 :=
  by simpa [progressionSegment00056_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00056_1_0001Check

def progressionSegment00056_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 16694) (.leaf 62644)) (.node (.leaf 108576) (.leaf 154532)))

theorem progressionSegment00056_2_0000Check :
    progressionSegment00056_2_0000Tree.check indexedMarker 436921 158746 0 = true :=
  by decide

theorem progressionSegment00056_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 436921 158746 0 4 :=
  by simpa [progressionSegment00056_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00056_2_0000Check

def progressionSegment00057_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 10262) (.leaf 57893)) (.node (.leaf 105518) (.leaf 153156)))

theorem progressionSegment00057_1_0000Check :
    progressionSegment00057_1_0000Tree.check indexedMarker 452929 97643 0 = true :=
  by decide

theorem progressionSegment00057_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 452929 97643 0 4 :=
  by simpa [progressionSegment00057_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00057_1_0000Check

def progressionSegment00057_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 37361) (.leaf 84988))

theorem progressionSegment00057_2_0000Check :
    progressionSegment00057_2_0000Tree.check indexedMarker 452929 355286 0 = true :=
  by decide

theorem progressionSegment00057_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 452929 355286 0 2 :=
  by simpa [progressionSegment00057_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00057_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
