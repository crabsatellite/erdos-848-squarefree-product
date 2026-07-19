import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00034_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 131033) (.leaf 145672))

theorem progressionSegment00034_2_0001Check :
    progressionSegment00034_2_0001Tree.check indexedMarker 139129 133057 8 = true :=
  by decide

theorem progressionSegment00034_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 139129 133057 8 10 :=
  by simpa [progressionSegment00034_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00034_2_0001Check

def progressionSegment00035_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 417) (.leaf 16332)) (.node (.leaf 32253) (.leaf 48166))) (.node (.node (.leaf 64075) (.leaf 79978)) (.node (.leaf 95884) (.leaf 111808))))

theorem progressionSegment00035_1_0000Check :
    progressionSegment00035_1_0000Tree.check indexedMarker 151321 4005 0 = true :=
  by decide

theorem progressionSegment00035_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 151321 4005 0 8 :=
  by simpa [progressionSegment00035_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00035_1_0000Check

def progressionSegment00035_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 127723) (.leaf 143636))

theorem progressionSegment00035_1_0001Check :
    progressionSegment00035_1_0001Tree.check indexedMarker 151321 4005 8 = true :=
  by decide

theorem progressionSegment00035_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 151321 4005 8 10 :=
  by simpa [progressionSegment00035_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00035_1_0001Check

def progressionSegment00035_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 15495) (.leaf 31411)) (.node (.leaf 47321) (.leaf 63235))) (.node (.node (.leaf 79135) (.leaf 95043)) (.node (.leaf 110959) (.leaf 126879))))

theorem progressionSegment00035_2_0000Check :
    progressionSegment00035_2_0000Tree.check indexedMarker 151321 147316 0 = true :=
  by decide

theorem progressionSegment00035_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 151321 147316 0 8 :=
  by simpa [progressionSegment00035_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00035_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
