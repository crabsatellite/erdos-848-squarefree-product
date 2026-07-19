import Erdos848.GeneratedTailDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedTailDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00027_1_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 222604) (.leaf 224588)) (.node (.leaf 226578) (.leaf 228565))) (.node (.node (.leaf 230553) (.leaf 232535)) (.node (.leaf 234522) (.leaf 236503))))

theorem progressionSegment00027_1_0003Check :
    progressionSegment00027_1_0003Tree.check indexedMarker 78961 4443 112 = true :=
  by decide

theorem progressionSegment00027_1_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 78961 4443 112 120 :=
  by simpa [progressionSegment00027_1_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00027_1_0003Check

def progressionSegment00027_1_0004Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 238494) (.leaf 240471)) (.node (.leaf 242464) (.leaf 244449)))

theorem progressionSegment00027_1_0004Check :
    progressionSegment00027_1_0004Tree.check indexedMarker 78961 4443 120 = true :=
  by decide

theorem progressionSegment00027_1_0004 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 78961 4443 120 124 :=
  by simpa [progressionSegment00027_1_0004Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00027_1_0004Check

def progressionSegment00027_1_0005Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node .skip .skip)

theorem progressionSegment00027_1_0005Check :
    progressionSegment00027_1_0005Tree.check indexedMarker 78961 4443 124 = true :=
  by decide

theorem progressionSegment00027_1_0005 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 78961 4443 124 126 :=
  by simpa [progressionSegment00027_1_0005Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00027_1_0005Check

def progressionSegment00027_1_0006Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 250418)

theorem progressionSegment00027_1_0006Check :
    progressionSegment00027_1_0006Tree.check indexedMarker 78961 4443 126 = true :=
  by decide

theorem progressionSegment00027_1_0006 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 78961 4443 126 127 :=
  by simpa [progressionSegment00027_1_0006Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00027_1_0006Check

def progressionSegment00027_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node .skip (.leaf 3852)) (.node (.leaf 5852) (.leaf 7843))) (.node (.node (.leaf 9824) (.leaf 11818)) (.node (.leaf 13787) (.leaf 15787)))) (.node (.node (.node (.leaf 17765) (.leaf 19743)) (.node (.leaf 21731) (.leaf 23708))) (.node (.node (.leaf 25709) (.leaf 27705)) (.node (.leaf 29684) (.leaf 31666))))) (.node (.node (.node (.node (.leaf 33663) (.leaf 35639)) (.node (.leaf 37631) (.leaf 39623))) (.node (.node (.leaf 41615) (.leaf 43601)) (.node (.leaf 45591) (.leaf 47575)))) (.node (.node (.node .skip .skip) (.node (.leaf 53505) (.leaf 55501))) (.node (.node (.leaf 57498) (.leaf 59478)) (.node (.leaf 61461) (.leaf 63453)))))) (.node (.node (.node (.node (.node (.leaf 65449) (.leaf 67428)) (.node (.leaf 69415) (.leaf 71399))) (.node (.node (.leaf 73393) (.leaf 75384)) (.node (.leaf 77371) (.leaf 79361)))) (.node (.node (.node (.leaf 81358) (.leaf 83342)) (.node (.leaf 85330) (.leaf 87324))) (.node (.node (.leaf 89294) (.leaf 91278)) (.node (.leaf 93276) (.leaf 95259))))) (.node (.node (.node (.node (.leaf 97239) .skip) (.node .skip (.leaf 103200))) (.node (.node (.leaf 105190) (.leaf 107170)) (.node (.leaf 109165) (.leaf 111151)))) (.node (.node (.node (.leaf 113135) (.leaf 115119)) (.node (.leaf 117107) (.leaf 119090))) (.node (.node (.leaf 121084) (.leaf 123069)) (.node (.leaf 125053) (.leaf 127041)))))))

theorem progressionSegment00027_2_0000Check :
    progressionSegment00027_2_0000Tree.check indexedMarker 78961 74518 0 = true :=
  by decide

theorem progressionSegment00027_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 78961 74518 0 64 :=
  by simpa [progressionSegment00027_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00027_2_0000Check

def progressionSegment00027_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 129027) (.leaf 131021)) (.node (.leaf 132994) (.leaf 134981))) (.node (.node (.leaf 136987) (.leaf 138982)) (.node (.leaf 140969) (.leaf 142948)))) (.node (.node (.node (.leaf 144928) (.leaf 146913)) (.node .skip .skip)) (.node (.node (.leaf 152874) (.leaf 154863)) (.node (.leaf 156851) (.leaf 158833))))) (.node (.node (.node (.node (.leaf 160822) (.leaf 162818)) (.node (.leaf 164800) (.leaf 166779))) (.node (.node (.leaf 168779) (.leaf 170773)) (.node (.leaf 172755) (.leaf 174727)))) (.node (.node (.node (.leaf 176713) (.leaf 178693)) (.node (.leaf 180675) (.leaf 182663))) (.node (.node (.leaf 184649) (.leaf 186646)) (.node (.leaf 188621) (.leaf 190618))))))

theorem progressionSegment00027_2_0001Check :
    progressionSegment00027_2_0001Tree.check indexedMarker 78961 74518 64 = true :=
  by decide

theorem progressionSegment00027_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 78961 74518 64 96 :=
  by simpa [progressionSegment00027_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00027_2_0001Check

def progressionSegment00027_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 192605) (.leaf 194586)) (.node (.leaf 196565) .skip)) (.node (.node .skip (.leaf 202515)) (.node (.leaf 204503) (.leaf 206492)))) (.node (.node (.node (.leaf 208482) (.leaf 210461)) (.node (.leaf 212460) (.leaf 214435))) (.node (.node (.leaf 216415) (.leaf 218411)) (.node (.leaf 220387) (.leaf 222380)))))

theorem progressionSegment00027_2_0002Check :
    progressionSegment00027_2_0002Tree.check indexedMarker 78961 74518 96 = true :=
  by decide

theorem progressionSegment00027_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 78961 74518 96 112 :=
  by simpa [progressionSegment00027_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00027_2_0002Check

def progressionSegment00027_2_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 224366) (.leaf 226351)) (.node (.leaf 228337) (.leaf 230325))) (.node (.node (.leaf 232305) (.leaf 234296)) (.node (.leaf 236280) (.leaf 238271))))

theorem progressionSegment00027_2_0003Check :
    progressionSegment00027_2_0003Tree.check indexedMarker 78961 74518 112 = true :=
  by decide

theorem progressionSegment00027_2_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 78961 74518 112 120 :=
  by simpa [progressionSegment00027_2_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00027_2_0003Check

def progressionSegment00027_2_0004Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 240252) (.leaf 242238)) (.node (.leaf 244229) (.leaf 246211)))

theorem progressionSegment00027_2_0004Check :
    progressionSegment00027_2_0004Tree.check indexedMarker 78961 74518 120 = true :=
  by decide

theorem progressionSegment00027_2_0004 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 78961 74518 120 124 :=
  by simpa [progressionSegment00027_2_0004Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00027_2_0004Check

def progressionSegment00027_2_0005Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node .skip .skip)

theorem progressionSegment00027_2_0005Check :
    progressionSegment00027_2_0005Tree.check indexedMarker 78961 74518 124 = true :=
  by decide

theorem progressionSegment00027_2_0005 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 78961 74518 124 126 :=
  by simpa [progressionSegment00027_2_0005Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00027_2_0005Check

def progressionSegment00028_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 658) .skip) (.node (.leaf 5001) (.leaf 7151))) (.node (.node (.leaf 9308) (.leaf 11472)) (.node (.leaf 13623) (.leaf 15794)))) (.node (.node (.node (.leaf 17946) (.leaf 20102)) (.node (.leaf 22251) (.leaf 24422))) (.node (.node (.leaf 26575) (.leaf 28742)) (.node (.leaf 30900) .skip)))) (.node (.node (.node (.node (.leaf 35226) (.leaf 37384)) (.node (.leaf 39545) (.leaf 41709))) (.node (.node (.leaf 43874) (.leaf 46043)) (.node (.leaf 48190) (.leaf 50347)))) (.node (.node (.node (.leaf 52499) (.leaf 54642)) (.node .skip (.leaf 58972))) (.node (.node (.leaf 61138) (.leaf 63298)) (.node (.leaf 65470) (.leaf 67625)))))) (.node (.node (.node (.node (.node (.leaf 69787) (.leaf 71941)) (.node (.leaf 74097) (.leaf 76271))) (.node (.node (.leaf 78425) (.leaf 80596)) (.node (.leaf 82765) (.leaf 84926)))) (.node (.node (.node .skip (.leaf 89231)) (.node (.leaf 91394) (.leaf 93556))) (.node (.node (.leaf 95713) (.leaf 97869)) (.node (.leaf 100028) (.leaf 102186))))) (.node (.node (.node (.node (.leaf 104344) (.leaf 106506)) (.node (.leaf 108667) .skip)) (.node (.node (.leaf 112992) (.leaf 115148)) (.node (.leaf 117311) (.leaf 119471)))) (.node (.node (.node (.leaf 121637) (.leaf 123795)) (.node (.leaf 125950) (.leaf 128117))) (.node (.node (.leaf 130283) (.leaf 132427)) (.node (.leaf 134588) (.leaf 136755)))))))

theorem progressionSegment00028_1_0000Check :
    progressionSegment00028_1_0000Tree.check indexedMarker 85849 26508 0 = true :=
  by decide

theorem progressionSegment00028_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 85849 26508 0 64 :=
  by simpa [progressionSegment00028_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00028_1_0000Check

def progressionSegment00028_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 138934) .skip) (.node (.leaf 143249) (.leaf 145397))) (.node (.node (.leaf 147558) (.leaf 149721)) (.node (.leaf 151878) (.leaf 154035)))) (.node (.node (.node (.leaf 156198) (.leaf 158361)) (.node (.leaf 160521) (.leaf 162683))) (.node (.node .skip (.leaf 167002)) (.node (.leaf 169170) (.leaf 171328))))) (.node (.node (.node (.node (.leaf 173479) (.leaf 175636)) (.node (.leaf 177786) (.leaf 179953))) (.node (.node (.leaf 182097) (.leaf 184259)) (.node (.leaf 186432) (.leaf 188584)))) (.node (.node (.node (.leaf 190754) (.leaf 192914)) (.node .skip (.leaf 197226))) (.node (.node (.leaf 199377) (.leaf 201530)) (.node (.leaf 203680) (.leaf 205854))))))

theorem progressionSegment00028_1_0001Check :
    progressionSegment00028_1_0001Tree.check indexedMarker 85849 26508 64 = true :=
  by decide

theorem progressionSegment00028_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 85849 26508 64 96 :=
  by simpa [progressionSegment00028_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00028_1_0001Check

def progressionSegment00028_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 208023) (.leaf 210174)) (.node (.leaf 212333) (.leaf 214493))) (.node (.node (.leaf 216651) .skip) (.node (.leaf 220960) (.leaf 223126)))) (.node (.node (.node (.leaf 225284) (.leaf 227446)) (.node (.leaf 229610) (.leaf 231766))) (.node (.node (.leaf 233925) (.leaf 236081)) (.node (.leaf 238244) (.leaf 240398)))))

