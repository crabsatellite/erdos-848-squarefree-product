import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00021_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node (.leaf 414) (.leaf 1733)) (.node (.leaf 3056) (.leaf 4381))) (.node (.node (.leaf 5704) (.leaf 7020)) (.node (.leaf 8338) (.leaf 9655)))) (.node (.node (.node (.leaf 10980) (.leaf 12293)) (.node (.leaf 13610) (.leaf 14936))) (.node (.node (.leaf 16253) .skip) (.node (.leaf 18882) (.leaf 20206))))) (.node (.node (.node (.node (.leaf 21515) .skip) (.node (.leaf 24161) (.leaf 25478))) (.node (.node (.leaf 26806) (.leaf 28126)) (.node (.leaf 29443) (.leaf 30755)))) (.node (.node (.node (.leaf 32079) (.leaf 33403)) (.node (.leaf 34720) (.leaf 36030))) (.node (.node (.leaf 37358) (.leaf 38676)) (.node (.leaf 40008) (.leaf 41321)))))) (.node (.node (.node (.node (.node (.leaf 42649) (.leaf 43971)) (.node (.leaf 45288) (.leaf 46607))) (.node (.node (.leaf 47917) (.leaf 49229)) (.node .skip (.leaf 51871)))) (.node (.node (.node (.leaf 53178) (.leaf 54490)) (.node .skip (.leaf 57141))) (.node (.node (.leaf 58466) (.leaf 59778)) (.node (.leaf 61104) (.leaf 62421))))) (.node (.node (.node (.node (.leaf 63750) (.leaf 65074)) (.node (.leaf 66381) (.leaf 67708))) (.node (.node (.leaf 69029) (.leaf 70334)) (.node (.leaf 71659) (.leaf 72982)))) (.node (.node (.node (.leaf 74309) (.leaf 75630)) (.node (.leaf 76947) (.leaf 78266))) (.node (.node (.leaf 79588) (.leaf 80920)) (.node (.leaf 82240) .skip)))))) (.node (.node (.node (.node (.node (.node (.leaf 84881) (.leaf 86194)) (.node (.leaf 87516) .skip)) (.node (.node (.leaf 90159) (.leaf 91468)) (.node (.leaf 92780) (.leaf 94113)))) (.node (.node (.node (.leaf 95424) (.leaf 96746)) (.node (.leaf 98059) (.leaf 99377))) (.node (.node (.leaf 100693) (.leaf 102010)) (.node (.leaf 103333) (.leaf 104651))))) (.node (.node (.node (.node (.leaf 105975) (.leaf 107294)) (.node (.leaf 108609) (.leaf 109939))) (.node (.node (.leaf 111259) (.leaf 112580)) (.node (.leaf 113882) (.leaf 115213)))) (.node (.node (.node .skip (.leaf 117848)) (.node (.leaf 119166) (.leaf 120487))) (.node (.node .skip (.leaf 123130)) (.node (.leaf 124437) (.leaf 125768)))))) (.node (.node (.node (.node (.node (.leaf 127089) (.leaf 128410)) (.node (.leaf 129726) (.leaf 131052))) (.node (.node (.leaf 132362) (.leaf 133688)) (.node (.leaf 135001) (.leaf 136331)))) (.node (.node (.node (.leaf 137651) (.leaf 138986)) (.node (.leaf 140301) (.leaf 141614))) (.node (.node (.leaf 142932) (.leaf 144256)) (.node (.leaf 145564) (.leaf 146888))))) (.node (.node (.node (.node (.leaf 148208) .skip) (.node (.leaf 150850) (.leaf 152158))) (.node (.node (.leaf 153486) .skip) (.node (.leaf 156123) (.leaf 157440)))) (.node (.node (.node (.leaf 158763) (.leaf 160078)) (.node (.leaf 161407) (.leaf 162721))) (.node (.node (.leaf 164049) (.leaf 165370)) (.node (.leaf 166673) (.leaf 168010))))))))

theorem progressionSegment00021_1_0000Check :
    progressionSegment00021_1_0000Tree.check indexedMarker 52441 16610 0 = true :=
  by decide

theorem progressionSegment00021_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 52441 16610 0 128 :=
  by simpa [progressionSegment00021_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00021_1_0000Check

def progressionSegment00021_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 169326) (.leaf 170656)) (.node (.leaf 171967) (.leaf 173285))) (.node (.node (.leaf 174596) (.leaf 175915)) (.node (.leaf 177226) (.leaf 178538)))) (.node (.node (.node (.leaf 179863) (.leaf 181179)) (.node .skip (.leaf 183818))) (.node (.node (.leaf 185142) (.leaf 186470)) (.node .skip (.leaf 189097))))) (.node (.node (.node (.node (.leaf 190423) (.leaf 191743)) (.node (.leaf 193061) (.leaf 194371))) (.node (.node (.leaf 195698) (.leaf 197014)) (.node (.leaf 198334) (.leaf 199647)))) (.node (.node (.node (.leaf 200957) (.leaf 202279)) (.node (.leaf 203585) (.leaf 204910))) (.node (.node (.leaf 206239) (.leaf 207565)) (.node (.leaf 208873) (.leaf 210196))))))

theorem progressionSegment00021_1_0001Check :
    progressionSegment00021_1_0001Tree.check indexedMarker 52441 16610 128 = true :=
  by decide

theorem progressionSegment00021_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 52441 16610 128 160 :=
  by simpa [progressionSegment00021_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00021_1_0001Check

def progressionSegment00021_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 211520) (.leaf 212838)) (.node (.leaf 214154) .skip)) (.node (.node (.leaf 216793) (.leaf 218109)) (.node (.leaf 219425) .skip))) (.node (.node (.node (.leaf 222073) (.leaf 223385)) (.node (.leaf 224704) (.leaf 226014))) (.node (.node (.leaf 227341) (.leaf 228662)) (.node (.leaf 229983) (.leaf 231301)))))

theorem progressionSegment00021_1_0002Check :
    progressionSegment00021_1_0002Tree.check indexedMarker 52441 16610 160 = true :=
  by decide

theorem progressionSegment00021_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 52441 16610 160 176 :=
  by simpa [progressionSegment00021_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00021_1_0002Check

def progressionSegment00021_1_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 232619) (.leaf 233939)) (.node (.leaf 235254) (.leaf 236570))) (.node (.node (.leaf 237895) (.leaf 239219)) (.node (.leaf 240525) (.leaf 241844))))

theorem progressionSegment00021_1_0003Check :
    progressionSegment00021_1_0003Tree.check indexedMarker 52441 16610 176 = true :=
  by decide

theorem progressionSegment00021_1_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 52441 16610 176 184 :=
  by simpa [progressionSegment00021_1_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00021_1_0003Check

def progressionSegment00021_1_0004Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 243178) (.leaf 244486)) (.node (.leaf 245805) (.leaf 247133)))

theorem progressionSegment00021_1_0004Check :
    progressionSegment00021_1_0004Tree.check indexedMarker 52441 16610 184 = true :=
  by decide

theorem progressionSegment00021_1_0004 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 52441 16610 184 188 :=
  by simpa [progressionSegment00021_1_0004Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00021_1_0004Check

def progressionSegment00021_1_0005Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node .skip (.leaf 249768))

theorem progressionSegment00021_1_0005Check :
    progressionSegment00021_1_0005Tree.check indexedMarker 52441 16610 188 = true :=
  by decide

theorem progressionSegment00021_1_0005 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 52441 16610 188 190 :=
  by simpa [progressionSegment00021_1_0005Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00021_1_0005Check

def progressionSegment00021_1_0006Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 251083)

theorem progressionSegment00021_1_0006Check :
    progressionSegment00021_1_0006Tree.check indexedMarker 52441 16610 190 = true :=
  by decide

