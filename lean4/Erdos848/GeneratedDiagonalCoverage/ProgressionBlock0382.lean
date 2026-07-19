import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00037_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 151762)

theorem progressionSegment00037_2_0001Check :
    progressionSegment00037_2_0001Tree.check indexedMarker 160801 156771 8 = true :=
  by decide

theorem progressionSegment00037_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 160801 156771 8 9 :=
  by simpa [progressionSegment00037_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00037_2_0001Check

def progressionSegment00038_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 4547) (.leaf 22149)) (.node (.leaf 39729) (.leaf 57317))) (.node (.node (.leaf 74906) (.leaf 92487)) (.node (.leaf 110087) (.leaf 127677))))

theorem progressionSegment00038_1_0000Check :
    progressionSegment00038_1_0000Tree.check indexedMarker 167281 43211 0 = true :=
  by decide

theorem progressionSegment00038_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 167281 43211 0 8 :=
  by simpa [progressionSegment00038_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00038_1_0000Check

def progressionSegment00038_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 145270)

theorem progressionSegment00038_1_0001Check :
    progressionSegment00038_1_0001Tree.check indexedMarker 167281 43211 8 = true :=
  by decide

theorem progressionSegment00038_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 167281 43211 8 9 :=
  by simpa [progressionSegment00038_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00038_1_0001Check

def progressionSegment00038_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 13048) (.leaf 30643)) (.node (.leaf 48240) (.leaf 65828))) (.node (.node (.leaf 83405) (.leaf 100996)) (.node (.leaf 118597) (.leaf 136188))))

theorem progressionSegment00038_2_0000Check :
    progressionSegment00038_2_0000Tree.check indexedMarker 167281 124070 0 = true :=
  by decide

theorem progressionSegment00038_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 167281 124070 0 8 :=
  by simpa [progressionSegment00038_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00038_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