theorem progressionSegment00028_1_0002Check :
    progressionSegment00028_1_0002Tree.check indexedMarker 85849 26508 96 = true :=
  by decide

theorem progressionSegment00028_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 85849 26508 96 112 :=
  by simpa [progressionSegment00028_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00028_1_0002Check

def progressionSegment00028_1_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 242563) (.leaf 244722)) (.node (.leaf 246889) .skip))

theorem progressionSegment00028_1_0003Check :
    progressionSegment00028_1_0003Tree.check indexedMarker 85849 26508 112 = true :=
  by decide

theorem progressionSegment00028_1_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 85849 26508 112 116 :=
  by simpa [progressionSegment00028_1_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00028_1_0003Check

def progressionSegment00028_1_0004Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 251197)

theorem progressionSegment00028_1_0004Check :
    progressionSegment00028_1_0004Tree.check indexedMarker 85849 26508 116 = true :=
  by decide

theorem progressionSegment00028_1_0004 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 85849 26508 116 117 :=
  by simpa [progressionSegment00028_1_0004Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00028_1_0004Check

def progressionSegment00028_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 1487) (.leaf 3657)) (.node (.leaf 5815) (.leaf 7977))) (.node (.node (.leaf 10136) (.leaf 12295)) (.node (.leaf 14451) (.leaf 16611)))) (.node (.node (.node (.leaf 18765) .skip) (.node (.leaf 23082) (.leaf 25243))) (.node (.node (.leaf 27414) (.leaf 29571)) (.node (.leaf 31723) (.leaf 33894))))) (.node (.node (.node (.node (.leaf 36041) (.leaf 38204)) (.node (.leaf 40387) (.leaf 42542))) (.node (.node (.leaf 44702) (.leaf 46861)) (.node (.leaf 49013) .skip))) (.node (.node (.node (.leaf 53316) (.leaf 55477)) (.node (.leaf 57648) (.leaf 59804))) (.node (.node (.leaf 61959) (.leaf 64122)) (.node (.leaf 66286) (.leaf 68454)))))) (.node (.node (.node (.node (.node (.leaf 70600) (.leaf 72763)) (.node .skip (.leaf 77102))) (.node (.node (.leaf 79259) (.leaf 81428)) (.node (.leaf 83586) (.leaf 85752)))) (.node (.node (.node (.leaf 87911) (.leaf 90066)) (.node (.leaf 92216) (.leaf 94385))) (.node (.node (.leaf 96543) (.leaf 98687)) (.node (.leaf 100851) (.leaf 103013))))) (.node (.node (.node (.node .skip (.leaf 107338)) (.node (.leaf 109493) (.leaf 111658))) (.node (.node (.leaf 113810) (.leaf 115974)) (.node (.leaf 118137) (.leaf 120293)))) (.node (.node (.node (.leaf 122465) (.leaf 124609)) (.node (.leaf 126773) .skip)) (.node (.node (.leaf 131105) (.leaf 133255)) (.node (.leaf 135414) (.leaf 137581)))))))

theorem progressionSegment00028_2_0000Check :
    progressionSegment00028_2_0000Tree.check indexedMarker 85849 59341 0 = true :=
  by decide

theorem progressionSegment00028_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 85849 59341 0 64 :=
  by simpa [progressionSegment00028_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00028_2_0000Check

def progressionSegment00028_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 139753) (.leaf 141913)) (.node (.leaf 144067) (.leaf 146224))) (.node (.node (.leaf 148383) (.leaf 150549)) (.node (.leaf 152705) (.leaf 154866)))) (.node (.node (.node (.leaf 157026) .skip) (.node (.leaf 161352) (.leaf 163514))) (.node (.node (.leaf 165668) (.leaf 167829)) (.node (.leaf 169997) (.leaf 172156))))) (.node (.node (.node (.node (.leaf 174312) (.leaf 176456)) (.node (.leaf 178609) (.leaf 180774))) (.node (.node .skip (.leaf 185097)) (.node (.leaf 187261) (.leaf 189408)))) (.node (.node (.node (.leaf 191583) (.leaf 193739)) (.node (.leaf 195891) (.leaf 198051))) (.node (.node (.leaf 200209) (.leaf 202355)) (.node (.leaf 204518) (.leaf 206678))))))

theorem progressionSegment00028_2_0001Check :
    progressionSegment00028_2_0001Tree.check indexedMarker 85849 59341 64 = true :=
  by decide

theorem progressionSegment00028_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 85849 59341 64 96 :=
  by simpa [progressionSegment00028_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00028_2_0001Check

def progressionSegment00028_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 208833) (.leaf 210999)) (.node .skip (.leaf 215315))) (.node (.node (.leaf 217473) (.leaf 219634)) (.node (.leaf 221795) (.leaf 223948)))) (.node (.node (.node (.leaf 226108) (.leaf 228272)) (.node (.leaf 230435) (.leaf 232596))) (.node (.node (.leaf 234756) .skip) (.node (.leaf 239066) (.leaf 241227)))))

theorem progressionSegment00028_2_0002Check :
    progressionSegment00028_2_0002Tree.check indexedMarker 85849 59341 96 = true :=
  by decide

theorem progressionSegment00028_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 85849 59341 96 112 :=
  by simpa [progressionSegment00028_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00028_2_0002Check

def progressionSegment00028_2_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 243384) (.leaf 245548)) (.node (.leaf 247720) (.leaf 249873)))

theorem progressionSegment00028_2_0003Check :
    progressionSegment00028_2_0003Tree.check indexedMarker 85849 59341 112 = true :=
  by decide

theorem progressionSegment00028_2_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 85849 59341 112 116 :=
  by simpa [progressionSegment00028_2_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00028_2_0003Check

def progressionSegment00029_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 2265) (.leaf 4740)) (.node .skip (.leaf 9663))) (.node (.node (.leaf 12138) (.leaf 14591)) (.node (.leaf 17063) (.leaf 19513)))) (.node (.node (.node (.leaf 21973) (.leaf 24444)) (.node (.leaf 26915) (.leaf 29378))) (.node (.node (.leaf 31839) (.leaf 34312)) (.node (.leaf 36776) (.leaf 39239))))) (.node (.node (.node (.node (.leaf 41708) (.leaf 44181)) (.node (.leaf 46644) (.leaf 49098))) (.node (.node (.leaf 51555) .skip) (.node (.leaf 56482) (.leaf 58945)))) (.node (.node (.node (.leaf 61410) (.leaf 63887)) (.node (.leaf 66345) .skip)) (.node (.node (.leaf 71274) (.leaf 73747)) (.node (.leaf 76215) (.leaf 78682)))))) (.node (.node (.node (.node (.node (.leaf 81157) (.leaf 83623)) (.node (.leaf 86090) (.leaf 88553))) (.node (.node (.leaf 91008) (.leaf 93484)) (.node (.leaf 95934) (.leaf 98401)))) (.node (.node (.node (.leaf 100861) (.leaf 103329)) (.node (.leaf 105800) (.leaf 108254))) (.node (.node (.leaf 110733) (.leaf 113196)) (.node .skip (.leaf 118125))))) (.node (.node (.node (.node (.leaf 120578) (.leaf 123056)) (.node (.leaf 125514) (.leaf 127987))) (.node (.node .skip (.leaf 132904)) (.node (.leaf 135375) (.leaf 137856)))) (.node (.node (.node (.leaf 140328) (.leaf 142787)) (.node (.leaf 145247) (.leaf 147711))) (.node (.node (.leaf 150176) (.leaf 152644)) (.node (.leaf 155101) (.leaf 157571)))))))

theorem progressionSegment00029_1_0000Check :
    progressionSegment00029_1_0000Tree.check indexedMarker 97969 90119 0 = true :=
  by decide

theorem progressionSegment00029_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 97969 90119 0 64 :=
  by simpa [progressionSegment00029_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00029_1_0000Check

def progressionSegment00029_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 160033) (.leaf 162504)) (.node (.leaf 164970) (.leaf 167436))) (.node (.node (.leaf 169900) (.leaf 172377)) (.node (.leaf 174823) .skip))) (.node (.node (.node (.leaf 179749) (.leaf 182201)) (.node (.leaf 184669) (.leaf 187145))) (.node (.node (.leaf 189601) .skip) (.node (.leaf 194536) (.leaf 196998))))) (.node (.node (.node (.node (.leaf 199455) (.leaf 201915)) (.node (.leaf 204374) (.leaf 206845))) (.node (.node (.leaf 209307) (.leaf 211779)) (.node (.leaf 214239) (.leaf 216701)))) (.node (.node (.node (.leaf 219163) (.leaf 221618)) (.node (.leaf 224096) (.leaf 226559))) (.node (.node (.leaf 229023) (.leaf 231488)) (.node (.leaf 233952) (.leaf 236419))))))

theorem progressionSegment00029_1_0001Check :
    progressionSegment00029_1_0001Tree.check indexedMarker 97969 90119 64 = true :=
  by decide

theorem progressionSegment00029_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 97969 90119 64 96 :=
  by simpa [progressionSegment00029_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00029_1_0001Check

def progressionSegment00029_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node .skip (.leaf 241343)) (.node (.leaf 243811) (.leaf 246269)))

theorem progressionSegment00029_1_0002Check :
    progressionSegment00029_1_0002Tree.check indexedMarker 97969 90119 96 = true :=
  by decide

theorem progressionSegment00029_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 97969 90119 96 100 :=
  by simpa [progressionSegment00029_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00029_1_0002Check

def progressionSegment00029_1_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 248741) (.leaf 251196))

theorem progressionSegment00029_1_0003Check :
    progressionSegment00029_1_0003Tree.check indexedMarker 97969 90119 100 = true :=
  by decide

theorem progressionSegment00029_1_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 97969 90119 100 102 :=
  by simpa [progressionSegment00029_1_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00029_1_0003Check

def progressionSegment00029_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 197) (.leaf 2658)) (.node (.leaf 5146) .skip)) (.node (.node (.leaf 10060) (.leaf 12522)) (.node (.leaf 14990) (.leaf 17450)))) (.node (.node (.node (.leaf 19910) (.leaf 22368)) (.node (.leaf 24837) (.leaf 27304))) (.node (.node (.leaf 29778) (.leaf 32237)) (.node (.leaf 34698) (.leaf 37168))))) (.node (.node (.node (.node (.leaf 39639) (.leaf 42114)) (.node (.leaf 44570) (.leaf 47039))) (.node (.node (.leaf 49490) (.leaf 51958)) (.node .skip (.leaf 56873)))) (.node (.node (.node (.leaf 59345) (.leaf 61809)) (.node (.leaf 64284) (.leaf 66751))) (.node (.node .skip (.leaf 71674)) (.node (.leaf 74136) (.leaf 76616)))))) (.node (.node (.node (.node (.node (.leaf 79077) (.leaf 81555)) (.node (.leaf 84023) (.leaf 86481))) (.node (.node (.leaf 88943) (.leaf 91409)) (.node (.leaf 93873) (.leaf 96331)))) (.node (.node (.node (.leaf 98789) (.leaf 101254)) (.node (.leaf 103726) (.leaf 106189))) (.node (.node (.leaf 108651) (.leaf 111126)) (.node (.leaf 113584) .skip)))) (.node (.node (.node (.node (.leaf 118517) (.leaf 120983)) (.node (.leaf 123446) (.leaf 125912))) (.node (.node (.leaf 128383) .skip) (.node (.leaf 133306) (.leaf 135776)))) (.node (.node (.node (.leaf 138254) (.leaf 140722)) (.node (.leaf 143183) (.leaf 145641))) (.node (.node (.leaf 148108) (.leaf 150569)) (.node (.leaf 153035) (.leaf 155507)))))))

