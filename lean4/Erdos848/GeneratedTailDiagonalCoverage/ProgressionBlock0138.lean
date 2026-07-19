import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00040_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 1399) (.leaf 6120)) (.node (.leaf 10841) (.leaf 15550))) (.node (.node (.leaf 20266) (.leaf 24969)) (.node (.leaf 29701) (.leaf 34419)))) (.node (.node (.node (.leaf 39130) (.leaf 43863)) (.node .skip .skip)) (.node (.node (.leaf 58003) (.leaf 62717)) (.node (.leaf 67438) (.leaf 72153))))) (.node (.node (.node (.node (.leaf 76879) (.leaf 81607)) (.node (.leaf 86325) (.leaf 91035))) (.node (.node (.leaf 95752) (.leaf 100468)) (.node (.leaf 105186) (.leaf 109901)))) (.node (.node (.node (.leaf 114614) (.leaf 119334)) (.node (.leaf 124057) (.leaf 128770))) (.node (.node (.leaf 133489) (.leaf 138218)) (.node (.leaf 142933) (.leaf 147652))))))

theorem progressionSegment00040_1_0000Check :
    progressionSegment00040_1_0000Tree.check indexedMarker 187489 55603 0 = true :=
  by decide

theorem progressionSegment00040_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 187489 55603 0 32 :=
  by simpa [progressionSegment00040_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00040_1_0000Check

def progressionSegment00040_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 152363) (.leaf 157082)) (.node (.leaf 161804) .skip)) (.node (.node .skip (.leaf 175949)) (.node (.leaf 180651) (.leaf 185377)))) (.node (.node (.node (.leaf 190089) (.leaf 194812)) (.node (.leaf 199519) (.leaf 204216))) (.node (.node (.leaf 208946) (.leaf 213673)) (.node (.leaf 218378) (.leaf 223091)))))

theorem progressionSegment00040_1_0001Check :
    progressionSegment00040_1_0001Tree.check indexedMarker 187489 55603 32 = true :=
  by decide

theorem progressionSegment00040_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 187489 55603 32 48 :=
  by simpa [progressionSegment00040_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00040_1_0001Check

def progressionSegment00040_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 227809) (.leaf 232525)) (.node (.leaf 237241) (.leaf 241947)))

theorem progressionSegment00040_1_0002Check :
    progressionSegment00040_1_0002Tree.check indexedMarker 187489 55603 48 = true :=
  by decide

theorem progressionSegment00040_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 187489 55603 48 52 :=
  by simpa [progressionSegment00040_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00040_1_0002Check

def progressionSegment00040_1_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 246682) (.leaf 251388))

theorem progressionSegment00040_1_0003Check :
    progressionSegment00040_1_0003Tree.check indexedMarker 187489 55603 52 = true :=
  by decide

theorem progressionSegment00040_1_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 187489 55603 52 54 :=
  by simpa [progressionSegment00040_1_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00040_1_0003Check

def progressionSegment00040_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 3315) (.leaf 8040)) (.node (.leaf 12752) (.leaf 17472))) (.node (.node (.leaf 22174) (.leaf 26902)) (.node (.leaf 31615) (.leaf 36338)))) (.node (.node (.node (.leaf 41061) (.leaf 45792)) (.node (.leaf 50489) (.leaf 55192))) (.node (.node (.leaf 59920) .skip) (.node .skip (.leaf 74069))))) (.node (.node (.node (.node (.leaf 78796) (.leaf 83525)) (.node (.leaf 88251) (.leaf 92952))) (.node (.node (.leaf 97666) (.leaf 102375)) (.node (.leaf 107095) (.leaf 111826)))) (.node (.node (.node (.leaf 116543) (.leaf 121258)) (.node (.leaf 125971) (.leaf 130697))) (.node (.node (.leaf 135404) (.leaf 140146)) (.node (.leaf 144853) (.leaf 149563))))))

theorem progressionSegment00040_2_0000Check :
    progressionSegment00040_2_0000Tree.check indexedMarker 187489 131886 0 = true :=
  by decide

theorem progressionSegment00040_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 187489 131886 0 32 :=
  by simpa [progressionSegment00040_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00040_2_0000Check

def progressionSegment00040_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 154289) (.leaf 159005)) (.node (.leaf 163729) (.leaf 168441))) (.node (.node (.leaf 173159) (.leaf 177854)) (.node .skip .skip))) (.node (.node (.node (.leaf 192014) (.leaf 196728)) (.node (.leaf 201429) (.leaf 206149))) (.node (.node (.leaf 210862) (.leaf 215581)) (.node (.leaf 220289) (.leaf 225004)))))

theorem progressionSegment00040_2_0001Check :
    progressionSegment00040_2_0001Tree.check indexedMarker 187489 131886 32 = true :=
  by decide

theorem progressionSegment00040_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 187489 131886 32 48 :=
  by simpa [progressionSegment00040_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00040_2_0001Check

def progressionSegment00040_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 229737) (.leaf 234443)) (.node (.leaf 239160) (.leaf 243876)))

theorem progressionSegment00040_2_0002Check :
    progressionSegment00040_2_0002Tree.check indexedMarker 187489 131886 48 = true :=
  by decide

theorem progressionSegment00040_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 187489 131886 48 52 :=
  by simpa [progressionSegment00040_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00040_2_0002Check

def progressionSegment00040_2_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 248596)

theorem progressionSegment00040_2_0003Check :
    progressionSegment00040_2_0003Tree.check indexedMarker 187489 131886 52 = true :=
  by decide

theorem progressionSegment00040_2_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 187489 131886 52 53 :=
  by simpa [progressionSegment00040_2_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00040_2_0003Check

def progressionSegment00041_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node .skip (.leaf 8855)) (.node (.leaf 13934) (.leaf 18999))) (.node (.node (.leaf 24064) (.leaf 29146)) (.node (.leaf 34226) (.leaf 39287)))) (.node (.node (.node (.leaf 44372) (.leaf 49431)) (.node (.leaf 54484) .skip)) (.node (.node (.leaf 64648) (.leaf 69725)) (.node (.leaf 74796) (.leaf 79869))))) (.node (.node (.node (.node (.leaf 84962) (.leaf 90032)) (.node (.leaf 95100) (.leaf 100160))) (.node (.node (.leaf 105240) (.leaf 110312)) (.node (.leaf 115382) (.leaf 120448)))) (.node (.node (.node (.leaf 125528) .skip) (.node (.leaf 135674) (.leaf 140762))) (.node (.node (.leaf 145836) (.leaf 150897)) (.node (.leaf 155973) (.leaf 161048))))))

theorem progressionSegment00041_1_0000Check :
    progressionSegment00041_1_0000Tree.check indexedMarker 201601 150482 0 = true :=
  by decide

theorem progressionSegment00041_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 201601 150482 0 32 :=
  by simpa [progressionSegment00041_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00041_1_0000Check

def progressionSegment00041_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 166118) (.leaf 171193)) (.node (.leaf 176245) (.leaf 181317))) (.node (.node .skip (.leaf 191475)) (.node (.leaf 196533) (.leaf 201591)))) (.node (.node (.node (.leaf 206666) (.leaf 211740)) (.node (.leaf 216813) (.leaf 221878))) (.node (.node (.leaf 226955) (.leaf 232023)) (.node (.leaf 237093) (.leaf 242158)))))

theorem progressionSegment00041_1_0001Check :
    progressionSegment00041_1_0001Tree.check indexedMarker 201601 150482 32 = true :=
  by decide

theorem progressionSegment00041_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 201601 150482 32 48 :=
  by simpa [progressionSegment00041_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00041_1_0001Check

def progressionSegment00041_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 247240)

theorem progressionSegment00041_1_0002Check :
    progressionSegment00041_1_0002Tree.check indexedMarker 201601 150482 48 = true :=
  by decide

theorem progressionSegment00041_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 201601 150482 48 49 :=
  by simpa [progressionSegment00041_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00041_1_0002Check

def progressionSegment00041_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 1285) (.leaf 6362)) (.node (.leaf 11431) (.leaf 16502))) (.node (.node (.leaf 21567) (.leaf 26641)) (.node (.leaf 31708) (.leaf 36792)))) (.node (.node (.node (.leaf 41877) (.leaf 46943)) (.node (.leaf 52008) (.leaf 57068))) (.node (.node (.leaf 62143) .skip) (.node (.leaf 72297) (.leaf 77373))))) (.node (.node (.node (.node (.leaf 82465) (.leaf 87532)) (.node (.leaf 92591) (.leaf 97662))) (.node (.node (.leaf 102732) (.leaf 107809)) (.node (.leaf 112886) (.leaf 117955)))) (.node (.node (.node .skip (.leaf 128101)) (.node (.leaf 133166) (.leaf 138262))) (.node (.node (.leaf 143330) (.leaf 148400)) (.node (.leaf 153474) (.leaf 158546))))))

theorem progressionSegment00041_2_0000Check :
    progressionSegment00041_2_0000Tree.check indexedMarker 201601 51119 0 = true :=
  by decide

theorem progressionSegment00041_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 201601 51119 0 32 :=
  by simpa [progressionSegment00041_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00041_2_0000Check

def progressionSegment00041_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 163621) (.leaf 168686)) (.node (.leaf 173765) (.leaf 178823))) (.node (.node (.leaf 183892) (.leaf 188963)) (.node .skip (.leaf 199100)))) (.node (.node (.node (.leaf 204153) (.leaf 209237)) (.node (.leaf 214308) (.leaf 219379))) (.node (.node (.leaf 224448) (.leaf 229532)) (.node (.leaf 234594) (.leaf 239661)))))

theorem progressionSegment00041_2_0001Check :
    progressionSegment00041_2_0001Tree.check indexedMarker 201601 51119 32 = true :=
  by decide

theorem progressionSegment00041_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 201601 51119 32 48 :=
  by simpa [progressionSegment00041_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00041_2_0001Check

def progressionSegment00041_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 244735) .skip)

theorem progressionSegment00041_2_0002Check :
    progressionSegment00041_2_0002Tree.check indexedMarker 201601 51119 48 = true :=
  by decide

theorem progressionSegment00041_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 201601 51119 48 50 :=
  by simpa [progressionSegment00041_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00041_2_0002Check

def progressionSegment00042_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node .skip (.leaf 9976)) (.node (.leaf 15234) (.leaf 20483))) (.node (.node (.leaf 25735) (.leaf 30991)) (.node (.leaf 36249) (.leaf 41510)))) (.node (.node (.node (.leaf 46767) (.leaf 52016)) (.node (.leaf 57262) .skip)) (.node (.node (.leaf 67776) (.leaf 73029)) (.node (.leaf 78288) (.leaf 83560))))) (.node (.node (.node (.node (.leaf 88809) (.leaf 94064)) (.node (.leaf 99305) (.leaf 104562))) (.node (.node (.leaf 109822) (.leaf 115070)) (.node (.leaf 120326) (.leaf 125583)))) (.node (.node (.node (.leaf 130852) .skip) (.node (.leaf 141362) (.leaf 146611))) (.node (.node (.leaf 151865) (.leaf 157122)) (.node (.leaf 162389) (.leaf 167638))))))

theorem progressionSegment00042_1_0000Check :
    progressionSegment00042_1_0000Tree.check indexedMarker 208849 187718 0 = true :=
  by decide

theorem progressionSegment00042_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 208849 187718 0 32 :=
  by simpa [progressionSegment00042_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00042_1_0000Check

def progressionSegment00042_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 172899) (.leaf 178129)) (.node (.leaf 183381) (.leaf 188638))) (.node (.node .skip (.leaf 199142)) (.node (.leaf 204386) (.leaf 209649))))

theorem progressionSegment00042_1_0001Check :
    progressionSegment00042_1_0001Tree.check indexedMarker 208849 187718 32 = true :=
  by decide

theorem progressionSegment00042_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 208849 187718 32 40 :=
  by simpa [progressionSegment00042_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00042_1_0001Check

def progressionSegment00042_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 214898) (.leaf 220136)) (.node (.leaf 225396) (.leaf 230659)))

theorem progressionSegment00042_1_0002Check :
    progressionSegment00042_1_0002Tree.check indexedMarker 208849 187718 40 = true :=
  by decide

theorem progressionSegment00042_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 208849 187718 40 44 :=
  by simpa [progressionSegment00042_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00042_1_0002Check

def progressionSegment00042_1_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 235905) (.leaf 241160))

theorem progressionSegment00042_1_0003Check :
    progressionSegment00042_1_0003Tree.check indexedMarker 208849 187718 44 = true :=
  by decide

theorem progressionSegment00042_1_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 208849 187718 44 46 :=
  by simpa [progressionSegment00042_1_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00042_1_0003Check

def progressionSegment00042_1_0004Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 246420)

theorem progressionSegment00042_1_0004Check :
    progressionSegment00042_1_0004Tree.check indexedMarker 208849 187718 46 = true :=
  by decide

theorem progressionSegment00042_1_0004 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 208849 187718 46 47 :=
  by simpa [progressionSegment00042_1_0004Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00042_1_0004Check

def progressionSegment00042_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 526) (.leaf 5789)) (.node (.leaf 11051) (.leaf 16296))) (.node (.node (.leaf 21538) (.leaf 26805)) (.node (.leaf 32053) (.leaf 37311)))) (.node (.node (.node (.leaf 42574) (.leaf 47826)) (.node (.leaf 53060) (.leaf 58328))) (.node (.node (.leaf 63585) .skip) (.node (.leaf 74089) (.leaf 79355))))) (.node (.node (.node (.node (.leaf 84623) (.leaf 89876)) (.node (.leaf 95125) (.leaf 100374))) (.node (.node (.leaf 105629) (.leaf 110888)) (.node (.leaf 116140) (.leaf 121402)))) (.node (.node (.node .skip (.leaf 131905)) (.node (.leaf 137167) (.leaf 142427))) (.node (.node (.leaf 147677) (.leaf 152930)) (.node (.leaf 158193) (.leaf 163451))))))

theorem progressionSegment00042_2_0000Check :
    progressionSegment00042_2_0000Tree.check indexedMarker 208849 21131 0 = true :=
  by decide

theorem progressionSegment00042_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 208849 21131 0 32 :=
  by simpa [progressionSegment00042_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00042_2_0000Check

def progressionSegment00042_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 168697) (.leaf 173961)) (.node (.leaf 179197) (.leaf 184436))) (.node (.node (.leaf 189706) (.leaf 194959)) (.node .skip (.leaf 205447)))) (.node (.node (.node (.leaf 210702) (.leaf 215959)) (.node (.leaf 221206) (.leaf 226463))) (.node (.node (.leaf 231721) (.leaf 236975)) (.node (.leaf 242221) (.leaf 247488)))))

theorem progressionSegment00042_2_0001Check :
    progressionSegment00042_2_0001Tree.check indexedMarker 208849 21131 32 = true :=
  by decide

theorem progressionSegment00042_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 208849 21131 32 48 :=
  by simpa [progressionSegment00042_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00042_2_0001Check

def progressionSegment00043_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node .skip (.leaf 6752)) (.node (.leaf 12099) (.leaf 17430))) (.node (.node (.leaf 22767) (.leaf 28128)) (.node (.leaf 33472) (.leaf 38815)))) (.node (.node (.node (.leaf 44180) .skip) (.node (.leaf 54847) (.leaf 60191))) (.node (.node (.leaf 65560) (.leaf 70893)) (.node (.leaf 76254) (.leaf 81616))))) (.node (.node (.node (.node (.leaf 86963) (.leaf 92300)) (.node (.leaf 97643) (.leaf 102991))) (.node (.node (.leaf 108335) (.leaf 113681)) (.node (.leaf 119032) (.leaf 124369)))) (.node (.node (.node (.leaf 129727) .skip) (.node (.leaf 140441) (.leaf 145781))) (.node (.node (.leaf 151129) (.leaf 156480)) (.node (.leaf 161823) (.leaf 167169))))))

theorem progressionSegment00043_1_0000Check :
    progressionSegment00043_1_0000Tree.check indexedMarker 212521 55368 0 = true :=
  by decide

theorem progressionSegment00043_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 212521 55368 0 32 :=
  by simpa [progressionSegment00043_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00043_1_0000Check

def progressionSegment00043_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 172522) (.leaf 177843)) (.node .skip (.leaf 188539))) (.node (.node (.leaf 193902) (.leaf 199231)) (.node (.leaf 204567) (.leaf 209925))))

theorem progressionSegment00043_1_0001Check :
    progressionSegment00043_1_0001Tree.check indexedMarker 212521 55368 32 = true :=
  by decide

theorem progressionSegment00043_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 212521 55368 32 40 :=
  by simpa [progressionSegment00043_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00043_1_0001Check

def progressionSegment00043_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 215262) (.leaf 220598)) (.node (.leaf 225948) (.leaf 231300)))

theorem progressionSegment00043_1_0002Check :
    progressionSegment00043_1_0002Tree.check indexedMarker 212521 55368 40 = true :=
  by decide

theorem progressionSegment00043_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 212521 55368 40 44 :=
  by simpa [progressionSegment00043_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00043_1_0002Check

def progressionSegment00043_1_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 236641) (.leaf 241981))

