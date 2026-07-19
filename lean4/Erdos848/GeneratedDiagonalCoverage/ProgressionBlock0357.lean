import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00019_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 128722) (.leaf 132636)) (.node (.leaf 136567) (.leaf 140478))) (.node (.node (.leaf 144392) (.leaf 148307)) (.node (.leaf 152233) (.leaf 156143))))

theorem progressionSegment00019_1_0001Check :
    progressionSegment00019_1_0001Tree.check indexedMarker 37249 32150 32 = true :=
  by decide

theorem progressionSegment00019_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 37249 32150 32 40 :=
  by simpa [progressionSegment00019_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00019_1_0001Check

def progressionSegment00019_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 535) (.leaf 4454)) (.node (.leaf 8369) (.leaf 12286))) (.node (.node (.leaf 16200) (.leaf 20128)) (.node (.leaf 24044) (.leaf 27969)))) (.node (.node (.node (.leaf 31874) (.leaf 35790)) (.node (.leaf 39707) (.leaf 43623))) (.node (.node (.leaf 47543) (.leaf 51462)) (.node (.leaf 55376) (.leaf 59291))))) (.node (.node (.node (.node (.leaf 63214) (.leaf 67123)) (.node (.leaf 71046) (.leaf 74957))) (.node (.node (.leaf 78868) (.leaf 82786)) (.node (.leaf 86708) (.leaf 90616)))) (.node (.node (.node (.leaf 94537) (.leaf 98450)) (.node (.leaf 102376) (.leaf 106290))) (.node (.node (.leaf 110208) (.leaf 114125)) (.node (.leaf 118050) (.leaf 121966))))))

theorem progressionSegment00019_2_0000Check :
    progressionSegment00019_2_0000Tree.check indexedMarker 37249 5099 0 = true :=
  by decide

theorem progressionSegment00019_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 37249 5099 0 32 :=
  by simpa [progressionSegment00019_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00019_2_0000Check

def progressionSegment00019_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 125883) (.leaf 129795)) (.node (.leaf 133709) (.leaf 137637))) (.node (.node (.leaf 141550) (.leaf 145464)) (.node (.leaf 149381) (.leaf 153304))))

theorem progressionSegment00019_2_0001Check :
    progressionSegment00019_2_0001Tree.check indexedMarker 37249 5099 32 = true :=
  by decide

theorem progressionSegment00019_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 37249 5099 32 40 :=
  by simpa [progressionSegment00019_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00019_2_0001Check

def progressionSegment00019_2_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 157217)

theorem progressionSegment00019_2_0002Check :
    progressionSegment00019_2_0002Tree.check indexedMarker 37249 5099 40 = true :=
  by decide

theorem progressionSegment00019_2_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 37249 5099 40 41 :=
  by simpa [progressionSegment00019_2_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00019_2_0002Check

end Erdos848.GeneratedDiagonalCoverage