theorem progressionSegment00029_2_0000Check :
    progressionSegment00029_2_0000Tree.check indexedMarker 97969 7850 0 = true :=
  by decide

theorem progressionSegment00029_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 97969 7850 0 64 :=
  by simpa [progressionSegment00029_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00029_2_0000Check

def progressionSegment00029_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 157969) (.leaf 160435)) (.node (.leaf 162901) (.leaf 165371))) (.node (.node (.leaf 167830) (.leaf 170303)) (.node (.leaf 172765) (.leaf 175214)))) (.node (.node (.node .skip (.leaf 180142)) (.node (.leaf 182592) (.leaf 185072))) (.node (.node (.leaf 187532) (.leaf 189994)) (.node .skip (.leaf 194932))))) (.node (.node (.node (.node (.leaf 197391) (.leaf 199850)) (.node (.leaf 202307) (.leaf 204767))) (.node (.node (.leaf 207245) (.leaf 209715)) (.node (.leaf 212166) (.leaf 214635)))) (.node (.node (.node (.leaf 217095) (.leaf 219559)) (.node (.leaf 222029) (.leaf 224484))) (.node (.node (.leaf 226958) (.leaf 229424)) (.node (.leaf 231885) (.leaf 234345))))))

theorem progressionSegment00029_2_0001Check :
    progressionSegment00029_2_0001Tree.check indexedMarker 97969 7850 64 = true :=
  by decide

theorem progressionSegment00029_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 97969 7850 64 96 :=
  by simpa [progressionSegment00029_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00029_2_0001Check

def progressionSegment00029_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 236807) .skip) (.node (.leaf 241727) (.leaf 244200)))

theorem progressionSegment00029_2_0002Check :
    progressionSegment00029_2_0002Tree.check indexedMarker 97969 7850 96 = true :=
  by decide

theorem progressionSegment00029_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 97969 7850 96 100 :=
  by simpa [progressionSegment00029_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00029_2_0002Check

def progressionSegment00029_2_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 246674) (.leaf 249133))

theorem progressionSegment00029_2_0003Check :
    progressionSegment00029_2_0003Tree.check indexedMarker 97969 7850 100 = true :=
  by decide

theorem progressionSegment00029_2_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 97969 7850 100 102 :=
  by simpa [progressionSegment00029_2_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00029_2_0003Check

def progressionSegment00030_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 1582) (.leaf 4122)) (.node (.leaf 6648) (.leaf 9167))) (.node (.node (.leaf 11707) (.leaf 14228)) (.node (.leaf 16757) (.leaf 19278)))) (.node (.node (.node (.leaf 21794) (.leaf 24328)) (.node (.leaf 26868) (.leaf 29396))) (.node (.node (.leaf 31916) (.leaf 34452)) (.node (.leaf 36979) (.leaf 39508))))) (.node (.node (.node (.node .skip .skip) (.node (.leaf 47105) (.leaf 49618))) (.node (.node (.leaf 52150) (.leaf 54655)) (.node (.leaf 57191) (.leaf 59727)))) (.node (.node (.node (.leaf 62251) (.leaf 64792)) (.node (.leaf 67306) (.leaf 69849))) (.node (.node (.leaf 72375) (.leaf 74907)) (.node (.leaf 77442) (.leaf 79963)))))) (.node (.node (.node (.node (.node (.leaf 82513) (.leaf 85038)) (.node (.leaf 87568) (.leaf 90090))) (.node (.node (.leaf 92606) (.leaf 95142)) (.node (.leaf 97663) (.leaf 100188)))) (.node (.node (.node (.leaf 102716) .skip) (.node .skip (.leaf 110307))) (.node (.node (.leaf 112838) (.leaf 115365)) (.node (.leaf 117891) (.leaf 120412))))) (.node (.node (.node (.node (.leaf 122951) (.leaf 125471)) (.node (.leaf 128009) (.leaf 130545))) (.node (.node (.leaf 133057) (.leaf 135594)) (.node (.leaf 138133) (.leaf 140670)))) (.node (.node (.node (.leaf 143193) (.leaf 145710)) (.node (.leaf 148246) (.leaf 150769))) (.node (.node (.leaf 153298) (.leaf 155830)) (.node (.leaf 158354) (.leaf 160883)))))))

theorem progressionSegment00030_1_0000Check :
    progressionSegment00030_1_0000Tree.check indexedMarker 100489 62969 0 = true :=
  by decide

theorem progressionSegment00030_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 100489 62969 0 64 :=
  by simpa [progressionSegment00030_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00030_1_0000Check

def progressionSegment00030_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 163420) (.leaf 165943)) (.node .skip .skip)) (.node (.node (.leaf 173527) (.leaf 176049)) (.node (.leaf 178562) (.leaf 181095)))) (.node (.node (.node (.leaf 183618) (.leaf 186157)) (.node (.leaf 188683) (.leaf 191217))) (.node (.node (.leaf 193745) (.leaf 196268)) (.node (.leaf 198792) (.leaf 201308))))) (.node (.node (.node (.node (.leaf 203829) (.leaf 206367)) (.node (.leaf 208891) (.leaf 211427))) (.node (.node (.leaf 213953) (.leaf 216472)) (.node (.leaf 219003) (.leaf 221530)))) (.node (.node (.node (.leaf 224060) (.leaf 226593)) (.node (.leaf 229118) .skip)) (.node (.node .skip (.leaf 236698)) (.node (.leaf 239232) (.leaf 241746))))))

theorem progressionSegment00030_1_0001Check :
    progressionSegment00030_1_0001Tree.check indexedMarker 100489 62969 64 = true :=
  by decide

theorem progressionSegment00030_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 100489 62969 64 96 :=
  by simpa [progressionSegment00030_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00030_1_0001Check

def progressionSegment00030_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 244279) (.leaf 246819))

theorem progressionSegment00030_1_0002Check :
    progressionSegment00030_1_0002Tree.check indexedMarker 100489 62969 96 = true :=
  by decide

theorem progressionSegment00030_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 100489 62969 96 98 :=
  by simpa [progressionSegment00030_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00030_1_0002Check

def progressionSegment00030_1_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 249338)

theorem progressionSegment00030_1_0003Check :
    progressionSegment00030_1_0003Tree.check indexedMarker 100489 62969 98 = true :=
  by decide

theorem progressionSegment00030_1_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 100489 62969 98 99 :=
  by simpa [progressionSegment00030_1_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00030_1_0003Check

def progressionSegment00030_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 943) (.leaf 3480)) (.node (.leaf 6004) (.leaf 8528))) (.node (.node (.leaf 11064) (.leaf 13584)) (.node (.leaf 16113) .skip))) (.node (.node (.node .skip (.leaf 23681)) (.node (.leaf 26219) (.leaf 28751))) (.node (.node (.leaf 31276) (.leaf 33811)) (.node (.leaf 36341) (.leaf 38865))))) (.node (.node (.node (.node (.leaf 41403) (.leaf 43935)) (.node (.leaf 46465) (.leaf 48982))) (.node (.node (.leaf 51502) (.leaf 54014)) (.node (.leaf 56558) (.leaf 59086)))) (.node (.node (.node (.leaf 61611) (.leaf 64140)) (.node (.leaf 66680) (.leaf 69212))) (.node (.node (.leaf 71732) (.leaf 74267)) (.node (.leaf 76795) (.leaf 79327)))))) (.node (.node (.node (.node (.node .skip .skip) (.node (.leaf 86927) (.leaf 89444))) (.node (.node (.leaf 91974) (.leaf 94502)) (.node (.leaf 97026) (.leaf 99544)))) (.node (.node (.node (.leaf 102071) (.leaf 104605)) (.node (.leaf 107134) (.leaf 109667))) (.node (.node (.leaf 112206) (.leaf 114722)) (.node (.leaf 117251) (.leaf 119785))))) (.node (.node (.node (.node (.leaf 122310) (.leaf 124832)) (.node (.leaf 127365) (.leaf 129900))) (.node (.node (.leaf 132419) (.leaf 134945)) (.node (.leaf 137490) (.leaf 140025)))) (.node (.node (.node (.leaf 142548) .skip) (.node .skip (.leaf 150128))) (.node (.node (.leaf 152658) (.leaf 155186)) (.node (.leaf 157712) (.leaf 160239)))))))

theorem progressionSegment00030_2_0000Check :
    progressionSegment00030_2_0000Tree.check indexedMarker 100489 37520 0 = true :=
  by decide

theorem progressionSegment00030_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 100489 37520 0 64 :=
  by simpa [progressionSegment00030_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00030_2_0000Check

def progressionSegment00030_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 162775) (.leaf 165303)) (.node (.leaf 167831) (.leaf 170371))) (.node (.node (.leaf 172897) (.leaf 175411)) (.node (.leaf 177929) (.leaf 180455)))) (.node (.node (.node (.leaf 182987) (.leaf 185515)) (.node (.leaf 188043) (.leaf 190579))) (.node (.node (.leaf 193101) (.leaf 195628)) (.node (.leaf 198153) (.leaf 200671))))) (.node (.node (.node (.node (.leaf 203185) (.leaf 205730)) (.node .skip .skip)) (.node (.node (.leaf 213309) (.leaf 215836)) (.node (.leaf 218364) (.leaf 220878)))) (.node (.node (.node (.leaf 223423) (.leaf 225942)) (.node (.leaf 228477) (.leaf 231008))) (.node (.node (.leaf 233532) (.leaf 236056)) (.node (.leaf 238583) (.leaf 241107))))))

theorem progressionSegment00030_2_0001Check :
    progressionSegment00030_2_0001Tree.check indexedMarker 100489 37520 64 = true :=
  by decide

theorem progressionSegment00030_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 100489 37520 64 96 :=
  by simpa [progressionSegment00030_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00030_2_0001Check

def progressionSegment00030_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 243643) (.leaf 246164)) (.node (.leaf 248702) (.leaf 251222)))

theorem progressionSegment00030_2_0002Check :
    progressionSegment00030_2_0002Tree.check indexedMarker 100489 37520 96 = true :=
  by decide