theorem progressionSegment00043_1_0003Check :
    progressionSegment00043_1_0003Tree.check indexedMarker 212521 55368 44 = true :=
  by decide

theorem progressionSegment00043_1_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 212521 55368 44 46 :=
  by simpa [progressionSegment00043_1_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00043_1_0003Check

def progressionSegment00043_1_0004Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 247345)

theorem progressionSegment00043_1_0004Check :
    progressionSegment00043_1_0004Tree.check indexedMarker 212521 55368 46 = true :=
  by decide

theorem progressionSegment00043_1_0004 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 212521 55368 46 47 :=
  by simpa [progressionSegment00043_1_0004Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00043_1_0004Check

def progressionSegment00043_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 3955) (.leaf 9303)) (.node (.leaf 14656) (.leaf 19987))) (.node (.node (.leaf 25332) (.leaf 30685)) (.node (.leaf 36025) (.leaf 41387)))) (.node (.node (.node (.leaf 46736) (.leaf 52078)) (.node (.leaf 57417) (.leaf 62764))) (.node (.node (.leaf 68120) (.leaf 73468)) (.node (.leaf 78816) .skip)))) (.node (.node (.node (.node (.leaf 89518) (.leaf 94859)) (.node (.leaf 100202) (.leaf 105556))) (.node (.node (.leaf 110905) (.leaf 116248)) (.node (.leaf 121602) (.leaf 126941)))) (.node (.node (.node .skip (.leaf 137644)) (.node (.leaf 143002) (.leaf 148337))) (.node (.node (.leaf 153693) (.leaf 159035)) (.node (.leaf 164385) (.leaf 169738))))))

theorem progressionSegment00043_2_0000Check :
    progressionSegment00043_2_0000Tree.check indexedMarker 212521 157153 0 = true :=
  by decide

theorem progressionSegment00043_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 212521 157153 0 32 :=
  by simpa [progressionSegment00043_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00043_2_0000Check

def progressionSegment00043_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 175073) (.leaf 180406)) (.node (.leaf 185755) (.leaf 191106))) (.node (.node (.leaf 196455) (.leaf 201778)) (.node (.leaf 207136) (.leaf 212482))))

theorem progressionSegment00043_2_0001Check :
    progressionSegment00043_2_0001Tree.check indexedMarker 212521 157153 32 = true :=
  by decide

theorem progressionSegment00043_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 212521 157153 32 40 :=
  by simpa [progressionSegment00043_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00043_2_0001Check

def progressionSegment00043_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node .skip (.leaf 223167)) (.node (.leaf 228519) (.leaf 233857)))

theorem progressionSegment00043_2_0002Check :
    progressionSegment00043_2_0002Tree.check indexedMarker 212521 157153 40 = true :=
  by decide

theorem progressionSegment00043_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 212521 157153 40 44 :=
  by simpa [progressionSegment00043_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00043_2_0002Check

def progressionSegment00043_2_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 239208) (.leaf 244548))

theorem progressionSegment00043_2_0003Check :
    progressionSegment00043_2_0003Tree.check indexedMarker 212521 157153 44 = true :=
  by decide

theorem progressionSegment00043_2_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 212521 157153 44 46 :=
  by simpa [progressionSegment00043_2_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00043_2_0003Check

def progressionSegment00043_2_0004Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 249904)

theorem progressionSegment00043_2_0004Check :
    progressionSegment00043_2_0004Tree.check indexedMarker 212521 157153 46 = true :=
  by decide

theorem progressionSegment00043_2_0004 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 212521 157153 46 47 :=
  by simpa [progressionSegment00043_2_0004Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00043_2_0004Check

def progressionSegment00044_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 4127) (.leaf 10639)) (.node (.leaf 17153) (.leaf 23656))) (.node (.node (.leaf 30191) (.leaf 36708)) (.node (.leaf 43239) .skip))) (.node (.node (.node (.leaf 56255) (.leaf 62778)) (.node (.leaf 69306) (.leaf 75829))) (.node (.node (.leaf 82360) .skip) (.node (.leaf 95386) (.leaf 101894))))) (.node (.node (.node (.node (.leaf 108417) (.leaf 114929)) (.node (.leaf 121463) (.leaf 127977))) (.node (.node (.leaf 134488) (.leaf 141034)) (.node (.leaf 147538) (.leaf 154057)))) (.node (.node (.node (.leaf 160580) (.leaf 167098)) (.node (.leaf 173615) (.leaf 180123))) (.node (.node (.leaf 186648) (.leaf 193159)) (.node (.leaf 199670) (.leaf 206181))))))

theorem progressionSegment00044_1_0000Check :
    progressionSegment00044_1_0000Tree.check indexedMarker 259081 163690 0 = true :=
  by decide

theorem progressionSegment00044_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 259081 163690 0 32 :=
  by simpa [progressionSegment00044_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00044_1_0000Check

def progressionSegment00044_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node .skip (.leaf 219208)) (.node (.leaf 225727) (.leaf 232242)))

theorem progressionSegment00044_1_0001Check :
    progressionSegment00044_1_0001Tree.check indexedMarker 259081 163690 32 = true :=
  by decide

theorem progressionSegment00044_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 259081 163690 32 36 :=
  by simpa [progressionSegment00044_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00044_1_0001Check

def progressionSegment00044_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 238760) (.leaf 245286))

theorem progressionSegment00044_1_0002Check :
    progressionSegment00044_1_0002Tree.check indexedMarker 259081 163690 36 = true :=
  by decide

theorem progressionSegment00044_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 259081 163690 36 38 :=
  by simpa [progressionSegment00044_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00044_1_0002Check

def progressionSegment00044_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 2394) (.leaf 8922)) (.node (.leaf 15439) (.leaf 21938))) (.node (.node (.leaf 28474) (.leaf 34991)) (.node (.leaf 41516) (.leaf 48033)))) (.node (.node (.node (.leaf 54519) (.leaf 61054)) (.node (.leaf 67584) .skip)) (.node (.node (.leaf 80637) (.leaf 87162)) (.node (.leaf 93667) (.leaf 100180))))) (.node (.node (.node (.node (.leaf 106695) .skip) (.node (.leaf 119744) (.leaf 126260))) (.node (.node (.leaf 132763) (.leaf 139308)) (.node (.leaf 145830) (.leaf 152336)))) (.node (.node (.node (.leaf 158853) (.leaf 165386)) (.node (.leaf 171910) (.leaf 178401))) (.node (.node (.leaf 184918) (.leaf 191447)) (.node (.leaf 197959) (.leaf 204458))))))

theorem progressionSegment00044_2_0000Check :
    progressionSegment00044_2_0000Tree.check indexedMarker 259081 95391 0 = true :=
  by decide

theorem progressionSegment00044_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 259081 95391 0 32 :=
  by simpa [progressionSegment00044_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00044_2_0000Check

def progressionSegment00044_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 210980) (.leaf 217493)) (.node (.leaf 224008) (.leaf 230536)))

theorem progressionSegment00044_2_0001Check :
    progressionSegment00044_2_0001Tree.check indexedMarker 259081 95391 32 = true :=
  by decide

theorem progressionSegment00044_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 259081 95391 32 36 :=
  by simpa [progressionSegment00044_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00044_2_0001Check

def progressionSegment00044_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node .skip (.leaf 243562))

theorem progressionSegment00044_2_0002Check :
    progressionSegment00044_2_0002Tree.check indexedMarker 259081 95391 36 = true :=
  by decide

theorem progressionSegment00044_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 259081 95391 36 38 :=
  by simpa [progressionSegment00044_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00044_2_0002Check

def progressionSegment00044_2_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 250090)

theorem progressionSegment00044_2_0003Check :
    progressionSegment00044_2_0003Tree.check indexedMarker 259081 95391 38 = true :=
  by decide

theorem progressionSegment00044_2_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 259081 95391 38 39 :=
  by simpa [progressionSegment00044_2_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00044_2_0003Check

def progressionSegment00045_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 6200) (.leaf 13027)) (.node (.leaf 19844) (.leaf 26678))) (.node (.node (.leaf 33507) (.leaf 40351)) (.node .skip (.leaf 53977)))) (.node (.node (.node (.leaf 60818) (.leaf 67656)) (.node .skip (.leaf 81328))) (.node (.node (.leaf 88170) (.leaf 94984)) (.node (.leaf 101807) (.leaf 108637))))) (.node (.node (.node (.node (.leaf 115473) (.leaf 122300)) (.node (.leaf 129129) (.leaf 135969))) (.node (.node (.leaf 142805) (.leaf 149628)) (.node (.leaf 156459) (.leaf 163298)))) (.node (.node (.node (.leaf 170128) (.leaf 176939)) (.node (.leaf 183760) (.leaf 190602))) (.node (.node (.leaf 197422) (.leaf 204224)) (.node (.leaf 211069) .skip)))))

theorem progressionSegment00045_1_0000Check :
    progressionSegment00045_1_0000Tree.check indexedMarker 271441 246147 0 = true :=
  by decide

theorem progressionSegment00045_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 271441 246147 0 32 :=
  by simpa [progressionSegment00045_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00045_1_0000Check

def progressionSegment00045_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 224723) (.leaf 231553)) (.node (.leaf 238373) .skip))

theorem progressionSegment00045_1_0001Check :
    progressionSegment00045_1_0001Tree.check indexedMarker 271441 246147 32 = true :=
  by decide

theorem progressionSegment00045_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 271441 246147 32 36 :=
  by simpa [progressionSegment00045_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00045_1_0001Check

def progressionSegment00045_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 629) (.leaf 7466)) (.node (.leaf 14291) (.leaf 21112))) (.node (.node (.leaf 27956) (.leaf 34778)) (.node (.leaf 41621) (.leaf 48439)))) (.node (.node (.node (.leaf 55257) (.leaf 62091)) (.node (.leaf 68930) (.leaf 75766))) (.node (.node (.leaf 82606) (.leaf 89432)) (.node .skip (.leaf 103079))))) (.node (.node (.node (.node (.leaf 109914) (.leaf 116742)) (.node .skip (.leaf 130410))) (.node (.node (.leaf 137242) (.leaf 144072)) (.node (.leaf 150898) (.leaf 157727)))) (.node (.node (.node (.leaf 164566) (.leaf 171402)) (.node (.leaf 178205) (.leaf 185035))) (.node (.node (.leaf 191873) (.leaf 198691)) (.node (.leaf 205505) (.leaf 212342))))))

theorem progressionSegment00045_2_0000Check :
    progressionSegment00045_2_0000Tree.check indexedMarker 271441 25294 0 = true :=
  by decide

theorem progressionSegment00045_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 271441 25294 0 32 :=
  by simpa [progressionSegment00045_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00045_2_0000Check

def progressionSegment00045_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 219164) (.leaf 225985)) (.node (.leaf 232816) (.leaf 239642)))

theorem progressionSegment00045_2_0001Check :
    progressionSegment00045_2_0001Tree.check indexedMarker 271441 25294 32 = true :=
  by decide

theorem progressionSegment00045_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 271441 25294 32 36 :=
  by simpa [progressionSegment00045_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00045_2_0001Check

def progressionSegment00045_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 246481)

theorem progressionSegment00045_2_0002Check :
    progressionSegment00045_2_0002Tree.check indexedMarker 271441 25294 36 = true :=
  by decide

theorem progressionSegment00045_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 271441 25294 36 37 :=
  by simpa [progressionSegment00045_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00045_2_0002Check

def progressionSegment00046_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node .skip (.leaf 9129)) (.node (.leaf 16498) (.leaf 23842))) (.node (.node (.leaf 31219) (.leaf 38588)) (.node .skip (.leaf 53300)))) (.node (.node (.node (.leaf 60663) (.leaf 68043)) (.node (.leaf 75416) (.leaf 82794))) (.node (.node (.leaf 90155) (.leaf 97496)) (.node (.leaf 104861) (.leaf 112241))))) (.node (.node (.node (.node (.leaf 119598) (.leaf 126960)) (.node (.leaf 134321) (.leaf 141706))) (.node (.node (.leaf 149058) (.leaf 156428)) (.node (.leaf 163803) (.leaf 171161)))) (.node (.node (.node (.leaf 178504) .skip) (.node (.leaf 193238) (.leaf 200582))) (.node (.node (.leaf 207955) (.leaf 215309)) (.node (.leaf 222675) .skip)))))

theorem progressionSegment00046_1_0000Check :
    progressionSegment00046_1_0000Tree.check indexedMarker 292681 70382 0 = true :=
  by decide

theorem progressionSegment00046_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 292681 70382 0 32 :=
  by simpa [progressionSegment00046_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00046_1_0000Check

def progressionSegment00046_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 237396) (.leaf 244757))

theorem progressionSegment00046_1_0001Check :
    progressionSegment00046_1_0001Tree.check indexedMarker 292681 70382 32 = true :=
  by decide

theorem progressionSegment00046_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 292681 70382 32 34 :=
  by simpa [progressionSegment00046_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00046_1_0001Check

def progressionSegment00046_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 5602) (.leaf 12957)) (.node (.leaf 20317) (.leaf 27685))) (.node (.node (.leaf 35047) (.leaf 42421)) (.node (.leaf 49773) (.leaf 57127)))) (.node (.node (.node (.leaf 64501) (.leaf 71860)) (.node (.leaf 79239) (.leaf 86616))) (.node (.node (.leaf 93971) (.leaf 101316)) (.node (.leaf 108689) (.leaf 116056))))) (.node (.node (.node (.node (.leaf 123420) (.leaf 130792)) (.node .skip (.leaf 145520))) (.node (.node (.leaf 152884) (.leaf 160248)) (.node (.leaf 167619) (.leaf 174974)))) (.node (.node (.node .skip (.leaf 189693)) (.node (.leaf 197054) (.leaf 204404))) (.node (.node (.leaf 211775) (.leaf 219125)) (.node (.leaf 226493) (.leaf 233852))))))

theorem progressionSegment00046_2_0000Check :
    progressionSegment00046_2_0000Tree.check indexedMarker 292681 222299 0 = true :=
  by decide

theorem progressionSegment00046_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 292681 222299 0 32 :=
  by simpa [progressionSegment00046_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00046_2_0000Check

def progressionSegment00046_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 241210) (.leaf 248583))

theorem progressionSegment00046_2_0001Check :
    progressionSegment00046_2_0001Tree.check indexedMarker 292681 222299 32 = true :=
  by decide

theorem progressionSegment00046_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 292681 222299 32 34 :=
  by simpa [progressionSegment00046_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00046_2_0001Check

def progressionSegment00047_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 5073) (.leaf 12868)) (.node .skip (.leaf 28481))) (.node (.node (.leaf 36284) (.leaf 44099)) (.node (.leaf 51893) (.leaf 59689)))) (.node (.node (.node (.leaf 67504) (.leaf 75316)) (.node (.leaf 83132) (.leaf 90932))) (.node (.node (.leaf 98731) .skip) (.node (.leaf 114344) (.leaf 122155))))) (.node (.node (.node (.node (.leaf 129969) (.leaf 137778)) (.node (.leaf 145581) (.leaf 153396))) (.node (.node (.leaf 161196) (.leaf 169010)) (.node (.leaf 176802) (.leaf 184601)))) (.node (.node (.node (.leaf 192416) (.leaf 200207)) (.node (.leaf 208012) .skip)) (.node (.node (.leaf 223613) (.leaf 231417)) (.node (.leaf 239225) (.leaf 247026))))))

theorem progressionSegment00047_1_0000Check :
    progressionSegment00047_1_0000Tree.check indexedMarker 310249 201195 0 = true :=
  by decide

theorem progressionSegment00047_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 310249 201195 0 32 :=
  by simpa [progressionSegment00047_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00047_1_0000Check

def progressionSegment00047_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 2741) (.leaf 10548)) (.node (.leaf 18351) (.leaf 26152))) (.node (.node (.leaf 33968) (.leaf 41781)) (.node (.leaf 49577) (.leaf 57378)))) (.node (.node (.node (.leaf 65188) (.leaf 72992)) (.node (.leaf 80813) .skip)) (.node (.node (.leaf 96421) (.leaf 104225)) (.node (.leaf 112039) (.leaf 119844))))) (.node (.node (.node (.node (.leaf 127639) (.leaf 135451)) (.node (.leaf 143273) (.leaf 151076))) (.node (.node (.leaf 158872) (.leaf 166677)) (.node .skip (.leaf 182279)))) (.node (.node (.node (.leaf 190085) (.leaf 197896)) (.node (.leaf 205691) (.leaf 213499))) (.node (.node (.leaf 221292) (.leaf 229095)) (.node (.leaf 236904) (.leaf 244703))))))

theorem progressionSegment00047_2_0000Check :
    progressionSegment00047_2_0000Tree.check indexedMarker 310249 109054 0 = true :=
  by decide

theorem progressionSegment00047_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 310249 109054 0 32 :=
  by simpa [progressionSegment00047_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00047_2_0000Check

def progressionSegment00048_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 139) (.leaf 8289)) (.node (.leaf 16429) (.leaf 24570))) (.node (.node (.leaf 32728) (.leaf 40873)) (.node (.leaf 49017) (.leaf 57149)))) (.node (.node (.node (.leaf 65300) (.leaf 73455)) (.node (.leaf 81619) (.leaf 89762))) (.node (.node (.leaf 97893) (.leaf 106042)) (.node (.leaf 114183) (.leaf 122336)))))

