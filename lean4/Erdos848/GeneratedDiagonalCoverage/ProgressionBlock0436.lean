import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00146_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 97178)

theorem progressionSegment00146_1_0000Check :
    progressionSegment00146_1_0000Tree.check indexedMarker 3988009 924199 0 = true :=
  by decide

theorem progressionSegment00146_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 3988009 924199 0 1 :=
  by simpa [progressionSegment00146_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00146_1_0000Check

def progressionSegment00149_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 122598)

theorem progressionSegment00149_2_0000Check :
    progressionSegment00149_2_0000Tree.check indexedMarker 4214809 1165860 0 = true :=
  by decide

theorem progressionSegment00149_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 4214809 1165860 0 1 :=
  by simpa [progressionSegment00149_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00149_2_0000Check

def progressionSegment00151_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 55815)

theorem progressionSegment00151_2_0000Check :
    progressionSegment00151_2_0000Tree.check indexedMarker 4330561 530757 0 = true :=
  by decide

theorem progressionSegment00151_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 4330561 530757 0 1 :=
  by simpa [progressionSegment00151_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00151_2_0000Check

def progressionSegment00152_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 126834)

theorem progressionSegment00152_2_0000Check :
    progressionSegment00152_2_0000Tree.check indexedMarker 4363921 1206142 0 = true :=
  by decide

theorem progressionSegment00152_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 4363921 1206142 0 1 :=
  by simpa [progressionSegment00152_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00152_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