theorem progressionSegment00030_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 100489 37520 96 100 :=
  by simpa [progressionSegment00030_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00030_2_0002Check

def progressionSegment00031_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 774) (.leaf 3644)) (.node (.leaf 6506) (.leaf 9356))) (.node (.node (.leaf 12216) (.leaf 15077)) (.node (.leaf 17925) (.leaf 20780)))) (.node (.node (.node (.leaf 23629) (.leaf 26495)) (.node (.leaf 29353) (.leaf 32209))) (.node (.node (.leaf 35073) (.leaf 37922)) (.node .skip (.leaf 43657))))) (.node (.node (.node (.node (.leaf 46514) (.leaf 49351)) (.node (.leaf 52211) (.leaf 55056))) (.node (.node .skip (.leaf 60777)) (.node (.leaf 63644) (.leaf 66502)))) (.node (.node (.node (.leaf 69361) (.leaf 72215)) (.node (.leaf 75077) (.leaf 77930))) (.node (.node (.leaf 80803) (.leaf 83661)) (.node (.leaf 86519) (.leaf 89376)))))) (.node (.node (.node (.node (.node (.leaf 92229) (.leaf 95087)) (.node (.leaf 97939) (.leaf 100792))) (.node (.node (.leaf 103655) (.leaf 106508)) (.node (.leaf 109377) .skip))) (.node (.node (.node (.leaf 115083) (.leaf 117941)) (.node (.leaf 120798) (.leaf 123660))) (.node (.node (.leaf 126511) .skip) (.node (.leaf 132232) (.leaf 135085))))) (.node (.node (.node (.node (.leaf 137960) (.leaf 140824)) (.node (.leaf 143683) (.leaf 146528))) (.node (.node (.leaf 149383) (.leaf 152241)) (.node (.leaf 155097) (.leaf 157960)))) (.node (.node (.node (.leaf 160816) (.leaf 163679)) (.node (.leaf 166527) (.leaf 169396))) (.node (.node (.leaf 172255) (.leaf 175098)) (.node (.leaf 177948) (.leaf 180806)))))))

theorem progressionSegment00031_1_0000Check :
    progressionSegment00031_1_0000Tree.check indexedMarker 113569 31152 0 = true :=
  by decide

theorem progressionSegment00031_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 113569 31152 0 64 :=
  by simpa [progressionSegment00031_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00031_1_0000Check

def progressionSegment00031_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node .skip (.leaf 186526)) (.node (.leaf 189368) (.leaf 192239))) (.node (.node (.leaf 195095) (.leaf 197944)) (.node .skip (.leaf 203633)))) (.node (.node (.node (.leaf 206507) (.leaf 209371)) (.node (.leaf 212218) (.leaf 215080))) (.node (.node (.leaf 217934) (.leaf 220783)) (.node (.leaf 223649) (.leaf 226503)))))

theorem progressionSegment00031_1_0001Check :
    progressionSegment00031_1_0001Tree.check indexedMarker 113569 31152 64 = true :=
  by decide

theorem progressionSegment00031_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 113569 31152 64 80 :=
  by simpa [progressionSegment00031_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00031_1_0001Check

def progressionSegment00031_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 229368) (.leaf 232210)) (.node (.leaf 235074) (.leaf 237929))) (.node (.node (.leaf 240779) (.leaf 243645)) (.node (.leaf 246504) (.leaf 249357))))

theorem progressionSegment00031_1_0002Check :
    progressionSegment00031_1_0002Tree.check indexedMarker 113569 31152 80 = true :=
  by decide

theorem progressionSegment00031_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 113569 31152 80 88 :=
  by simpa [progressionSegment00031_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00031_1_0002Check

def progressionSegment00031_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 2072) (.leaf 4942)) (.node (.leaf 7801) (.leaf 10649))) (.node (.node .skip (.leaf 16360)) (.node (.leaf 19212) (.leaf 22061)))) (.node (.node (.node (.leaf 24915) (.leaf 27792)) (.node .skip (.leaf 33502))) (.node (.node (.leaf 36365) (.leaf 39217)) (.node (.leaf 42090) (.leaf 44949))))) (.node (.node (.node (.node (.leaf 47795) (.leaf 50647)) (.node (.leaf 53481) (.leaf 56356))) (.node (.node (.leaf 59211) (.leaf 62065)) (.node (.leaf 64940) (.leaf 67791)))) (.node (.node (.node (.leaf 70644) (.leaf 73511)) (.node (.leaf 76371) (.leaf 79232))) (.node (.node (.leaf 82099) .skip) (.node (.leaf 87823) (.leaf 90661)))))) (.node (.node (.node (.node (.node (.leaf 93525) (.leaf 96374)) (.node (.leaf 99223) .skip)) (.node (.node (.leaf 104937) (.leaf 107803)) (.node (.leaf 110661) (.leaf 113519)))) (.node (.node (.node (.leaf 116383) (.leaf 119230)) (.node (.leaf 122093) (.leaf 124942))) (.node (.node (.leaf 127801) (.leaf 130672)) (.node (.leaf 133520) (.leaf 136386))))) (.node (.node (.node (.node (.leaf 139253) (.leaf 142110)) (.node (.leaf 144957) (.leaf 147813))) (.node (.node (.leaf 150673) (.leaf 153535)) (.node .skip (.leaf 159248)))) (.node (.node (.node (.leaf 162115) (.leaf 164965)) (.node (.leaf 167820) (.leaf 170691))) (.node (.node .skip (.leaf 176380)) (.node (.leaf 179239) (.leaf 182083)))))))

theorem progressionSegment00031_2_0000Check :
    progressionSegment00031_2_0000Tree.check indexedMarker 113569 82417 0 = true :=
  by decide

theorem progressionSegment00031_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 113569 82417 0 64 :=
  by simpa [progressionSegment00031_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00031_2_0000Check

def progressionSegment00031_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 184949) (.leaf 187807)) (.node (.leaf 190674) (.leaf 193532))) (.node (.node (.leaf 196379) (.leaf 199232)) (.node (.leaf 202082) (.leaf 204934)))) (.node (.node (.node (.leaf 207804) (.leaf 210648)) (.node (.leaf 213518) (.leaf 216362))) (.node (.node (.leaf 219218) (.leaf 222087)) (.node (.leaf 224929) .skip))))

theorem progressionSegment00031_2_0001Check :
    progressionSegment00031_2_0001Tree.check indexedMarker 113569 82417 64 = true :=
  by decide

theorem progressionSegment00031_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 113569 82417 64 80 :=
  by simpa [progressionSegment00031_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00031_2_0001Check

def progressionSegment00031_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 230652) (.leaf 233505)) (.node (.leaf 236364) (.leaf 239224))) (.node (.node (.leaf 242070) .skip) (.node (.leaf 247798) (.leaf 250650))))

theorem progressionSegment00031_2_0002Check :
    progressionSegment00031_2_0002Tree.check indexedMarker 113569 82417 80 = true :=
  by decide

theorem progressionSegment00031_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 113569 82417 80 88 :=
  by simpa [progressionSegment00031_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00031_2_0002Check

def progressionSegment00032_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 2055) (.leaf 5141)) (.node (.leaf 8189) .skip)) (.node (.node (.leaf 14315) (.leaf 17378)) (.node (.leaf 20441) (.leaf 23499)))) (.node (.node (.node (.leaf 26564) (.leaf 29638)) (.node (.leaf 32710) (.leaf 35762))) (.node (.node (.leaf 38829) (.leaf 41910)) (.node .skip (.leaf 48030))))) (.node (.node (.node (.node (.leaf 51092) (.leaf 54137)) (.node (.leaf 57210) (.leaf 60271))) (.node (.node (.leaf 63345) (.leaf 66409)) (.node (.leaf 69473) (.leaf 72537)))) (.node (.node (.node (.leaf 75615) (.leaf 78673)) (.node (.leaf 81758) (.leaf 84818))) (.node (.node .skip (.leaf 90936)) (.node (.leaf 94012) (.leaf 97063)))))) (.node (.node (.node (.node (.node (.leaf 100122) (.leaf 103193)) (.node (.leaf 106256) (.leaf 109327))) (.node (.node (.leaf 112392) (.leaf 115455)) (.node (.leaf 118516) .skip))) (.node (.node (.node (.leaf 124641) (.leaf 127707)) (.node (.leaf 130781) (.leaf 133843))) (.node (.node (.leaf 136913) (.leaf 139990)) (.node (.leaf 143051) (.leaf 146110))))) (.node (.node (.node (.node (.leaf 149170) (.leaf 152232)) (.node (.leaf 155303) (.leaf 158369))) (.node (.node (.leaf 161433) .skip) (.node (.leaf 167565) (.leaf 170643)))) (.node (.node (.node (.leaf 173695) (.leaf 176748)) (.node (.leaf 179809) (.leaf 182874))) (.node (.node (.leaf 185930) (.leaf 188995)) (.node (.leaf 192066) (.leaf 195134)))))))

theorem progressionSegment00032_1_0000Check :
    progressionSegment00032_1_0000Tree.check indexedMarker 121801 81879 0 = true :=
  by decide

theorem progressionSegment00032_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 121801 81879 0 64 :=
  by simpa [progressionSegment00032_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00032_1_0000Check

def progressionSegment00032_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node .skip (.leaf 201246)) (.node (.leaf 204300) (.leaf 207380))) (.node (.node (.leaf 210433) (.leaf 213507)) (.node (.leaf 216563) (.leaf 219623)))) (.node (.node (.node (.leaf 222690) (.leaf 225751)) (.node (.leaf 228820) (.leaf 231886))) (.node (.node (.leaf 234944) (.leaf 238007)) (.node .skip (.leaf 244135)))))

theorem progressionSegment00032_1_0001Check :
    progressionSegment00032_1_0001Tree.check indexedMarker 121801 81879 64 = true :=
  by decide

theorem progressionSegment00032_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 121801 81879 64 80 :=
  by simpa [progressionSegment00032_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00032_1_0001Check

def progressionSegment00032_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 247206) (.leaf 250268))

theorem progressionSegment00032_1_0002Check :
    progressionSegment00032_1_0002Tree.check indexedMarker 121801 81879 80 = true :=
  by decide

