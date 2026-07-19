import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00016_2_0004Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 156679)

theorem progressionSegment00016_2_0004Check :
    progressionSegment00016_2_0004Tree.check indexedMarker 24649 11018 60 = true :=
  by decide

theorem progressionSegment00016_2_0004 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 24649 11018 60 61 :=
  by simpa [progressionSegment00016_2_0004Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00016_2_0004Check

def progressionSegment00017_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 1751) (.leaf 4903)) (.node (.leaf 8043) (.leaf 11192))) (.node (.node (.leaf 14344) (.leaf 17503)) (.node (.leaf 20650) (.leaf 23791)))) (.node (.node (.node (.leaf 26942) (.leaf 30087)) (.node (.leaf 33236) (.leaf 36374))) (.node (.node (.leaf 39525) (.leaf 42668)) (.node (.leaf 45823) (.leaf 48974))))) (.node (.node (.node (.node (.leaf 52116) (.leaf 55258)) (.node (.leaf 58409) (.leaf 61557))) (.node (.node (.leaf 64704) (.leaf 67849)) (.node (.leaf 70999) (.leaf 74142)))) (.node (.node (.node (.leaf 77289) (.leaf 80431)) (.node (.leaf 83580) (.leaf 86727))) (.node (.node (.leaf 89866) (.leaf 93008)) (.node (.leaf 96162) (.leaf 99306))))))

theorem progressionSegment00017_1_0000Check :
    progressionSegment00017_1_0000Tree.check indexedMarker 29929 16688 0 = true :=
  by decide

theorem progressionSegment00017_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 29929 16688 0 32 :=
  by simpa [progressionSegment00017_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00017_1_0000Check

def progressionSegment00017_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 102462) (.leaf 105611)) (.node (.leaf 108755) (.leaf 111911))) (.node (.node (.leaf 115056) (.leaf 118208)) (.node (.leaf 121353) (.leaf 124502)))) (.node (.node (.node (.leaf 127643) (.leaf 130790)) (.node (.leaf 133935) (.leaf 137097))) (.node (.node (.leaf 140237) (.leaf 143385)) (.node (.leaf 146528) (.leaf 149674)))))

theorem progressionSegment00017_1_0001Check :
    progressionSegment00017_1_0001Tree.check indexedMarker 29929 16688 32 = true :=
  by decide

theorem progressionSegment00017_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 29929 16688 32 48 :=
  by simpa [progressionSegment00017_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00017_1_0001Check

def progressionSegment00017_1_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 152824) (.leaf 155971))

theorem progressionSegment00017_1_0002Check :
    progressionSegment00017_1_0002Tree.check indexedMarker 29929 16688 48 = true :=
  by decide

theorem progressionSegment00017_1_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 29929 16688 48 50 :=
  by simpa [progressionSegment00017_1_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00017_1_0002Check

end Erdos848.GeneratedDiagonalCoverage