theorem progressionSegment00021_1_0006 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 52441 16610 190 191 :=
  by simpa [progressionSegment00021_1_0006Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00021_1_0006Check

def progressionSegment00021_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node (.leaf 898) (.leaf 2217)) (.node (.leaf 3545) (.leaf 4867))) (.node (.node (.leaf 6184) (.leaf 7501)) (.node (.leaf 8813) .skip))) (.node (.node (.node (.leaf 11461) (.leaf 12773)) (.node (.leaf 14098) .skip)) (.node (.node (.leaf 16732) (.leaf 18052)) (.node (.leaf 19365) (.leaf 20686))))) (.node (.node (.node (.node (.leaf 21996) (.leaf 23318)) (.node (.leaf 24646) (.leaf 25959))) (.node (.node (.leaf 27283) (.leaf 28608)) (.node (.leaf 29929) (.leaf 31240)))) (.node (.node (.node (.leaf 32569) (.leaf 33885)) (.node (.leaf 35207) (.leaf 36523))) (.node (.node (.leaf 37841) (.leaf 39164)) (.node (.leaf 40497) (.leaf 41811)))))) (.node (.node (.node (.node (.node .skip (.leaf 44452)) (.node (.leaf 45776) (.leaf 47090))) (.node (.node .skip (.leaf 49708)) (.node (.leaf 51040) (.leaf 52352)))) (.node (.node (.node (.leaf 53662) (.leaf 54982)) (.node (.leaf 56308) (.leaf 57633))) (.node (.node (.leaf 58940) (.leaf 60258)) (.node (.leaf 61584) (.leaf 62910))))) (.node (.node (.node (.node (.leaf 64226) (.leaf 65556)) (.node (.leaf 66876) (.leaf 68192))) (.node (.node (.leaf 69511) (.leaf 70820)) (.node (.leaf 72143) (.leaf 73472)))) (.node (.node (.node (.leaf 74787) .skip) (.node (.leaf 77434) (.leaf 78751))) (.node (.node (.leaf 80071) .skip) (.node (.leaf 82727) (.leaf 84046))))))) (.node (.node (.node (.node (.node (.node (.leaf 85362) (.leaf 86681)) (.node (.leaf 88004) (.leaf 89308))) (.node (.node (.leaf 90629) (.leaf 91955)) (.node (.leaf 93275) (.leaf 94588)))) (.node (.node (.node (.leaf 95904) (.leaf 97223)) (.node (.leaf 98534) (.leaf 99863))) (.node (.node (.leaf 101167) (.leaf 102493)) (.node (.leaf 103821) (.leaf 105139))))) (.node (.node (.node (.node (.leaf 106453) (.leaf 107779)) (.node .skip (.leaf 110423))) (.node (.node (.leaf 111741) (.leaf 113059)) (.node .skip (.leaf 115698)))) (.node (.node (.node (.leaf 117013) (.leaf 118340)) (.node (.leaf 119655) (.leaf 120973))) (.node (.node (.leaf 122296) (.leaf 123616)) (.node (.leaf 124923) (.leaf 126255)))))) (.node (.node (.node (.node (.node (.leaf 127565) (.leaf 128891)) (.node (.leaf 130223) (.leaf 131535))) (.node (.node (.leaf 132834) (.leaf 134165)) (.node (.leaf 135487) (.leaf 136814)))) (.node (.node (.node (.leaf 138140) (.leaf 139462)) (.node (.leaf 140783) .skip)) (.node (.node (.leaf 143423) (.leaf 144731)) (.node (.leaf 146057) .skip)))) (.node (.node (.node (.node (.leaf 148691) (.leaf 150011)) (.node (.leaf 151327) (.leaf 152653))) (.node (.node (.leaf 153969) (.leaf 155290)) (.node (.leaf 156612) (.leaf 157931)))) (.node (.node (.node (.leaf 159250) (.leaf 160567)) (.node (.leaf 161893) (.leaf 163212))) (.node (.node (.leaf 164529) (.leaf 165847)) (.node (.leaf 167165) (.leaf 168488))))))))

theorem progressionSegment00021_2_0000Check :
    progressionSegment00021_2_0000Tree.check indexedMarker 52441 35831 0 = true :=
  by decide

theorem progressionSegment00021_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 52441 35831 0 128 :=
  by simpa [progressionSegment00021_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00021_2_0000Check

def progressionSegment00021_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 169811) (.leaf 171127)) (.node (.leaf 172449) (.leaf 173768))) (.node (.node .skip (.leaf 176388)) (.node (.leaf 177706) (.leaf 179030)))) (.node (.node (.node .skip (.leaf 181662)) (.node (.leaf 182985) (.leaf 184298))) (.node (.node (.leaf 185627) (.leaf 186944)) (.node (.leaf 188258) (.leaf 189579))))) (.node (.node (.node (.node (.leaf 190910) (.leaf 192225)) (.node (.leaf 193552) (.leaf 194862))) (.node (.node (.leaf 196176) (.leaf 197498)) (.node (.leaf 198817) (.leaf 200128)))) (.node (.node (.node (.leaf 201436) (.leaf 202752)) (.node (.leaf 204072) (.leaf 205393))) (.node (.node (.leaf 206723) .skip) (.node (.leaf 209366) (.leaf 210672))))))

theorem progressionSegment00021_2_0001Check :
    progressionSegment00021_2_0001Tree.check indexedMarker 52441 35831 128 = true :=
  by decide

theorem progressionSegment00021_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 52441 35831 128 160 :=
  by simpa [progressionSegment00021_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00021_2_0001Check

def progressionSegment00021_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 212000) .skip) (.node (.leaf 214639) (.leaf 215951))) (.node (.node (.leaf 217273) (.leaf 218592)) (.node (.leaf 219906) (.leaf 221228)))) (.node (.node (.node (.leaf 222547) (.leaf 223859)) (.node (.leaf 225180) (.leaf 226506))) (.node (.node (.leaf 227826) (.leaf 229150)) (.node (.leaf 230469) (.leaf 231781)))))

theorem progressionSegment00021_2_0002Check :
    progressionSegment00021_2_0002Tree.check indexedMarker 52441 35831 160 = true :=
  by decide

theorem progressionSegment00021_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 52441 35831 160 176 :=
  by simpa [progressionSegment00021_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00021_2_0002Check

def progressionSegment00021_2_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 233104) (.leaf 234418)) (.node (.leaf 235736) (.leaf 237060))) (.node (.node (.leaf 238375) (.leaf 239696)) (.node .skip (.leaf 242330))))

theorem progressionSegment00021_2_0003Check :
    progressionSegment00021_2_0003Tree.check indexedMarker 52441 35831 176 = true :=
  by decide

theorem progressionSegment00021_2_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 52441 35831 176 184 :=
  by simpa [progressionSegment00021_2_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00021_2_0003Check

def progressionSegment00021_2_0004Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 243657) (.leaf 244969)) (.node .skip (.leaf 247620)))

theorem progressionSegment00021_2_0004Check :
    progressionSegment00021_2_0004Tree.check indexedMarker 52441 35831 184 = true :=
  by decide

theorem progressionSegment00021_2_0004 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 52441 35831 184 188 :=
  by simpa [progressionSegment00021_2_0004Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00021_2_0004Check

def progressionSegment00021_2_0005Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 248932) (.leaf 250256))

theorem progressionSegment00021_2_0005Check :
    progressionSegment00021_2_0005Tree.check indexedMarker 52441 35831 188 = true :=
  by decide

theorem progressionSegment00021_2_0005 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 52441 35831 188 190 :=
  by simpa [progressionSegment00021_2_0005Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00021_2_0005Check

def progressionSegment00021_2_0006Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 251571)

theorem progressionSegment00021_2_0006Check :
    progressionSegment00021_2_0006Tree.check indexedMarker 52441 35831 190 = true :=
  by decide

theorem progressionSegment00021_2_0006 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 52441 35831 190 191 :=
  by simpa [progressionSegment00021_2_0006Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00021_2_0006Check

def progressionSegment00022_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node (.leaf 681) (.leaf 2049)) (.node (.leaf 3423) (.leaf 4795))) (.node (.node (.leaf 6159) (.leaf 7524)) (.node (.leaf 8883) (.leaf 10249)))) (.node (.node (.node (.leaf 11624) (.leaf 12981)) (.node (.leaf 14348) (.leaf 15721))) (.node (.node (.leaf 17086) (.leaf 18443)) (.node (.leaf 19802) (.leaf 21166))))) (.node (.node (.node (.node (.leaf 22534) .skip) (.node .skip (.leaf 26637))) (.node (.node (.leaf 28014) (.leaf 29370)) (.node (.leaf 30733) (.leaf 32106)))) (.node (.node (.node (.leaf 33468) (.leaf 34838)) (.node (.leaf 36200) (.leaf 37568))) (.node (.node (.leaf 38934) (.leaf 40310)) (.node (.leaf 41670) (.leaf 43038)))))) (.node (.node (.node (.node (.node (.leaf 44408) (.leaf 45781)) (.node (.leaf 47141) (.leaf 48492))) (.node (.node (.leaf 49859) (.leaf 51229)) (.node (.leaf 52586) (.leaf 53941)))) (.node (.node (.node (.leaf 55314) (.leaf 56674)) (.node .skip .skip)) (.node (.node (.leaf 60778) (.leaf 62146)) (.node (.leaf 63512) (.leaf 64892))))) (.node (.node (.node (.node (.leaf 66246) (.leaf 67618)) (.node (.leaf 68985) (.leaf 70339))) (.node (.node (.leaf 71714) (.leaf 73080)) (.node (.leaf 74450) (.leaf 75820)))) (.node (.node (.node (.leaf 77190) (.leaf 78551)) (.node (.leaf 79914) (.leaf 81293))) (.node (.node (.leaf 82664) (.leaf 84033)) (.node (.leaf 85396) (.leaf 86758))))))) (.node (.node (.node (.node (.node (.node (.leaf 88132) (.leaf 89485)) (.node (.leaf 90850) .skip)) (.node (.node .skip (.leaf 94943)) (.node (.leaf 96307) (.leaf 97674)))) (.node (.node (.node (.leaf 99037) (.leaf 100404)) (.node (.leaf 101766) (.leaf 103139))) (.node (.node (.leaf 104494) (.leaf 105866)) (.node (.leaf 107234) (.leaf 108596))))) (.node (.node (.node (.node (.leaf 109971) (.leaf 111344)) (.node (.leaf 112701) (.leaf 114062))) (.node (.node (.leaf 115437) (.leaf 116798)) (.node (.leaf 118169) (.leaf 119534)))) (.node (.node (.node (.leaf 120898) (.leaf 122258)) (.node (.leaf 123633) (.leaf 124993))) (.node (.node .skip .skip) (.node (.leaf 129089) (.leaf 130469)))))) (.node (.node (.node (.node (.node (.leaf 131821) (.leaf 133187)) (.node (.leaf 134548) (.leaf 135933))) (.node (.node (.leaf 137294) (.leaf 138678)) (.node (.leaf 140035) (.leaf 141400)))) (.node (.node (.node (.leaf 142768) (.leaf 144129)) (.node (.leaf 145488) (.leaf 146854))) (.node (.node (.leaf 148226) (.leaf 149587)) (.node (.leaf 150961) (.leaf 152314))))) (.node (.node (.node (.node (.leaf 153696) (.leaf 155048)) (.node (.leaf 156418) (.leaf 157784))) (.node (.node (.leaf 159154) .skip) (.node .skip (.leaf 163258)))) (.node (.node (.node (.leaf 164617) (.leaf 165983)) (.node (.leaf 167349) (.leaf 168715))) (.node (.node (.leaf 170093) (.leaf 171457)) (.node (.leaf 172823) (.leaf 174182))))))))

