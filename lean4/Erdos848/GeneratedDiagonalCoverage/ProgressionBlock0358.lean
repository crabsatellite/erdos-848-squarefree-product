import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00020_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 3933) (.leaf 8010)) (.node (.leaf 12097) (.leaf 16170))) (.node (.node (.leaf 20263) (.leaf 24346)) (.node (.leaf 28433) (.leaf 32511)))) (.node (.node (.node (.leaf 36581) (.leaf 40666)) (.node (.leaf 44750) (.leaf 48837))) (.node (.node (.leaf 52908) (.leaf 56989)) (.node (.leaf 61072) (.leaf 65153))))) (.node (.node (.node (.node (.leaf 69227) (.leaf 73312)) (.node (.leaf 77393) (.leaf 81467))) (.node (.node (.leaf 85552) (.leaf 89624)) (.node (.leaf 93708) (.leaf 97787)))) (.node (.node (.node (.leaf 101874) (.leaf 105954)) (.node (.leaf 110043) (.leaf 114119))) (.node (.node (.leaf 118210) (.leaf 122286)) (.node (.leaf 126364) (.leaf 130443))))))

theorem progressionSegment00020_1_0000Check :
    progressionSegment00020_1_0000Tree.check indexedMarker 38809 37416 0 = true :=
  by decide

theorem progressionSegment00020_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 38809 37416 0 32 :=
  by simpa [progressionSegment00020_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00020_1_0000Check

def progressionSegment00020_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 134528) (.leaf 138617)) (.node (.leaf 142694) (.leaf 146773)))

theorem progressionSegment00020_1_0001Check :
    progressionSegment00020_1_0001Tree.check indexedMarker 38809 37416 32 = true :=
  by decide

theorem progressionSegment00020_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 38809 37416 32 36 :=
  by simpa [progressionSegment00020_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00020_1_0001Check

def progressionSegment00020_1_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 150846) (.leaf 154934))

theorem progressionSegment00020_1_0002Check :
    progressionSegment00020_1_0002Tree.check indexedMarker 38809 37416 36 = true :=
  by decide

theorem progressionSegment00020_1_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 38809 37416 36 38 :=
  by simpa [progressionSegment00020_1_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00020_1_0002Check

def progressionSegment00020_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 142) (.leaf 4226)) (.node (.leaf 8302) (.leaf 12389))) (.node (.node (.leaf 16469) (.leaf 20561)) (.node (.leaf 24640) (.leaf 28725)))) (.node (.node (.node (.leaf 32799) (.leaf 36875)) (.node (.leaf 40959) (.leaf 45040))) (.node (.node (.leaf 49131) (.leaf 53200)) (.node (.leaf 57278) (.leaf 61368))))) (.node (.node (.node (.node (.leaf 65445) (.leaf 69524)) (.node (.leaf 73601) (.leaf 77683))) (.node (.node (.leaf 81762) (.leaf 85847)) (.node (.leaf 89916) (.leaf 94004)))) (.node (.node (.node (.leaf 98081) (.leaf 102169)) (.node (.leaf 106246) (.leaf 110328))) (.node (.node (.leaf 114418) (.leaf 118503)) (.node (.leaf 122578) (.leaf 126657))))))

theorem progressionSegment00020_2_0000Check :
    progressionSegment00020_2_0000Tree.check indexedMarker 38809 1393 0 = true :=
  by decide

theorem progressionSegment00020_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 38809 1393 0 32 :=
  by simpa [progressionSegment00020_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00020_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