theorem progressionSegment00048_1_0000Check :
    progressionSegment00048_1_0000Tree.check indexedMarker 323761 5604 0 = true :=
  by decide

theorem progressionSegment00048_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 323761 5604 0 16 :=
  by simpa [progressionSegment00048_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00048_1_0000Check

def progressionSegment00048_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 130489) (.leaf 138651)) (.node (.leaf 146776) (.leaf 154924))) (.node (.node (.leaf 163080) (.leaf 171228)) (.node (.leaf 179355) .skip)))

theorem progressionSegment00048_1_0001Check :
    progressionSegment00048_1_0001Tree.check indexedMarker 323761 5604 16 = true :=
  by decide

theorem progressionSegment00048_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 323761 5604 16 24 :=
  by simpa [progressionSegment00048_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00048_1_0001Check

def progressionSegment00048_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node .skip (.leaf 203764)) (.node (.leaf 211923) (.leaf 220054)))

theorem progressionSegment00048_1_0002Check :
    progressionSegment00048_1_0002Tree.check indexedMarker 323761 5604 24 = true :=
  by decide

theorem progressionSegment00048_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 323761 5604 24 28 :=
  by simpa [progressionSegment00048_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00048_1_0002Check

def progressionSegment00048_1_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 228209) (.leaf 236353))

theorem progressionSegment00048_1_0003Check :
    progressionSegment00048_1_0003Tree.check indexedMarker 323761 5604 28 = true :=
  by decide

theorem progressionSegment00048_1_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 323761 5604 28 30 :=
  by simpa [progressionSegment00048_1_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00048_1_0003Check

def progressionSegment00048_1_0004Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 244493)

theorem progressionSegment00048_1_0004Check :
    progressionSegment00048_1_0004Tree.check indexedMarker 323761 5604 30 = true :=
  by decide

theorem progressionSegment00048_1_0004 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 323761 5604 30 31 :=
  by simpa [progressionSegment00048_1_0004Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00048_1_0004Check

def progressionSegment00048_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node .skip .skip) (.node (.leaf 24288) (.leaf 32442))) (.node (.node (.leaf 40601) (.leaf 48731)) (.node (.leaf 56863) (.leaf 65030)))) (.node (.node (.node (.leaf 73171) (.leaf 81330)) (.node (.leaf 89476) (.leaf 97611))) (.node (.node (.leaf 105765) (.leaf 113896)) (.node (.leaf 122051) (.leaf 130208)))))

theorem progressionSegment00048_2_0000Check :
    progressionSegment00048_2_0000Tree.check indexedMarker 323761 318157 0 = true :=
  by decide

theorem progressionSegment00048_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 323761 318157 0 16 :=
  by simpa [progressionSegment00048_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00048_2_0000Check

def progressionSegment00048_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 138359) (.leaf 146497)) (.node (.leaf 154645) (.leaf 162799))) (.node (.node (.leaf 170946) (.leaf 179072)) (.node (.leaf 187223) (.leaf 195362))))

theorem progressionSegment00048_2_0001Check :
    progressionSegment00048_2_0001Tree.check indexedMarker 323761 318157 16 = true :=
  by decide

theorem progressionSegment00048_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 323761 318157 16 24 :=
  by simpa [progressionSegment00048_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00048_2_0001Check

def progressionSegment00048_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 203482) .skip) (.node .skip (.leaf 227937)))

theorem progressionSegment00048_2_0002Check :
    progressionSegment00048_2_0002Tree.check indexedMarker 323761 318157 24 = true :=
  by decide

theorem progressionSegment00048_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 323761 318157 24 28 :=
  by simpa [progressionSegment00048_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00048_2_0002Check

def progressionSegment00048_2_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 236066) (.leaf 244212))

theorem progressionSegment00048_2_0003Check :
    progressionSegment00048_2_0003Tree.check indexedMarker 323761 318157 28 = true :=
  by decide

theorem progressionSegment00048_2_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 323761 318157 28 30 :=
  by simpa [progressionSegment00048_2_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00048_2_0003Check

def progressionSegment00049_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 8205) (.leaf 16572)) (.node (.leaf 24936) .skip)) (.node (.node (.leaf 41713) (.leaf 50088)) (.node (.leaf 58455) (.leaf 66839)))) (.node (.node (.node (.leaf 75216) (.leaf 83604)) (.node (.leaf 91978) (.leaf 100347))) (.node (.node (.leaf 108726) (.leaf 117102)) (.node (.leaf 125474) (.leaf 133858)))))

theorem progressionSegment00049_1_0000Check :
    progressionSegment00049_1_0000Tree.check indexedMarker 332929 325981 0 = true :=
  by decide

theorem progressionSegment00049_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 332929 325981 0 16 :=
  by simpa [progressionSegment00049_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00049_1_0000Check

def progressionSegment00049_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 142249) (.leaf 150618)) (.node (.leaf 158995) .skip)) (.node (.node (.leaf 175745) (.leaf 184110)) (.node (.leaf 192499) (.leaf 200853))))

theorem progressionSegment00049_1_0001Check :
    progressionSegment00049_1_0001Tree.check indexedMarker 332929 325981 16 = true :=
  by decide

theorem progressionSegment00049_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 332929 325981 16 24 :=
  by simpa [progressionSegment00049_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00049_1_0001Check

def progressionSegment00049_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 209222) (.leaf 217599)) (.node (.leaf 225970) (.leaf 234350)))

theorem progressionSegment00049_1_0002Check :
    progressionSegment00049_1_0002Tree.check indexedMarker 332929 325981 24 = true :=
  by decide

theorem progressionSegment00049_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 332929 325981 24 28 :=
  by simpa [progressionSegment00049_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00049_1_0002Check

def progressionSegment00049_1_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node .skip (.leaf 251096))

theorem progressionSegment00049_1_0003Check :
    progressionSegment00049_1_0003Tree.check indexedMarker 332929 325981 28 = true :=
  by decide

theorem progressionSegment00049_1_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 332929 325981 28 30 :=
  by simpa [progressionSegment00049_1_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00049_1_0003Check

def progressionSegment00049_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 175) (.leaf 8550)) (.node (.leaf 16931) (.leaf 25295))) (.node (.node (.leaf 33681) .skip) (.node (.leaf 50434) (.leaf 58798)))) (.node (.node (.node (.leaf 67180) (.leaf 75570)) (.node (.leaf 83957) (.leaf 92323))) (.node (.node (.leaf 100691) (.leaf 109078)) (.node (.leaf 117456) (.leaf 125830)))))

theorem progressionSegment00049_2_0000Check :
    progressionSegment00049_2_0000Tree.check indexedMarker 332929 6948 0 = true :=
  by decide

theorem progressionSegment00049_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 332929 6948 0 16 :=
  by simpa [progressionSegment00049_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00049_2_0000Check

def progressionSegment00049_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 134200) (.leaf 142596)) (.node (.leaf 150973) (.leaf 159342))) (.node (.node (.leaf 167723) .skip) (.node (.leaf 184456) (.leaf 192850))))

theorem progressionSegment00049_2_0001Check :
    progressionSegment00049_2_0001Tree.check indexedMarker 332929 6948 16 = true :=
  by decide

theorem progressionSegment00049_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 332929 6948 16 24 :=
  by simpa [progressionSegment00049_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00049_2_0001Check

def progressionSegment00049_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 201203) (.leaf 209582)) (.node (.leaf 217953) (.leaf 226322)))

theorem progressionSegment00049_2_0002Check :
    progressionSegment00049_2_0002Tree.check indexedMarker 332929 6948 24 = true :=
  by decide

theorem progressionSegment00049_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 332929 6948 24 28 :=
  by simpa [progressionSegment00049_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00049_2_0002Check

def progressionSegment00049_2_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 234700) (.leaf 243077))

theorem progressionSegment00049_2_0003Check :
    progressionSegment00049_2_0003Tree.check indexedMarker 332929 6948 28 = true :=
  by decide

theorem progressionSegment00049_2_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 332929 6948 28 30 :=
  by simpa [progressionSegment00049_2_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00049_2_0003Check

def progressionSegment00049_2_0004Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  .skip

theorem progressionSegment00049_2_0004Check :
    progressionSegment00049_2_0004Tree.check indexedMarker 332929 6948 30 = true :=
  by decide

theorem progressionSegment00049_2_0004 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 332929 6948 30 31 :=
  by simpa [progressionSegment00049_2_0004Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00049_2_0004Check

def progressionSegment00050_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node .skip (.leaf 14593)) (.node (.leaf 23425) (.leaf 32287))) (.node (.node (.leaf 41144) (.leaf 49985)) (.node (.leaf 58820) (.leaf 67678)))) (.node (.node (.node (.leaf 76530) (.leaf 85393)) (.node (.leaf 94230) (.leaf 103069))) (.node (.node (.leaf 111931) (.leaf 120766)) (.node .skip (.leaf 138483)))))

theorem progressionSegment00050_1_0000Check :
    progressionSegment00050_1_0000Tree.check indexedMarker 351649 228382 0 = true :=
  by decide

theorem progressionSegment00050_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 351649 228382 0 16 :=
  by simpa [progressionSegment00050_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00050_1_0000Check

def progressionSegment00050_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 147318) (.leaf 156163)) (.node (.leaf 165019) (.leaf 173871))) (.node (.node (.leaf 182699) (.leaf 191558)) (.node (.leaf 200381) (.leaf 209225))))

theorem progressionSegment00050_1_0001Check :
    progressionSegment00050_1_0001Tree.check indexedMarker 351649 228382 16 = true :=
  by decide

theorem progressionSegment00050_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 351649 228382 16 24 :=
  by simpa [progressionSegment00050_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00050_1_0001Check

def progressionSegment00050_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 218074) .skip) (.node (.leaf 235760) (.leaf 244611)))

theorem progressionSegment00050_1_0002Check :
    progressionSegment00050_1_0002Tree.check indexedMarker 351649 228382 24 = true :=
  by decide

theorem progressionSegment00050_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 351649 228382 24 28 :=
  by simpa [progressionSegment00050_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00050_1_0002Check

def progressionSegment00050_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 3103) (.leaf 11957)) (.node (.leaf 20791) (.leaf 29642))) (.node (.node (.leaf 38484) (.leaf 47342)) (.node (.leaf 56176) (.leaf 65042)))) (.node (.node (.node (.leaf 73877) (.leaf 82748)) (.node .skip (.leaf 100430))) (.node (.node (.leaf 109283) (.leaf 118126)) (.node (.leaf 126972) (.leaf 135828)))))

theorem progressionSegment00050_2_0000Check :
    progressionSegment00050_2_0000Tree.check indexedMarker 351649 123267 0 = true :=
  by decide

theorem progressionSegment00050_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 351649 123267 0 16 :=
  by simpa [progressionSegment00050_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00050_2_0000Check

def progressionSegment00050_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 144679) (.leaf 153525)) (.node (.leaf 162381) (.leaf 171229))) (.node (.node (.leaf 180059) (.leaf 188903)) (.node (.leaf 197755) (.leaf 206582))))

theorem progressionSegment00050_2_0001Check :
    progressionSegment00050_2_0001Tree.check indexedMarker 351649 123267 16 = true :=
  by decide

theorem progressionSegment00050_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 351649 123267 16 24 :=
  by simpa [progressionSegment00050_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00050_2_0001Check

def progressionSegment00050_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node .skip (.leaf 224273)) (.node (.leaf 233120) (.leaf 241954)))

theorem progressionSegment00050_2_0002Check :
    progressionSegment00050_2_0002Tree.check indexedMarker 351649 123267 24 = true :=
  by decide

theorem progressionSegment00050_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 351649 123267 24 28 :=
  by simpa [progressionSegment00050_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00050_2_0002Check

def progressionSegment00050_2_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 250806)

theorem progressionSegment00050_2_0003Check :
    progressionSegment00050_2_0003Tree.check indexedMarker 351649 123267 28 = true :=
  by decide

theorem progressionSegment00050_2_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 351649 123267 28 29 :=
  by simpa [progressionSegment00050_2_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00050_2_0003Check

def progressionSegment00051_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 2686) (.leaf 11785)) (.node (.leaf 20864) (.leaf 29953))) (.node (.node .skip (.leaf 48132)) (.node (.leaf 57203) (.leaf 66297)))) (.node (.node (.node (.leaf 75398) (.leaf 84499)) (.node (.leaf 93581) (.leaf 102650))) (.node (.node (.leaf 111752) (.leaf 120836)) (.node (.leaf 129932) .skip))))

theorem progressionSegment00051_1_0000Check :
    progressionSegment00051_1_0000Tree.check indexedMarker 361201 106853 0 = true :=
  by decide

theorem progressionSegment00051_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 361201 106853 0 16 :=
  by simpa [progressionSegment00051_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00051_1_0000Check

def progressionSegment00051_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 148112) (.leaf 157198)) (.node (.leaf 166279) (.leaf 175371))) (.node (.node (.leaf 184437) (.leaf 193549)) (.node (.leaf 202605) (.leaf 211697))))

theorem progressionSegment00051_1_0001Check :
    progressionSegment00051_1_0001Tree.check indexedMarker 361201 106853 16 = true :=
  by decide

theorem progressionSegment00051_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 361201 106853 16 24 :=
  by simpa [progressionSegment00051_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00051_1_0001Check

def progressionSegment00051_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 220773) (.leaf 229872)) (.node (.leaf 238947) (.leaf 248055)))

theorem progressionSegment00051_1_0002Check :
    progressionSegment00051_1_0002Tree.check indexedMarker 361201 106853 24 = true :=
  by decide

theorem progressionSegment00051_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 361201 106853 24 28 :=
  by simpa [progressionSegment00051_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00051_1_0002Check

def progressionSegment00051_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 6401) (.leaf 15486)) (.node (.leaf 24568) (.leaf 33665))) (.node (.node (.leaf 42758) (.leaf 51833)) (.node (.leaf 60912) (.leaf 70013)))) (.node (.node (.node (.leaf 79104) .skip) (.node (.leaf 97282) (.leaf 106367))) (.node (.node (.leaf 115462) (.leaf 124538)) (.node (.leaf 133638) (.leaf 142737)))))

theorem progressionSegment00051_2_0000Check :
    progressionSegment00051_2_0000Tree.check indexedMarker 361201 254348 0 = true :=
  by decide

theorem progressionSegment00051_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 361201 254348 0 16 :=
  by simpa [progressionSegment00051_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00051_2_0000Check

def progressionSegment00051_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 151823) (.leaf 160910)) (.node (.leaf 170008) (.leaf 179074))) (.node (.node .skip (.leaf 197251)) (.node (.leaf 206323) (.leaf 215403))))

theorem progressionSegment00051_2_0001Check :
    progressionSegment00051_2_0001Tree.check indexedMarker 361201 254348 16 = true :=
  by decide

theorem progressionSegment00051_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 361201 254348 16 24 :=
  by simpa [progressionSegment00051_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00051_2_0001Check

def progressionSegment00051_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 224491) (.leaf 233579))

theorem progressionSegment00051_2_0002Check :
    progressionSegment00051_2_0002Tree.check indexedMarker 361201 254348 24 = true :=
  by decide

theorem progressionSegment00051_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 361201 254348 24 26 :=
  by simpa [progressionSegment00051_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00051_2_0002Check

def progressionSegment00051_2_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 242665)

theorem progressionSegment00051_2_0003Check :
    progressionSegment00051_2_0003Tree.check indexedMarker 361201 254348 26 = true :=
  by decide

theorem progressionSegment00051_2_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 361201 254348 26 27 :=
  by simpa [progressionSegment00051_2_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00051_2_0003Check

def progressionSegment00052_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 8914) (.leaf 18367)) (.node (.leaf 27826) (.leaf 37274))) (.node (.node (.leaf 46738) (.leaf 56174)) (.node .skip (.leaf 75093)))) (.node (.node (.node (.leaf 84563) (.leaf 94018)) (.node (.leaf 103462) (.leaf 112925))) (.node (.node .skip (.leaf 131825)) (.node (.leaf 141296) (.leaf 150746)))))

theorem progressionSegment00052_1_0000Check :
    progressionSegment00052_1_0000Tree.check indexedMarker 375769 354279 0 = true :=
  by decide

theorem progressionSegment00052_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 375769 354279 0 16 :=
  by simpa [progressionSegment00052_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00052_1_0000Check

def progressionSegment00052_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 160199) (.leaf 169658)) (.node (.leaf 179097) (.leaf 188545))) (.node (.node (.leaf 198002) (.leaf 207452)) (.node (.leaf 216898) (.leaf 226345))))

theorem progressionSegment00052_1_0001Check :
    progressionSegment00052_1_0001Tree.check indexedMarker 375769 354279 16 = true :=
  by decide

theorem progressionSegment00052_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 375769 354279 16 24 :=
  by simpa [progressionSegment00052_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00052_1_0001Check

def progressionSegment00052_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 235793) (.leaf 245255))

theorem progressionSegment00052_1_0002Check :
    progressionSegment00052_1_0002Tree.check indexedMarker 375769 354279 24 = true :=
  by decide

