import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00013_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 87098) (.leaf 88433)) (.node (.leaf 89772) (.leaf 91114))) (.node (.node (.leaf 92458) (.leaf 93803)) (.node (.leaf 95143) (.leaf 96491)))) (.node (.node (.node (.leaf 97831) (.leaf 99168)) (.node (.leaf 100514) (.leaf 101863))) (.node (.node (.leaf 103210) (.leaf 104544)) (.node (.leaf 105890) (.leaf 107234))))) (.node (.node (.node (.node (.leaf 108574) (.leaf 109925)) (.node (.leaf 111263) (.leaf 112614))) (.node (.node (.leaf 113949) (.leaf 115296)) (.node (.leaf 116642) (.leaf 117987)))) (.node (.node (.node (.leaf 119328) (.leaf 120674)) (.node (.leaf 122010) (.leaf 123356))) (.node (.node (.leaf 124703) (.leaf 126043)) (.node (.leaf 127382) (.leaf 128721))))))

theorem progressionSegment00013_1_0001Check :
    progressionSegment00013_1_0001Tree.check indexedMarker 12769 11059 64 = true :=
  by decide

theorem progressionSegment00013_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 12769 11059 64 96 :=
  by simpa [progressionSegment00013_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00013_1_0001Check

def progressionSegment00013_1_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 130063) (.leaf 131406)) (.node (.leaf 132749) (.leaf 134093))) (.node (.node (.leaf 135435) (.leaf 136791)) (.node (.leaf 138132) (.leaf 139470)))) (.node (.node (.node (.leaf 140817) (.leaf 142159)) (.node (.leaf 143493) (.leaf 144832))) (.node (.node (.leaf 146183) (.leaf 147527)) (.node (.leaf 148858) (.leaf 150205)))))

theorem progressionSegment00013_1_0002Check :
    progressionSegment00013_1_0002Tree.check indexedMarker 12769 11059 96 = true :=
  by decide

theorem progressionSegment00013_1_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 12769 11059 96 112 :=
  by simpa [progressionSegment00013_1_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00013_1_0002Check

def progressionSegment00013_1_0003Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 151552) (.leaf 152894)) (.node (.leaf 154240) (.leaf 155581)))

theorem progressionSegment00013_1_0003Check :
    progressionSegment00013_1_0003Tree.check indexedMarker 12769 11059 112 = true :=
  by decide

theorem progressionSegment00013_1_0003 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 12769 11059 112 116 :=
  by simpa [progressionSegment00013_1_0003Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00013_1_0003Check

def progressionSegment00013_1_0004Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 156922)

theorem progressionSegment00013_1_0004Check :
    progressionSegment00013_1_0004Tree.check indexedMarker 12769 11059 116 = true :=
  by decide

theorem progressionSegment00013_1_0004 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 12769 11059 116 117 :=
  by simpa [progressionSegment00013_1_0004Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00013_1_0004Check

end Erdos848.GeneratedDiagonalCoverage