theorem progressionSegment00022_1_0000Check :
    progressionSegment00022_1_0000Tree.check indexedMarker 54289 27405 0 = true :=
  by decide

theorem progressionSegment00022_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 54289 27405 0 128 :=
  by simpa [progressionSegment00022_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00022_1_0000Check

def progressionSegment00022_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 175541) (.leaf 176902)) (.node (.leaf 178264) (.leaf 179626))) (.node (.node (.leaf 180989) (.leaf 182356)) (.node (.leaf 183719) (.leaf 185093)))) (.node (.node (.node (.leaf 186465) (.leaf 187819)) (.node (.leaf 189188) (.leaf 190563))) (.node (.node (.leaf 191927) (.leaf 193291)) (.node .skip .skip)))) (.node (.node (.node (.node (.leaf 197382) (.leaf 198748)) (.node (.leaf 200109) (.leaf 201465))) (.node (.node (.leaf 202826) (.leaf 204191)) (.node (.leaf 205567) (.leaf 206934)))) (.node (.node (.node (.leaf 208307) (.leaf 209669)) (.node (.leaf 211033) (.leaf 212400))) (.node (.node (.leaf 213769) (.leaf 215128)) (.node (.leaf 216486) (.leaf 217859))))))

theorem progressionSegment00022_1_0001Check :
    progressionSegment00022_1_0001Tree.check indexedMarker 54289 27405 128 = true :=
  by decide

theorem progressionSegment00022_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 54289 27405 128 160 :=
  by simpa [progressionSegment00022_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00022_1_0001Check

def progressionSegment00022_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 219217) (.leaf 220579)) (.node (.leaf 221958) (.leaf 223320))) (.node (.node (.leaf 224684) (.leaf 226042)) (.node (.leaf 227418) .skip))) (.node (.node (.node .skip (.leaf 231517)) (.node (.leaf 232877) (.leaf 234246))) (.node (.node (.leaf 235601) (.leaf 236977)) (.node (.leaf 238334) (.leaf 239703)))))

theorem progressionSegment00022_1_0002Check :
    progressionSegment00022_1_0002Tree.check indexedMarker 54289 27405 160 = true :=
  by decide

theorem progressionSegment00022_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 54289 27405 160 176 :=
  by simpa [progressionSegment00022_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00022_1_0002Check

def progressionSegment00022_1_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 241064) (.leaf 242438)) (.node (.leaf 243803) (.leaf 245171))) (.node (.node (.leaf 246540) (.leaf 247906)) (.node (.leaf 249265) (.leaf 250633))))

theorem progressionSegment00022_1_0003Check :
    progressionSegment00022_1_0003Tree.check indexedMarker 54289 27405 176 = true :=
  by decide

theorem progressionSegment00022_1_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 54289 27405 176 184 :=
  by simpa [progressionSegment00022_1_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00022_1_0003Check

def progressionSegment00022_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node (.leaf 667) (.leaf 2038)) (.node (.leaf 3410) (.leaf 4781))) (.node (.node (.leaf 6146) (.leaf 7509)) (.node .skip .skip))) (.node (.node (.node (.leaf 11610) (.leaf 12968)) (.node (.leaf 14334) (.leaf 15705))) (.node (.node (.leaf 17072) (.leaf 18429)) (.node (.leaf 19785) (.leaf 21153))))) (.node (.node (.node (.node (.leaf 22519) (.leaf 23879)) (.node (.leaf 25254) (.leaf 26622))) (.node (.node (.leaf 27997) (.leaf 29358)) (.node (.leaf 30720) (.leaf 32087)))) (.node (.node (.node (.leaf 33454) (.leaf 34824)) (.node (.leaf 36185) (.leaf 37553))) (.node (.node (.leaf 38918) (.leaf 40296)) (.node (.leaf 41660) .skip))))) (.node (.node (.node (.node (.node .skip (.leaf 45766)) (.node (.leaf 47126) (.leaf 48478))) (.node (.node (.leaf 49845) (.leaf 51213)) (.node (.leaf 52573) (.leaf 53929)))) (.node (.node (.node (.leaf 55298) (.leaf 56664)) (.node (.leaf 58043) (.leaf 59398))) (.node (.node (.leaf 60762) (.leaf 62133)) (.node (.leaf 63497) (.leaf 64882))))) (.node (.node (.node (.node (.leaf 66232) (.leaf 67604)) (.node (.leaf 68972) (.leaf 70326))) (.node (.node (.leaf 71698) (.leaf 73068)) (.node (.leaf 74434) (.leaf 75806)))) (.node (.node (.node .skip .skip) (.node (.leaf 79902) (.leaf 81280))) (.node (.node (.leaf 82651) (.leaf 84014)) (.node (.leaf 85384) (.leaf 86745))))))) (.node (.node (.node (.node (.node (.node (.leaf 88119) (.leaf 89473)) (.node (.leaf 90833) (.leaf 92197))) (.node (.node (.leaf 93570) (.leaf 94930)) (.node (.leaf 96294) (.leaf 97659)))) (.node (.node (.node (.leaf 99021) (.leaf 100392)) (.node (.leaf 101755) (.leaf 103121))) (.node (.node (.leaf 104484) (.leaf 105853)) (.node (.leaf 107220) (.leaf 108583))))) (.node (.node (.node (.node (.leaf 109959) .skip) (.node .skip (.leaf 114047))) (.node (.node (.leaf 115420) (.leaf 116784)) (.node (.leaf 118154) (.leaf 119520)))) (.node (.node (.node (.leaf 120885) (.leaf 122244)) (.node (.leaf 123617) (.leaf 124981))) (.node (.node (.leaf 126356) (.leaf 127709)) (.node (.leaf 129076) (.leaf 130454)))))) (.node (.node (.node (.node (.node (.leaf 131809) (.leaf 133171)) (.node (.leaf 134537) (.leaf 135919))) (.node (.node (.leaf 137284) (.leaf 138662)) (.node (.leaf 140022) (.leaf 141387)))) (.node (.node (.node (.leaf 142750) (.leaf 144115)) (.node .skip .skip)) (.node (.node (.leaf 148212) (.leaf 149575)) (.node (.leaf 150941) (.leaf 152302))))) (.node (.node (.node (.node (.leaf 153680) (.leaf 155033)) (.node (.leaf 156407) (.leaf 157769))) (.node (.node (.leaf 159138) (.leaf 160505)) (.node (.leaf 161876) (.leaf 163243)))) (.node (.node (.node (.leaf 164606) (.leaf 165968)) (.node (.leaf 167337) (.leaf 168701))) (.node (.node (.leaf 170077) (.leaf 171442)) (.node (.leaf 172809) (.leaf 174167))))))))

theorem progressionSegment00022_2_0000Check :
    progressionSegment00022_2_0000Tree.check indexedMarker 54289 26884 0 = true :=
  by decide

theorem progressionSegment00022_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 54289 26884 0 128 :=
  by simpa [progressionSegment00022_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00022_2_0000Check

def progressionSegment00022_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 175526) (.leaf 176890)) (.node (.leaf 178249) .skip)) (.node (.node .skip (.leaf 182340)) (.node (.leaf 183706) (.leaf 185083)))) (.node (.node (.node (.leaf 186449) (.leaf 187809)) (.node (.leaf 189175) (.leaf 190548))) (.node (.node (.leaf 191916) (.leaf 193276)) (.node (.leaf 194642) (.leaf 195998))))) (.node (.node (.node (.node (.leaf 197370) (.leaf 198732)) (.node (.leaf 200096) (.leaf 201452))) (.node (.node (.leaf 202813) (.leaf 204176)) (.node (.leaf 205548) (.leaf 206919)))) (.node (.node (.node (.leaf 208292) (.leaf 209655)) (.node (.leaf 211016) (.leaf 212387))) (.node (.node .skip .skip) (.node (.leaf 216474) (.leaf 217841))))))

theorem progressionSegment00022_2_0001Check :
    progressionSegment00022_2_0001Tree.check indexedMarker 54289 26884 128 = true :=
  by decide

theorem progressionSegment00022_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 54289 26884 128 160 :=
  by simpa [progressionSegment00022_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00022_2_0001Check

def progressionSegment00022_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 219204) (.leaf 220566)) (.node (.leaf 221942) (.leaf 223307))) (.node (.node (.leaf 224669) (.leaf 226028)) (.node (.leaf 227402) (.leaf 228770)))) (.node (.node (.node (.leaf 230134) (.leaf 231503)) (.node (.leaf 232864) (.leaf 234227))) (.node (.node (.leaf 235589) (.leaf 236961)) (.node (.leaf 238323) (.leaf 239688)))))

theorem progressionSegment00022_2_0002Check :
    progressionSegment00022_2_0002Tree.check indexedMarker 54289 26884 160 = true :=
  by decide

theorem progressionSegment00022_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 54289 26884 160 176 :=
  by simpa [progressionSegment00022_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00022_2_0002Check

def progressionSegment00022_2_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 241051) (.leaf 242422)) (.node (.leaf 243788) (.leaf 245154))) (.node (.node (.leaf 246523) .skip) (.node .skip (.leaf 250619))))