theorem progressionSegment00052_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 375769 354279 24 26 :=
  by simpa [progressionSegment00052_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00052_1_0002Check

def progressionSegment00052_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 534) (.leaf 9993)) (.node (.leaf 19440) (.leaf 28906))) (.node (.node (.leaf 38350) (.leaf 47815)) (.node (.leaf 57257) (.leaf 66723)))) (.node (.node (.node (.leaf 76179) (.leaf 85650)) (.node (.leaf 95094) (.leaf 104539))) (.node (.node .skip (.leaf 123456)) (.node (.leaf 132897) (.leaf 142371)))))

theorem progressionSegment00052_2_0000Check :
    progressionSegment00052_2_0000Tree.check indexedMarker 375769 21490 0 = true :=
  by decide

theorem progressionSegment00052_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 375769 21490 0 16 :=
  by simpa [progressionSegment00052_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00052_2_0000Check

def progressionSegment00052_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 151828) (.leaf 161282)) (.node .skip (.leaf 180178))) (.node (.node (.leaf 189628) (.leaf 199074)) (.node (.leaf 208531) (.leaf 217978))))

theorem progressionSegment00052_2_0001Check :
    progressionSegment00052_2_0001Tree.check indexedMarker 375769 21490 16 = true :=
  by decide

theorem progressionSegment00052_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 375769 21490 16 24 :=
  by simpa [progressionSegment00052_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00052_2_0001Check

def progressionSegment00052_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 227431) (.leaf 236882))

theorem progressionSegment00052_2_0002Check :
    progressionSegment00052_2_0002Tree.check indexedMarker 375769 21490 24 = true :=
  by decide

theorem progressionSegment00052_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 375769 21490 24 26 :=
  by simpa [progressionSegment00052_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00052_2_0002Check

def progressionSegment00052_2_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 246333)

theorem progressionSegment00052_2_0003Check :
    progressionSegment00052_2_0003Tree.check indexedMarker 375769 21490 26 = true :=
  by decide

theorem progressionSegment00052_2_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 375769 21490 26 27 :=
  by simpa [progressionSegment00052_2_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00052_2_0003Check

def progressionSegment00053_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node .skip (.leaf 15237)) (.node (.leaf 24800) (.leaf 34393))) (.node (.node (.leaf 43978) (.leaf 53522)) (.node (.leaf 63119) (.leaf 72693)))) (.node (.node (.node (.leaf 82301) (.leaf 91866)) (.node (.leaf 101440) (.leaf 111023))) (.node (.node (.leaf 120593) (.leaf 130191)) (.node (.leaf 139774) (.leaf 149336)))))

theorem progressionSegment00053_1_0000Check :
    progressionSegment00053_1_0000Tree.check indexedMarker 380689 224782 0 = true :=
  by decide

theorem progressionSegment00053_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 380689 224782 0 16 :=
  by simpa [progressionSegment00053_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00053_1_0000Check

def progressionSegment00053_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 158919) (.leaf 168503)) (.node (.leaf 178062) (.leaf 187646))) (.node (.node (.leaf 197222) (.leaf 206792)) (.node (.leaf 216355) (.leaf 225931))))

theorem progressionSegment00053_1_0001Check :
    progressionSegment00053_1_0001Tree.check indexedMarker 380689 224782 16 = true :=
  by decide

theorem progressionSegment00053_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 380689 224782 16 24 :=
  by simpa [progressionSegment00053_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00053_1_0001Check

def progressionSegment00053_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node .skip .skip)

theorem progressionSegment00053_1_0002Check :
    progressionSegment00053_1_0002Tree.check indexedMarker 380689 224782 24 = true :=
  by decide

theorem progressionSegment00053_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 380689 224782 24 26 :=
  by simpa [progressionSegment00053_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00053_1_0002Check

def progressionSegment00053_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node .skip (.leaf 13497)) (.node (.leaf 23064) (.leaf 32661))) (.node (.node (.leaf 42246) (.leaf 51806)) (.node (.leaf 61375) (.leaf 70957)))) (.node (.node (.node (.leaf 80554) (.leaf 90148)) (.node (.leaf 99703) (.leaf 109295))) (.node (.node (.leaf 118863) (.leaf 128448)) (.node (.leaf 138038) (.leaf 147611)))))

theorem progressionSegment00053_2_0000Check :
    progressionSegment00053_2_0000Tree.check indexedMarker 380689 155907 0 = true :=
  by decide

theorem progressionSegment00053_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 380689 155907 0 16 :=
  by simpa [progressionSegment00053_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00053_2_0000Check

def progressionSegment00053_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 157189) (.leaf 166761)) (.node (.leaf 176337) (.leaf 185908))) (.node (.node (.leaf 195490) (.leaf 205050)) (.node (.leaf 214633) (.leaf 224208))))

theorem progressionSegment00053_2_0001Check :
    progressionSegment00053_2_0001Tree.check indexedMarker 380689 155907 16 = true :=
  by decide

theorem progressionSegment00053_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 380689 155907 16 24 :=
  by simpa [progressionSegment00053_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00053_2_0001Check

def progressionSegment00053_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node .skip .skip)

theorem progressionSegment00053_2_0002Check :
    progressionSegment00053_2_0002Tree.check indexedMarker 380689 155907 24 = true :=
  by decide

theorem progressionSegment00053_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 380689 155907 24 26 :=
  by simpa [progressionSegment00053_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00053_2_0002Check

def progressionSegment00054_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 5742) (.leaf 16072)) (.node (.leaf 26406) (.leaf 36749))) (.node (.node (.leaf 47100) (.leaf 57422)) (.node (.leaf 67763) (.leaf 78102)))) (.node (.node (.node (.leaf 88454) (.leaf 98772)) (.node (.leaf 109123) (.leaf 119461))) (.node (.node (.leaf 129797) (.leaf 140156)) (.node (.leaf 150486) .skip))))

theorem progressionSegment00054_1_0000Check :
    progressionSegment00054_1_0000Tree.check indexedMarker 410881 228042 0 = true :=
  by decide

theorem progressionSegment00054_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 410881 228042 0 16 :=
  by simpa [progressionSegment00054_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00054_1_0000Check

def progressionSegment00054_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 171164) (.leaf 181476)) (.node (.leaf 191824) (.leaf 202142))) (.node (.node (.leaf 212486) .skip) (.node (.leaf 233156) (.leaf 243487))))

theorem progressionSegment00054_1_0001Check :
    progressionSegment00054_1_0001Tree.check indexedMarker 410881 228042 16 = true :=
  by decide

theorem progressionSegment00054_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 410881 228042 16 24 :=
  by simpa [progressionSegment00054_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00054_1_0001Check

def progressionSegment00054_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 4607) (.leaf 14941)) (.node (.leaf 25267) .skip)) (.node (.node (.leaf 45972) (.leaf 56279)) (.node (.leaf 66622) (.leaf 76966)))) (.node (.node (.node (.leaf 87326) .skip) (.node (.leaf 107981) (.leaf 118325))) (.node (.node (.leaf 128664) (.leaf 139019)) (.node (.leaf 149338) (.leaf 159682)))))

theorem progressionSegment00054_2_0000Check :
    progressionSegment00054_2_0000Tree.check indexedMarker 410881 182839 0 = true :=
  by decide

theorem progressionSegment00054_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 410881 182839 0 16 :=
  by simpa [progressionSegment00054_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00054_2_0000Check

def progressionSegment00054_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 170033) (.leaf 180346)) (.node (.leaf 190693) (.leaf 201008))) (.node (.node (.leaf 211354) (.leaf 221673)) (.node (.leaf 232013) (.leaf 242346))))

theorem progressionSegment00054_2_0001Check :
    progressionSegment00054_2_0001Tree.check indexedMarker 410881 182839 16 = true :=
  by decide

theorem progressionSegment00054_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 410881 182839 16 24 :=
  by simpa [progressionSegment00054_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00054_2_0001Check

def progressionSegment00055_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 9434) (.leaf 20156)) (.node (.leaf 30882) (.leaf 41626))) (.node (.node .skip (.leaf 63068)) (.node (.leaf 73803) (.leaf 84549)))) (.node (.node (.node .skip (.leaf 105997)) (.node (.leaf 116724) (.leaf 127453))) (.node (.node (.leaf 138194) (.leaf 148915)) (.node (.leaf 159648) (.leaf 170391)))))

theorem progressionSegment00055_1_0000Check :
    progressionSegment00055_1_0000Tree.check indexedMarker 426409 374971 0 = true :=
  by decide

theorem progressionSegment00055_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 426409 374971 0 16 :=
  by simpa [progressionSegment00055_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00055_1_0000Check

def progressionSegment00055_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 181090) (.leaf 191825)) (.node (.leaf 202531) (.leaf 213254)))

theorem progressionSegment00055_1_0001Check :
    progressionSegment00055_1_0001Tree.check indexedMarker 426409 374971 16 = true :=
  by decide

theorem progressionSegment00055_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 426409 374971 16 20 :=
  by simpa [progressionSegment00055_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00055_1_0001Check

def progressionSegment00055_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 223981) (.leaf 234715))

theorem progressionSegment00055_1_0002Check :
    progressionSegment00055_1_0002Tree.check indexedMarker 426409 374971 20 = true :=
  by decide

theorem progressionSegment00055_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 426409 374971 20 22 :=
  by simpa [progressionSegment00055_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00055_1_0002Check

def progressionSegment00055_1_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 245445)

theorem progressionSegment00055_1_0003Check :
    progressionSegment00055_1_0003Tree.check indexedMarker 426409 374971 22 = true :=
  by decide

theorem progressionSegment00055_1_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 426409 374971 22 23 :=
  by simpa [progressionSegment00055_1_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00055_1_0003Check

def progressionSegment00055_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 1295) (.leaf 12028)) (.node (.leaf 22740) (.leaf 33477))) (.node (.node (.leaf 44219) (.leaf 54920)) (.node (.leaf 65655) (.leaf 76398)))) (.node (.node (.node (.leaf 87141) (.leaf 97850)) (.node (.leaf 108575) (.leaf 119307))) (.node (.node (.leaf 130047) (.leaf 140789)) (.node (.leaf 151510) (.leaf 162246)))))

theorem progressionSegment00055_2_0000Check :
    progressionSegment00055_2_0000Tree.check indexedMarker 426409 51438 0 = true :=
  by decide

theorem progressionSegment00055_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 426409 51438 0 16 :=
  by simpa [progressionSegment00055_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00055_2_0000Check

def progressionSegment00055_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node .skip (.leaf 183672)) (.node (.leaf 194409) (.leaf 205116))) (.node (.node .skip (.leaf 226579)) (.node (.leaf 237301) (.leaf 248039))))

theorem progressionSegment00055_2_0001Check :
    progressionSegment00055_2_0001Tree.check indexedMarker 426409 51438 16 = true :=
  by decide

theorem progressionSegment00055_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 426409 51438 16 24 :=
  by simpa [progressionSegment00055_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00055_2_0001Check

def progressionSegment00056_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 7004) (.leaf 17990)) (.node (.leaf 28983) (.leaf 39983))) (.node (.node (.leaf 50969) (.leaf 61951)) (.node (.leaf 72949) (.leaf 83967)))) (.node (.node (.node .skip (.leaf 105936)) (.node (.leaf 116932) (.leaf 127927))) (.node (.node (.leaf 138945) (.leaf 149922)) (.node (.leaf 160919) (.leaf 171923)))))

theorem progressionSegment00056_1_0000Check :
    progressionSegment00056_1_0000Tree.check indexedMarker 436921 278175 0 = true :=
  by decide

theorem progressionSegment00056_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 436921 278175 0 16 :=
  by simpa [progressionSegment00056_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00056_1_0000Check

def progressionSegment00056_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 182892) .skip) (.node (.leaf 204852) (.leaf 215851)))

theorem progressionSegment00056_1_0001Check :
    progressionSegment00056_1_0001Tree.check indexedMarker 436921 278175 16 = true :=
  by decide

theorem progressionSegment00056_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 436921 278175 16 20 :=
  by simpa [progressionSegment00056_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00056_1_0001Check

def progressionSegment00056_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 226848) (.leaf 237828))

theorem progressionSegment00056_1_0002Check :
    progressionSegment00056_1_0002Tree.check indexedMarker 436921 278175 20 = true :=
  by decide

theorem progressionSegment00056_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 436921 278175 20 22 :=
  by simpa [progressionSegment00056_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00056_1_0002Check

def progressionSegment00056_1_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 248827)

theorem progressionSegment00056_1_0003Check :
    progressionSegment00056_1_0003Tree.check indexedMarker 436921 278175 22 = true :=
  by decide

theorem progressionSegment00056_1_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 436921 278175 22 23 :=
  by simpa [progressionSegment00056_1_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00056_1_0003Check

def progressionSegment00056_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 3994) (.leaf 14991)) (.node (.leaf 25969) (.leaf 36971))) (.node (.node (.leaf 47967) (.leaf 58944)) (.node (.leaf 69949) .skip))) (.node (.node (.node (.leaf 91949) (.leaf 102929)) (.node (.leaf 113923) (.leaf 124914))) (.node (.node (.leaf 135927) (.leaf 146916)) (.node (.leaf 157916) (.leaf 168904)))))

theorem progressionSegment00056_2_0000Check :
    progressionSegment00056_2_0000Tree.check indexedMarker 436921 158746 0 = true :=
  by decide

theorem progressionSegment00056_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 436921 158746 0 16 :=
  by simpa [progressionSegment00056_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00056_2_0000Check

def progressionSegment00056_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node .skip (.leaf 190885)) (.node (.leaf 201854) (.leaf 212854)))

theorem progressionSegment00056_2_0001Check :
    progressionSegment00056_2_0001Tree.check indexedMarker 436921 158746 16 = true :=
  by decide

theorem progressionSegment00056_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 436921 158746 16 20 :=
  by simpa [progressionSegment00056_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00056_2_0001Check

def progressionSegment00056_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 223830) (.leaf 234831))

theorem progressionSegment00056_2_0002Check :
    progressionSegment00056_2_0002Tree.check indexedMarker 436921 158746 20 = true :=
  by decide

theorem progressionSegment00056_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 436921 158746 20 22 :=
  by simpa [progressionSegment00056_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00056_2_0002Check

def progressionSegment00056_2_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 245818)

theorem progressionSegment00056_2_0003Check :
    progressionSegment00056_2_0003Tree.check indexedMarker 436921 158746 22 = true :=
  by decide

theorem progressionSegment00056_2_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 436921 158746 22 23 :=
  by simpa [progressionSegment00056_2_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00056_2_0003Check

def progressionSegment00057_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node .skip (.leaf 13847)) (.node (.leaf 25238) (.leaf 36642))) (.node (.node (.leaf 48044) (.leaf 59424)) (.node (.leaf 70821) (.leaf 82247)))) (.node (.node (.node (.leaf 93632) (.leaf 105021)) (.node (.leaf 116425) (.leaf 127814))) (.node (.node (.leaf 139230) (.leaf 150615)) (.node (.leaf 162021) (.leaf 173409)))))

theorem progressionSegment00057_1_0000Check :
    progressionSegment00057_1_0000Tree.check indexedMarker 452929 97643 0 = true :=
  by decide

theorem progressionSegment00057_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 452929 97643 0 16 :=
  by simpa [progressionSegment00057_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00057_1_0000Check

def progressionSegment00057_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node .skip (.leaf 196185)) (.node (.leaf 207578) (.leaf 218964)))

theorem progressionSegment00057_1_0001Check :
    progressionSegment00057_1_0001Tree.check indexedMarker 452929 97643 16 = true :=
  by decide

theorem progressionSegment00057_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 452929 97643 16 20 :=
  by simpa [progressionSegment00057_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00057_1_0001Check

def progressionSegment00057_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 230353) (.leaf 241739))

theorem progressionSegment00057_1_0002Check :
    progressionSegment00057_1_0002Tree.check indexedMarker 452929 97643 20 = true :=
  by decide

theorem progressionSegment00057_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 452929 97643 20 22 :=
  by simpa [progressionSegment00057_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00057_1_0002Check

def progressionSegment00057_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 8938) (.leaf 20331)) (.node (.leaf 31719) (.leaf 43128))) (.node (.node (.leaf 54496) (.leaf 65914)) (.node (.leaf 77316) (.leaf 88718)))) (.node (.node (.node .skip (.leaf 111518)) (.node (.leaf 122899) (.leaf 134293))) (.node (.node (.leaf 145698) (.leaf 157098)) (.node (.leaf 168500) (.leaf 179882)))))

theorem progressionSegment00057_2_0000Check :
    progressionSegment00057_2_0000Tree.check indexedMarker 452929 355286 0 = true :=
  by decide

theorem progressionSegment00057_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 452929 355286 0 16 :=
  by simpa [progressionSegment00057_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00057_2_0000Check

def progressionSegment00057_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 191280) (.leaf 202644)) (.node (.leaf 214051) (.leaf 225434)))

theorem progressionSegment00057_2_0001Check :
    progressionSegment00057_2_0001Tree.check indexedMarker 452929 355286 16 = true :=
  by decide

theorem progressionSegment00057_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 452929 355286 16 20 :=
  by simpa [progressionSegment00057_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00057_2_0001Check

def progressionSegment00057_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 236832) (.leaf 248236))