theorem progressionSegment00032_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 121801 81879 80 82 :=
  by simpa [progressionSegment00032_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00032_1_0002Check

def progressionSegment00032_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 1002) (.leaf 4072)) (.node (.leaf 7139) (.leaf 10195))) (.node (.node (.leaf 13263) (.leaf 16326)) (.node (.leaf 19385) (.leaf 22446)))) (.node (.node (.node (.leaf 25511) (.leaf 28585)) (.node .skip (.leaf 34709))) (.node (.node (.leaf 37773) (.leaf 40846)) (.node (.leaf 43917) (.leaf 46977))))) (.node (.node (.node (.node (.leaf 50036) (.leaf 53084)) (.node (.leaf 56151) (.leaf 59218))) (.node (.node (.leaf 62287) .skip) (.node (.leaf 68427) (.leaf 71476)))) (.node (.node (.node (.leaf 74551) (.leaf 77623)) (.node (.leaf 80698) (.leaf 83758))) (.node (.node (.leaf 86829) (.leaf 89893)) (.node (.leaf 92947) (.leaf 96006)))))) (.node (.node (.node (.node (.node (.leaf 99071) (.leaf 102129)) (.node (.leaf 105205) .skip)) (.node (.node (.leaf 111342) (.leaf 114391)) (.node (.leaf 117467) (.leaf 120522)))) (.node (.node (.node (.leaf 123592) (.leaf 126655)) (.node (.leaf 129719) (.leaf 132773))) (.node (.node (.leaf 135859) (.leaf 138936)) (.node .skip (.leaf 145051))))) (.node (.node (.node (.node (.leaf 148119) (.leaf 151188)) (.node (.leaf 154246) (.leaf 157305))) (.node (.node (.leaf 160371) (.leaf 163448)) (.node (.leaf 166497) (.leaf 169573)))) (.node (.node (.node (.leaf 172640) (.leaf 175694)) (.node (.leaf 178752) (.leaf 181805))) (.node (.node .skip (.leaf 187945)) (.node (.leaf 191015) (.leaf 194083)))))))

theorem progressionSegment00032_2_0000Check :
    progressionSegment00032_2_0000Tree.check indexedMarker 121801 39922 0 = true :=
  by decide

theorem progressionSegment00032_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 121801 39922 0 64 :=
  by simpa [progressionSegment00032_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00032_2_0000Check

def progressionSegment00032_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 197137) (.leaf 200196)) (.node (.leaf 203245) (.leaf 206318))) (.node (.node (.leaf 209386) (.leaf 212454)) (.node (.leaf 215503) .skip))) (.node (.node (.node (.leaf 221628) (.leaf 224698)) (.node (.leaf 227763) (.leaf 230834))) (.node (.node (.leaf 233890) (.leaf 236954)) (.node (.leaf 240016) (.leaf 243086)))))

theorem progressionSegment00032_2_0001Check :
    progressionSegment00032_2_0001Tree.check indexedMarker 121801 39922 64 = true :=
  by decide

theorem progressionSegment00032_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 121801 39922 64 80 :=
  by simpa [progressionSegment00032_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00032_2_0001Check

def progressionSegment00032_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 246139) (.leaf 249213))

theorem progressionSegment00032_2_0002Check :
    progressionSegment00032_2_0002Tree.check indexedMarker 121801 39922 80 = true :=
  by decide

theorem progressionSegment00032_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 121801 39922 80 82 :=
  by simpa [progressionSegment00032_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00032_2_0002Check

def progressionSegment00033_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 2196) (.leaf 5348)) (.node (.leaf 8474) (.leaf 11615))) (.node (.node (.leaf 14748) (.leaf 17872)) (.node (.leaf 21007) (.leaf 24139)))) (.node (.node (.node (.leaf 27277) (.leaf 30415)) (.node (.leaf 33553) (.leaf 36686))) (.node (.node (.leaf 39826) (.leaf 42962)) (.node (.leaf 46109) (.leaf 49225))))) (.node (.node (.node (.node (.leaf 52357) (.leaf 55484)) (.node (.leaf 58627) (.leaf 61760))) (.node (.node .skip (.leaf 68035)) (.node (.leaf 71165) (.leaf 74314)))) (.node (.node (.node .skip (.leaf 80591)) (.node (.leaf 83729) (.leaf 86870))) (.node (.node (.leaf 90001) (.leaf 93127)) (.node (.leaf 96260) (.leaf 99396)))))) (.node (.node (.node (.node (.node (.leaf 102524) (.leaf 105665)) (.node (.leaf 108800) (.leaf 111943))) (.node (.node (.leaf 115068) (.leaf 118212)) (.node (.leaf 121350) (.leaf 124469)))) (.node (.node (.node (.leaf 127607) (.leaf 130753)) (.node (.leaf 133887) (.leaf 137035))) (.node (.node (.leaf 140179) .skip) (.node (.leaf 146433) (.leaf 149566))))) (.node (.node (.node (.node (.leaf 152703) .skip) (.node (.leaf 158974) (.leaf 162122))) (.node (.node (.leaf 165246) (.leaf 168382)) (.node (.leaf 171533) (.leaf 174653)))) (.node (.node (.node (.leaf 177772) (.leaf 180908)) (.node (.leaf 184038) (.leaf 187187))) (.node (.node (.leaf 190321) (.leaf 193458)) (.node (.leaf 196584) (.leaf 199718)))))))

theorem progressionSegment00033_1_0000Check :
    progressionSegment00033_1_0000Tree.check indexedMarker 124609 87502 0 = true :=
  by decide

theorem progressionSegment00033_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 124609 87502 0 64 :=
  by simpa [progressionSegment00033_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00033_1_0000Check

def progressionSegment00033_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 202835) (.leaf 205971)) (.node (.leaf 209109) (.leaf 212249))) (.node (.node (.leaf 215377) (.leaf 218519)) (.node .skip (.leaf 224781)))) (.node (.node (.node (.leaf 227929) (.leaf 231059)) (.node .skip (.leaf 237322))) (.node (.node (.leaf 240443) (.leaf 243590)) (.node (.leaf 246731) (.leaf 249865)))))

theorem progressionSegment00033_1_0001Check :
    progressionSegment00033_1_0001Tree.check indexedMarker 124609 87502 64 = true :=
  by decide

theorem progressionSegment00033_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 124609 87502 64 80 :=
  by simpa [progressionSegment00033_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00033_1_0001Check

def progressionSegment00033_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node .skip (.leaf 4071)) (.node (.leaf 7210) (.leaf 10342))) (.node (.node .skip (.leaf 16606)) (.node (.leaf 19734) (.leaf 22869)))) (.node (.node (.node (.leaf 26005) (.leaf 29150)) (.node (.leaf 32281) (.leaf 35417))) (.node (.node (.leaf 38551) (.leaf 41695)) (.node (.leaf 44837) (.leaf 47963))))) (.node (.node (.node (.node (.leaf 51097) (.leaf 54209)) (.node (.leaf 57358) (.leaf 60484))) (.node (.node (.leaf 63632) (.leaf 66773)) (.node (.leaf 69909) (.leaf 73037)))) (.node (.node (.node (.leaf 76182) .skip) (.node (.leaf 82469) (.leaf 85604))) (.node (.node (.leaf 88728) .skip) (.node (.leaf 94998) (.leaf 98128)))))) (.node (.node (.node (.node (.node (.leaf 101255) (.leaf 104387)) (.node (.leaf 107537) (.leaf 110672))) (.node (.node (.leaf 113799) (.leaf 116940)) (.node (.leaf 120074) (.leaf 123219)))) (.node (.node (.node (.leaf 126355) (.leaf 129480)) (.node (.leaf 132609) (.leaf 135754))) (.node (.node (.leaf 138909) (.leaf 142042)) (.node (.leaf 145162) (.leaf 148303))))) (.node (.node (.node (.node (.leaf 151441) (.leaf 154570)) (.node .skip (.leaf 160846))) (.node (.node (.leaf 163987) (.leaf 167116)) (.node .skip (.leaf 173385)))) (.node (.node (.node (.leaf 176515) (.leaf 179642)) (.node (.leaf 182776) (.leaf 185909))) (.node (.node (.leaf 189046) (.leaf 192186)) (.node (.leaf 195313) (.leaf 198449)))))))

theorem progressionSegment00033_2_0000Check :
    progressionSegment00033_2_0000Tree.check indexedMarker 124609 37107 0 = true :=
  by decide

theorem progressionSegment00033_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 124609 37107 0 64 :=
  by simpa [progressionSegment00033_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00033_2_0000Check

def progressionSegment00033_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 201568) (.leaf 204701)) (.node (.leaf 207850) (.leaf 210978))) (.node (.node (.leaf 214112) (.leaf 217247)) (.node (.leaf 220370) (.leaf 223516)))) (.node (.node (.node (.leaf 226652) (.leaf 229792)) (.node (.leaf 232920) .skip)) (.node (.node (.leaf 239187) (.leaf 242317)) (.node (.leaf 245459) .skip))))

theorem progressionSegment00033_2_0001Check :
    progressionSegment00033_2_0001Tree.check indexedMarker 124609 37107 64 = true :=
  by decide

theorem progressionSegment00033_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 124609 37107 64 80 :=
  by simpa [progressionSegment00033_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00033_2_0001Check

def progressionSegment00034_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 151) (.leaf 3658)) (.node (.leaf 7159) (.leaf 10659))) (.node (.node (.leaf 14154) (.leaf 17651)) (.node (.leaf 21141) (.leaf 24652)))) (.node (.node (.node (.leaf 28153) (.leaf 31651)) (.node (.leaf 35159) (.leaf 38654))) (.node (.node (.leaf 42174) (.leaf 45669)) (.node (.leaf 49156) .skip)))) (.node (.node (.node (.node (.leaf 56146) (.leaf 59647)) (.node (.leaf 63155) (.leaf 66661))) (.node (.node (.leaf 70155) (.leaf 73658)) (.node (.leaf 77173) (.leaf 80681)))) (.node (.node (.node .skip (.leaf 87685)) (.node (.leaf 91168) (.leaf 94677))) (.node (.node (.leaf 98172) (.leaf 101665)) (.node (.leaf 105174) (.leaf 108671)))))) (.node (.node (.node (.node (.node (.leaf 112182) (.leaf 115676)) (.node (.leaf 119170) (.leaf 122680))) (.node (.node (.leaf 126178) (.leaf 129674)) (.node (.leaf 133172) (.leaf 136680)))) (.node (.node (.node .skip (.leaf 143700)) (.node (.leaf 147183) (.leaf 150689))) (.node (.node (.leaf 154190) (.leaf 157683)) (.node (.leaf 161192) (.leaf 164693))))) (.node (.node (.node (.node (.leaf 168196) .skip) (.node (.leaf 175185) (.leaf 178684))) (.node (.node (.leaf 182171) (.leaf 185683)) (.node (.leaf 189180) (.leaf 192695)))) (.node (.node (.node (.leaf 196182) (.leaf 199680)) (.node (.leaf 203159) (.leaf 206670))) (.node (.node (.leaf 210173) (.leaf 213682)) (.node (.leaf 217170) (.leaf 220661)))))))

theorem progressionSegment00034_1_0000Check :
    progressionSegment00034_1_0000Tree.check indexedMarker 139129 6072 0 = true :=
  by decide

theorem progressionSegment00034_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 139129 6072 0 64 :=
  by simpa [progressionSegment00034_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00034_1_0000Check

def progressionSegment00034_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 224170) .skip) (.node (.leaf 231169) (.leaf 234668))) (.node (.node (.leaf 238166) (.leaf 241663)) (.node (.leaf 245168) (.leaf 248669))))

