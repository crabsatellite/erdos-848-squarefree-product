import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00018_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 110604) (.leaf 114045)) (.node (.leaf 117499) (.leaf 120941))) (.node (.node (.leaf 124389) (.leaf 127829)) (.node (.leaf 131275) (.leaf 134719))))

theorem progressionSegment00018_2_0001Check :
    progressionSegment00018_2_0001Tree.check indexedMarker 32761 3458 32 = true :=
  by decide

theorem progressionSegment00018_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 32761 3458 32 40 :=
  by simpa [progressionSegment00018_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00018_2_0001Check

def progressionSegment00018_2_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 138172) (.leaf 141611)) (.node (.leaf 145053) (.leaf 148494)))

theorem progressionSegment00018_2_0002Check :
    progressionSegment00018_2_0002Tree.check indexedMarker 32761 3458 40 = true :=
  by decide

theorem progressionSegment00018_2_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 32761 3458 40 44 :=
  by simpa [progressionSegment00018_2_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00018_2_0002Check

def progressionSegment00018_2_0003Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 151954) (.leaf 155393))

theorem progressionSegment00018_2_0003Check :
    progressionSegment00018_2_0003Tree.check indexedMarker 32761 3458 44 = true :=
  by decide

theorem progressionSegment00018_2_0003 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 32761 3458 44 46 :=
  by simpa [progressionSegment00018_2_0003Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00018_2_0003Check

def progressionSegment00019_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 3377) (.leaf 7294)) (.node (.leaf 11210) (.leaf 15138))) (.node (.node (.leaf 19058) (.leaf 22973)) (.node (.leaf 26889) (.leaf 30806)))) (.node (.node (.node (.leaf 34721) (.leaf 38632)) (.node (.leaf 42551) (.leaf 46475))) (.node (.node (.leaf 50390) (.leaf 54304)) (.node (.leaf 58224) (.leaf 62141))))) (.node (.node (.node (.node (.leaf 66059) (.leaf 69975)) (.node (.leaf 73885) (.leaf 77802))) (.node (.node (.leaf 81714) (.leaf 85637)) (.node (.leaf 89538) (.leaf 93460)))) (.node (.node (.node (.leaf 97376) (.leaf 101299)) (.node (.leaf 105210) (.leaf 109132))) (.node (.node (.leaf 113059) (.leaf 116977)) (.node (.leaf 120894) (.leaf 124813))))))

theorem progressionSegment00019_1_0000Check :
    progressionSegment00019_1_0000Tree.check indexedMarker 37249 32150 0 = true :=
  by decide

theorem progressionSegment00019_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 37249 32150 0 32 :=
  by simpa [progressionSegment00019_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00019_1_0000Check

end Erdos848.GeneratedDiagonalCoverage
