import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00010_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node (.leaf 562) (.leaf 1551)) (.node (.leaf 2533) (.leaf 3529))) (.node (.node (.leaf 4521) (.leaf 5511)) (.node (.leaf 6497) (.leaf 7486)))) (.node (.node (.node (.leaf 8471) (.leaf 9467)) (.node (.leaf 10454) (.leaf 11442))) (.node (.node (.leaf 12437) (.leaf 13427)) (.node (.leaf 14420) (.leaf 15409))))) (.node (.node (.node (.node (.leaf 16393) (.leaf 17397)) (.node (.leaf 18380) (.leaf 19372))) (.node (.node (.leaf 20362) (.leaf 21360)) (.node (.leaf 22343) (.leaf 23328)))) (.node (.node (.node (.leaf 24312) (.leaf 25301)) (.node (.leaf 26295) (.leaf 27286))) (.node (.node (.leaf 28279) (.leaf 29262)) (.node (.leaf 30253) (.leaf 31239)))))) (.node (.node (.node (.node (.node (.leaf 32230) (.leaf 33222)) (.node (.leaf 34203) (.leaf 35196))) (.node (.node (.leaf 36183) (.leaf 37177)) (.node (.leaf 38155) (.leaf 39155)))) (.node (.node (.node (.leaf 40141) (.leaf 41133)) (.node (.leaf 42125) (.leaf 43114))) (.node (.node (.leaf 44097) (.leaf 45091)) (.node (.leaf 46085) (.leaf 47069))))) (.node (.node (.node (.node (.leaf 48058) (.leaf 49054)) (.node (.leaf 50045) (.leaf 51030))) (.node (.node (.leaf 52017) (.leaf 53005)) (.node (.leaf 53995) (.leaf 54987)))) (.node (.node (.node (.leaf 55975) (.leaf 56962)) (.node (.leaf 57950) (.leaf 58945))) (.node (.node (.leaf 59929) (.leaf 60919)) (.node (.leaf 61913) (.leaf 62904))))))) (.node (.node (.node (.node (.node (.node (.leaf 63895) (.leaf 64876)) (.node (.leaf 65874) (.leaf 66856))) (.node (.node (.leaf 67845) (.leaf 68836)) (.node (.leaf 69825) (.leaf 70815)))) (.node (.node (.node (.leaf 71801) (.leaf 72793)) (.node (.leaf 73779) (.leaf 74768))) (.node (.node (.leaf 75759) (.leaf 76748)) (.node (.leaf 77735) (.leaf 78724))))) (.node (.node (.node (.node (.leaf 79718) (.leaf 80702)) (.node (.leaf 81690) (.leaf 82676))) (.node (.node (.leaf 83675) (.leaf 84664)) (.node (.leaf 85654) (.leaf 86639)))) (.node (.node (.node (.leaf 87628) (.leaf 88614)) (.node (.leaf 89598) (.leaf 90592))) (.node (.node (.leaf 91576) (.leaf 92569)) (.node (.leaf 93560) (.leaf 94553)))))) (.node (.node (.node (.node (.node (.leaf 95541) (.leaf 96528)) (.node (.leaf 97517) (.leaf 98505))) (.node (.node (.leaf 99490) (.leaf 100481)) (.node (.leaf 101478) (.leaf 102471)))) (.node (.node (.node (.leaf 103457) (.leaf 104439)) (.node (.leaf 105435) (.leaf 106429))) (.node (.node (.leaf 107414) (.leaf 108406)) (.node (.leaf 109396) (.leaf 110384))))) (.node (.node (.node (.node (.leaf 111376) (.leaf 112370)) (.node (.leaf 113358) (.leaf 114348))) (.node (.node (.leaf 115339) (.leaf 116336)) (.node (.leaf 117321) (.leaf 118312)))) (.node (.node (.node (.leaf 119298) (.leaf 120284)) (.node (.leaf 121278) (.leaf 122264))) (.node (.node (.leaf 123253) (.leaf 124242)) (.node (.leaf 125235) (.leaf 126222))))))))

theorem progressionSegment00010_1_0000Check :
    progressionSegment00010_1_0000Tree.check indexedMarker 9409 5357 0 = true :=
  by decide

theorem progressionSegment00010_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 9409 5357 0 128 :=
  by simpa [progressionSegment00010_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00010_1_0000Check

end Erdos848.GeneratedDiagonalCoverage