theorem progressionSegment00022_2_0003Check :
    progressionSegment00022_2_0003Tree.check indexedMarker 54289 26884 176 = true :=
  by decide

theorem progressionSegment00022_2_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 54289 26884 176 184 :=
  by simpa [progressionSegment00022_2_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00022_2_0003Check

def progressionSegment00023_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node (.leaf 1085) (.leaf 2539)) (.node (.leaf 4008) .skip)) (.node (.node (.leaf 6938) (.leaf 8395)) (.node (.leaf 9854) (.leaf 11315)))) (.node (.node (.node (.leaf 12769) (.leaf 14237)) (.node (.leaf 15697) (.leaf 17155))) (.node (.node (.leaf 18617) (.leaf 20076)) (.node (.leaf 21529) (.leaf 22990))))) (.node (.node (.node (.node (.leaf 24461) (.leaf 25916)) (.node (.leaf 27389) (.leaf 28850))) (.node (.node (.leaf 30306) (.leaf 31762)) (.node .skip (.leaf 34685)))) (.node (.node (.node (.leaf 36145) (.leaf 37615)) (.node (.leaf 39077) (.leaf 40550))) (.node (.node .skip (.leaf 43472)) (.node (.leaf 44938) (.leaf 46395)))))) (.node (.node (.node (.node (.node (.leaf 47846) (.leaf 49299)) (.node (.leaf 50767) (.leaf 52223))) (.node (.node (.leaf 53674) (.leaf 55135)) (.node (.leaf 56601) (.leaf 58072)))) (.node (.node (.node (.leaf 59527) (.leaf 60984)) (.node (.leaf 62448) (.leaf 63918))) (.node (.node (.leaf 65378) (.leaf 66844)) (.node (.leaf 68307) .skip)))) (.node (.node (.node (.node (.leaf 71215) (.leaf 72680)) (.node (.leaf 74143) (.leaf 75617))) (.node (.node (.leaf 77080) .skip) (.node (.leaf 79996) (.leaf 81470)))) (.node (.node (.node (.leaf 82936) (.leaf 84391)) (.node (.leaf 85861) (.leaf 87325))) (.node (.node (.leaf 88769) (.leaf 90244)) (.node (.leaf 91697) (.leaf 93157))))))) (.node (.node (.node (.node (.node (.node (.leaf 94617) (.leaf 96074)) (.node (.leaf 97528) (.leaf 98990))) (.node (.node (.leaf 100461) (.leaf 101912)) (.node (.leaf 103380) (.leaf 104837)))) (.node (.node (.node .skip (.leaf 107763)) (.node (.leaf 109229) (.leaf 110690))) (.node (.node (.leaf 112153) (.leaf 113609)) (.node .skip (.leaf 116536))))) (.node (.node (.node (.node (.leaf 117996) (.leaf 119456)) (.node (.leaf 120921) (.leaf 122380))) (.node (.node (.leaf 123840) (.leaf 125302)) (.node (.leaf 126759) (.leaf 128228)))) (.node (.node (.node (.leaf 129683) (.leaf 131155)) (.node (.leaf 132601) (.leaf 134069))) (.node (.node (.leaf 135531) (.leaf 137008)) (.node (.leaf 138472) (.leaf 139937)))))) (.node (.node (.node (.node (.node (.leaf 141395) .skip) (.node (.leaf 144317) (.leaf 145773))) (.node (.node (.leaf 147229) (.leaf 148693)) (.node (.leaf 150151) .skip))) (.node (.node (.node (.leaf 153073) (.leaf 154537)) (.node (.leaf 155998) (.leaf 157453))) (.node (.node (.leaf 158920) (.leaf 160377)) (.node (.leaf 161849) (.leaf 163315))))) (.node (.node (.node (.node (.leaf 164770) (.leaf 166225)) (.node (.leaf 167695) (.leaf 169159))) (.node (.node (.leaf 170627) (.leaf 172085)) (.node (.leaf 173538) (.leaf 174991)))) (.node (.node (.node (.leaf 176448) (.leaf 177907)) (.node .skip (.leaf 180828))) (.node (.node (.leaf 182288) (.leaf 183746)) (.node (.leaf 185215) (.leaf 186684))))))))

theorem progressionSegment00023_1_0000Check :
    progressionSegment00023_1_0000Tree.check indexedMarker 58081 43075 0 = true :=
  by decide

theorem progressionSegment00023_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 58081 43075 0 128 :=
  by simpa [progressionSegment00023_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00023_1_0000Check

def progressionSegment00023_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node .skip (.leaf 189595)) (.node (.leaf 191063) (.leaf 192533))) (.node (.node (.leaf 193989) (.leaf 195449)) (.node (.leaf 196900) (.leaf 198364)))) (.node (.node (.node (.leaf 199819) (.leaf 201274)) (.node (.leaf 202724) (.leaf 204188))) (.node (.node (.leaf 205661) (.leaf 207122)) (.node (.leaf 208588) (.leaf 210042))))) (.node (.node (.node (.node (.leaf 211507) (.leaf 212971)) (.node (.leaf 214423) .skip)) (.node (.node (.leaf 217350) (.leaf 218810)) (.node (.leaf 220260) (.leaf 221726)))) (.node (.node (.node (.leaf 223187) .skip) (.node (.leaf 226104) (.leaf 227572))) (.node (.node (.leaf 229031) (.leaf 230502)) (.node (.leaf 231955) (.leaf 233413))))))

theorem progressionSegment00023_1_0001Check :
    progressionSegment00023_1_0001Tree.check indexedMarker 58081 43075 128 = true :=
  by decide

theorem progressionSegment00023_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 58081 43075 128 160 :=
  by simpa [progressionSegment00023_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00023_1_0001Check

def progressionSegment00023_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 234880) (.leaf 236337)) (.node (.leaf 237795) (.leaf 239268))) (.node (.node (.leaf 240715) (.leaf 242175)) (.node (.leaf 243646) (.leaf 245102))))

theorem progressionSegment00023_1_0002Check :
    progressionSegment00023_1_0002Tree.check indexedMarker 58081 43075 160 = true :=
  by decide

theorem progressionSegment00023_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 58081 43075 160 168 :=
  by simpa [progressionSegment00023_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00023_1_0002Check

def progressionSegment00023_1_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 246571) (.leaf 248038)) (.node (.leaf 249492) (.leaf 250947)))

theorem progressionSegment00023_1_0003Check :
    progressionSegment00023_1_0003Tree.check indexedMarker 58081 43075 168 = true :=
  by decide

theorem progressionSegment00023_1_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 58081 43075 168 172 :=
  by simpa [progressionSegment00023_1_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00023_1_0003Check

def progressionSegment00023_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node (.leaf 377) (.leaf 1837)) (.node .skip (.leaf 4768))) (.node (.node (.leaf 6229) (.leaf 7687)) (.node (.leaf 9142) (.leaf 10606)))) (.node (.node (.node (.leaf 12076) (.leaf 13527)) (.node (.leaf 14993) (.leaf 16449))) (.node (.node (.leaf 17908) (.leaf 19367)) (.node (.leaf 20831) (.leaf 22281))))) (.node (.node (.node (.node (.leaf 23738) (.leaf 25209)) (.node (.leaf 26677) (.leaf 28142))) (.node (.node (.leaf 29604) .skip) (.node (.leaf 32529) (.leaf 33990)))) (.node (.node (.node (.leaf 35447) (.leaf 36913)) (.node (.leaf 38368) .skip)) (.node (.node (.leaf 41296) (.leaf 42763)) (.node (.leaf 44225) (.leaf 45692)))))) (.node (.node (.node (.node (.node (.leaf 47150) (.leaf 48596)) (.node (.leaf 50063) (.leaf 51517))) (.node (.node (.leaf 52967) (.leaf 54421)) (.node (.leaf 55892) (.leaf 57360)))) (.node (.node (.node (.leaf 58818) (.leaf 60277)) (.node (.leaf 61742) (.leaf 63208))) (.node (.node (.leaf 64673) (.leaf 66133)) (.node .skip (.leaf 69062))))) (.node (.node (.node (.node (.leaf 70509) (.leaf 71974)) (.node (.leaf 73444) (.leaf 74906))) (.node (.node .skip (.leaf 77830)) (.node (.leaf 79294) (.leaf 80767)))) (.node (.node (.node (.leaf 82230) (.leaf 83684)) (.node (.leaf 85152) (.leaf 86615))) (.node (.node (.leaf 88079) (.leaf 89530)) (.node (.leaf 90987) (.leaf 92446))))))) (.node (.node (.node (.node (.node (.node (.leaf 93914) (.leaf 95368)) (.node (.leaf 96836) (.leaf 98290))) (.node (.node (.leaf 99749) (.leaf 101201)) (.node (.leaf 102665) .skip))) (.node (.node (.node (.leaf 105594) (.leaf 107049)) (.node (.leaf 108512) (.leaf 109984))) (.node (.node (.leaf 111456) .skip) (.node (.leaf 114361) (.leaf 115832))))) (.node (.node (.node (.node (.leaf 117288) (.leaf 118746)) (.node (.leaf 120208) (.leaf 121681))) (.node (.node (.leaf 123139) (.leaf 124587)) (.node (.leaf 126060) (.leaf 127517)))) (.node (.node (.node (.leaf 128979) (.leaf 130450)) (.node (.leaf 131903) (.leaf 133361))) (.node (.node (.leaf 134823) (.leaf 136297)) (.node (.leaf 137759) (.leaf 139228)))))) (.node (.node (.node (.node (.node .skip (.leaf 142146)) (.node (.leaf 143610) (.leaf 145064))) (.node (.node (.leaf 146524) (.leaf 147987)) (.node .skip (.leaf 150908)))) (.node (.node (.node (.leaf 152368) (.leaf 153838)) (.node (.leaf 155293) (.leaf 156754))) (.node (.node (.leaf 158218) (.leaf 159675)) (.node (.leaf 161137) (.leaf 162602))))) (.node (.node (.node (.node (.leaf 164068) (.leaf 165528)) (.node (.leaf 166985) (.leaf 168449))) (.node (.node (.leaf 169912) (.leaf 171378)) (.node (.leaf 172846) (.leaf 174293)))) (.node (.node (.node (.leaf 175749) .skip) (.node (.leaf 178661) (.leaf 180126))) (.node (.node (.leaf 181575) (.leaf 183047)) (.node (.leaf 184501) .skip)))))))