theorem progressionSegment00057_2_0002Check :
    progressionSegment00057_2_0002Tree.check indexedMarker 452929 355286 20 = true :=
  by decide

theorem progressionSegment00057_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 452929 355286 20 22 :=
  by simpa [progressionSegment00057_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00057_2_0002Check

def progressionSegment00058_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 220) (.leaf 11764)) (.node (.leaf 23270) (.leaf 34814))) (.node (.node .skip (.leaf 57873)) (.node (.leaf 69405) (.leaf 80961)))) (.node (.node (.node (.leaf 92479) (.leaf 104013)) (.node (.leaf 115549) (.leaf 127078))) (.node (.node (.leaf 138627) (.leaf 150143)) (.node (.leaf 161682) (.leaf 173216)))))

theorem progressionSegment00058_1_0000Check :
    progressionSegment00058_1_0000Tree.check indexedMarker 458329 8827 0 = true :=
  by decide

theorem progressionSegment00058_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 458329 8827 0 16 :=
  by simpa [progressionSegment00058_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00058_1_0000Check

def progressionSegment00058_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 184722) (.leaf 196261)) (.node (.leaf 207787) (.leaf 219306)))

theorem progressionSegment00058_1_0001Check :
    progressionSegment00058_1_0001Tree.check indexedMarker 458329 8827 16 = true :=
  by decide

theorem progressionSegment00058_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 458329 8827 16 20 :=
  by simpa [progressionSegment00058_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00058_1_0001Check

def progressionSegment00058_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node .skip (.leaf 242361))

theorem progressionSegment00058_1_0002Check :
    progressionSegment00058_1_0002Tree.check indexedMarker 458329 8827 20 = true :=
  by decide

theorem progressionSegment00058_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 458329 8827 20 22 :=
  by simpa [progressionSegment00058_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00058_1_0002Check

def progressionSegment00058_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 11311) (.leaf 22831)) (.node (.leaf 34372) (.leaf 45922))) (.node (.node .skip (.leaf 68967)) (.node (.leaf 80509) (.leaf 92038)))) (.node (.node (.node (.leaf 103569) (.leaf 115099)) (.node (.leaf 126634) (.leaf 138176))) (.node (.node (.leaf 149706) (.leaf 161237)) (.node (.leaf 172781) (.leaf 184282)))))

theorem progressionSegment00058_2_0000Check :
    progressionSegment00058_2_0000Tree.check indexedMarker 458329 449502 0 = true :=
  by decide

theorem progressionSegment00058_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 458329 449502 0 16 :=
  by simpa [progressionSegment00058_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00058_2_0000Check

def progressionSegment00058_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 195816) (.leaf 207342)) (.node (.leaf 218864) (.leaf 230394)))

theorem progressionSegment00058_2_0001Check :
    progressionSegment00058_2_0001Tree.check indexedMarker 458329 449502 16 = true :=
  by decide

theorem progressionSegment00058_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 458329 449502 16 20 :=
  by simpa [progressionSegment00058_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00058_2_0001Check

def progressionSegment00058_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  .skip

theorem progressionSegment00058_2_0002Check :
    progressionSegment00058_2_0002Tree.check indexedMarker 458329 449502 20 = true :=
  by decide

theorem progressionSegment00058_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 458329 449502 20 21 :=
  by simpa [progressionSegment00058_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00058_2_0002Check

def progressionSegment00059_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 6138) (.leaf 18497)) (.node (.leaf 30852) (.leaf 43234))) (.node (.node (.leaf 55576) .skip) (.node (.leaf 80322) (.leaf 92683)))) (.node (.node (.node (.leaf 105044) (.leaf 117417)) (.node (.leaf 129777) (.leaf 142156))) (.node (.node (.leaf 154509) (.leaf 166875)) (.node (.leaf 179234) (.leaf 191602)))))

theorem progressionSegment00059_1_0000Check :
    progressionSegment00059_1_0000Tree.check indexedMarker 491401 243813 0 = true :=
  by decide

theorem progressionSegment00059_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 491401 243813 0 16 :=
  by simpa [progressionSegment00059_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00059_1_0000Check

def progressionSegment00059_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 203927) (.leaf 216300)) (.node (.leaf 228666) .skip))

theorem progressionSegment00059_1_0001Check :
    progressionSegment00059_1_0001Tree.check indexedMarker 491401 243813 16 = true :=
  by decide

theorem progressionSegment00059_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 491401 243813 16 20 :=
  by simpa [progressionSegment00059_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00059_1_0001Check

def progressionSegment00059_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 6235) (.leaf 18589)) (.node (.leaf 30950) (.leaf 43328))) (.node (.node (.leaf 55665) .skip) (.node (.leaf 80418) (.leaf 92779)))) (.node (.node (.node (.leaf 105143) (.leaf 117511)) (.node (.leaf 129876) (.leaf 142254))) (.node (.node (.leaf 154608) (.leaf 166976)) (.node (.leaf 179330) (.leaf 191694)))))

theorem progressionSegment00059_2_0000Check :
    progressionSegment00059_2_0000Tree.check indexedMarker 491401 247588 0 = true :=
  by decide

theorem progressionSegment00059_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 491401 247588 0 16 :=
  by simpa [progressionSegment00059_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00059_2_0000Check

def progressionSegment00059_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 204027) (.leaf 216394)) (.node (.leaf 228758) .skip))

theorem progressionSegment00059_2_0001Check :
    progressionSegment00059_2_0001Tree.check indexedMarker 491401 247588 16 = true :=
  by decide

theorem progressionSegment00059_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 491401 247588 16 20 :=
  by simpa [progressionSegment00059_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00059_2_0001Check

def progressionSegment00060_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 11140) .skip) (.node (.leaf 36430) (.leaf 49075))) (.node (.node (.leaf 61711) (.leaf 74374)) (.node (.leaf 87041) (.leaf 99665)))) (.node (.node (.node (.leaf 112325) (.leaf 124961)) (.node (.leaf 137622) (.leaf 150272))) (.node (.node (.leaf 162925) (.leaf 175567)) (.node (.leaf 188195) (.leaf 200836)))))

theorem progressionSegment00060_1_0000Check :
    progressionSegment00060_1_0000Tree.check indexedMarker 502681 442512 0 = true :=
  by decide

theorem progressionSegment00060_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 502681 442512 0 16 :=
  by simpa [progressionSegment00060_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00060_1_0000Check

def progressionSegment00060_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 213486) (.leaf 226122)) (.node (.leaf 238764) (.leaf 251409)))

theorem progressionSegment00060_1_0001Check :
    progressionSegment00060_1_0001Tree.check indexedMarker 502681 442512 16 = true :=
  by decide

theorem progressionSegment00060_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 502681 442512 16 20 :=
  by simpa [progressionSegment00060_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00060_1_0001Check

def progressionSegment00060_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 1509) (.leaf 14162)) (.node (.leaf 26812) (.leaf 39454))) (.node (.node .skip (.leaf 64747)) (.node (.leaf 77403) (.leaf 90061)))) (.node (.node (.node (.leaf 102692) (.leaf 115347)) (.node (.leaf 127996) (.leaf 140663))) (.node (.node (.leaf 153300) (.leaf 165950)) (.node (.leaf 178576) (.leaf 191240)))))

theorem progressionSegment00060_2_0000Check :
    progressionSegment00060_2_0000Tree.check indexedMarker 502681 60169 0 = true :=
  by decide

theorem progressionSegment00060_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 502681 60169 0 16 :=
  by simpa [progressionSegment00060_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00060_2_0000Check

def progressionSegment00060_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 203850) (.leaf 216505)) (.node (.leaf 229158) (.leaf 241787)))

theorem progressionSegment00060_2_0001Check :
    progressionSegment00060_2_0001Tree.check indexedMarker 502681 60169 16 = true :=
  by decide

theorem progressionSegment00060_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 502681 60169 16 20 :=
  by simpa [progressionSegment00060_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00060_2_0001Check

def progressionSegment00061_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 871) (.leaf 14392)) (.node (.leaf 27914) (.leaf 41437))) (.node (.node (.leaf 54934) (.leaf 68471)) (.node (.leaf 82001) (.leaf 95512)))) (.node (.node (.node .skip .skip) (.node (.leaf 136072) (.leaf 149591))) (.node (.node (.leaf 163114) (.leaf 176626)) (.node (.leaf 190135) (.leaf 203625)))))

theorem progressionSegment00061_1_0000Check :
    progressionSegment00061_1_0000Tree.check indexedMarker 537289 34831 0 = true :=
  by decide

theorem progressionSegment00061_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 537289 34831 0 16 :=
  by simpa [progressionSegment00061_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00061_1_0000Check

def progressionSegment00061_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 217156) (.leaf 230675))

theorem progressionSegment00061_1_0001Check :
    progressionSegment00061_1_0001Tree.check indexedMarker 537289 34831 16 = true :=
  by decide

theorem progressionSegment00061_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 537289 34831 16 18 :=
  by simpa [progressionSegment00061_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00061_1_0001Check

def progressionSegment00061_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 244182)

theorem progressionSegment00061_1_0002Check :
    progressionSegment00061_1_0002Tree.check indexedMarker 537289 34831 18 = true :=
  by decide

theorem progressionSegment00061_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 537289 34831 18 19 :=
  by simpa [progressionSegment00061_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00061_1_0002Check

def progressionSegment00061_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 12638) (.leaf 26148)) (.node (.leaf 39681) (.leaf 53185))) (.node (.node (.leaf 66714) (.leaf 80237)) (.node (.leaf 93758) (.leaf 107273)))) (.node (.node (.node (.leaf 120791) (.leaf 134308)) (.node (.leaf 147837) (.leaf 161366))) (.node (.node (.leaf 174873) (.leaf 188375)) (.node (.leaf 201881) .skip))))

theorem progressionSegment00061_2_0000Check :
    progressionSegment00061_2_0000Tree.check indexedMarker 537289 502458 0 = true :=
  by decide

theorem progressionSegment00061_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 537289 502458 0 16 :=
  by simpa [progressionSegment00061_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00061_2_0000Check

def progressionSegment00061_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node .skip (.leaf 242432))

theorem progressionSegment00061_2_0001Check :
    progressionSegment00061_2_0001Tree.check indexedMarker 537289 502458 16 = true :=
  by decide

theorem progressionSegment00061_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 537289 502458 16 18 :=
  by simpa [progressionSegment00061_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00061_2_0001Check

def progressionSegment00062_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node .skip (.leaf 22697)) (.node (.leaf 37117) (.leaf 51535))) (.node (.node (.leaf 65960) (.leaf 80385)) (.node (.leaf 94804) (.leaf 109222)))) (.node (.node (.node (.leaf 123642) (.leaf 138069)) (.node (.leaf 152480) (.leaf 166898))) (.node (.node (.leaf 181303) (.leaf 195726)) (.node .skip (.leaf 224537)))))

theorem progressionSegment00062_1_0000Check :
    progressionSegment00062_1_0000Tree.check indexedMarker 573049 329382 0 = true :=
  by decide

theorem progressionSegment00062_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 573049 329382 0 16 :=
  by simpa [progressionSegment00062_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00062_1_0000Check

def progressionSegment00062_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 238948)

theorem progressionSegment00062_1_0001Check :
    progressionSegment00062_1_0001Tree.check indexedMarker 573049 329382 16 = true :=
  by decide

theorem progressionSegment00062_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 573049 329382 16 17 :=
  by simpa [progressionSegment00062_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00062_1_0001Check

def progressionSegment00062_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 6135) (.leaf 20547)) (.node (.leaf 34964) (.leaf 49378))) (.node (.node (.leaf 63799) (.leaf 78219)) (.node (.leaf 92641) (.leaf 107054)))) (.node (.node (.node (.leaf 121484) (.leaf 135909)) (.node .skip (.leaf 164746))) (.node (.node (.leaf 179152) (.leaf 193579)) (.node (.leaf 207980) (.leaf 222385)))))

theorem progressionSegment00062_2_0000Check :
    progressionSegment00062_2_0000Tree.check indexedMarker 573049 243667 0 = true :=
  by decide

theorem progressionSegment00062_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 573049 243667 0 16 :=
  by simpa [progressionSegment00062_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00062_2_0000Check

def progressionSegment00062_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 236796) (.leaf 251211))

theorem progressionSegment00062_2_0001Check :
    progressionSegment00062_2_0001Tree.check indexedMarker 573049 243667 16 = true :=
  by decide

theorem progressionSegment00062_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 573049 243667 16 18 :=
  by simpa [progressionSegment00062_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00062_2_0001Check

def progressionSegment00063_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 13816) (.leaf 28392)) (.node (.leaf 42966) (.leaf 57531))) (.node (.node (.leaf 72101) (.leaf 86696)) (.node (.leaf 101242) (.leaf 115829)))) (.node (.node (.node (.leaf 130400) (.leaf 144975)) (.node (.leaf 159545) (.leaf 174120))) (.node (.node (.leaf 188677) (.leaf 203222)) (.node (.leaf 217798) .skip))))

theorem progressionSegment00063_1_0000Check :
    progressionSegment00063_1_0000Tree.check indexedMarker 579121 549403 0 = true :=
  by decide

theorem progressionSegment00063_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 579121 549403 0 16 :=
  by simpa [progressionSegment00063_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00063_1_0000Check

def progressionSegment00063_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 246941)

theorem progressionSegment00063_1_0001Check :
    progressionSegment00063_1_0001Tree.check indexedMarker 579121 549403 16 = true :=
  by decide

theorem progressionSegment00063_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 579121 549403 16 17 :=
  by simpa [progressionSegment00063_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00063_1_0001Check

def progressionSegment00063_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node .skip (.leaf 15319)) (.node (.leaf 29888) (.leaf 44467))) (.node (.node (.leaf 59017) (.leaf 73599)) (.node (.leaf 88193) (.leaf 102742)))) (.node (.node (.node (.leaf 117323) .skip) (.node (.leaf 146472) (.leaf 161045))) (.node (.node (.leaf 175611) (.leaf 190174)) (.node (.leaf 204718) (.leaf 219289)))))

theorem progressionSegment00063_2_0000Check :
    progressionSegment00063_2_0000Tree.check indexedMarker 579121 29718 0 = true :=
  by decide

theorem progressionSegment00063_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 579121 29718 0 16 :=
  by simpa [progressionSegment00063_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00063_2_0000Check

def progressionSegment00063_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 233863) (.leaf 248434))

theorem progressionSegment00063_2_0001Check :
    progressionSegment00063_2_0001Tree.check indexedMarker 579121 29718 16 = true :=
  by decide

theorem progressionSegment00063_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 579121 29718 16 18 :=
  by simpa [progressionSegment00063_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00063_2_0001Check

def progressionSegment00064_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 11889) (.leaf 26752)) (.node (.leaf 41641) (.leaf 56501))) (.node (.node (.leaf 71382) (.leaf 86287)) (.node (.leaf 101139) (.leaf 116035)))) (.node (.node (.node (.leaf 130923) (.leaf 145806)) (.node (.leaf 160681) (.leaf 175561))) (.node (.node (.leaf 190432) (.leaf 205280)) (.node (.leaf 220157) (.leaf 235038)))))

theorem progressionSegment00064_1_0000Check :
    progressionSegment00064_1_0000Tree.check indexedMarker 591361 472104 0 = true :=
  by decide

theorem progressionSegment00064_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 591361 472104 0 16 :=
  by simpa [progressionSegment00064_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00064_1_0000Check

def progressionSegment00064_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 249921)

theorem progressionSegment00064_1_0001Check :
    progressionSegment00064_1_0001Tree.check indexedMarker 591361 472104 16 = true :=
  by decide

theorem progressionSegment00064_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 591361 472104 16 17 :=
  by simpa [progressionSegment00064_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00064_1_0001Check

def progressionSegment00064_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node .skip .skip) (.node (.leaf 32763) (.leaf 47639))) (.node (.node (.leaf 62502) (.leaf 77397)) (.node (.leaf 92281) (.leaf 107152)))) (.node (.node (.node (.leaf 122035) (.leaf 136923)) (.node (.leaf 151805) (.leaf 166676))) (.node (.node (.leaf 181540) (.leaf 196427)) (.node (.leaf 211296) (.leaf 226165)))))

theorem progressionSegment00064_2_0000Check :
    progressionSegment00064_2_0000Tree.check indexedMarker 591361 119257 0 = true :=
  by decide

theorem progressionSegment00064_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 591361 119257 0 16 :=
  by simpa [progressionSegment00064_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00064_2_0000Check

def progressionSegment00064_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 241034)

theorem progressionSegment00064_2_0001Check :
    progressionSegment00064_2_0001Tree.check indexedMarker 591361 119257 16 = true :=
  by decide

theorem progressionSegment00064_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 591361 119257 16 17 :=
  by simpa [progressionSegment00064_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00064_2_0001Check

def progressionSegment00065_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 9873) .skip) (.node (.leaf 39943) (.leaf 54953))) (.node (.node (.leaf 70002) (.leaf 85056)) (.node (.leaf 100071) (.leaf 115109)))) (.node (.node (.node (.leaf 130156) (.leaf 145185)) (.node .skip (.leaf 175249))) (.node (.node (.leaf 190287) (.leaf 205288)) (.node (.leaf 220320) (.leaf 235358)))))

