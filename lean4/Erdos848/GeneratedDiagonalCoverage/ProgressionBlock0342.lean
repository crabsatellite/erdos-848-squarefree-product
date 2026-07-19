import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00012_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 80604) (.leaf 81850)) (.node (.leaf 83099) (.leaf 84347))) (.node (.node (.leaf 85599) (.leaf 86850)) (.node (.leaf 88096) (.leaf 89336)))) (.node (.node (.node (.leaf 90591) (.leaf 91834)) (.node (.leaf 93084) (.leaf 94342))) (.node (.node (.leaf 95588) (.leaf 96836)) (.node (.leaf 98087) (.leaf 99332))))) (.node (.node (.node (.node (.leaf 100584) (.leaf 101837)) (.node (.leaf 103093) (.leaf 104329))) (.node (.node (.leaf 105589) (.leaf 106837)) (.node (.leaf 108083) (.leaf 109333)))) (.node (.node (.node (.leaf 110589) (.leaf 111838)) (.node (.leaf 113089) (.leaf 114340))) (.node (.node (.leaf 115593) (.leaf 116843)) (.node (.leaf 118093) (.leaf 119340))))))

theorem progressionSegment00012_1_0001Check :
    progressionSegment00012_1_0001Tree.check indexedMarker 11881 6137 64 = true :=
  by decide

theorem progressionSegment00012_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 11881 6137 64 96 :=
  by simpa [progressionSegment00012_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00012_1_0001Check

def progressionSegment00012_1_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 120588) (.leaf 121839)) (.node (.leaf 123087) (.leaf 124335))) (.node (.node (.leaf 125588) (.leaf 126832)) (.node (.leaf 128082) (.leaf 129326)))) (.node (.node (.node (.leaf 130575) (.leaf 131825)) (.node (.leaf 133073) (.leaf 134329))) (.node (.node (.leaf 135579) (.leaf 136838)) (.node (.leaf 138085) (.leaf 139325)))))

theorem progressionSegment00012_1_0002Check :
    progressionSegment00012_1_0002Tree.check indexedMarker 11881 6137 96 = true :=
  by decide

theorem progressionSegment00012_1_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 11881 6137 96 112 :=
  by simpa [progressionSegment00012_1_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00012_1_0002Check

def progressionSegment00012_1_0003Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 140581) (.leaf 141827)) (.node (.leaf 143082) (.leaf 144320))) (.node (.node (.leaf 145578) (.leaf 146825)) (.node (.leaf 148074) (.leaf 149318))))

theorem progressionSegment00012_1_0003Check :
    progressionSegment00012_1_0003Tree.check indexedMarker 11881 6137 112 = true :=
  by decide

theorem progressionSegment00012_1_0003 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 11881 6137 112 120 :=
  by simpa [progressionSegment00012_1_0003Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00012_1_0003Check

def progressionSegment00012_1_0004Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 150563) (.leaf 151824)) (.node (.leaf 153072) (.leaf 154322)))

theorem progressionSegment00012_1_0004Check :
    progressionSegment00012_1_0004Tree.check indexedMarker 11881 6137 120 = true :=
  by decide

theorem progressionSegment00012_1_0004 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 11881 6137 120 124 :=
  by simpa [progressionSegment00012_1_0004Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00012_1_0004Check

end Erdos848.GeneratedDiagonalCoverage