theorem progressionSegment00023_2_0000Check :
    progressionSegment00023_2_0000Tree.check indexedMarker 58081 15006 0 = true :=
  by decide

theorem progressionSegment00023_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 58081 15006 0 128 :=
  by simpa [progressionSegment00023_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00023_2_0000Check

def progressionSegment00023_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 187433) (.leaf 188889)) (.node (.leaf 190361) (.leaf 191813))) (.node (.node (.leaf 193280) (.leaf 194741)) (.node (.leaf 196196) (.leaf 197666)))) (.node (.node (.node (.leaf 199114) (.leaf 200565)) (.node (.leaf 202029) (.leaf 203478))) (.node (.node (.leaf 204947) (.leaf 206415)) (.node (.leaf 207880) (.leaf 209334))))) (.node (.node (.node (.node (.leaf 210796) (.leaf 212262)) (.node .skip (.leaf 215182))) (.node (.node (.leaf 216639) (.leaf 218100)) (.node (.leaf 219561) (.leaf 221014)))) (.node (.node (.node .skip (.leaf 223939)) (.node (.leaf 225400) (.leaf 226872))) (.node (.node (.leaf 228328) (.leaf 229796)) (.node (.leaf 231249) (.leaf 232710))))))

theorem progressionSegment00023_2_0001Check :
    progressionSegment00023_2_0001Tree.check indexedMarker 58081 15006 128 = true :=
  by decide

theorem progressionSegment00023_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 58081 15006 128 160 :=
  by simpa [progressionSegment00023_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00023_2_0001Check

def progressionSegment00023_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 234166) (.leaf 235623)) (.node (.leaf 237093) (.leaf 238551))) (.node (.node (.leaf 240014) (.leaf 241475)) (.node (.leaf 242940) (.leaf 244398))))

theorem progressionSegment00023_2_0002Check :
    progressionSegment00023_2_0002Tree.check indexedMarker 58081 15006 160 = true :=
  by decide

theorem progressionSegment00023_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 58081 15006 160 168 :=
  by simpa [progressionSegment00023_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00023_2_0002Check

def progressionSegment00023_2_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 245863) (.leaf 247328)) (.node (.leaf 248786) .skip))

theorem progressionSegment00023_2_0003Check :
    progressionSegment00023_2_0003Tree.check indexedMarker 58081 15006 168 = true :=
  by decide

theorem progressionSegment00023_2_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 58081 15006 168 172 :=
  by simpa [progressionSegment00023_2_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00023_2_0003Check

def progressionSegment00024_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node (.leaf 1604) (.leaf 3269)) (.node (.leaf 4944) (.leaf 6603))) (.node (.node (.leaf 8261) (.leaf 9921)) (.node (.leaf 11589) (.leaf 13241)))) (.node (.node (.node (.leaf 14905) .skip) (.node (.leaf 18221) (.leaf 19884))) (.node (.node (.leaf 21541) (.leaf 23202)) (.node (.leaf 24863) (.leaf 26530))))) (.node (.node (.node (.node (.leaf 28198) (.leaf 29861)) (.node (.leaf 31512) (.leaf 33188))) (.node (.node .skip (.leaf 36505)) (.node (.leaf 38162) (.leaf 39832)))) (.node (.node (.node (.leaf 41494) (.leaf 43160)) (.node (.leaf 44828) (.leaf 46491))) (.node (.node (.leaf 48145) (.leaf 49795)) (.node (.leaf 51455) (.leaf 53111)))))) (.node (.node (.node (.node (.node (.leaf 54769) (.leaf 56433)) (.node .skip (.leaf 59759))) (.node (.node (.leaf 61422) (.leaf 63088)) (.node (.leaf 64756) (.leaf 66417)))) (.node (.node (.node (.leaf 68081) (.leaf 69744)) (.node (.leaf 71395) (.leaf 73063))) (.node (.node (.leaf 74729) .skip) (.node (.leaf 78049) (.leaf 79716))))) (.node (.node (.node (.node (.leaf 81392) (.leaf 83057)) (.node (.leaf 84713) (.leaf 86374))) (.node (.node (.leaf 88044) (.leaf 89704)) (.node (.leaf 91349) (.leaf 93019)))) (.node (.node (.node (.leaf 94682) (.leaf 96334)) (.node (.leaf 97998) .skip)) (.node (.node (.leaf 101312) (.leaf 102981)) (.node (.leaf 104639) (.leaf 106305))))))) (.node (.node (.node (.node (.node (.node (.leaf 107970) (.leaf 109632)) (.node (.leaf 111301) (.leaf 112958))) (.node (.node (.leaf 114612) (.leaf 116285)) (.node .skip (.leaf 119605)))) (.node (.node (.node (.leaf 121269) (.leaf 122924)) (.node (.leaf 124577) (.leaf 126251))) (.node (.node (.leaf 127911) (.leaf 129574)) (.node (.leaf 131241) (.leaf 132887))))) (.node (.node (.node (.node (.leaf 134554) (.leaf 136226)) (.node (.leaf 137896) (.leaf 139561))) (.node (.node .skip (.leaf 142880)) (.node (.leaf 144536) (.leaf 146202)))) (.node (.node (.node (.leaf 147865) (.leaf 149517)) (.node (.leaf 151195) (.leaf 152846))) (.node (.node (.leaf 154505) (.leaf 156167)) (.node (.leaf 157835) .skip))))) (.node (.node (.node (.node (.node (.leaf 161159) (.leaf 162829)) (.node (.leaf 164483) (.leaf 166147))) (.node (.node (.leaf 167805) (.leaf 169475)) (.node (.leaf 171132) (.leaf 172801)))) (.node (.node (.node (.leaf 174456) (.leaf 176112)) (.node (.leaf 177760) (.leaf 179425))) (.node (.node (.leaf 181083) .skip) (.node (.leaf 184403) (.leaf 186073))))) (.node (.node (.node (.node (.leaf 187741) (.leaf 189387)) (.node (.leaf 191061) (.leaf 192730))) (.node (.node (.leaf 194379) (.leaf 196036)) (.node (.leaf 197713) (.leaf 199357)))) (.node (.node (.node .skip (.leaf 202666)) (.node (.leaf 204330) (.leaf 205997))) (.node (.node (.leaf 207669) (.leaf 209323)) (.node (.leaf 210985) (.leaf 212646))))))))

theorem progressionSegment00024_1_0000Check :
    progressionSegment00024_1_0000Tree.check indexedMarker 66049 63977 0 = true :=
  by decide

theorem progressionSegment00024_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 66049 63977 0 128 :=
  by simpa [progressionSegment00024_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00024_1_0000Check

def progressionSegment00024_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 214304) (.leaf 215970)) (.node (.leaf 217624) (.leaf 219286))) (.node (.node (.leaf 220943) (.leaf 222615)) (.node .skip (.leaf 225930)))) (.node (.node (.node (.leaf 227602) (.leaf 229264)) (.node (.leaf 230928) (.leaf 232582))) (.node (.node (.leaf 234247) (.leaf 235899)) (.node (.leaf 237562) (.leaf 239234)))))

theorem progressionSegment00024_1_0001Check :
    progressionSegment00024_1_0001Tree.check indexedMarker 66049 63977 128 = true :=
  by decide

theorem progressionSegment00024_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 66049 63977 128 144 :=
  by simpa [progressionSegment00024_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00024_1_0001Check

def progressionSegment00024_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 240882) .skip) (.node (.leaf 244210) (.leaf 245877)))

theorem progressionSegment00024_1_0002Check :
    progressionSegment00024_1_0002Tree.check indexedMarker 66049 63977 144 = true :=
  by decide

theorem progressionSegment00024_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 66049 63977 144 148 :=
  by simpa [progressionSegment00024_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00024_1_0002Check

def progressionSegment00024_1_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 247541) (.leaf 249198))

theorem progressionSegment00024_1_0003Check :
    progressionSegment00024_1_0003Tree.check indexedMarker 66049 63977 148 = true :=
  by decide

theorem progressionSegment00024_1_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 66049 63977 148 150 :=
  by simpa [progressionSegment00024_1_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00024_1_0003Check

def progressionSegment00024_1_0004Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 250851)

theorem progressionSegment00024_1_0004Check :
    progressionSegment00024_1_0004Tree.check indexedMarker 66049 63977 150 = true :=
  by decide

