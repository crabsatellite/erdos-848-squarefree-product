import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00025_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 6169) (.leaf 13784)) (.node (.leaf 21410) (.leaf 29011))) (.node (.node (.leaf 36609) (.leaf 44221)) (.node (.leaf 51835) (.leaf 59443)))) (.node (.node (.node (.leaf 67052) (.leaf 74656)) (.node (.leaf 82259) (.leaf 89865))) (.node (.node (.leaf 97475) (.leaf 105080)) (.node (.leaf 112706) (.leaf 120314)))))

theorem progressionSegment00025_2_0000Check :
    progressionSegment00025_2_0000Tree.check indexedMarker 72361 58724 0 = true :=
  by decide

theorem progressionSegment00025_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 72361 58724 0 16 :=
  by simpa [progressionSegment00025_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00025_2_0000Check

def progressionSegment00025_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 127925) (.leaf 135532)) (.node (.leaf 143151) (.leaf 150747)))

theorem progressionSegment00025_2_0001Check :
    progressionSegment00025_2_0001Tree.check indexedMarker 72361 58724 16 = true :=
  by decide

theorem progressionSegment00025_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 72361 58724 16 20 :=
  by simpa [progressionSegment00025_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00025_2_0001Check

def progressionSegment00026_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 3291) (.leaf 11365)) (.node (.leaf 19447) (.leaf 27511))) (.node (.node (.leaf 35575) (.leaf 43642)) (.node (.leaf 51713) (.leaf 59776)))) (.node (.node (.node (.leaf 67848) (.leaf 75915)) (.node (.leaf 83981) (.leaf 92039))) (.node (.node (.leaf 100106) (.leaf 108183)) (.node (.leaf 116265) (.leaf 124329)))))

theorem progressionSegment00026_1_0000Check :
    progressionSegment00026_1_0000Tree.check indexedMarker 76729 31361 0 = true :=
  by decide

theorem progressionSegment00026_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 76729 31361 0 16 :=
  by simpa [progressionSegment00026_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00026_1_0000Check

def progressionSegment00026_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 132392) (.leaf 140465)) (.node (.leaf 148526) (.leaf 156599)))

theorem progressionSegment00026_1_0001Check :
    progressionSegment00026_1_0001Tree.check indexedMarker 76729 31361 16 = true :=
  by decide

theorem progressionSegment00026_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 76729 31361 16 20 :=
  by simpa [progressionSegment00026_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00026_1_0001Check

end Erdos848.GeneratedDiagonalCoverage
