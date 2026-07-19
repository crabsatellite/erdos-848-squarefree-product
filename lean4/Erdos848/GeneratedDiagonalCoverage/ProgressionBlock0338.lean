import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00011_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node (.leaf 53) (.leaf 1122)) (.node (.leaf 2193) (.leaf 3263))) (.node (.node (.leaf 4345) (.leaf 5421)) (.node (.leaf 6485) (.leaf 7561)))) (.node (.node (.node (.leaf 8634) (.leaf 9711)) (.node (.leaf 10776) (.leaf 11853))) (.node (.node (.leaf 12928) (.leaf 13999)) (.node (.leaf 15075) (.leaf 16137))))) (.node (.node (.node (.node (.leaf 17227) (.leaf 18295)) (.node (.leaf 19375) (.leaf 20448))) (.node (.node (.leaf 21526) (.leaf 22595)) (.node (.leaf 23664) (.leaf 24732)))) (.node (.node (.node (.leaf 25806) (.leaf 26875)) (.node (.leaf 27958) (.leaf 29024))) (.node (.node (.leaf 30096) (.leaf 31165)) (.node (.leaf 32242) (.leaf 33314)))))) (.node (.node (.node (.node (.node (.leaf 34385) (.leaf 35457)) (.node (.leaf 36523) (.leaf 37601))) (.node (.node (.leaf 38671) (.leaf 39747)) (.node (.leaf 40822) (.leaf 41891)))) (.node (.node (.node (.leaf 42963) (.leaf 44031)) (.node (.leaf 45114) (.leaf 46191))) (.node (.node (.leaf 47256) (.leaf 48336)) (.node (.leaf 49416) (.leaf 50481))))) (.node (.node (.node (.node (.leaf 51546) (.leaf 52615)) (.node (.leaf 53688) (.leaf 54768))) (.node (.node (.leaf 55838) (.leaf 56906)) (.node (.leaf 57980) (.leaf 59060)))) (.node (.node (.node (.leaf 60125) (.leaf 61206)) (.node (.leaf 62273) (.leaf 63353))) (.node (.node (.leaf 64421) (.leaf 65489)) (.node (.leaf 66565) (.leaf 67634))))))) (.node (.node (.node (.node (.node (.node (.leaf 68705) (.leaf 69782)) (.node (.leaf 70858) (.leaf 71930))) (.node (.node (.leaf 73001) (.leaf 74073)) (.node (.leaf 75141) (.leaf 76213)))) (.node (.node (.node (.leaf 77290) (.leaf 78358)) (.node (.leaf 79433) (.leaf 80503))) (.node (.node (.leaf 81574) (.leaf 82644)) (.node (.leaf 83723) (.leaf 84798))))) (.node (.node (.node (.node (.leaf 85871) (.leaf 86945)) (.node (.leaf 88011) (.leaf 89074))) (.node (.node (.leaf 90155) (.leaf 91222)) (.node (.leaf 92295) (.leaf 93364)))) (.node (.node (.node (.leaf 94446) (.leaf 95516)) (.node (.leaf 96589) (.leaf 97661))) (.node (.node (.leaf 98733) (.leaf 99801)) (.node (.leaf 100881) (.leaf 101956)))))) (.node (.node (.node (.node (.node (.leaf 103034) (.leaf 104095)) (.node (.leaf 105164) (.leaf 106244))) (.node (.node (.leaf 107321) (.leaf 108389)) (.node (.leaf 109465) (.leaf 110540)))) (.node (.node (.node (.leaf 111617) (.leaf 112690)) (.node (.leaf 113760) (.leaf 114836))) (.node (.node (.leaf 115913) (.leaf 116983)) (.node (.leaf 118056) (.leaf 119130))))) (.node (.node (.node (.node (.leaf 120197) (.leaf 121275)) (.node (.leaf 122343) (.leaf 123419))) (.node (.node (.leaf 124492) (.leaf 125564)) (.node (.leaf 126633) (.leaf 127708)))) (.node (.node (.node (.leaf 128776) (.leaf 129850)) (.node (.leaf 130922) (.leaf 131994))) (.node (.node (.leaf 133065) (.leaf 134143)) (.node (.leaf 135214) (.leaf 136298))))))))

theorem progressionSegment00011_1_0000Check :
    progressionSegment00011_1_0000Tree.check indexedMarker 10201 515 0 = true :=
  by decide

theorem progressionSegment00011_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 10201 515 0 128 :=
  by simpa [progressionSegment00011_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00011_1_0000Check

end Erdos848.GeneratedDiagonalCoverage