theorem progressionSegment00034_1_0001Check :
    progressionSegment00034_1_0001Tree.check indexedMarker 139129 6072 64 = true :=
  by decide

theorem progressionSegment00034_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 139129 6072 64 72 :=
  by simpa [progressionSegment00034_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00034_1_0001Check

def progressionSegment00034_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node .skip (.leaf 6856)) (.node (.leaf 10353) (.leaf 13844))) (.node (.node (.leaf 17344) (.leaf 20848)) (.node (.leaf 24338) (.leaf 27856)))) (.node (.node (.node (.leaf 31346) .skip) (.node (.leaf 38344) (.leaf 41865))) (.node (.node (.leaf 45367) (.leaf 48851)) (.node (.leaf 52347) (.leaf 55833))))) (.node (.node (.node (.node (.leaf 59346) (.leaf 62848)) (.node (.leaf 66350) (.leaf 69860))) (.node (.node (.leaf 73351) (.leaf 76866)) (.node (.leaf 80367) (.leaf 83873)))) (.node (.node (.node (.leaf 87379) .skip) (.node (.leaf 94374) (.leaf 97862))) (.node (.node (.leaf 101360) (.leaf 104859)) (.node (.leaf 108365) (.leaf 111872)))))) (.node (.node (.node (.node (.node (.leaf 115371) (.leaf 118868)) (.node .skip (.leaf 125872))) (.node (.node (.leaf 129369) (.leaf 132859)) (.node (.leaf 136382) (.leaf 139892)))) (.node (.node (.node (.leaf 143393) (.leaf 146880)) (.node (.leaf 150379) (.leaf 153889))) (.node (.node (.leaf 157383) (.leaf 160887)) (.node (.leaf 164393) (.leaf 167892))))) (.node (.node (.node (.node (.leaf 171398) (.leaf 174886)) (.node .skip (.leaf 181866))) (.node (.node (.leaf 185379) (.leaf 188875)) (.node (.leaf 192387) (.leaf 195876)))) (.node (.node (.node (.leaf 199370) (.leaf 202859)) (.node (.leaf 206366) .skip)) (.node (.node (.leaf 213367) (.leaf 216866)) (.node (.leaf 220356) (.leaf 223853)))))))

theorem progressionSegment00034_2_0000Check :
    progressionSegment00034_2_0000Tree.check indexedMarker 139129 133057 0 = true :=
  by decide

theorem progressionSegment00034_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 139129 133057 0 64 :=
  by simpa [progressionSegment00034_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00034_2_0000Check

def progressionSegment00034_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 227364) (.leaf 230872)) (.node (.leaf 234363) (.leaf 237865)))

theorem progressionSegment00034_2_0001Check :
    progressionSegment00034_2_0001Tree.check indexedMarker 139129 133057 64 = true :=
  by decide

theorem progressionSegment00034_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 139129 133057 64 68 :=
  by simpa [progressionSegment00034_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00034_2_0001Check

def progressionSegment00034_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 241359) (.leaf 244862))

theorem progressionSegment00034_2_0002Check :
    progressionSegment00034_2_0002Tree.check indexedMarker 139129 133057 68 = true :=
  by decide

theorem progressionSegment00034_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 139129 133057 68 70 :=
  by simpa [progressionSegment00034_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00034_2_0002Check

def progressionSegment00034_2_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 248363)

theorem progressionSegment00034_2_0003Check :
    progressionSegment00034_2_0003Tree.check indexedMarker 139129 133057 70 = true :=
  by decide

theorem progressionSegment00034_2_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 139129 133057 70 71 :=
  by simpa [progressionSegment00034_2_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00034_2_0003Check

def progressionSegment00035_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 97) (.leaf 3906)) (.node (.leaf 7721) .skip)) (.node (.node (.leaf 15332) (.leaf 19129)) (.node (.leaf 22930) (.leaf 26748)))) (.node (.node (.node (.leaf 30557) (.leaf 34364)) (.node (.leaf 38167) (.leaf 41991))) (.node (.node .skip (.leaf 49590)) (.node (.leaf 53387) (.leaf 57195))))) (.node (.node (.node (.node (.leaf 61003) (.leaf 64824)) (.node (.leaf 68638) (.leaf 72433))) (.node (.node (.leaf 76249) (.leaf 80055)) (.node (.leaf 83875) (.leaf 87689)))) (.node (.node (.node (.leaf 91485) (.leaf 95289)) (.node (.leaf 99091) (.leaf 102896))) (.node (.node .skip (.leaf 110522)) (.node (.leaf 114315) (.leaf 118133)))))) (.node (.node (.node (.node (.node (.leaf 121943) (.leaf 125744)) (.node (.leaf 129551) (.leaf 133357))) (.node (.node (.leaf 137177) .skip) (.node (.leaf 144789) (.leaf 148602)))) (.node (.node (.node (.leaf 152402) (.leaf 156210)) (.node (.leaf 160018) (.leaf 163837))) (.node (.node (.leaf 167643) (.leaf 171452)) (.node (.leaf 175243) (.leaf 179049))))) (.node (.node (.node (.node (.leaf 182850) (.leaf 186671)) (.node (.leaf 190474) (.leaf 194272))) (.node (.node (.leaf 198082) .skip) (.node (.leaf 205685) (.leaf 209496)))) (.node (.node (.node (.leaf 213291) (.leaf 217100)) (.node (.leaf 220894) (.leaf 224712))) (.node (.node (.leaf 228524) (.leaf 232321)) (.node .skip (.leaf 239933)))))))

theorem progressionSegment00035_1_0000Check :
    progressionSegment00035_1_0000Tree.check indexedMarker 151321 4005 0 = true :=
  by decide

theorem progressionSegment00035_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 151321 4005 0 64 :=
  by simpa [progressionSegment00035_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00035_1_0000Check

def progressionSegment00035_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 243744) (.leaf 247557))

theorem progressionSegment00035_1_0001Check :
    progressionSegment00035_1_0001Tree.check indexedMarker 151321 4005 64 = true :=
  by decide

theorem progressionSegment00035_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 151321 4005 64 66 :=
  by simpa [progressionSegment00035_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00035_1_0001Check

def progressionSegment00035_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 251353)

theorem progressionSegment00035_1_0002Check :
    progressionSegment00035_1_0002Tree.check indexedMarker 151321 4005 66 = true :=
  by decide

theorem progressionSegment00035_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 151321 4005 66 67 :=
  by simpa [progressionSegment00035_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00035_1_0002Check

def progressionSegment00035_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 3710) (.leaf 7520)) (.node (.leaf 11324) (.leaf 15133))) (.node (.node (.leaf 18927) (.leaf 22729)) (.node (.leaf 26540) (.leaf 30354)))) (.node (.node (.node (.leaf 34164) (.leaf 37968)) (.node (.leaf 41788) (.leaf 45596))) (.node (.node .skip (.leaf 53189)) (.node (.leaf 56998) (.leaf 60802))))) (.node (.node (.node (.node (.leaf 64620) (.leaf 68432)) (.node (.leaf 72234) (.leaf 76050))) (.node (.node (.leaf 79851) .skip) (.node (.leaf 87484) (.leaf 91276)))) (.node (.node (.node (.leaf 95090) (.leaf 98887)) (.node (.leaf 102693) (.leaf 106501))) (.node (.node (.leaf 110316) (.leaf 114122)) (.node (.leaf 117926) (.leaf 121747)))))) (.node (.node (.node (.node (.node (.leaf 125544) (.leaf 129349)) (.node (.leaf 133151) (.leaf 136975))) (.node (.node (.leaf 140793) .skip) (.node (.leaf 148397) (.leaf 152199)))) (.node (.node (.node (.leaf 156012) (.leaf 159822)) (.node (.leaf 163633) (.leaf 167437))) (.node (.node (.leaf 171250) (.leaf 175042)) (.node .skip (.leaf 182646))))) (.node (.node (.node (.node (.leaf 186467) (.leaf 190271)) (.node (.leaf 194081) (.leaf 197879))) (.node (.node (.leaf 201664) (.leaf 205470)) (.node (.leaf 209286) (.leaf 213094)))) (.node (.node (.node (.leaf 216900) (.leaf 220695)) (.node (.leaf 224510) (.leaf 228318))) (.node (.node (.leaf 232124) (.leaf 235928)) (.node .skip (.leaf 243541)))))))

theorem progressionSegment00035_2_0000Check :
    progressionSegment00035_2_0000Tree.check indexedMarker 151321 147316 0 = true :=
  by decide

theorem progressionSegment00035_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 151321 147316 0 64 :=
  by simpa [progressionSegment00035_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00035_2_0000Check

def progressionSegment00035_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 247359) (.leaf 251154))

theorem progressionSegment00035_2_0001Check :
    progressionSegment00035_2_0001Tree.check indexedMarker 151321 147316 64 = true :=
  by decide

theorem progressionSegment00035_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 151321 147316 64 66 :=
  by simpa [progressionSegment00035_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00035_2_0001Check

def progressionSegment00036_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node .skip (.leaf 7119)) (.node (.leaf 11086) (.leaf 15049))) (.node (.node (.leaf 19007) (.leaf 22960)) (.node (.leaf 26939) (.leaf 30898)))) (.node (.node (.node (.leaf 34871) (.leaf 38836)) (.node (.leaf 42810) (.leaf 46777))) (.node (.node (.leaf 50732) (.leaf 54679)) (.node (.leaf 58655) (.leaf 62619))))) (.node (.node (.node (.node (.leaf 66590) (.leaf 70548)) (.node (.leaf 74524) (.leaf 78496))) (.node (.node (.leaf 82477) .skip) (.node (.leaf 90402) (.leaf 94365)))) (.node (.node (.node (.leaf 98322) .skip) (.node (.leaf 106252) (.leaf 110221))) (.node (.node (.leaf 114179) (.leaf 118156)) (.node (.leaf 122120) (.leaf 126086))))))

theorem progressionSegment00036_1_0000Check :
    progressionSegment00036_1_0000Tree.check indexedMarker 157609 125118 0 = true :=
  by decide

theorem progressionSegment00036_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 157609 125118 0 32 :=
  by simpa [progressionSegment00036_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00036_1_0000Check

def progressionSegment00036_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 130055) (.leaf 134013)) (.node (.leaf 137995) (.leaf 141961))) (.node (.node (.leaf 145927) (.leaf 149882)) (.node (.leaf 153856) (.leaf 157818)))) (.node (.node (.node (.leaf 161786) (.leaf 165746)) (.node (.leaf 169719) (.leaf 173684))) (.node (.node (.leaf 177628) (.leaf 181591)) (.node .skip (.leaf 189527)))))

theorem progressionSegment00036_1_0001Check :
    progressionSegment00036_1_0001Tree.check indexedMarker 157609 125118 32 = true :=
  by decide

