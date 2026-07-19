import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00000_2_0117Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 157483) (.leaf 157486)) (.node (.leaf 157488) (.leaf 157490))) (.node (.node (.leaf 157493) (.leaf 157495)) (.node (.leaf 157498) (.leaf 157502)))) (.node (.node (.node (.leaf 157505) (.leaf 157507)) (.node (.leaf 157511) (.leaf 157513))) (.node (.node (.leaf 157516) (.leaf 157519)) (.node (.leaf 157522) (.leaf 157524))))) (.node (.node (.node (.node (.leaf 157526) (.leaf 157528)) (.node (.leaf 157530) (.leaf 157533))) (.node (.node (.leaf 157536) (.leaf 157539)) (.node (.leaf 157542) (.leaf 157544)))) (.node (.node (.node (.leaf 157547) (.leaf 157550)) (.node (.leaf 157553) (.leaf 157556))) (.node (.node (.leaf 157558) (.leaf 157560)) (.node (.leaf 157562) (.leaf 157564)))))) (.node (.node (.node (.node (.node (.leaf 157566) (.leaf 157570)) (.node (.leaf 157573) (.leaf 157575))) (.node (.node (.leaf 157578) (.leaf 157580)) (.node (.leaf 157582) (.leaf 157584)))) (.node (.node (.node (.leaf 157586) (.leaf 157590)) (.node (.leaf 157592) (.leaf 157594))) (.node (.node (.leaf 157598) (.leaf 157600)) (.node (.leaf 157603) (.leaf 157607))))) (.node (.node (.node (.node (.leaf 157609) (.leaf 157611)) (.node (.leaf 157613) (.leaf 157616))) (.node (.node (.leaf 157618) (.leaf 157622)) (.node (.leaf 157625) (.leaf 157627)))) (.node (.node (.node (.leaf 157630) (.leaf 157632)) (.node (.leaf 157634) (.leaf 157638))) (.node (.node (.leaf 157641) (.leaf 157644)) (.node (.leaf 157646) (.leaf 157649)))))))

theorem progressionSegment00000_2_0117Check :
    progressionSegment00000_2_0117Tree.check indexedMarker 25 18 59904 = true :=
  by decide

theorem progressionSegment00000_2_0117 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 25 18 59904 59968 :=
  by simpa [progressionSegment00000_2_0117Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00000_2_0117Check

def progressionSegment00000_2_0118Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 157651) (.leaf 157653)) (.node (.leaf 157655) (.leaf 157658))) (.node (.node (.leaf 157662) (.leaf 157664)) (.node (.leaf 157666) (.leaf 157669)))) (.node (.node (.node (.leaf 157671) (.leaf 157674)) (.node (.leaf 157678) (.leaf 157680))) (.node (.node (.leaf 157683) (.leaf 157685)) (.node (.leaf 157688) (.leaf 157691))))) (.node (.node (.node (.node (.leaf 157693) (.leaf 157696)) (.node (.leaf 157699) (.leaf 157701))) (.node (.node (.leaf 157703) (.leaf 157705)) (.node (.leaf 157707) (.leaf 157710)))) (.node (.node (.node (.leaf 157713) (.leaf 157716)) (.node (.leaf 157718) (.leaf 157721))) (.node (.node (.leaf 157723) (.leaf 157725)) (.node (.leaf 157729) (.leaf 157732))))))

theorem progressionSegment00000_2_0118Check :
    progressionSegment00000_2_0118Tree.check indexedMarker 25 18 59968 = true :=
  by decide

theorem progressionSegment00000_2_0118 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 25 18 59968 60000 :=
  by simpa [progressionSegment00000_2_0118Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00000_2_0118Check

end Erdos848.GeneratedDiagonalCoverage