theorem progressionSegment00065_1_0000Check :
    progressionSegment00065_1_0000Tree.check indexedMarker 597529 392228 0 = true :=
  by decide

theorem progressionSegment00065_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 597529 392228 0 16 :=
  by simpa [progressionSegment00065_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00065_1_0000Check

def progressionSegment00065_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 250395)

theorem progressionSegment00065_1_0001Check :
    progressionSegment00065_1_0001Tree.check indexedMarker 597529 392228 16 = true :=
  by decide

theorem progressionSegment00065_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 597529 392228 16 17 :=
  by simpa [progressionSegment00065_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00065_1_0001Check

def progressionSegment00065_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 5184) (.leaf 20193)) (.node (.leaf 35233) (.leaf 50268))) (.node (.node (.leaf 65295) (.leaf 80341)) (.node (.leaf 95376) (.leaf 110411)))) (.node (.node (.node (.leaf 125438) (.leaf 140497)) (.node (.leaf 155524) (.leaf 170568))) (.node (.node (.leaf 185578) (.leaf 200592)) (.node .skip (.leaf 230660)))))

theorem progressionSegment00065_2_0000Check :
    progressionSegment00065_2_0000Tree.check indexedMarker 597529 205301 0 = true :=
  by decide

theorem progressionSegment00065_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 597529 205301 0 16 :=
  by simpa [progressionSegment00065_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00065_2_0000Check

def progressionSegment00065_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 245689)

theorem progressionSegment00065_2_0001Check :
    progressionSegment00065_2_0001Tree.check indexedMarker 597529 205301 16 = true :=
  by decide

theorem progressionSegment00065_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 597529 205301 16 17 :=
  by simpa [progressionSegment00065_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00065_2_0001Check

def progressionSegment00066_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 13163) (.leaf 29140)) (.node (.leaf 45131) (.leaf 61097))) (.node (.node (.leaf 77096) (.leaf 93077)) (.node (.leaf 109059) (.leaf 125040))))

theorem progressionSegment00066_1_0000Check :
    progressionSegment00066_1_0000Tree.check indexedMarker 635209 523047 0 = true :=
  by decide

theorem progressionSegment00066_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 635209 523047 0 8 :=
  by simpa [progressionSegment00066_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00066_1_0000Check

def progressionSegment00066_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 141045) (.leaf 157011)) (.node (.leaf 173007) (.leaf 188962)))

theorem progressionSegment00066_1_0001Check :
    progressionSegment00066_1_0001Tree.check indexedMarker 635209 523047 8 = true :=
  by decide

theorem progressionSegment00066_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 635209 523047 8 12 :=
  by simpa [progressionSegment00066_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00066_1_0001Check

def progressionSegment00066_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 204925) (.leaf 220899))

theorem progressionSegment00066_1_0002Check :
    progressionSegment00066_1_0002Tree.check indexedMarker 635209 523047 12 = true :=
  by decide

theorem progressionSegment00066_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 635209 523047 12 14 :=
  by simpa [progressionSegment00066_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00066_1_0002Check

def progressionSegment00066_1_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 236893)

theorem progressionSegment00066_1_0003Check :
    progressionSegment00066_1_0003Tree.check indexedMarker 635209 523047 14 = true :=
  by decide

theorem progressionSegment00066_1_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 635209 523047 14 15 :=
  by simpa [progressionSegment00066_1_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00066_1_0003Check

def progressionSegment00066_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 2818) (.leaf 18796)) (.node (.leaf 34784) (.leaf 50765))) (.node (.node (.leaf 66749) .skip) (.node (.leaf 98710) (.leaf 114696)))) (.node (.node (.node (.leaf 130689) .skip) (.node (.leaf 162660) (.leaf 178623))) (.node (.node (.leaf 194608) (.leaf 210573)) (.node (.leaf 226550) (.leaf 242526)))))

theorem progressionSegment00066_2_0000Check :
    progressionSegment00066_2_0000Tree.check indexedMarker 635209 112162 0 = true :=
  by decide

theorem progressionSegment00066_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 635209 112162 0 16 :=
  by simpa [progressionSegment00066_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00066_2_0000Check

def progressionSegment00067_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node .skip (.leaf 23570)) (.node (.leaf 40055) (.leaf 56505))) (.node (.node (.leaf 72978) (.leaf 89462)) (.node .skip (.leaf 122391))))

theorem progressionSegment00067_1_0000Check :
    progressionSegment00067_1_0000Tree.check indexedMarker 654481 282832 0 = true :=
  by decide

theorem progressionSegment00067_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 654481 282832 0 8 :=
  by simpa [progressionSegment00067_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00067_1_0000Check

def progressionSegment00067_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 138877) (.leaf 155337)) (.node (.leaf 171814) (.leaf 188249)))

theorem progressionSegment00067_1_0001Check :
    progressionSegment00067_1_0001Tree.check indexedMarker 654481 282832 8 = true :=
  by decide

theorem progressionSegment00067_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 654481 282832 8 12 :=
  by simpa [progressionSegment00067_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00067_1_0001Check

def progressionSegment00067_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 204699) (.leaf 221160))

theorem progressionSegment00067_1_0002Check :
    progressionSegment00067_1_0002Tree.check indexedMarker 654481 282832 12 = true :=
  by decide

theorem progressionSegment00067_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 654481 282832 12 14 :=
  by simpa [progressionSegment00067_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00067_1_0002Check

def progressionSegment00067_1_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 237628)

theorem progressionSegment00067_1_0003Check :
    progressionSegment00067_1_0003Tree.check indexedMarker 654481 282832 14 = true :=
  by decide

theorem progressionSegment00067_1_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 654481 282832 14 15 :=
  by simpa [progressionSegment00067_1_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00067_1_0003Check

def progressionSegment00067_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 9350) (.leaf 25808)) (.node (.leaf 42295) (.leaf 58741))) (.node (.node (.leaf 75220) (.leaf 91694)) (.node (.leaf 108154) (.leaf 124617))))

theorem progressionSegment00067_2_0000Check :
    progressionSegment00067_2_0000Tree.check indexedMarker 654481 371649 0 = true :=
  by decide

theorem progressionSegment00067_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 654481 371649 0 8 :=
  by simpa [progressionSegment00067_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00067_2_0000Check

def progressionSegment00067_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 141111) (.leaf 157563)) (.node (.leaf 174044) (.leaf 190497)))

theorem progressionSegment00067_2_0001Check :
    progressionSegment00067_2_0001Tree.check indexedMarker 654481 371649 8 = true :=
  by decide

theorem progressionSegment00067_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 654481 371649 8 12 :=
  by simpa [progressionSegment00067_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00067_2_0001Check

def progressionSegment00067_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 206944) (.leaf 223407))

theorem progressionSegment00067_2_0002Check :
    progressionSegment00067_2_0002Tree.check indexedMarker 654481 371649 12 = true :=
  by decide

theorem progressionSegment00067_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 654481 371649 12 14 :=
  by simpa [progressionSegment00067_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00067_2_0002Check

def progressionSegment00067_2_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 239867)

theorem progressionSegment00067_2_0003Check :
    progressionSegment00067_2_0003Tree.check indexedMarker 654481 371649 14 = true :=
  by decide

theorem progressionSegment00067_2_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 654481 371649 14 15 :=
  by simpa [progressionSegment00067_2_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00067_2_0003Check

def progressionSegment00068_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 743) (.leaf 17707)) (.node (.leaf 34661) (.leaf 51623))) (.node (.node (.leaf 68590) (.leaf 85567)) (.node (.leaf 102503) (.leaf 119469))))

theorem progressionSegment00068_1_0000Check :
    progressionSegment00068_1_0000Tree.check indexedMarker 674041 29851 0 = true :=
  by decide

theorem progressionSegment00068_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 674041 29851 0 8 :=
  by simpa [progressionSegment00068_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00068_1_0000Check

def progressionSegment00068_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 136435) (.leaf 153404)) (.node (.leaf 170370) (.leaf 187304)))

theorem progressionSegment00068_1_0001Check :
    progressionSegment00068_1_0001Tree.check indexedMarker 674041 29851 8 = true :=
  by decide

theorem progressionSegment00068_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 674041 29851 8 12 :=
  by simpa [progressionSegment00068_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00068_1_0001Check

def progressionSegment00068_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node .skip (.leaf 221194))

theorem progressionSegment00068_1_0002Check :
    progressionSegment00068_1_0002Tree.check indexedMarker 674041 29851 12 = true :=
  by decide

theorem progressionSegment00068_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 674041 29851 12 14 :=
  by simpa [progressionSegment00068_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00068_1_0002Check

def progressionSegment00068_1_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 238153)

theorem progressionSegment00068_1_0003Check :
    progressionSegment00068_1_0003Tree.check indexedMarker 674041 29851 14 = true :=
  by decide

theorem progressionSegment00068_1_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 674041 29851 14 15 :=
  by simpa [progressionSegment00068_1_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00068_1_0003Check

def progressionSegment00068_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 16206) (.leaf 33172)) (.node (.leaf 50131) (.leaf 67081))) (.node (.node (.leaf 84063) (.leaf 100998)) (.node (.leaf 117967) (.leaf 134925))))

theorem progressionSegment00068_2_0000Check :
    progressionSegment00068_2_0000Tree.check indexedMarker 674041 644190 0 = true :=
  by decide

theorem progressionSegment00068_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 674041 644190 0 8 :=
  by simpa [progressionSegment00068_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00068_2_0000Check

def progressionSegment00068_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node .skip (.leaf 168858)) (.node (.leaf 185801) (.leaf 202736)))

theorem progressionSegment00068_2_0001Check :
    progressionSegment00068_2_0001Tree.check indexedMarker 674041 644190 8 = true :=
  by decide

theorem progressionSegment00068_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 674041 644190 8 12 :=
  by simpa [progressionSegment00068_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00068_2_0001Check

def progressionSegment00068_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node .skip (.leaf 236657))

theorem progressionSegment00068_2_0002Check :
    progressionSegment00068_2_0002Tree.check indexedMarker 674041 644190 12 = true :=
  by decide

theorem progressionSegment00068_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 674041 644190 12 14 :=
  by simpa [progressionSegment00068_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00068_2_0002Check

def progressionSegment00069_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 2912) (.leaf 20199)) (.node (.leaf 37489) (.leaf 54768))) (.node (.node (.leaf 72070) (.leaf 89380)) (.node (.leaf 106661) (.leaf 123959))))

theorem progressionSegment00069_1_0000Check :
    progressionSegment00069_1_0000Tree.check indexedMarker 687241 115814 0 = true :=
  by decide

theorem progressionSegment00069_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 687241 115814 0 8 :=
  by simpa [progressionSegment00069_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00069_1_0000Check

def progressionSegment00069_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 141266) (.leaf 158552)) (.node (.leaf 175836) (.leaf 193121)))

theorem progressionSegment00069_1_0001Check :
    progressionSegment00069_1_0001Tree.check indexedMarker 687241 115814 8 = true :=
  by decide

theorem progressionSegment00069_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 687241 115814 8 12 :=
  by simpa [progressionSegment00069_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00069_1_0001Check

def progressionSegment00069_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 210392) (.leaf 227682))

theorem progressionSegment00069_1_0002Check :
    progressionSegment00069_1_0002Tree.check indexedMarker 687241 115814 12 = true :=
  by decide

theorem progressionSegment00069_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 687241 115814 12 14 :=
  by simpa [progressionSegment00069_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00069_1_0002Check

def progressionSegment00069_1_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 244964)

theorem progressionSegment00069_1_0003Check :
    progressionSegment00069_1_0003Tree.check indexedMarker 687241 115814 14 = true :=
  by decide

theorem progressionSegment00069_1_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 687241 115814 14 15 :=
  by simpa [progressionSegment00069_1_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00069_1_0003Check

def progressionSegment00069_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 14377) .skip) (.node (.leaf 48958) (.leaf 66243))) (.node (.node (.leaf 83557) .skip) (.node (.leaf 118130) (.leaf 135419))))

theorem progressionSegment00069_2_0000Check :
    progressionSegment00069_2_0000Tree.check indexedMarker 687241 571427 0 = true :=
  by decide

theorem progressionSegment00069_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 687241 571427 0 8 :=
  by simpa [progressionSegment00069_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00069_2_0000Check

def progressionSegment00069_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 152721) (.leaf 170025)) (.node (.leaf 187295) (.leaf 204566)))

theorem progressionSegment00069_2_0001Check :
    progressionSegment00069_2_0001Tree.check indexedMarker 687241 571427 8 = true :=
  by decide

theorem progressionSegment00069_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 687241 571427 8 12 :=
  by simpa [progressionSegment00069_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00069_2_0001Check

def progressionSegment00069_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 221854) (.leaf 239141))

theorem progressionSegment00069_2_0002Check :
    progressionSegment00069_2_0002Tree.check indexedMarker 687241 571427 12 = true :=
  by decide

theorem progressionSegment00069_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 687241 571427 12 14 :=
  by simpa [progressionSegment00069_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00069_2_0002Check

def progressionSegment00070_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node .skip (.leaf 25171)) (.node (.leaf 43498) (.leaf 61784))) (.node (.node (.leaf 80109) (.leaf 98411)) (.node (.leaf 116719) (.leaf 135029))))

theorem progressionSegment00070_1_0000Check :
    progressionSegment00070_1_0000Tree.check indexedMarker 727609 273293 0 = true :=
  by decide

theorem progressionSegment00070_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 727609 273293 0 8 :=
  by simpa [progressionSegment00070_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00070_1_0000Check

def progressionSegment00070_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 153348) (.leaf 171668)) (.node (.leaf 189939) (.leaf 208248)))

theorem progressionSegment00070_1_0001Check :
    progressionSegment00070_1_0001Tree.check indexedMarker 727609 273293 8 = true :=
  by decide

theorem progressionSegment00070_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 727609 273293 8 12 :=
  by simpa [progressionSegment00070_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00070_1_0001Check

def progressionSegment00070_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 226538) (.leaf 244841))

theorem progressionSegment00070_1_0002Check :
    progressionSegment00070_1_0002Tree.check indexedMarker 727609 273293 12 = true :=
  by decide

theorem progressionSegment00070_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 727609 273293 12 14 :=
  by simpa [progressionSegment00070_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00070_1_0002Check

def progressionSegment00070_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 11430) (.leaf 29733)) (.node (.leaf 48047) .skip)) (.node (.node (.leaf 84672) (.leaf 102968)) (.node (.leaf 121283) (.leaf 139599))))

theorem progressionSegment00070_2_0000Check :
    progressionSegment00070_2_0000Tree.check indexedMarker 727609 454316 0 = true :=
  by decide

theorem progressionSegment00070_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 727609 454316 0 8 :=
  by simpa [progressionSegment00070_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00070_2_0000Check

def progressionSegment00070_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 157900) (.leaf 176193)) (.node (.leaf 194501) (.leaf 212801)))

theorem progressionSegment00070_2_0001Check :
    progressionSegment00070_2_0001Tree.check indexedMarker 727609 454316 8 = true :=
  by decide

theorem progressionSegment00070_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 727609 454316 8 12 :=
  by simpa [progressionSegment00070_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00070_2_0001Check

def progressionSegment00070_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 231099) (.leaf 249399))

theorem progressionSegment00070_2_0002Check :
    progressionSegment00070_2_0002Tree.check indexedMarker 727609 454316 12 = true :=
  by decide

theorem progressionSegment00070_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 727609 454316 12 14 :=
  by simpa [progressionSegment00070_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00070_2_0002Check

def progressionSegment00071_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 708) (.leaf 19189)) (.node (.leaf 37667) (.leaf 56135))) (.node (.node (.leaf 74627) (.leaf 93118)) (.node .skip (.leaf 130084))))

theorem progressionSegment00071_1_0000Check :
    progressionSegment00071_1_0000Tree.check indexedMarker 734449 28488 0 = true :=
  by decide

theorem progressionSegment00071_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 734449 28488 0 8 :=
  by simpa [progressionSegment00071_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00071_1_0000Check

def progressionSegment00071_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 148564) (.leaf 167043)) (.node (.leaf 185508) (.leaf 203962)))

theorem progressionSegment00071_1_0001Check :
    progressionSegment00071_1_0001Tree.check indexedMarker 734449 28488 8 = true :=
  by decide

theorem progressionSegment00071_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 734449 28488 8 12 :=
  by simpa [progressionSegment00071_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00071_1_0001Check

def progressionSegment00071_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 222450) (.leaf 240915))

theorem progressionSegment00071_1_0002Check :
    progressionSegment00071_1_0002Tree.check indexedMarker 734449 28488 12 = true :=
  by decide

theorem progressionSegment00071_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 734449 28488 12 14 :=
  by simpa [progressionSegment00071_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00071_1_0002Check

def progressionSegment00071_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 17758) (.leaf 36236)) (.node (.leaf 54702) (.leaf 73198))) (.node (.node .skip (.leaf 110160)) (.node (.leaf 128638) (.leaf 147124))))

theorem progressionSegment00071_2_0000Check :
    progressionSegment00071_2_0000Tree.check indexedMarker 734449 705961 0 = true :=
  by decide

