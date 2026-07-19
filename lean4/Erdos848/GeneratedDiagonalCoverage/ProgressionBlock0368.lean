import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00026_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 4772) (.leaf 12842)) (.node (.leaf 20923) (.leaf 28986))) (.node (.node (.leaf 37044) (.leaf 45121)) (.node (.leaf 53182) (.leaf 61260)))) (.node (.node (.node (.leaf 69315) (.leaf 77388)) (.node (.leaf 85453) (.leaf 93515))) (.node (.node (.leaf 101588) (.leaf 109661)) (.node (.leaf 117732) (.leaf 125803)))))

theorem progressionSegment00026_2_0000Check :
    progressionSegment00026_2_0000Tree.check indexedMarker 76729 45368 0 = true :=
  by decide

theorem progressionSegment00026_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 76729 45368 0 16 :=
  by simpa [progressionSegment00026_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00026_2_0000Check

def progressionSegment00026_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 133861) (.leaf 141940))

theorem progressionSegment00026_2_0001Check :
    progressionSegment00026_2_0001Tree.check indexedMarker 76729 45368 16 = true :=
  by decide

theorem progressionSegment00026_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 76729 45368 16 18 :=
  by simpa [progressionSegment00026_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00026_2_0001Check

def progressionSegment00026_2_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 150007)

theorem progressionSegment00026_2_0002Check :
    progressionSegment00026_2_0002Tree.check indexedMarker 76729 45368 18 = true :=
  by decide

theorem progressionSegment00026_2_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 76729 45368 18 19 :=
  by simpa [progressionSegment00026_2_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00026_2_0002Check

def progressionSegment00027_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 468) (.leaf 8767)) (.node (.leaf 17078) (.leaf 25379))) (.node (.node (.leaf 33684) (.leaf 41985)) (.node (.leaf 50294) (.leaf 58595)))) (.node (.node (.node (.leaf 66897) (.leaf 75196)) (.node (.leaf 83493) (.leaf 91789))) (.node (.node (.leaf 100090) (.leaf 108405)) (.node (.leaf 116718) (.leaf 125020)))))

theorem progressionSegment00027_1_0000Check :
    progressionSegment00027_1_0000Tree.check indexedMarker 78961 4443 0 = true :=
  by decide

theorem progressionSegment00027_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 78961 4443 0 16 :=
  by simpa [progressionSegment00027_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00027_1_0000Check

end Erdos848.GeneratedDiagonalCoverage
