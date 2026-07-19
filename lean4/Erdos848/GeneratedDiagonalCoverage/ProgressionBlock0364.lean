import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00023_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 99282) (.leaf 105400)) (.node (.leaf 111514) (.leaf 117626))) (.node (.node (.leaf 123734) (.leaf 129836)) (.node (.leaf 135952) (.leaf 142060))))

theorem progressionSegment00023_2_0001Check :
    progressionSegment00023_2_0001Tree.check indexedMarker 58081 15006 16 = true :=
  by decide

theorem progressionSegment00023_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 58081 15006 16 24 :=
  by simpa [progressionSegment00023_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00023_2_0001Check

def progressionSegment00023_2_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 148163) (.leaf 154275))

theorem progressionSegment00023_2_0002Check :
    progressionSegment00023_2_0002Tree.check indexedMarker 58081 15006 24 = true :=
  by decide

theorem progressionSegment00023_2_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 58081 15006 24 26 :=
  by simpa [progressionSegment00023_2_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00023_2_0002Check

def progressionSegment00024_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 6722) (.leaf 13671)) (.node (.leaf 20630) (.leaf 27573))) (.node (.node (.leaf 34515) (.leaf 41459)) (.node (.leaf 48411) (.leaf 55347)))) (.node (.node (.node (.leaf 62295) (.leaf 69234)) (.node (.leaf 76178) (.leaf 83125))) (.node (.node (.leaf 90066) (.leaf 97011)) (.node (.leaf 103956) (.leaf 110907)))))

theorem progressionSegment00024_1_0000Check :
    progressionSegment00024_1_0000Tree.check indexedMarker 66049 63977 0 = true :=
  by decide

theorem progressionSegment00024_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 66049 63977 0 16 :=
  by simpa [progressionSegment00024_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00024_1_0000Check

def progressionSegment00024_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 117859) (.leaf 124806)) (.node (.leaf 131741) (.leaf 138701)))

theorem progressionSegment00024_1_0001Check :
    progressionSegment00024_1_0001Tree.check indexedMarker 66049 63977 16 = true :=
  by decide

theorem progressionSegment00024_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 66049 63977 16 20 :=
  by simpa [progressionSegment00024_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00024_1_0001Check

end Erdos848.GeneratedDiagonalCoverage