theorem progressionSegment00036_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 157609 125118 32 48 :=
  by simpa [progressionSegment00036_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00036_1_0001Check

def progressionSegment00036_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 193499) (.leaf 197457)) (.node .skip (.leaf 205366))) (.node (.node (.leaf 209341) (.leaf 213304)) (.node (.leaf 217270) (.leaf 221230))))

theorem progressionSegment00036_1_0002Check :
    progressionSegment00036_1_0002Tree.check indexedMarker 157609 125118 48 = true :=
  by decide

theorem progressionSegment00036_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 157609 125118 48 56 :=
  by simpa [progressionSegment00036_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00036_1_0002Check

def progressionSegment00036_1_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 225192) (.leaf 229167)) (.node (.leaf 233130) (.leaf 237090)))

theorem progressionSegment00036_1_0003Check :
    progressionSegment00036_1_0003Tree.check indexedMarker 157609 125118 56 = true :=
  by decide

theorem progressionSegment00036_1_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 157609 125118 56 60 :=
  by simpa [progressionSegment00036_1_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00036_1_0003Check

def progressionSegment00036_1_0004Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 241048) (.leaf 245015))

theorem progressionSegment00036_1_0004Check :
    progressionSegment00036_1_0004Tree.check indexedMarker 157609 125118 60 = true :=
  by decide

theorem progressionSegment00036_1_0004 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 157609 125118 60 62 :=
  by simpa [progressionSegment00036_1_0004Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00036_1_0004Check

def progressionSegment00036_1_0005Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 248986)

theorem progressionSegment00036_1_0005Check :
    progressionSegment00036_1_0005Tree.check indexedMarker 157609 125118 62 = true :=
  by decide

theorem progressionSegment00036_1_0005 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 157609 125118 62 63 :=
  by simpa [progressionSegment00036_1_0005Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00036_1_0005Check

def progressionSegment00036_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 814) (.leaf 4789)) (.node (.leaf 8747) .skip)) (.node (.node (.leaf 16682) (.leaf 20640)) (.node (.leaf 24604) (.leaf 28574)))) (.node (.node (.node (.leaf 32541) (.leaf 36504)) (.node (.leaf 40484) (.leaf 44447))) (.node (.node (.leaf 48397) (.leaf 52361)) (.node (.leaf 56323) (.leaf 60283))))) (.node (.node (.node (.node (.leaf 64261) (.leaf 68228)) (.node (.leaf 72189) (.leaf 76165))) (.node (.node (.leaf 80134) (.leaf 84115)) (.node (.leaf 88080) (.leaf 92031)))) (.node (.node (.node .skip (.leaf 99955)) (.node (.leaf 103926) (.leaf 107892))) (.node (.node .skip (.leaf 115826)) (.node (.leaf 119792) (.leaf 123760)))))) (.node (.node (.node (.node (.node (.leaf 127713) (.leaf 131683)) (.node (.leaf 135654) (.leaf 139631))) (.node (.node (.leaf 143599) (.leaf 147553)) (.node (.leaf 151523) (.leaf 155489)))) (.node (.node (.node (.leaf 159450) (.leaf 163426)) (.node (.leaf 167384) (.leaf 171357))) (.node (.node (.leaf 175307) (.leaf 179270)) (.node (.leaf 183231) (.leaf 187205))))) (.node (.node (.node (.node (.leaf 191165) .skip) (.node (.leaf 199086) (.leaf 203038))) (.node (.node (.leaf 207017) .skip) (.node (.leaf 214941) (.leaf 218901)))) (.node (.node (.node (.leaf 222864) (.leaf 226834)) (.node (.leaf 230808) (.leaf 234765))) (.node (.node (.leaf 238719) (.leaf 242693)) (.node (.leaf 246659) (.leaf 250624)))))))

theorem progressionSegment00036_2_0000Check :
    progressionSegment00036_2_0000Tree.check indexedMarker 157609 32491 0 = true :=
  by decide

theorem progressionSegment00036_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 157609 32491 0 64 :=
  by simpa [progressionSegment00036_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00036_2_0000Check

def progressionSegment00037_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 99) (.leaf 4160)) (.node .skip (.leaf 12240))) (.node (.node (.leaf 16284) (.leaf 20325)) (.node (.leaf 24368) (.leaf 28420)))) (.node (.node (.node (.leaf 32469) (.leaf 36511)) (.node (.leaf 40574) (.leaf 44609))) (.node (.node (.leaf 48650) .skip) (.node (.leaf 56729) (.leaf 60773))))) (.node (.node (.node (.node (.leaf 64837) (.leaf 68877)) (.node (.leaf 72922) (.leaf 76972))) (.node (.node (.leaf 81035) (.leaf 85081)) (.node (.leaf 89116) (.leaf 93164)))) (.node (.node (.node (.leaf 97204) (.leaf 101240)) (.node (.leaf 105297) .skip)) (.node (.node (.leaf 113390) (.leaf 117439)) (.node (.leaf 121485) (.leaf 125527))))))

theorem progressionSegment00037_1_0000Check :
    progressionSegment00037_1_0000Tree.check indexedMarker 160801 4030 0 = true :=
  by decide

theorem progressionSegment00037_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 160801 4030 0 32 :=
  by simpa [progressionSegment00037_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00037_1_0000Check

def progressionSegment00037_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 129570) (.leaf 133618)) (.node (.leaf 137671) (.leaf 141728))) (.node (.node (.leaf 145764) (.leaf 149810)) (.node .skip (.leaf 157903)))) (.node (.node (.node (.leaf 161954) (.leaf 165996)) (.node (.leaf 170051) (.leaf 174089))) (.node (.node (.leaf 178116) (.leaf 182154)) (.node (.leaf 186212) (.leaf 190261)))))

theorem progressionSegment00037_1_0001Check :
    progressionSegment00037_1_0001Tree.check indexedMarker 160801 4030 32 = true :=
  by decide

theorem progressionSegment00037_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 160801 4030 32 48 :=
  by simpa [progressionSegment00037_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00037_1_0001Check

def progressionSegment00037_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 194298) (.leaf 198349)) (.node (.leaf 202374) (.leaf 206429))) (.node (.node .skip (.leaf 214517)) (.node (.leaf 218557) (.leaf 222605))))

theorem progressionSegment00037_1_0002Check :
    progressionSegment00037_1_0002Tree.check indexedMarker 160801 4030 48 = true :=
  by decide

theorem progressionSegment00037_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 160801 4030 48 56 :=
  by simpa [progressionSegment00037_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00037_1_0002Check

def progressionSegment00037_1_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 226650) (.leaf 230700)) (.node (.leaf 234739) (.leaf 238777)))

theorem progressionSegment00037_1_0003Check :
    progressionSegment00037_1_0003Tree.check indexedMarker 160801 4030 56 = true :=
  by decide

theorem progressionSegment00037_1_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 160801 4030 56 60 :=
  by simpa [progressionSegment00037_1_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00037_1_0003Check

def progressionSegment00037_1_0004Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 242827) (.leaf 246879))

theorem progressionSegment00037_1_0004Check :
    progressionSegment00037_1_0004Tree.check indexedMarker 160801 4030 60 = true :=
  by decide

theorem progressionSegment00037_1_0004 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 160801 4030 60 62 :=
  by simpa [progressionSegment00037_1_0004Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00037_1_0004Check

def progressionSegment00037_1_0005Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 250914)

theorem progressionSegment00037_1_0005Check :
    progressionSegment00037_1_0005Tree.check indexedMarker 160801 4030 62 = true :=
  by decide

theorem progressionSegment00037_1_0005 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 160801 4030 62 63 :=
  by simpa [progressionSegment00037_1_0005Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00037_1_0005Check

def progressionSegment00037_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 3945) (.leaf 7996)) (.node (.leaf 12041) (.leaf 16079))) (.node (.node (.leaf 20121) (.leaf 24167)) (.node (.leaf 28217) (.leaf 32259)))) (.node (.node (.node (.leaf 36308) (.leaf 40368)) (.node (.leaf 44412) .skip)) (.node (.node (.leaf 52485) (.leaf 56530)) (.node (.leaf 60569) (.leaf 64627))))) (.node (.node (.node (.node (.leaf 68685) (.leaf 72715)) (.node (.leaf 76771) (.leaf 80829))) (.node (.node (.leaf 84878) (.leaf 88915)) (.node .skip (.leaf 97002)))) (.node (.node (.node (.leaf 101035) (.leaf 105090)) (.node (.leaf 109145) (.leaf 113185))) (.node (.node (.leaf 117230) (.leaf 121286)) (.node (.leaf 125323) (.leaf 129367))))))

theorem progressionSegment00037_2_0000Check :
    progressionSegment00037_2_0000Tree.check indexedMarker 160801 156771 0 = true :=
  by decide

theorem progressionSegment00037_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 160801 156771 0 32 :=
  by simpa [progressionSegment00037_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00037_2_0000Check

def progressionSegment00037_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 133410) (.leaf 137473)) (.node (.leaf 141523) (.leaf 145558))) (.node (.node .skip (.leaf 153657)) (.node (.leaf 157694) (.leaf 161753)))) (.node (.node (.node (.leaf 165790) (.leaf 169840)) (.node (.leaf 173887) (.leaf 177917))) (.node (.node (.leaf 181951) (.leaf 186004)) (.node (.leaf 190050) .skip))))

theorem progressionSegment00037_2_0001Check :
    progressionSegment00037_2_0001Tree.check indexedMarker 160801 156771 32 = true :=
  by decide

theorem progressionSegment00037_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 160801 156771 32 48 :=
  by simpa [progressionSegment00037_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00037_2_0001Check

def progressionSegment00037_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 198143) (.leaf 202174)) (.node (.leaf 206224) (.leaf 210264))) (.node (.node (.leaf 214310) (.leaf 218353)) (.node (.leaf 222403) (.leaf 226445))))

theorem progressionSegment00037_2_0002Check :
    progressionSegment00037_2_0002Tree.check indexedMarker 160801 156771 48 = true :=
  by decide

theorem progressionSegment00037_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 160801 156771 48 56 :=
  by simpa [progressionSegment00037_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00037_2_0002Check

def progressionSegment00037_2_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 230498) (.leaf 234533)) (.node (.leaf 238579) (.leaf 242627)))

theorem progressionSegment00037_2_0003Check :
    progressionSegment00037_2_0003Tree.check indexedMarker 160801 156771 56 = true :=
  by decide

theorem progressionSegment00037_2_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 160801 156771 56 60 :=
  by simpa [progressionSegment00037_2_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00037_2_0003Check

def progressionSegment00037_2_0004Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 246677) .skip)

theorem progressionSegment00037_2_0004Check :
    progressionSegment00037_2_0004Tree.check indexedMarker 160801 156771 60 = true :=
  by decide

