import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00033_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 9196) (.leaf 22317)) (.node (.leaf 35412) (.leaf 48521))) (.node (.node (.leaf 61623) (.leaf 74716)) (.node (.leaf 87819) (.leaf 100920))))

theorem progressionSegment00033_1_0000Check :
    progressionSegment00033_1_0000Tree.check indexedMarker 124609 87502 0 = true :=
  by decide

theorem progressionSegment00033_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 124609 87502 0 8 :=
  by simpa [progressionSegment00033_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00033_1_0000Check

def progressionSegment00033_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 114027) (.leaf 127134)) (.node (.leaf 140240) (.leaf 153342)))

theorem progressionSegment00033_1_0001Check :
    progressionSegment00033_1_0001Tree.check indexedMarker 124609 87502 8 = true :=
  by decide

theorem progressionSegment00033_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 124609 87502 8 12 :=
  by simpa [progressionSegment00033_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00033_1_0001Check

def progressionSegment00033_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 3903) (.leaf 17008)) (.node (.leaf 30116) (.leaf 43217))) (.node (.node (.leaf 56317) (.leaf 69418)) (.node (.leaf 82515) (.leaf 95619))))

theorem progressionSegment00033_2_0000Check :
    progressionSegment00033_2_0000Tree.check indexedMarker 124609 37107 0 = true :=
  by decide

theorem progressionSegment00033_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 124609 37107 0 8 :=
  by simpa [progressionSegment00033_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00033_2_0000Check

def progressionSegment00033_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 108723) (.leaf 121837)) (.node (.leaf 134937) (.leaf 148041)))

theorem progressionSegment00033_2_0001Check :
    progressionSegment00033_2_0001Tree.check indexedMarker 124609 37107 8 = true :=
  by decide

theorem progressionSegment00033_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 124609 37107 8 12 :=
  by simpa [progressionSegment00033_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00033_2_0001Check

end Erdos848.GeneratedDiagonalCoverage
