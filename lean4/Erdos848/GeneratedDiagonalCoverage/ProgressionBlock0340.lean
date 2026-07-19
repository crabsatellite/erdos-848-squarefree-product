import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00011_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node (.leaf 1015) (.leaf 2087)) (.node (.leaf 3156) (.leaf 4236))) (.node (.node (.leaf 5307) (.leaf 6377)) (.node (.leaf 7451) (.leaf 8524)))) (.node (.node (.node (.leaf 9603) (.leaf 10671)) (.node (.leaf 11740) (.leaf 12817))) (.node (.node (.leaf 13891) (.leaf 14971)) (.node (.leaf 16030) (.leaf 17116))))) (.node (.node (.node (.node (.leaf 18190) (.leaf 19263)) (.node (.leaf 20336) (.leaf 21417))) (.node (.node (.leaf 22487) (.leaf 23553)) (.node (.leaf 24624) (.leaf 25698)))) (.node (.node (.node (.leaf 26766) (.leaf 27845)) (.node (.leaf 28916) (.leaf 29988))) (.node (.node (.leaf 31055) (.leaf 32132)) (.node (.leaf 33207) (.leaf 34274)))))) (.node (.node (.node (.node (.node (.leaf 35349) (.leaf 36416)) (.node (.leaf 37489) (.leaf 38564))) (.node (.node (.leaf 39642) (.leaf 40713)) (.node (.leaf 41780) (.leaf 42853)))) (.node (.node (.node (.leaf 43927) (.leaf 45001)) (.node (.leaf 46078) (.leaf 47148))) (.node (.node (.leaf 48227) (.leaf 49302)) (.node (.leaf 50368) (.leaf 51439))))) (.node (.node (.node (.node (.leaf 52507) (.leaf 53581)) (.node (.leaf 54658) (.leaf 55730))) (.node (.node (.leaf 56800) (.leaf 57868)) (.node (.leaf 58951) (.leaf 60016)))) (.node (.node (.node (.leaf 61094) (.leaf 62167)) (.node (.leaf 63242) (.leaf 64312))) (.node (.node (.leaf 65383) (.leaf 66456)) (.node (.leaf 67527) (.leaf 68597))))))) (.node (.node (.node (.node (.node (.node (.leaf 69673) (.leaf 70747)) (.node (.leaf 71822) (.leaf 72891))) (.node (.node (.leaf 73960) (.leaf 75037)) (.node (.leaf 76103) (.leaf 77181)))) (.node (.node (.node (.leaf 78249) (.leaf 79323)) (.node (.leaf 80397) (.leaf 81461))) (.node (.node (.leaf 82536) (.leaf 83614)) (.node (.leaf 84688) (.leaf 85760))))) (.node (.node (.node (.node (.leaf 86831) (.leaf 87904)) (.node (.leaf 88972) (.leaf 90045))) (.node (.node (.leaf 91113) (.leaf 92184)) (.node (.leaf 93258) (.leaf 94338)))) (.node (.node (.node (.leaf 95405) (.leaf 96481)) (.node (.leaf 97554) (.leaf 98624))) (.node (.node (.leaf 99691) (.leaf 100774)) (.node (.leaf 101844) (.leaf 102921)))))) (.node (.node (.node (.node (.node (.leaf 103988) (.leaf 105054)) (.node (.leaf 106140) (.leaf 107211))) (.node (.node (.leaf 108282) (.leaf 109357)) (.node (.leaf 110432) (.leaf 111505)))) (.node (.node (.node (.leaf 112580) (.leaf 113649)) (.node (.leaf 114728) (.leaf 115805))) (.node (.node (.leaf 116875) (.leaf 117947)) (.node (.leaf 119021) (.leaf 120087))))) (.node (.node (.node (.node (.leaf 121163) (.leaf 122235)) (.node (.leaf 123310) (.leaf 124383))) (.node (.node (.leaf 125455) (.leaf 126524)) (.node (.leaf 127594) (.leaf 128665)))) (.node (.node (.node (.leaf 129746) (.leaf 130815)) (.node (.leaf 131887) (.leaf 132955))) (.node (.node (.leaf 134032) (.leaf 135107)) (.node (.leaf 136185) (.leaf 137264))))))))

theorem progressionSegment00011_2_0000Check :
    progressionSegment00011_2_0000Tree.check indexedMarker 10201 9686 0 = true :=
  by decide

theorem progressionSegment00011_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 10201 9686 0 128 :=
  by simpa [progressionSegment00011_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00011_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
