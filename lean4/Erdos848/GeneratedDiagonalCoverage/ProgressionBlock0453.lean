import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00444_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 31178)

theorem progressionSegment00444_2_0000Check :
    progressionSegment00444_2_0000Tree.check indexedMarker 49801249 296478 0 = true :=
  by decide

theorem progressionSegment00444_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 49801249 296478 0 1 :=
  by simpa [progressionSegment00444_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00444_2_0000Check

def progressionSegment00457_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 93152)

theorem progressionSegment00457_1_0000Check :
    progressionSegment00457_1_0000Tree.check indexedMarker 53597041 885962 0 = true :=
  by decide

theorem progressionSegment00457_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 53597041 885962 0 1 :=
  by simpa [progressionSegment00457_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00457_1_0000Check

def progressionSegment00506_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 38342)

theorem progressionSegment00506_1_0000Check :
    progressionSegment00506_1_0000Tree.check indexedMarker 65626201 364635 0 = true :=
  by decide

theorem progressionSegment00506_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 65626201 364635 0 1 :=
  by simpa [progressionSegment00506_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00506_1_0000Check

def progressionSegment00526_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 88742)

theorem progressionSegment00526_2_0000Check :
    progressionSegment00526_2_0000Tree.check indexedMarker 72471169 843990 0 = true :=
  by decide

theorem progressionSegment00526_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 72471169 843990 0 1 :=
  by simpa [progressionSegment00526_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00526_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
