import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00010_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 127207) (.leaf 128199)) (.node (.leaf 129186) (.leaf 130172))) (.node (.node (.leaf 131168) (.leaf 132153)) (.node (.leaf 133142) (.leaf 134135)))) (.node (.node (.node (.leaf 135124) (.leaf 136119)) (.node (.leaf 137116) (.leaf 138102))) (.node (.node (.leaf 139087) (.leaf 140075)) (.node (.leaf 141064) (.leaf 142057)))))

theorem progressionSegment00010_1_0001Check :
    progressionSegment00010_1_0001Tree.check indexedMarker 9409 5357 128 = true :=
  by decide

theorem progressionSegment00010_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 9409 5357 128 144 :=
  by simpa [progressionSegment00010_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00010_1_0001Check

def progressionSegment00010_1_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 143049) (.leaf 144033)) (.node (.leaf 145015) (.leaf 146012))) (.node (.node (.leaf 147003) (.leaf 147989)) (.node (.leaf 148970) (.leaf 149964))))

theorem progressionSegment00010_1_0002Check :
    progressionSegment00010_1_0002Tree.check indexedMarker 9409 5357 144 = true :=
  by decide

theorem progressionSegment00010_1_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 9409 5357 144 152 :=
  by simpa [progressionSegment00010_1_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00010_1_0002Check

def progressionSegment00010_1_0003Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 150951) (.leaf 151952)) (.node (.leaf 152939) (.leaf 153929)))

theorem progressionSegment00010_1_0003Check :
    progressionSegment00010_1_0003Tree.check indexedMarker 9409 5357 152 = true :=
  by decide

theorem progressionSegment00010_1_0003 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 9409 5357 152 156 :=
  by simpa [progressionSegment00010_1_0003Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00010_1_0003Check

def progressionSegment00010_1_0004Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 154916) (.leaf 155903))

theorem progressionSegment00010_1_0004Check :
    progressionSegment00010_1_0004Tree.check indexedMarker 9409 5357 156 = true :=
  by decide

theorem progressionSegment00010_1_0004 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 9409 5357 156 158 :=
  by simpa [progressionSegment00010_1_0004Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00010_1_0004Check

end Erdos848.GeneratedDiagonalCoverage