theorem progressionSegment00024_1_0004 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 66049 63977 150 151 :=
  by simpa [progressionSegment00024_1_0004Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00024_1_0004Check

def progressionSegment00024_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node (.leaf 50) (.leaf 1706)) (.node (.leaf 3376) (.leaf 5050))) (.node (.node .skip (.leaf 8368)) (.node (.leaf 10024) (.leaf 11697)))) (.node (.node (.node (.leaf 13347) (.leaf 15013)) (.node (.leaf 16670) (.leaf 18328))) (.node (.node (.leaf 19983) (.leaf 21646)) (.node (.leaf 23303) .skip)))) (.node (.node (.node (.node (.leaf 26633) (.leaf 28306)) (.node (.leaf 29968) (.leaf 31621))) (.node (.node (.leaf 33289) (.leaf 34947)) (.node (.leaf 36609) (.leaf 38267)))) (.node (.node (.node (.leaf 39941) (.leaf 41602)) (.node (.leaf 43269) (.leaf 44931))) (.node (.node (.leaf 46592) .skip) (.node (.leaf 49905) (.leaf 51563)))))) (.node (.node (.node (.node (.node (.leaf 53217) (.leaf 54875)) (.node (.leaf 56541) (.leaf 58212))) (.node (.node (.leaf 59868) (.leaf 61526)) (.node (.leaf 63194) (.leaf 64867)))) (.node (.node (.node .skip (.leaf 68183)) (.node (.leaf 69848) (.leaf 71498))) (.node (.node (.leaf 73170) (.leaf 74833)) (.node (.leaf 76502) (.leaf 78155))))) (.node (.node (.node (.node (.leaf 79818) (.leaf 81492)) (.node (.leaf 83150) (.leaf 84821))) (.node (.node (.leaf 86477) (.leaf 88152)) (.node .skip (.leaf 91462)))) (.node (.node (.node (.leaf 93120) (.leaf 94781)) (.node (.leaf 96442) (.leaf 98104))) (.node (.node (.leaf 99762) (.leaf 101424)) (.node (.leaf 103083) (.leaf 104742))))))) (.node (.node (.node (.node (.node (.node (.leaf 106404) .skip) (.node (.leaf 109737) (.leaf 111412))) (.node (.node (.leaf 113061) (.leaf 114719)) (.node (.leaf 116391) (.leaf 118045)))) (.node (.node (.node (.leaf 119711) (.leaf 121377)) (.node (.leaf 123034) (.leaf 124690))) (.node (.node (.leaf 126367) (.leaf 128018)) (.node (.leaf 129675) .skip)))) (.node (.node (.node (.node (.leaf 132995) (.leaf 134665)) (.node (.leaf 136335) (.leaf 138003))) (.node (.node (.leaf 139666) (.leaf 141324)) (.node (.leaf 142989) (.leaf 144646)))) (.node (.node (.node (.leaf 146309) (.leaf 147970)) (.node .skip (.leaf 151288))) (.node (.node (.leaf 152950) (.leaf 154614)) (.node (.leaf 156273) (.leaf 157942)))))) (.node (.node (.node (.node (.node (.leaf 159599) (.leaf 161264)) (.node (.leaf 162930) (.leaf 164589))) (.node (.node (.leaf 166245) (.leaf 167916)) (.node (.leaf 169574) (.leaf 171240)))) (.node (.node (.node .skip (.leaf 174560)) (.node (.leaf 176203) (.leaf 177864))) (.node (.node (.leaf 179528) (.leaf 181188)) (.node (.leaf 182853) (.leaf 184510))))) (.node (.node (.node (.node (.leaf 186178) (.leaf 187837)) (.node (.leaf 189500) .skip)) (.node (.node (.leaf 192836) (.leaf 194488)) (.node (.leaf 196143) (.leaf 197813)))) (.node (.node (.node (.leaf 199465) (.leaf 201119)) (.node (.leaf 202774) (.leaf 204440))) (.node (.node (.leaf 206104) (.leaf 207773)) (.node (.leaf 209437) (.leaf 211093))))))))

theorem progressionSegment00024_2_0000Check :
    progressionSegment00024_2_0000Tree.check indexedMarker 66049 2072 0 = true :=
  by decide

theorem progressionSegment00024_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 66049 2072 0 128 :=
  by simpa [progressionSegment00024_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00024_2_0000Check

def progressionSegment00024_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 212753) .skip) (.node (.leaf 216070) (.leaf 217729))) (.node (.node (.leaf 219394) (.leaf 221053)) (.node (.leaf 222718) (.leaf 224378)))) (.node (.node (.node (.leaf 226033) (.leaf 227705)) (.node (.leaf 229372) (.leaf 231030))) (.node (.node .skip (.leaf 234346)) (.node (.leaf 236002) (.leaf 237668)))))

theorem progressionSegment00024_2_0001Check :
    progressionSegment00024_2_0001Tree.check indexedMarker 66049 2072 128 = true :=
  by decide

theorem progressionSegment00024_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 66049 2072 128 144 :=
  by simpa [progressionSegment00024_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00024_2_0001Check

def progressionSegment00024_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 239343) (.leaf 240987)) (.node (.leaf 242656) (.leaf 244318))) (.node (.node (.leaf 245972) (.leaf 247648)) (.node (.leaf 249300) (.leaf 250964))))

theorem progressionSegment00024_2_0002Check :
    progressionSegment00024_2_0002Tree.check indexedMarker 66049 2072 144 = true :=
  by decide

theorem progressionSegment00024_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 66049 2072 144 152 :=
  by simpa [progressionSegment00024_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00024_2_0002Check

def progressionSegment00025_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node (.leaf 344) (.leaf 2157)) (.node (.leaf 3984) (.leaf 5807))) (.node (.node (.leaf 7625) (.leaf 9449)) (.node (.leaf 11270) (.leaf 13090)))) (.node (.node (.node (.leaf 14910) (.leaf 16725)) (.node (.leaf 18545) (.leaf 20366))) (.node (.node (.leaf 22177) (.leaf 23993)) (.node (.leaf 25821) (.leaf 27653))))) (.node (.node (.node (.node (.leaf 29471) (.leaf 31287)) (.node (.leaf 33116) (.leaf 34935))) (.node (.node .skip .skip) (.node (.leaf 40408) (.leaf 42229)))) (.node (.node (.node (.leaf 44046) (.leaf 45875)) (.node (.leaf 47681) (.leaf 49494))) (.node (.node (.leaf 51316) (.leaf 53127)) (.node (.leaf 54946) (.leaf 56767)))))) (.node (.node (.node (.node (.node (.leaf 58589) (.leaf 60400)) (.node (.leaf 62233) (.leaf 64055))) (.node (.node (.leaf 65880) (.leaf 67706)) (.node (.leaf 69522) (.leaf 71335)))) (.node (.node (.node (.leaf 73165) (.leaf 74993)) (.node (.leaf 76812) (.leaf 78632))) (.node (.node (.leaf 80457) .skip) (.node .skip (.leaf 85931))))) (.node (.node (.node (.node (.leaf 87756) (.leaf 89568)) (.node (.leaf 91379) (.leaf 93207))) (.node (.node (.leaf 95027) (.leaf 96847)) (.node (.leaf 98655) (.leaf 100485)))) (.node (.node (.node (.leaf 102295) (.leaf 104120)) (.node (.leaf 105941) (.leaf 107761))) (.node (.node (.leaf 109587) (.leaf 111422)) (.node (.leaf 113225) (.leaf 115037))))))) (.node (.node (.node (.node (.node (.node (.leaf 116864) (.leaf 118686)) (.node (.leaf 120503) (.leaf 122330))) (.node (.node (.leaf 124150) (.leaf 125967)) (.node .skip .skip))) (.node (.node (.node (.leaf 131435) (.leaf 133252)) (.node (.leaf 135069) (.leaf 136901))) (.node (.node (.leaf 138740) (.leaf 140555)) (.node (.leaf 142364) (.leaf 144190))))) (.node (.node (.node (.node (.leaf 146011) (.leaf 147827)) (.node (.leaf 149653) (.leaf 151470))) (.node (.node (.leaf 153288) (.leaf 155103)) (.node (.leaf 156925) (.leaf 158748)))) (.node (.node (.node (.leaf 160572) (.leaf 162403)) (.node (.leaf 164223) (.leaf 166036))) (.node (.node (.leaf 167856) (.leaf 169682)) (.node (.leaf 171511) .skip))))) (.node (.node (.node (.node (.node .skip (.leaf 176953)) (.node (.leaf 178769) (.leaf 180580))) (.node (.node (.leaf 182402) (.leaf 184217)) (.node (.leaf 186048) (.leaf 187868)))) (.node (.node (.node (.leaf 189690) (.leaf 191522)) (.node (.leaf 193341) (.leaf 195157))) (.node (.node (.leaf 196970) (.leaf 198786)) (.node (.leaf 200597) (.leaf 202415))))) (.node (.node (.node (.node (.leaf 204230) (.leaf 206057)) (.node (.leaf 207887) (.leaf 209712))) (.node (.node (.leaf 211528) (.leaf 213346)) (.node (.leaf 215166) (.leaf 216986)))) (.node (.node (.node .skip .skip) (.node (.leaf 222444) (.leaf 224263))) (.node (.node (.leaf 226077) (.leaf 227910)) (.node (.leaf 229729) (.leaf 231549))))))))

theorem progressionSegment00025_1_0000Check :
    progressionSegment00025_1_0000Tree.check indexedMarker 72361 13637 0 = true :=
  by decide

theorem progressionSegment00025_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 72361 13637 0 128 :=
  by simpa [progressionSegment00025_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00025_1_0000Check

def progressionSegment00025_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 233359) (.leaf 235183)) (.node (.leaf 237000) (.leaf 238818))) (.node (.node (.leaf 240638) (.leaf 242462)) (.node (.leaf 244282) (.leaf 246099))))