theorem progressionSegment00071_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 734449 705961 0 8 :=
  by simpa [progressionSegment00071_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00071_2_0000Check

def progressionSegment00071_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 165613) (.leaf 184074)) (.node (.leaf 202536) (.leaf 221005)))

theorem progressionSegment00071_2_0001Check :
    progressionSegment00071_2_0001Tree.check indexedMarker 734449 705961 8 = true :=
  by decide

theorem progressionSegment00071_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 734449 705961 8 12 :=
  by simpa [progressionSegment00071_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00071_2_0001Check

def progressionSegment00071_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 239493)

theorem progressionSegment00071_2_0002Check :
    progressionSegment00071_2_0002Tree.check indexedMarker 734449 705961 12 = true :=
  by decide

theorem progressionSegment00071_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 734449 705961 12 13 :=
  by simpa [progressionSegment00071_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00071_2_0002Check

def progressionSegment00072_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 4625) (.leaf 23945)) (.node (.leaf 43326) (.leaf 62664))) (.node (.node (.leaf 82039) (.leaf 101376)) (.node .skip (.leaf 140103))))

theorem progressionSegment00072_1_0000Check :
    progressionSegment00072_1_0000Tree.check indexedMarker 769129 183444 0 = true :=
  by decide

theorem progressionSegment00072_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 769129 183444 0 8 :=
  by simpa [progressionSegment00072_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00072_1_0000Check

def progressionSegment00072_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 159442) (.leaf 178782)) (.node (.leaf 198132) (.leaf 217465)))

theorem progressionSegment00072_1_0001Check :
    progressionSegment00072_1_0001Tree.check indexedMarker 769129 183444 8 = true :=
  by decide

theorem progressionSegment00072_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 769129 183444 8 12 :=
  by simpa [progressionSegment00072_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00072_1_0001Check

def progressionSegment00072_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 236810)

theorem progressionSegment00072_1_0002Check :
    progressionSegment00072_1_0002Tree.check indexedMarker 769129 183444 12 = true :=
  by decide

theorem progressionSegment00072_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 769129 183444 12 13 :=
  by simpa [progressionSegment00072_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00072_1_0002Check

def progressionSegment00072_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 14742) (.leaf 34090)) (.node .skip (.leaf 72784))) (.node (.node (.leaf 92145) (.leaf 111508)) (.node (.leaf 130861) (.leaf 150211))))

theorem progressionSegment00072_2_0000Check :
    progressionSegment00072_2_0000Tree.check indexedMarker 769129 585685 0 = true :=
  by decide

theorem progressionSegment00072_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 769129 585685 0 8 :=
  by simpa [progressionSegment00072_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00072_2_0000Check

def progressionSegment00072_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 169564) (.leaf 188901)) (.node (.leaf 208247) (.leaf 227585)))

theorem progressionSegment00072_2_0001Check :
    progressionSegment00072_2_0001Tree.check indexedMarker 769129 585685 8 = true :=
  by decide

theorem progressionSegment00072_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 769129 585685 8 12 :=
  by simpa [progressionSegment00072_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00072_2_0001Check

def progressionSegment00072_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 246934)

theorem progressionSegment00072_2_0002Check :
    progressionSegment00072_2_0002Tree.check indexedMarker 769129 585685 12 = true :=
  by decide

theorem progressionSegment00072_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 769129 585685 12 13 :=
  by simpa [progressionSegment00072_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00072_2_0002Check

def progressionSegment00073_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 6622) (.leaf 26132)) (.node (.leaf 45685) (.leaf 65198))) (.node (.node (.leaf 84744) (.leaf 104259)) (.node (.leaf 123793) (.leaf 143332))))

theorem progressionSegment00073_1_0000Check :
    progressionSegment00073_1_0000Tree.check indexedMarker 776161 262925 0 = true :=
  by decide

theorem progressionSegment00073_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 776161 262925 0 8 :=
  by simpa [progressionSegment00073_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00073_1_0000Check

def progressionSegment00073_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 162866) (.leaf 182368)) (.node (.leaf 201883) (.leaf 221408)))

theorem progressionSegment00073_1_0001Check :
    progressionSegment00073_1_0001Tree.check indexedMarker 776161 262925 8 = true :=
  by decide

theorem progressionSegment00073_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 776161 262925 8 12 :=
  by simpa [progressionSegment00073_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00073_1_0001Check

def progressionSegment00073_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  .skip

theorem progressionSegment00073_1_0002Check :
    progressionSegment00073_1_0002Tree.check indexedMarker 776161 262925 12 = true :=
  by decide

theorem progressionSegment00073_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 776161 262925 12 13 :=
  by simpa [progressionSegment00073_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00073_1_0002Check

def progressionSegment00073_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 12914) (.leaf 32439)) (.node (.leaf 51967) (.leaf 71485))) (.node (.node (.leaf 91033) (.leaf 110562)) (.node (.leaf 130098) (.leaf 149625))))

theorem progressionSegment00073_2_0000Check :
    progressionSegment00073_2_0000Tree.check indexedMarker 776161 513236 0 = true :=
  by decide

theorem progressionSegment00073_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 776161 513236 0 8 :=
  by simpa [progressionSegment00073_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00073_2_0000Check

def progressionSegment00073_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 169164) (.leaf 188672)) (.node (.leaf 208193) .skip))

theorem progressionSegment00073_2_0001Check :
    progressionSegment00073_2_0001Tree.check indexedMarker 776161 513236 8 = true :=
  by decide

theorem progressionSegment00073_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 776161 513236 8 12 :=
  by simpa [progressionSegment00073_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00073_2_0001Check

def progressionSegment00073_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  .skip

theorem progressionSegment00073_2_0002Check :
    progressionSegment00073_2_0002Tree.check indexedMarker 776161 513236 12 = true :=
  by decide

theorem progressionSegment00073_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 776161 513236 12 13 :=
  by simpa [progressionSegment00073_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00073_2_0002Check

def progressionSegment00074_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 6398) (.leaf 28110)) (.node (.leaf 49821) (.leaf 71525))) (.node (.node (.leaf 93268) (.leaf 114966)) (.node .skip (.leaf 158413))))

theorem progressionSegment00074_1_0000Check :
    progressionSegment00074_1_0000Tree.check indexedMarker 863041 254222 0 = true :=
  by decide

theorem progressionSegment00074_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 863041 254222 0 8 :=
  by simpa [progressionSegment00074_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00074_1_0000Check

def progressionSegment00074_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 180115) (.leaf 201810)) (.node .skip (.leaf 245234)))

theorem progressionSegment00074_1_0001Check :
    progressionSegment00074_1_0001Tree.check indexedMarker 863041 254222 8 = true :=
  by decide

theorem progressionSegment00074_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 863041 254222 8 12 :=
  by simpa [progressionSegment00074_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00074_1_0001Check

def progressionSegment00074_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 15317) (.leaf 37034)) (.node (.leaf 58737) (.leaf 80470))) (.node (.node (.leaf 102172) (.leaf 123894)) (.node (.leaf 145618) (.leaf 167334))))

theorem progressionSegment00074_2_0000Check :
    progressionSegment00074_2_0000Tree.check indexedMarker 863041 608819 0 = true :=
  by decide

theorem progressionSegment00074_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 863041 608819 0 8 :=
  by simpa [progressionSegment00074_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00074_2_0000Check

def progressionSegment00074_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 189032) (.leaf 210731))

theorem progressionSegment00074_2_0001Check :
    progressionSegment00074_2_0001Tree.check indexedMarker 863041 608819 8 = true :=
  by decide

theorem progressionSegment00074_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 863041 608819 8 10 :=
  by simpa [progressionSegment00074_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00074_2_0001Check

def progressionSegment00074_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 232440)

theorem progressionSegment00074_2_0002Check :
    progressionSegment00074_2_0002Tree.check indexedMarker 863041 608819 10 = true :=
  by decide

theorem progressionSegment00074_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 863041 608819 10 11 :=
  by simpa [progressionSegment00074_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00074_2_0002Check

def progressionSegment00075_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 15725) (.leaf 37803)) (.node (.leaf 59891) (.leaf 82003))) (.node (.node (.leaf 104082) (.leaf 126174)) (.node (.leaf 148274) (.leaf 170378))))

theorem progressionSegment00075_1_0000Check :
    progressionSegment00075_1_0000Tree.check indexedMarker 877969 624783 0 = true :=
  by decide

theorem progressionSegment00075_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 877969 624783 0 8 :=
  by simpa [progressionSegment00075_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00075_1_0000Check

def progressionSegment00075_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 192454) (.leaf 214519))

theorem progressionSegment00075_1_0001Check :
    progressionSegment00075_1_0001Tree.check indexedMarker 877969 624783 8 = true :=
  by decide

theorem progressionSegment00075_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 877969 624783 8 10 :=
  by simpa [progressionSegment00075_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00075_1_0001Check

def progressionSegment00075_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 236595)

theorem progressionSegment00075_1_0002Check :
    progressionSegment00075_1_0002Tree.check indexedMarker 877969 624783 10 = true :=
  by decide

theorem progressionSegment00075_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 877969 624783 10 11 :=
  by simpa [progressionSegment00075_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00075_1_0002Check

def progressionSegment00075_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 6374) (.leaf 28458)) (.node (.leaf 50548) .skip)) (.node (.node (.leaf 94736) (.leaf 116824)) (.node (.leaf 138938) (.leaf 161015))))

theorem progressionSegment00075_2_0000Check :
    progressionSegment00075_2_0000Tree.check indexedMarker 877969 253186 0 = true :=
  by decide

theorem progressionSegment00075_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 877969 253186 0 8 :=
  by simpa [progressionSegment00075_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00075_2_0000Check

def progressionSegment00075_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 183093) .skip) (.node (.leaf 227248) (.leaf 249337)))

theorem progressionSegment00075_2_0001Check :
    progressionSegment00075_2_0001Tree.check indexedMarker 877969 253186 8 = true :=
  by decide

theorem progressionSegment00075_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 877969 253186 8 12 :=
  by simpa [progressionSegment00075_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00075_2_0001Check

def progressionSegment00076_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 10799) (.leaf 33075)) (.node (.leaf 55337) (.leaf 77638))) (.node (.node (.leaf 99913) (.leaf 122195)) (.node (.leaf 144481) (.leaf 166752))))

theorem progressionSegment00076_1_0000Check :
    progressionSegment00076_1_0000Tree.check indexedMarker 885481 428999 0 = true :=
  by decide

theorem progressionSegment00076_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 885481 428999 0 8 :=
  by simpa [progressionSegment00076_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00076_1_0000Check

def progressionSegment00076_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 189024) (.leaf 211297))

theorem progressionSegment00076_1_0001Check :
    progressionSegment00076_1_0001Tree.check indexedMarker 885481 428999 8 = true :=
  by decide

theorem progressionSegment00076_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 885481 428999 8 10 :=
  by simpa [progressionSegment00076_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00076_1_0001Check

def progressionSegment00076_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 233565)

theorem progressionSegment00076_1_0002Check :
    progressionSegment00076_1_0002Tree.check indexedMarker 885481 428999 10 = true :=
  by decide

theorem progressionSegment00076_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 885481 428999 10 11 :=
  by simpa [progressionSegment00076_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00076_1_0002Check

def progressionSegment00076_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node .skip (.leaf 33765)) (.node (.leaf 56024) (.leaf 78323))) (.node (.node (.leaf 100606) (.leaf 122884)) (.node .skip (.leaf 167457))))

theorem progressionSegment00076_2_0000Check :
    progressionSegment00076_2_0000Tree.check indexedMarker 885481 456482 0 = true :=
  by decide

theorem progressionSegment00076_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 885481 456482 0 8 :=
  by simpa [progressionSegment00076_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00076_2_0000Check

def progressionSegment00076_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 189719) (.leaf 211984))

theorem progressionSegment00076_2_0001Check :
    progressionSegment00076_2_0001Tree.check indexedMarker 885481 456482 8 = true :=
  by decide

theorem progressionSegment00076_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 885481 456482 8 10 :=
  by simpa [progressionSegment00076_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00076_2_0001Check

def progressionSegment00076_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 234258)

theorem progressionSegment00076_2_0002Check :
    progressionSegment00076_2_0002Tree.check indexedMarker 885481 456482 10 = true :=
  by decide

theorem progressionSegment00076_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 885481 456482 10 11 :=
  by simpa [progressionSegment00076_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00076_2_0002Check

def progressionSegment00077_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 10513) (.leaf 33362)) (.node .skip (.leaf 79067))) (.node (.node (.leaf 101915) (.leaf 124768)) (.node (.leaf 147633) (.leaf 170500))))

theorem progressionSegment00077_1_0000Check :
    progressionSegment00077_1_0000Tree.check indexedMarker 908209 417925 0 = true :=
  by decide

theorem progressionSegment00077_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 908209 417925 0 8 :=
  by simpa [progressionSegment00077_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00077_1_0000Check

def progressionSegment00077_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 193332) (.leaf 216154))

theorem progressionSegment00077_1_0001Check :
    progressionSegment00077_1_0001Tree.check indexedMarker 908209 417925 8 = true :=
  by decide

theorem progressionSegment00077_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 908209 417925 8 10 :=
  by simpa [progressionSegment00077_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00077_1_0001Check

def progressionSegment00077_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 238998)

theorem progressionSegment00077_1_0002Check :
    progressionSegment00077_1_0002Tree.check indexedMarker 908209 417925 10 = true :=
  by decide

theorem progressionSegment00077_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 908209 417925 10 11 :=
  by simpa [progressionSegment00077_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00077_1_0002Check

def progressionSegment00077_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 12339) .skip) (.node (.leaf 58033) (.leaf 80905))) (.node (.node (.leaf 103743) (.leaf 126593)) (.node (.leaf 149454) (.leaf 172319))))

theorem progressionSegment00077_2_0000Check :
    progressionSegment00077_2_0000Tree.check indexedMarker 908209 490284 0 = true :=
  by decide

theorem progressionSegment00077_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 908209 490284 0 8 :=
  by simpa [progressionSegment00077_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00077_2_0000Check

def progressionSegment00077_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 195148) (.leaf 217977))

theorem progressionSegment00077_2_0001Check :
    progressionSegment00077_2_0001Tree.check indexedMarker 908209 490284 8 = true :=
  by decide

theorem progressionSegment00077_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 908209 490284 8 10 :=
  by simpa [progressionSegment00077_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00077_2_0001Check

def progressionSegment00077_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 240814)

theorem progressionSegment00077_2_0002Check :
    progressionSegment00077_2_0002Tree.check indexedMarker 908209 490284 10 = true :=
  by decide

theorem progressionSegment00077_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 908209 490284 10 11 :=
  by simpa [progressionSegment00077_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00077_2_0002Check

def progressionSegment00078_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 9200) (.leaf 33220)) (.node (.leaf 57220) (.leaf 81259))) (.node (.node (.leaf 105272) (.leaf 129282)) (.node (.leaf 153311) (.leaf 177314))))

theorem progressionSegment00078_1_0000Check :
    progressionSegment00078_1_0000Tree.check indexedMarker 954529 365650 0 = true :=
  by decide

theorem progressionSegment00078_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 954529 365650 0 8 :=
  by simpa [progressionSegment00078_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00078_1_0000Check

def progressionSegment00078_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node .skip (.leaf 225324))

theorem progressionSegment00078_1_0001Check :
    progressionSegment00078_1_0001Tree.check indexedMarker 954529 365650 8 = true :=
  by decide

theorem progressionSegment00078_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 954529 365650 8 10 :=
  by simpa [progressionSegment00078_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00078_1_0001Check

def progressionSegment00078_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 249342)

theorem progressionSegment00078_1_0002Check :
    progressionSegment00078_1_0002Tree.check indexedMarker 954529 365650 10 = true :=
  by decide

theorem progressionSegment00078_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 954529 365650 10 11 :=
  by simpa [progressionSegment00078_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00078_1_0002Check

def progressionSegment00078_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 14823) (.leaf 38828)) (.node (.leaf 62842) (.leaf 86883))) (.node (.node (.leaf 110889) (.leaf 134902)) (.node (.leaf 158928) .skip)))

theorem progressionSegment00078_2_0000Check :
    progressionSegment00078_2_0000Tree.check indexedMarker 954529 588879 0 = true :=
  by decide

theorem progressionSegment00078_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 954529 588879 0 8 :=
  by simpa [progressionSegment00078_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00078_2_0000Check

def progressionSegment00078_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 206936) (.leaf 230951))

theorem progressionSegment00078_2_0001Check :
    progressionSegment00078_2_0001Tree.check indexedMarker 954529 588879 8 = true :=
  by decide

theorem progressionSegment00078_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 954529 588879 8 10 :=
  by simpa [progressionSegment00078_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00078_2_0001Check

def progressionSegment00079_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 2482) (.leaf 27494)) (.node .skip (.leaf 77519))) (.node (.node (.leaf 102522) (.leaf 127537)) (.node .skip (.leaf 177555))))

theorem progressionSegment00079_1_0000Check :
    progressionSegment00079_1_0000Tree.check indexedMarker 994009 98864 0 = true :=
  by decide

