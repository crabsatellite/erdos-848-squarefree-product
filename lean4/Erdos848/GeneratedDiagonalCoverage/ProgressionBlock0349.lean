import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00015_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 181) (.leaf 2511)) (.node (.leaf 4853) (.leaf 7182))) (.node (.node (.leaf 9525) (.leaf 11858)) (.node (.leaf 14193) (.leaf 16526)))) (.node (.node (.node (.leaf 18869) (.leaf 21206)) (.node (.leaf 23538) (.leaf 25871))) (.node (.node (.leaf 28211) (.leaf 30537)) (.node (.leaf 32876) (.leaf 35208))))) (.node (.node (.node (.node (.leaf 37537) (.leaf 39876)) (.node (.leaf 42213) (.leaf 44546))) (.node (.node (.leaf 46878) (.leaf 49220)) (.node (.leaf 51547) (.leaf 53883)))) (.node (.node (.node (.leaf 56213) (.leaf 58551)) (.node (.leaf 60885) (.leaf 63224))) (.node (.node (.leaf 65556) (.leaf 67888)) (.node (.leaf 70225) (.leaf 72555)))))) (.node (.node (.node (.node (.node (.leaf 74889) (.leaf 77226)) (.node (.leaf 79560) (.leaf 81888))) (.node (.node (.leaf 84224) (.leaf 86561)) (.node (.leaf 88888) (.leaf 91220)))) (.node (.node (.node (.leaf 93558) (.leaf 95890)) (.node (.leaf 98225) (.leaf 100561))) (.node (.node (.leaf 102900) (.leaf 105228)) (.node (.leaf 107569) (.leaf 109905))))) (.node (.node (.node (.node (.leaf 112248) (.leaf 114583)) (.node (.leaf 116918) (.leaf 119248))) (.node (.node (.leaf 121584) (.leaf 123919)) (.node (.leaf 126253) (.leaf 128583)))) (.node (.node (.node (.leaf 130918) (.leaf 133249)) (.node (.leaf 135593) (.leaf 137929))) (.node (.node (.leaf 140264) (.leaf 142598)) (.node (.leaf 144924) (.leaf 147268)))))))

theorem progressionSegment00015_1_0000Check :
    progressionSegment00015_1_0000Tree.check indexedMarker 22201 1744 0 = true :=
  by decide

theorem progressionSegment00015_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 22201 1744 0 64 :=
  by simpa [progressionSegment00015_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00015_1_0000Check

def progressionSegment00015_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 149599) (.leaf 151938)) (.node (.leaf 154272) (.leaf 156598)))

theorem progressionSegment00015_1_0001Check :
    progressionSegment00015_1_0001Tree.check indexedMarker 22201 1744 64 = true :=
  by decide

theorem progressionSegment00015_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 22201 1744 64 68 :=
  by simpa [progressionSegment00015_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00015_1_0001Check

end Erdos848.GeneratedDiagonalCoverage