theorem progressionSegment00025_1_0001Check :
    progressionSegment00025_1_0001Tree.check indexedMarker 72361 13637 128 = true :=
  by decide

theorem progressionSegment00025_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 72361 13637 128 136 :=
  by simpa [progressionSegment00025_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00025_1_0001Check

def progressionSegment00025_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 247933) (.leaf 249746))

theorem progressionSegment00025_1_0002Check :
    progressionSegment00025_1_0002Tree.check indexedMarker 72361 13637 136 = true :=
  by decide

theorem progressionSegment00025_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 72361 13637 136 138 :=
  by simpa [progressionSegment00025_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00025_1_0002Check

def progressionSegment00025_1_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 251566)

theorem progressionSegment00025_1_0003Check :
    progressionSegment00025_1_0003Tree.check indexedMarker 72361 13637 138 = true :=
  by decide

theorem progressionSegment00025_1_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 72361 13637 138 139 :=
  by simpa [progressionSegment00025_1_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00025_1_0003Check

def progressionSegment00025_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node (.leaf 1471) (.leaf 3297)) (.node (.leaf 5134) .skip)) (.node (.node .skip (.leaf 10579)) (.node (.leaf 12404) (.leaf 14223)))) (.node (.node (.node (.leaf 16043) (.leaf 17858)) (.node (.leaf 19672) (.leaf 21489))) (.node (.node (.leaf 23311) (.leaf 25127)) (.node (.leaf 26964) (.leaf 28783))))) (.node (.node (.node (.node (.leaf 30605) (.leaf 32423)) (.node (.leaf 34253) (.leaf 36060))) (.node (.node (.leaf 37883) (.leaf 39714)) (.node (.leaf 41534) (.leaf 43362)))) (.node (.node (.node (.leaf 45182) (.leaf 47000)) (.node (.leaf 48811) (.leaf 50630))) (.node (.node .skip .skip) (.node (.leaf 56080) (.leaf 57914)))))) (.node (.node (.node (.node (.node (.leaf 59728) (.leaf 61546)) (.node (.leaf 63371) (.leaf 65195))) (.node (.node (.leaf 67020) (.leaf 68841)) (.node (.leaf 70652) (.leaf 72478)))) (.node (.node (.node (.leaf 74305) (.leaf 76125)) (.node (.leaf 77941) (.leaf 79761))) (.node (.node (.leaf 81599) (.leaf 83419)) (.node (.leaf 85243) (.leaf 87069))))) (.node (.node (.node (.node (.leaf 88875) (.leaf 90689)) (.node (.leaf 92511) (.leaf 94335))) (.node (.node (.leaf 96151) .skip) (.node .skip (.leaf 101610)))) (.node (.node (.node (.leaf 103435) (.leaf 105260)) (.node (.leaf 107071) (.leaf 108901))) (.node (.node (.leaf 110724) (.leaf 112545)) (.node (.leaf 114356) (.leaf 116183))))))) (.node (.node (.node (.node (.node (.node (.leaf 118004) (.leaf 119829)) (.node (.leaf 121653) (.leaf 123465))) (.node (.node (.leaf 125286) (.leaf 127105)) (.node (.leaf 128923) (.leaf 130752)))) (.node (.node (.node (.leaf 132559) (.leaf 134386)) (.node (.leaf 136212) (.leaf 138044))) (.node (.node (.leaf 139867) (.leaf 141683)) (.node .skip .skip)))) (.node (.node (.node (.node (.leaf 147135) (.leaf 148955)) (.node (.leaf 150786) (.leaf 152601))) (.node (.node (.leaf 154425) (.leaf 156243)) (.node (.leaf 158072) (.leaf 159882)))) (.node (.node (.node (.leaf 161711) (.leaf 163536)) (.node (.leaf 165355) (.leaf 167171))) (.node (.node (.leaf 168993) (.leaf 170826)) (.node (.leaf 172639) (.leaf 174454)))))) (.node (.node (.node (.node (.node (.leaf 176258) (.leaf 178078)) (.node (.leaf 179902) (.leaf 181718))) (.node (.node (.leaf 183541) (.leaf 185365)) (.node (.leaf 187193) .skip))) (.node (.node (.node .skip (.leaf 192654)) (.node (.leaf 194470) (.leaf 196287))) (.node (.node (.leaf 198108) (.leaf 199920)) (.node (.leaf 201725) (.leaf 203544))))) (.node (.node (.node (.node (.leaf 205365) (.leaf 207201)) (.node (.leaf 209008) (.leaf 210832))) (.node (.node (.leaf 212656) (.leaf 214479)) (.node (.leaf 216292) (.leaf 218118)))) (.node (.node (.node (.leaf 219931) (.leaf 221754)) (.node (.leaf 223576) (.leaf 225389))) (.node (.node (.leaf 227216) (.leaf 229038)) (.node (.leaf 230866) (.leaf 232678))))))))

theorem progressionSegment00025_2_0000Check :
    progressionSegment00025_2_0000Tree.check indexedMarker 72361 58724 0 = true :=
  by decide

theorem progressionSegment00025_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 72361 58724 0 128 :=
  by simpa [progressionSegment00025_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00025_2_0000Check

def progressionSegment00025_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node .skip .skip) (.node (.leaf 238134) (.leaf 239956))) (.node (.node (.leaf 241769) (.leaf 243598)) (.node (.leaf 245423) (.leaf 247244))))

theorem progressionSegment00025_2_0001Check :
    progressionSegment00025_2_0001Tree.check indexedMarker 72361 58724 128 = true :=
  by decide

theorem progressionSegment00025_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 72361 58724 128 136 :=
  by simpa [progressionSegment00025_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00025_2_0001Check

def progressionSegment00025_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 249062) (.leaf 250875))

theorem progressionSegment00025_2_0002Check :
    progressionSegment00025_2_0002Tree.check indexedMarker 72361 58724 136 = true :=
  by decide

theorem progressionSegment00025_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 72361 58724 136 138 :=
  by simpa [progressionSegment00025_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00025_2_0002Check

def progressionSegment00026_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node (.leaf 782) (.leaf 2718)) (.node (.leaf 4661) (.leaf 6587))) (.node (.node (.leaf 8513) (.leaf 10442)) (.node (.leaf 12374) (.leaf 14299)))) (.node (.node (.node .skip (.leaf 18161)) (.node (.leaf 20089) (.leaf 22009))) (.node (.node (.leaf 23937) (.leaf 25876)) (.node (.leaf 27820) (.leaf 29745))))) (.node (.node (.node (.node (.leaf 31670) (.leaf 33605)) (.node (.leaf 35527) (.leaf 37462))) (.node (.node (.leaf 39398) (.leaf 41331)) (.node (.leaf 43271) (.leaf 45201)))) (.node (.node (.node .skip (.leaf 49051)) (.node (.leaf 50983) (.leaf 52897))) (.node (.node (.leaf 54824) (.leaf 56759)) (.node (.leaf 58691) (.leaf 60617)))))) (.node (.node (.node (.node (.node (.leaf 62554) .skip) (.node (.leaf 66424) (.leaf 68359))) (.node (.node (.leaf 70273) (.leaf 72212)) (.node (.leaf 74140) (.leaf 76083)))) (.node (.node (.node (.leaf 78005) (.leaf 79942)) (.node (.leaf 81889) (.leaf 83811))) (.node (.node (.leaf 85750) (.leaf 87680)) (.node (.leaf 89614) (.leaf 91533))))) (.node (.node (.node (.node (.leaf 93471) .skip) (.node (.leaf 97317) (.leaf 99246))) (.node (.node (.leaf 101164) (.leaf 103107)) (.node (.leaf 105038) (.leaf 106964)))) (.node (.node (.node (.leaf 108906) (.leaf 110837)) (.node .skip (.leaf 114691))) (.node (.node (.leaf 116627) (.leaf 118554)) (.node (.leaf 120480) (.leaf 122421))))))) (.node (.node (.node (.node (.node (.node (.leaf 124340) (.leaf 126283)) (.node (.leaf 128211) (.leaf 130151))) (.node (.node (.leaf 132074) (.leaf 134001)) (.node (.leaf 135944) (.leaf 137875)))) (.node (.node (.node (.leaf 139810) (.leaf 141741)) (.node .skip (.leaf 145588))) (.node (.node (.leaf 147519) (.leaf 149453)) (.node (.leaf 151382) (.leaf 153315))))) (.node (.node (.node (.node (.leaf 155246) (.leaf 157174)) (.node (.leaf 159104) .skip)) (.node (.node (.leaf 162974) (.leaf 164898)) (.node (.leaf 166824) (.leaf 168762)))) (.node (.node (.node (.leaf 170708) (.leaf 172627)) (.node (.leaf 174553) (.leaf 176472))) (.node (.node (.leaf 178395) (.leaf 180329)) (.node (.leaf 182255) (.leaf 184180)))))) (.node (.node (.node (.node (.node (.leaf 186124) (.leaf 188050)) (.node (.leaf 189977) .skip)) (.node (.node (.leaf 193851) (.leaf 195773)) (.node (.leaf 197710) (.leaf 199627)))) (.node (.node (.node (.leaf 201546) (.leaf 203468)) (.node (.leaf 205408) (.leaf 207350))) (.node (.node .skip (.leaf 211207)) (.node (.leaf 213134) (.leaf 215065))))) (.node (.node (.node (.node (.leaf 216997) (.leaf 218921)) (.node (.leaf 220845) (.leaf 222780))) (.node (.node (.leaf 224711) (.leaf 226643)) (.node (.leaf 228578) (.leaf 230512)))) (.node (.node (.node (.leaf 232431) (.leaf 234362)) (.node (.leaf 236292) (.leaf 238219))) (.node (.node .skip (.leaf 242077)) (.node (.leaf 244009) (.leaf 245944))))))))