theorem progressionSegment00079_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 994009 98864 0 8 :=
  by simpa [progressionSegment00079_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00079_1_0000Check

def progressionSegment00079_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 202550) (.leaf 227553))

theorem progressionSegment00079_1_0001Check :
    progressionSegment00079_1_0001Tree.check indexedMarker 994009 98864 8 = true :=
  by decide

theorem progressionSegment00079_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 994009 98864 8 10 :=
  by simpa [progressionSegment00079_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00079_1_0001Check

def progressionSegment00079_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 22512) (.leaf 47539)) (.node (.leaf 72532) (.leaf 97551))) (.node (.node (.leaf 122571) (.leaf 147583)) (.node (.leaf 172603) (.leaf 197588))))

theorem progressionSegment00079_2_0000Check :
    progressionSegment00079_2_0000Tree.check indexedMarker 994009 895145 0 = true :=
  by decide

theorem progressionSegment00079_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 994009 895145 0 8 :=
  by simpa [progressionSegment00079_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00079_2_0000Check

def progressionSegment00079_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 222580) (.leaf 247589))

theorem progressionSegment00079_2_0001Check :
    progressionSegment00079_2_0001Tree.check indexedMarker 994009 895145 8 = true :=
  by decide

theorem progressionSegment00079_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 994009 895145 8 10 :=
  by simpa [progressionSegment00079_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00079_2_0001Check

def progressionSegment00080_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 17049) (.leaf 42670)) (.node (.leaf 68275) (.leaf 93902))) (.node (.node .skip (.leaf 145132)) (.node (.leaf 170766) (.leaf 196354))))

theorem progressionSegment00080_1_0000Check :
    progressionSegment00080_1_0000Tree.check indexedMarker 1018081 677508 0 = true :=
  by decide

theorem progressionSegment00080_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1018081 677508 0 8 :=
  by simpa [progressionSegment00080_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00080_1_0000Check

def progressionSegment00080_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 221956) (.leaf 247566))

theorem progressionSegment00080_1_0001Check :
    progressionSegment00080_1_0001Tree.check indexedMarker 1018081 677508 8 = true :=
  by decide

theorem progressionSegment00080_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1018081 677508 8 10 :=
  by simpa [progressionSegment00080_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00080_1_0001Check

def progressionSegment00080_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 8570) (.leaf 34186)) (.node (.leaf 59788) (.leaf 85433))) (.node (.node (.leaf 111039) (.leaf 136652)) (.node (.leaf 162284) (.leaf 187876))))

theorem progressionSegment00080_2_0000Check :
    progressionSegment00080_2_0000Tree.check indexedMarker 1018081 340573 0 = true :=
  by decide

theorem progressionSegment00080_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1018081 340573 0 8 :=
  by simpa [progressionSegment00080_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00080_2_0000Check

def progressionSegment00080_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 213479) (.leaf 239081))

theorem progressionSegment00080_2_0001Check :
    progressionSegment00080_2_0001Tree.check indexedMarker 1018081 340573 8 = true :=
  by decide

theorem progressionSegment00080_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1018081 340573 8 10 :=
  by simpa [progressionSegment00080_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00080_2_0001Check

def progressionSegment00081_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 1151) (.leaf 26965)) (.node .skip (.leaf 78605))) (.node (.node (.leaf 104413) (.leaf 130259)) (.node (.leaf 156071) (.leaf 181871))))

theorem progressionSegment00081_1_0000Check :
    progressionSegment00081_1_0000Tree.check indexedMarker 1026169 45630 0 = true :=
  by decide

theorem progressionSegment00081_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1026169 45630 0 8 :=
  by simpa [progressionSegment00081_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00081_1_0000Check

def progressionSegment00081_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node .skip (.leaf 233491))

theorem progressionSegment00081_1_0001Check :
    progressionSegment00081_1_0001Tree.check indexedMarker 1026169 45630 8 = true :=
  by decide

theorem progressionSegment00081_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1026169 45630 8 10 :=
  by simpa [progressionSegment00081_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00081_1_0001Check

def progressionSegment00081_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 24666) (.leaf 50487)) (.node (.leaf 76311) (.leaf 102120))) (.node (.node (.leaf 127952) (.leaf 153780)) (.node (.leaf 179582) (.leaf 205385))))

theorem progressionSegment00081_2_0000Check :
    progressionSegment00081_2_0000Tree.check indexedMarker 1026169 980539 0 = true :=
  by decide

theorem progressionSegment00081_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1026169 980539 0 8 :=
  by simpa [progressionSegment00081_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00081_2_0000Check

def progressionSegment00081_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 231200)

theorem progressionSegment00081_2_0001Check :
    progressionSegment00081_2_0001Tree.check indexedMarker 1026169 980539 8 = true :=
  by decide

theorem progressionSegment00081_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1026169 980539 8 9 :=
  by simpa [progressionSegment00081_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00081_2_0001Check

def progressionSegment00082_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 2420) (.leaf 28651)) (.node (.leaf 54865) (.leaf 81124))) (.node (.node (.leaf 107343) (.leaf 133570)) (.node (.leaf 159806) (.leaf 186020))))

theorem progressionSegment00082_1_0000Check :
    progressionSegment00082_1_0000Tree.check indexedMarker 1042441 96348 0 = true :=
  by decide

theorem progressionSegment00082_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1042441 96348 0 8 :=
  by simpa [progressionSegment00082_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00082_1_0000Check

def progressionSegment00082_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 212236) (.leaf 238458))

theorem progressionSegment00082_1_0001Check :
    progressionSegment00082_1_0001Tree.check indexedMarker 1042441 96348 8 = true :=
  by decide

theorem progressionSegment00082_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1042441 96348 8 10 :=
  by simpa [progressionSegment00082_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00082_1_0001Check

def progressionSegment00082_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node .skip (.leaf 50029)) (.node (.leaf 76263) (.leaf 102482))) (.node (.node .skip (.leaf 154955)) (.node (.leaf 181169) (.leaf 207394))))

theorem progressionSegment00082_2_0000Check :
    progressionSegment00082_2_0000Tree.check indexedMarker 1042441 946093 0 = true :=
  by decide

theorem progressionSegment00082_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1042441 946093 0 8 :=
  by simpa [progressionSegment00082_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00082_2_0000Check

def progressionSegment00082_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 233612)

theorem progressionSegment00082_2_0001Check :
    progressionSegment00082_2_0001Tree.check indexedMarker 1042441 946093 8 = true :=
  by decide

theorem progressionSegment00082_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1042441 946093 8 9 :=
  by simpa [progressionSegment00082_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00082_2_0001Check

def progressionSegment00083_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 978) (.leaf 27833)) (.node (.leaf 54650) (.leaf 81536))) (.node (.node (.leaf 108375) (.leaf 135219)) (.node (.leaf 162093) (.leaf 188916))))

theorem progressionSegment00083_1_0000Check :
    progressionSegment00083_1_0000Tree.check indexedMarker 1067089 38899 0 = true :=
  by decide

theorem progressionSegment00083_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1067089 38899 0 8 :=
  by simpa [progressionSegment00083_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00083_1_0000Check

def progressionSegment00083_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 215749) (.leaf 242592))

theorem progressionSegment00083_1_0001Check :
    progressionSegment00083_1_0001Tree.check indexedMarker 1067089 38899 8 = true :=
  by decide

theorem progressionSegment00083_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1067089 38899 8 10 :=
  by simpa [progressionSegment00083_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00083_1_0001Check

def progressionSegment00083_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 25858) (.leaf 52713)) (.node .skip .skip)) (.node (.node (.leaf 133268) (.leaf 160125)) (.node (.leaf 186962) (.leaf 213801))))

theorem progressionSegment00083_2_0000Check :
    progressionSegment00083_2_0000Tree.check indexedMarker 1067089 1028190 0 = true :=
  by decide

theorem progressionSegment00083_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1067089 1028190 0 8 :=
  by simpa [progressionSegment00083_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00083_2_0000Check

def progressionSegment00083_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 240629)

theorem progressionSegment00083_2_0001Check :
    progressionSegment00083_2_0001Tree.check indexedMarker 1067089 1028190 8 = true :=
  by decide

theorem progressionSegment00083_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1067089 1028190 8 9 :=
  by simpa [progressionSegment00083_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00083_2_0001Check

def progressionSegment00084_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 24128) (.leaf 51820)) (.node (.leaf 79515) (.leaf 107200))) (.node (.node (.leaf 134885) (.leaf 162586)) (.node (.leaf 190265) (.leaf 217928))))

theorem progressionSegment00084_1_0000Check :
    progressionSegment00084_1_0000Tree.check indexedMarker 1100401 959409 0 = true :=
  by decide

theorem progressionSegment00084_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1100401 959409 0 8 :=
  by simpa [progressionSegment00084_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00084_1_0000Check

def progressionSegment00084_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 245611)

theorem progressionSegment00084_1_0001Check :
    progressionSegment00084_1_0001Tree.check indexedMarker 1100401 959409 8 = true :=
  by decide

theorem progressionSegment00084_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1100401 959409 8 9 :=
  by simpa [progressionSegment00084_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00084_1_0001Check

def progressionSegment00084_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 3553) .skip) (.node (.leaf 58906) (.leaf 86623))) (.node (.node (.leaf 114292) (.leaf 142001)) (.node (.leaf 169686) (.leaf 197351))))

theorem progressionSegment00084_2_0000Check :
    progressionSegment00084_2_0000Tree.check indexedMarker 1100401 140992 0 = true :=
  by decide

theorem progressionSegment00084_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1100401 140992 0 8 :=
  by simpa [progressionSegment00084_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00084_2_0000Check

def progressionSegment00084_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 225012)

theorem progressionSegment00084_2_0001Check :
    progressionSegment00084_2_0001Tree.check indexedMarker 1100401 140992 8 = true :=
  by decide

theorem progressionSegment00084_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1100401 140992 8 9 :=
  by simpa [progressionSegment00084_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00084_2_0001Check

def progressionSegment00085_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 14571) (.leaf 42901)) (.node (.leaf 71207) (.leaf 99536))) (.node (.node (.leaf 127873) (.leaf 156202)) (.node (.leaf 184512) (.leaf 212830))))

theorem progressionSegment00085_1_0000Check :
    progressionSegment00085_1_0000Tree.check indexedMarker 1125721 579203 0 = true :=
  by decide

theorem progressionSegment00085_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1125721 579203 0 8 :=
  by simpa [progressionSegment00085_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00085_1_0000Check

def progressionSegment00085_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 241137)

theorem progressionSegment00085_1_0001Check :
    progressionSegment00085_1_0001Tree.check indexedMarker 1125721 579203 8 = true :=
  by decide

theorem progressionSegment00085_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1125721 579203 8 9 :=
  by simpa [progressionSegment00085_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00085_1_0001Check

def progressionSegment00085_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node .skip (.leaf 42087)) (.node (.leaf 70383) (.leaf 98719))) (.node (.node (.leaf 127049) (.leaf 155385)) (.node (.leaf 183683) (.leaf 212008))))

theorem progressionSegment00085_2_0000Check :
    progressionSegment00085_2_0000Tree.check indexedMarker 1125721 546518 0 = true :=
  by decide

theorem progressionSegment00085_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1125721 546518 0 8 :=
  by simpa [progressionSegment00085_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00085_2_0000Check

def progressionSegment00085_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 240312)

theorem progressionSegment00085_2_0001Check :
    progressionSegment00085_2_0001Tree.check indexedMarker 1125721 546518 8 = true :=
  by decide

theorem progressionSegment00085_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1125721 546518 8 9 :=
  by simpa [progressionSegment00085_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00085_2_0001Check

def progressionSegment00086_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 7046) (.leaf 35789)) (.node (.leaf 64544) (.leaf 93310))) (.node (.node (.leaf 122054) (.leaf 150817)) (.node (.leaf 179553) (.leaf 208300))))

theorem progressionSegment00086_1_0000Check :
    progressionSegment00086_1_0000Tree.check indexedMarker 1142761 279829 0 = true :=
  by decide

theorem progressionSegment00086_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1142761 279829 0 8 :=
  by simpa [progressionSegment00086_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00086_1_0000Check

def progressionSegment00086_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 237036)

theorem progressionSegment00086_1_0001Check :
    progressionSegment00086_1_0001Tree.check indexedMarker 1142761 279829 8 = true :=
  by decide

theorem progressionSegment00086_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1142761 279829 8 9 :=
  by simpa [progressionSegment00086_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00086_1_0001Check

def progressionSegment00086_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node .skip .skip) (.node (.leaf 79219) (.leaf 107973))) (.node (.node (.leaf 136729) (.leaf 165496)) (.node (.leaf 194223) (.leaf 222955))))

theorem progressionSegment00086_2_0000Check :
    progressionSegment00086_2_0000Tree.check indexedMarker 1142761 862932 0 = true :=
  by decide

theorem progressionSegment00086_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1142761 862932 0 8 :=
  by simpa [progressionSegment00086_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00086_2_0000Check

def progressionSegment00087_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node .skip (.leaf 39390)) (.node (.leaf 69445) (.leaf 99504))) (.node (.node (.leaf 129569) (.leaf 159637)) (.node (.leaf 189682) (.leaf 219723))))

theorem progressionSegment00087_1_0000Check :
    progressionSegment00087_1_0000Tree.check indexedMarker 1194649 371057 0 = true :=
  by decide

theorem progressionSegment00087_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1194649 371057 0 8 :=
  by simpa [progressionSegment00087_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00087_1_0000Check

def progressionSegment00087_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 249778)

theorem progressionSegment00087_1_0001Check :
    progressionSegment00087_1_0001Tree.check indexedMarker 1194649 371057 8 = true :=
  by decide

theorem progressionSegment00087_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1194649 371057 8 9 :=
  by simpa [progressionSegment00087_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00087_1_0001Check

def progressionSegment00087_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 20717) (.leaf 50776)) (.node (.leaf 80853) (.leaf 110904))) (.node (.node (.leaf 140979) (.leaf 171029)) (.node (.leaf 201057) (.leaf 231111))))

theorem progressionSegment00087_2_0000Check :
    progressionSegment00087_2_0000Tree.check indexedMarker 1194649 823592 0 = true :=
  by decide

theorem progressionSegment00087_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1194649 823592 0 8 :=
  by simpa [progressionSegment00087_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00087_2_0000Check

def progressionSegment00088_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 14387) (.leaf 44672)) (.node (.leaf 74947) (.leaf 105228))) (.node (.node (.leaf 135504) (.leaf 165794)) (.node .skip (.leaf 226314))))

theorem progressionSegment00088_1_0000Check :
    progressionSegment00088_1_0000Tree.check indexedMarker 1203409 571878 0 = true :=
  by decide

theorem progressionSegment00088_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1203409 571878 0 8 :=
  by simpa [progressionSegment00088_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00088_1_0000Check

def progressionSegment00088_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 15890) (.leaf 46179)) (.node (.leaf 76451) (.leaf 106727))) (.node (.node (.leaf 137021) (.leaf 167295)) (.node (.leaf 197558) (.leaf 227819))))

theorem progressionSegment00088_2_0000Check :
    progressionSegment00088_2_0000Tree.check indexedMarker 1203409 631531 0 = true :=
  by decide

theorem progressionSegment00088_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1203409 631531 0 8 :=
  by simpa [progressionSegment00088_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00088_2_0000Check

def progressionSegment00089_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 1100) (.leaf 32033)) (.node (.leaf 62982) (.leaf 93943))) (.node (.node (.leaf 124874) (.leaf 155833)) (.node (.leaf 186768) (.leaf 217688))))

theorem progressionSegment00089_1_0000Check :
    progressionSegment00089_1_0000Tree.check indexedMarker 1229881 43605 0 = true :=
  by decide

theorem progressionSegment00089_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1229881 43605 0 8 :=
  by simpa [progressionSegment00089_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00089_1_0000Check

def progressionSegment00089_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 248631)

theorem progressionSegment00089_1_0001Check :
    progressionSegment00089_1_0001Tree.check indexedMarker 1229881 43605 8 = true :=
  by decide

theorem progressionSegment00089_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1229881 43605 8 9 :=
  by simpa [progressionSegment00089_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00089_1_0001Check

def progressionSegment00089_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 29845) .skip) (.node (.leaf 91747) (.leaf 122685))) (.node (.node (.leaf 153644) (.leaf 184567)) (.node (.leaf 215492) .skip)))

theorem progressionSegment00089_2_0000Check :
    progressionSegment00089_2_0000Tree.check indexedMarker 1229881 1186276 0 = true :=
  by decide

theorem progressionSegment00089_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1229881 1186276 0 8 :=
  by simpa [progressionSegment00089_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00089_2_0000Check

def progressionSegment00090_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 29120) (.leaf 60495)) (.node (.leaf 91913) .skip)) (.node (.node .skip (.leaf 186088)) (.node (.leaf 217455) (.leaf 248849))))

theorem progressionSegment00090_1_0000Check :
    progressionSegment00090_1_0000Tree.check indexedMarker 1247689 1157426 0 = true :=
  by decide

theorem progressionSegment00090_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1247689 1157426 0 8 :=
  by simpa [progressionSegment00090_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00090_1_0000Check

end Erdos848.GeneratedTailDiagonalCoverage
