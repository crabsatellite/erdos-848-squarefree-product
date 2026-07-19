import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00059_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 25643) (.leaf 77314))

theorem progressionSegment00059_1_0000Check :
    progressionSegment00059_1_0000Tree.check indexedMarker 491401 243813 0 = true :=
  by decide

theorem progressionSegment00059_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 491401 243813 0 2 :=
  by simpa [progressionSegment00059_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00059_1_0000Check

def progressionSegment00059_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 128981)

theorem progressionSegment00059_1_0001Check :
    progressionSegment00059_1_0001Tree.check indexedMarker 491401 243813 2 = true :=
  by decide

theorem progressionSegment00059_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 491401 243813 2 3 :=
  by simpa [progressionSegment00059_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00059_1_0001Check

def progressionSegment00059_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 26042) (.leaf 77708))

theorem progressionSegment00059_2_0000Check :
    progressionSegment00059_2_0000Tree.check indexedMarker 491401 247588 0 = true :=
  by decide

theorem progressionSegment00059_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 491401 247588 0 2 :=
  by simpa [progressionSegment00059_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00059_2_0000Check

def progressionSegment00059_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 129381)

theorem progressionSegment00059_2_0001Check :
    progressionSegment00059_2_0001Tree.check indexedMarker 491401 247588 2 = true :=
  by decide

theorem progressionSegment00059_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 491401 247588 2 3 :=
  by simpa [progressionSegment00059_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00059_2_0001Check

end Erdos848.GeneratedDiagonalCoverage