theorem progressionSegment00026_1_0000Check :
    progressionSegment00026_1_0000Tree.check indexedMarker 76729 31361 0 = true :=
  by decide

theorem progressionSegment00026_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 76729 31361 0 128 :=
  by simpa [progressionSegment00026_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00026_1_0000Check

def progressionSegment00026_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 247882) (.leaf 249808))

theorem progressionSegment00026_1_0001Check :
    progressionSegment00026_1_0001Tree.check indexedMarker 76729 31361 128 = true :=
  by decide

theorem progressionSegment00026_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 76729 31361 128 130 :=
  by simpa [progressionSegment00026_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00026_1_0001Check

def progressionSegment00026_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .skip (.leaf 3074)) (.node (.leaf 5017) (.leaf 6942))) (.node (.node (.leaf 8861) (.leaf 10800)) (.node (.leaf 12723) (.leaf 14662)))) (.node (.node (.node (.leaf 16579) (.leaf 18514)) (.node (.leaf 20440) (.leaf 22364))) (.node (.node (.leaf 24299) (.leaf 26233)) (.node (.leaf 28166) (.leaf 30099))))) (.node (.node (.node (.node .skip (.leaf 33959)) (.node (.leaf 35888) (.leaf 37817))) (.node (.node (.leaf 39755) (.leaf 41685)) (.node (.leaf 43623) (.leaf 45551)))) (.node (.node (.node (.leaf 47480) .skip) (.node (.leaf 51333) (.leaf 53251))) (.node (.node (.leaf 55180) (.leaf 57111)) (.node (.leaf 59044) (.leaf 60974)))))) (.node (.node (.node (.node (.node (.leaf 62915) (.leaf 64851)) (.node (.leaf 66781) (.leaf 68714))) (.node (.node (.leaf 70627) (.leaf 72560)) (.node (.leaf 74500) (.leaf 76436)))) (.node (.node (.node (.leaf 78360) .skip) (.node (.leaf 82242) (.leaf 84173))) (.node (.node (.leaf 86102) (.leaf 88035)) (.node (.leaf 89960) (.leaf 91883))))) (.node (.node (.node (.node (.leaf 93814) (.leaf 95744)) (.node .skip (.leaf 99598))) (.node (.node (.leaf 101530) (.leaf 103463)) (.node (.leaf 105391) (.leaf 107325)))) (.node (.node (.node (.leaf 109256) (.leaf 111193)) (.node (.leaf 113117) (.leaf 115036))) (.node (.node (.leaf 116976) (.leaf 118910)) (.node (.leaf 120838) (.leaf 122774))))))) (.node (.node (.node (.node (.node (.node (.leaf 124699) (.leaf 126633)) (.node .skip (.leaf 130502))) (.node (.node (.leaf 132417) (.leaf 134350)) (.node (.leaf 136293) (.leaf 138227)))) (.node (.node (.node (.leaf 140166) (.leaf 142093)) (.node (.leaf 144016) .skip)) (.node (.node (.leaf 147875) (.leaf 149805)) (.node (.leaf 151738) (.leaf 153671))))) (.node (.node (.node (.node (.leaf 155604) (.leaf 157522)) (.node (.leaf 159460) (.leaf 161393))) (.node (.node (.leaf 163329) (.leaf 165254)) (.node (.leaf 167186) (.leaf 169119)))) (.node (.node (.node (.leaf 171046) (.leaf 172986)) (.node (.leaf 174901) .skip)) (.node (.node (.leaf 178753) (.leaf 180681)) (.node (.leaf 182603) (.leaf 184541)))))) (.node (.node (.node (.node (.node (.leaf 186483) (.leaf 188397)) (.node (.leaf 190339) (.leaf 192274))) (.node (.node .skip (.leaf 196120)) (.node (.leaf 198056) (.leaf 199981)))) (.node (.node (.node (.leaf 201901) (.leaf 203824)) (.node (.leaf 205764) (.leaf 207702))) (.node (.node (.leaf 209627) (.leaf 211562)) (.node (.leaf 213490) (.leaf 215413))))) (.node (.node (.node (.node (.leaf 217346) (.leaf 219270)) (.node (.leaf 221196) (.leaf 223134))) (.node (.node .skip (.leaf 226998)) (.node (.leaf 228925) (.leaf 230862)))) (.node (.node (.node (.leaf 232784) (.leaf 234717)) (.node (.leaf 236643) (.leaf 238573))) (.node (.node (.leaf 240501) .skip) (.node (.leaf 244365) (.leaf 246294))))))))

theorem progressionSegment00026_2_0000Check :
    progressionSegment00026_2_0000Tree.check indexedMarker 76729 45368 0 = true :=
  by decide

theorem progressionSegment00026_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 76729 45368 0 128 :=
  by simpa [progressionSegment00026_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00026_2_0000Check

def progressionSegment00026_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 248233) (.leaf 250163))

theorem progressionSegment00026_2_0001Check :
    progressionSegment00026_2_0001Tree.check indexedMarker 76729 45368 128 = true :=
  by decide

theorem progressionSegment00026_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 76729 45368 128 130 :=
  by simpa [progressionSegment00026_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00026_2_0001Check

def progressionSegment00027_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node .skip (.leaf 2095)) (.node (.leaf 4089) (.leaf 6073))) (.node (.node (.leaf 8061) (.leaf 10045)) (.node (.leaf 12037) (.leaf 14021)))) (.node (.node (.node (.leaf 16007) (.leaf 17989)) (.node (.leaf 19969) (.leaf 21948))) (.node (.node (.leaf 23932) (.leaf 25930)) (.node (.leaf 27926) (.leaf 29911))))) (.node (.node (.node (.node (.leaf 31891) (.leaf 33883)) (.node (.leaf 35865) (.leaf 37853))) (.node (.node (.leaf 39847) (.leaf 41843)) (.node (.leaf 43828) (.leaf 45820)))) (.node (.node (.node .skip .skip) (.node (.leaf 51759) (.leaf 53739))) (.node (.node (.leaf 55722) (.leaf 57719)) (.node (.leaf 59699) (.leaf 61686)))))) (.node (.node (.node (.node (.node (.leaf 63685) (.leaf 65664)) (.node (.leaf 67657) (.leaf 69641))) (.node (.node (.leaf 71623) (.leaf 73616)) (.node (.leaf 75609) (.leaf 77597)))) (.node (.node (.node (.leaf 79582) (.leaf 81579)) (.node (.leaf 83567) (.leaf 85561))) (.node (.node (.leaf 87544) (.leaf 89523)) (.node (.leaf 91507) (.leaf 93501))))) (.node (.node (.node (.node (.leaf 95476) .skip) (.node .skip (.leaf 101435))) (.node (.node (.leaf 103422) (.leaf 105408)) (.node (.leaf 107405) (.leaf 109390)))) (.node (.node (.node (.leaf 111386) (.leaf 113354)) (.node (.leaf 115343) (.leaf 117338))) (.node (.node (.leaf 119316) (.leaf 121309)) (.node (.leaf 123293) (.leaf 125280)))))))

theorem progressionSegment00027_1_0000Check :
    progressionSegment00027_1_0000Tree.check indexedMarker 78961 4443 0 = true :=
  by decide

theorem progressionSegment00027_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 78961 4443 0 64 :=
  by simpa [progressionSegment00027_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00027_1_0000Check

def progressionSegment00027_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 127264) (.leaf 129249)) (.node (.leaf 131245) (.leaf 133219))) (.node (.node (.leaf 135204) (.leaf 137206)) (.node (.leaf 139202) (.leaf 141190)))) (.node (.node (.node (.leaf 143175) (.leaf 145148)) (.node .skip .skip)) (.node (.node (.leaf 151114) (.leaf 153098)) (.node (.leaf 155081) (.leaf 157071))))) (.node (.node (.node (.node (.leaf 159059) (.leaf 161053)) (.node (.leaf 163041) (.leaf 165024))) (.node (.node (.leaf 167011) (.leaf 168999)) (.node (.leaf 170987) (.leaf 172980)))) (.node (.node (.node (.leaf 174948) (.leaf 176932)) (.node (.leaf 178921) (.leaf 180900))) (.node (.node (.leaf 182890) (.leaf 184870)) (.node (.leaf 186864) (.leaf 188846))))))

theorem progressionSegment00027_1_0001Check :
    progressionSegment00027_1_0001Tree.check indexedMarker 78961 4443 64 = true :=
  by decide

theorem progressionSegment00027_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 78961 4443 64 96 :=
  by simpa [progressionSegment00027_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00027_1_0001Check

def progressionSegment00027_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 190842) (.leaf 192830)) (.node (.leaf 194809) .skip)) (.node (.node .skip (.leaf 200758)) (.node (.leaf 202730) (.leaf 204720)))) (.node (.node (.node (.leaf 206714) (.leaf 208702)) (.node (.leaf 210681) (.leaf 212673))) (.node (.node (.leaf 214663) (.leaf 216645)) (.node (.leaf 218631) (.leaf 220607)))))

theorem progressionSegment00027_1_0002Check :
    progressionSegment00027_1_0002Tree.check indexedMarker 78961 4443 96 = true :=
  by decide

theorem progressionSegment00027_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 78961 4443 96 112 :=
  by simpa [progressionSegment00027_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00027_1_0002Check

end Erdos848.GeneratedTailDiagonalCoverage