theorem progressionSegment00037_2_0004 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 160801 156771 60 62 :=
  by simpa [progressionSegment00037_2_0004Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00037_2_0004Check

def progressionSegment00038_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 1090) (.leaf 5310)) (.node (.leaf 9507) (.leaf 13713))) (.node (.node (.leaf 17919) (.leaf 22118)) (.node (.leaf 26335) (.leaf 30543)))) (.node (.node (.node (.leaf 34753) (.leaf 38965)) (.node (.leaf 43181) (.leaf 47389))) (.node (.node (.leaf 51587) (.leaf 55785)) (.node (.leaf 60003) (.leaf 64210))))) (.node (.node (.node (.node .skip (.leaf 72624)) (.node (.leaf 76854) (.leaf 81071))) (.node (.node (.leaf 85278) (.leaf 89483)) (.node .skip (.leaf 97892)))) (.node (.node (.node (.leaf 102096) (.leaf 106311)) (.node (.leaf 110527) (.leaf 114727))) (.node (.node (.leaf 118941) (.leaf 123155)) (.node (.leaf 127356) (.leaf 131571))))))

theorem progressionSegment00038_1_0000Check :
    progressionSegment00038_1_0000Tree.check indexedMarker 167281 43211 0 = true :=
  by decide

theorem progressionSegment00038_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 167281 43211 0 32 :=
  by simpa [progressionSegment00038_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00038_1_0000Check

def progressionSegment00038_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 135778) (.leaf 140000)) (.node (.leaf 144206) (.leaf 148414))) (.node (.node (.leaf 152620) (.leaf 156826)) (.node (.leaf 161039) (.leaf 165246)))) (.node (.node (.node (.leaf 169463) .skip) (.node (.leaf 177857) (.leaf 182055))) (.node (.node (.leaf 186280) (.leaf 190495)) (.node (.leaf 194694) .skip))))

theorem progressionSegment00038_1_0001Check :
    progressionSegment00038_1_0001Tree.check indexedMarker 167281 43211 32 = true :=
  by decide

theorem progressionSegment00038_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 167281 43211 32 48 :=
  by simpa [progressionSegment00038_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00038_1_0001Check

def progressionSegment00038_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 203087) (.leaf 207315)) (.node (.leaf 211522) (.leaf 215725))) (.node (.node (.leaf 219926) (.leaf 224144)) (.node (.leaf 228350) (.leaf 232555))))

theorem progressionSegment00038_1_0002Check :
    progressionSegment00038_1_0002Tree.check indexedMarker 167281 43211 48 = true :=
  by decide

theorem progressionSegment00038_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 167281 43211 48 56 :=
  by simpa [progressionSegment00038_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00038_1_0002Check

def progressionSegment00038_1_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 236757) (.leaf 240962)) (.node (.leaf 245179) (.leaf 249386)))

theorem progressionSegment00038_1_0003Check :
    progressionSegment00038_1_0003Tree.check indexedMarker 167281 43211 56 = true :=
  by decide

theorem progressionSegment00038_1_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 167281 43211 56 60 :=
  by simpa [progressionSegment00038_1_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00038_1_0003Check

def progressionSegment00038_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 3122) (.leaf 7335)) (.node .skip (.leaf 15755))) (.node (.node (.leaf 19949) (.leaf 24158)) (.node (.leaf 28377) (.leaf 32585)))) (.node (.node (.node .skip (.leaf 41004)) (.node (.leaf 45223) (.leaf 49412))) (.node (.node (.leaf 53604) (.leaf 57827)) (.node (.leaf 62030) (.leaf 66247))))) (.node (.node (.node (.node (.leaf 70454) (.leaf 74665)) (.node (.leaf 78883) (.leaf 83103))) (.node (.node (.leaf 87319) (.leaf 91513)) (.node (.leaf 95723) (.leaf 99927)))) (.node (.node (.node (.leaf 104138) (.leaf 108344)) (.node (.leaf 112563) .skip)) (.node (.node (.leaf 120970) (.leaf 125185)) (.node (.leaf 129392) (.leaf 133599))))))

theorem progressionSegment00038_2_0000Check :
    progressionSegment00038_2_0000Tree.check indexedMarker 167281 124070 0 = true :=
  by decide

theorem progressionSegment00038_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 167281 124070 0 32 :=
  by simpa [progressionSegment00038_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00038_2_0000Check

def progressionSegment00038_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 137817) .skip) (.node (.leaf 146240) (.leaf 150446))) (.node (.node (.leaf 154654) (.leaf 158859)) (.node (.leaf 163078) (.leaf 167281)))) (.node (.node (.node (.leaf 171502) (.leaf 175695)) (.node (.leaf 179899) (.leaf 184102))) (.node (.node (.leaf 188309) (.leaf 192535)) (.node (.leaf 196729) (.leaf 200926)))))

theorem progressionSegment00038_2_0001Check :
    progressionSegment00038_2_0001Tree.check indexedMarker 167281 124070 32 = true :=
  by decide

theorem progressionSegment00038_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 167281 124070 32 48 :=
  by simpa [progressionSegment00038_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00038_2_0001Check

def progressionSegment00038_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 205127) (.leaf 209345)) (.node (.leaf 213559) (.leaf 217754))) (.node (.node .skip (.leaf 226171)) (.node (.leaf 230379) (.leaf 234589))))

theorem progressionSegment00038_2_0002Check :
    progressionSegment00038_2_0002Tree.check indexedMarker 167281 124070 48 = true :=
  by decide

theorem progressionSegment00038_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 167281 124070 48 56 :=
  by simpa [progressionSegment00038_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00038_2_0002Check

def progressionSegment00038_2_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 238793) (.leaf 243003)) (.node .skip (.leaf 251415)))

theorem progressionSegment00038_2_0003Check :
    progressionSegment00038_2_0003Tree.check indexedMarker 167281 124070 56 = true :=
  by decide

theorem progressionSegment00038_2_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 167281 124070 56 60 :=
  by simpa [progressionSegment00038_2_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00038_2_0003Check

def progressionSegment00039_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 310) (.leaf 4773)) (.node (.leaf 9225) (.leaf 13683))) (.node (.node (.leaf 18141) .skip) (.node (.leaf 27064) (.leaf 31515)))) (.node (.node (.node (.leaf 35975) .skip) (.node (.leaf 44914) (.leaf 49354))) (.node (.node (.leaf 53804) (.leaf 58275)) (.node (.leaf 62735) (.leaf 67193))))) (.node (.node (.node (.node (.leaf 71651) (.leaf 76119)) (.node (.leaf 80585) (.leaf 85055))) (.node (.node (.leaf 89509) (.leaf 93967)) (.node (.leaf 98418) (.leaf 102873)))) (.node (.node (.node (.leaf 107342) (.leaf 111803)) (.node (.leaf 116262) (.leaf 120715))) (.node (.node (.leaf 125179) (.leaf 129635)) (.node .skip (.leaf 138573))))))

theorem progressionSegment00039_1_0000Check :
    progressionSegment00039_1_0000Tree.check indexedMarker 177241 12238 0 = true :=
  by decide

theorem progressionSegment00039_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 177241 12238 0 32 :=
  by simpa [progressionSegment00039_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00039_1_0000Check

def progressionSegment00039_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 143032) (.leaf 147477)) (.node .skip (.leaf 156401))) (.node (.node (.leaf 160862) (.leaf 165326)) (.node (.leaf 169791) (.leaf 174243)))) (.node (.node (.node (.leaf 178690) (.leaf 183153)) (.node (.leaf 187606) (.leaf 192067))) (.node (.node (.leaf 196520) (.leaf 200971)) (.node (.leaf 205427) (.leaf 209895)))))

theorem progressionSegment00039_1_0001Check :
    progressionSegment00039_1_0001Tree.check indexedMarker 177241 12238 32 = true :=
  by decide

theorem progressionSegment00039_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 177241 12238 32 48 :=
  by simpa [progressionSegment00039_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00039_1_0001Check

def progressionSegment00039_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 214346) (.leaf 218806)) (.node (.leaf 223259) (.leaf 227722))) (.node (.node (.leaf 232173) (.leaf 236634)) (.node (.leaf 241091) .skip)))

theorem progressionSegment00039_1_0002Check :
    progressionSegment00039_1_0002Tree.check indexedMarker 177241 12238 48 = true :=
  by decide

theorem progressionSegment00039_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 177241 12238 48 56 :=
  by simpa [progressionSegment00039_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00039_1_0002Check

def progressionSegment00039_1_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 250018)

theorem progressionSegment00039_1_0003Check :
    progressionSegment00039_1_0003Tree.check indexedMarker 177241 12238 56 = true :=
  by decide

theorem progressionSegment00039_1_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 177241 12238 56 57 :=
  by simpa [progressionSegment00039_1_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00039_1_0003Check

def progressionSegment00039_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 4165) (.leaf 8609)) (.node (.leaf 13073) (.leaf 17528))) (.node (.node (.leaf 21975) (.leaf 26441)) (.node (.leaf 30902) (.leaf 35361)))) (.node (.node (.node (.leaf 39830) (.leaf 44295)) (.node (.leaf 48741) (.leaf 53194))) (.node (.node (.leaf 57664) (.leaf 62113)) (.node (.leaf 66577) .skip)))) (.node (.node (.node (.node (.leaf 75510) (.leaf 79961)) (.node (.leaf 84434) .skip)) (.node (.node (.leaf 93352) (.leaf 97804)) (.node (.leaf 102255) (.leaf 106722)))) (.node (.node (.node (.leaf 111190) (.leaf 115649)) (.node (.leaf 120101) (.leaf 124551))) (.node (.node (.leaf 129023) (.leaf 133479)) (.node (.leaf 137953) (.leaf 142408))))))

theorem progressionSegment00039_2_0000Check :
    progressionSegment00039_2_0000Tree.check indexedMarker 177241 165003 0 = true :=
  by decide

theorem progressionSegment00039_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 177241 165003 0 32 :=
  by simpa [progressionSegment00039_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00039_2_0000Check

def progressionSegment00039_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 146864) (.leaf 151322)) (.node (.leaf 155784) (.leaf 160242))) (.node (.node (.leaf 164710) (.leaf 169176)) (.node (.leaf 173625) (.leaf 178068)))) (.node (.node (.node .skip (.leaf 186995)) (.node (.leaf 191459) (.leaf 195907))) (.node (.node .skip (.leaf 204805)) (.node (.leaf 209271) (.leaf 213739)))))

theorem progressionSegment00039_2_0001Check :
    progressionSegment00039_2_0001Tree.check indexedMarker 177241 165003 32 = true :=
  by decide

theorem progressionSegment00039_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 177241 165003 32 48 :=
  by simpa [progressionSegment00039_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00039_2_0001Check

def progressionSegment00039_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 218194) (.leaf 222649)) (.node (.leaf 227106) (.leaf 231569))) (.node (.node (.leaf 236016) (.leaf 240474)) (.node (.leaf 244929) (.leaf 249402))))

theorem progressionSegment00039_2_0002Check :
    progressionSegment00039_2_0002Tree.check indexedMarker 177241 165003 48 = true :=
  by decide

theorem progressionSegment00039_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 177241 165003 48 56 :=
  by simpa [progressionSegment00039_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00039_2_0002Check

end Erdos848.GeneratedTailDiagonalCoverage
