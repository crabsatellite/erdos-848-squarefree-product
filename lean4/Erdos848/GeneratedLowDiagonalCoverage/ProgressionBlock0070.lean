import Erdos848.GeneratedLowDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedLowDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00027_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node .skip (.leaf 3852)) (.node (.leaf 5852) (.leaf 7843))) (.node (.node (.leaf 9824) (.leaf 11818)) (.node (.leaf 13787) (.leaf 15787)))) (.node (.node (.node (.leaf 17765) (.leaf 19743)) (.node (.leaf 21731) (.leaf 23708))) (.node (.node (.leaf 25709) (.leaf 27705)) (.node (.leaf 29684) (.leaf 31666))))) (.node (.node (.node (.node (.leaf 33663) (.leaf 35639)) (.node (.leaf 37631) (.leaf 39623))) (.node (.node (.leaf 41615) (.leaf 43601)) (.node (.leaf 45591) (.leaf 47575)))) (.node (.node (.node .skip .skip) (.node (.leaf 53505) (.leaf 55501))) (.node (.node (.leaf 57498) (.leaf 59478)) (.node (.leaf 61461) (.leaf 63453))))))

theorem progressionSegment00027_2_0000Check :
    progressionSegment00027_2_0000Tree.check indexedMarker 78961 74518 0 = true :=
  by decide

theorem progressionSegment00027_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 78961 74518 0 32 :=
  by simpa [progressionSegment00027_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00027_2_0000Check

def progressionSegment00027_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 65449) (.leaf 67428)) (.node (.leaf 69415) (.leaf 71399))) (.node (.node (.leaf 73393) (.leaf 75384)) (.node (.leaf 77371) (.leaf 79361)))) (.node (.node (.node (.leaf 81358) (.leaf 83342)) (.node (.leaf 85330) (.leaf 87324))) (.node (.node (.leaf 89294) (.leaf 91278)) (.node (.leaf 93276) (.leaf 95259)))))

theorem progressionSegment00027_2_0001Check :
    progressionSegment00027_2_0001Tree.check indexedMarker 78961 74518 32 = true :=
  by decide

theorem progressionSegment00027_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 78961 74518 32 48 :=
  by simpa [progressionSegment00027_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00027_2_0001Check

def progressionSegment00027_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 97239) .skip) (.node .skip (.leaf 103200))) (.node (.node (.leaf 105190) (.leaf 107170)) (.node (.leaf 109165) (.leaf 111151))))

theorem progressionSegment00027_2_0002Check :
    progressionSegment00027_2_0002Tree.check indexedMarker 78961 74518 48 = true :=
  by decide

theorem progressionSegment00027_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 78961 74518 48 56 :=
  by simpa [progressionSegment00027_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00027_2_0002Check

def progressionSegment00027_2_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 113135) (.leaf 115119)) (.node (.leaf 117107) (.leaf 119090)))

theorem progressionSegment00027_2_0003Check :
    progressionSegment00027_2_0003Tree.check indexedMarker 78961 74518 56 = true :=
  by decide

theorem progressionSegment00027_2_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 78961 74518 56 60 :=
  by simpa [progressionSegment00027_2_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00027_2_0003Check

def progressionSegment00027_2_0004Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 121084) (.leaf 123069))

theorem progressionSegment00027_2_0004Check :
    progressionSegment00027_2_0004Tree.check indexedMarker 78961 74518 60 = true :=
  by decide

theorem progressionSegment00027_2_0004 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 78961 74518 60 62 :=
  by simpa [progressionSegment00027_2_0004Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00027_2_0004Check

def progressionSegment00027_2_0005Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 125053)

theorem progressionSegment00027_2_0005Check :
    progressionSegment00027_2_0005Tree.check indexedMarker 78961 74518 62 = true :=
  by decide

theorem progressionSegment00027_2_0005 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 78961 74518 62 63 :=
  by simpa [progressionSegment00027_2_0005Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00027_2_0005Check

def progressionSegment00028_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 658) .skip) (.node (.leaf 5001) (.leaf 7151))) (.node (.node (.leaf 9308) (.leaf 11472)) (.node (.leaf 13623) (.leaf 15794)))) (.node (.node (.node (.leaf 17946) (.leaf 20102)) (.node (.leaf 22251) (.leaf 24422))) (.node (.node (.leaf 26575) (.leaf 28742)) (.node (.leaf 30900) .skip)))) (.node (.node (.node (.node (.leaf 35226) (.leaf 37384)) (.node (.leaf 39545) (.leaf 41709))) (.node (.node (.leaf 43874) (.leaf 46043)) (.node (.leaf 48190) (.leaf 50347)))) (.node (.node (.node (.leaf 52499) (.leaf 54642)) (.node .skip (.leaf 58972))) (.node (.node (.leaf 61138) (.leaf 63298)) (.node (.leaf 65470) (.leaf 67625))))))

theorem progressionSegment00028_1_0000Check :
    progressionSegment00028_1_0000Tree.check indexedMarker 85849 26508 0 = true :=
  by decide

theorem progressionSegment00028_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 85849 26508 0 32 :=
  by simpa [progressionSegment00028_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00028_1_0000Check

def progressionSegment00028_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 69787) (.leaf 71941)) (.node (.leaf 74097) (.leaf 76271))) (.node (.node (.leaf 78425) (.leaf 80596)) (.node (.leaf 82765) (.leaf 84926)))) (.node (.node (.node .skip (.leaf 89231)) (.node (.leaf 91394) (.leaf 93556))) (.node (.node (.leaf 95713) (.leaf 97869)) (.node (.leaf 100028) (.leaf 102186)))))

theorem progressionSegment00028_1_0001Check :
    progressionSegment00028_1_0001Tree.check indexedMarker 85849 26508 32 = true :=
  by decide

theorem progressionSegment00028_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 85849 26508 32 48 :=
  by simpa [progressionSegment00028_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00028_1_0001Check

def progressionSegment00028_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 104344) (.leaf 106506)) (.node (.leaf 108667) .skip)) (.node (.node (.leaf 112992) (.leaf 115148)) (.node (.leaf 117311) (.leaf 119471))))

theorem progressionSegment00028_1_0002Check :
    progressionSegment00028_1_0002Tree.check indexedMarker 85849 26508 48 = true :=
  by decide

theorem progressionSegment00028_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 85849 26508 48 56 :=
  by simpa [progressionSegment00028_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00028_1_0002Check

def progressionSegment00028_1_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 121637) (.leaf 123795))

theorem progressionSegment00028_1_0003Check :
    progressionSegment00028_1_0003Tree.check indexedMarker 85849 26508 56 = true :=
  by decide

theorem progressionSegment00028_1_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 85849 26508 56 58 :=
  by simpa [progressionSegment00028_1_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00028_1_0003Check

def progressionSegment00028_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 1487) (.leaf 3657)) (.node (.leaf 5815) (.leaf 7977))) (.node (.node (.leaf 10136) (.leaf 12295)) (.node (.leaf 14451) (.leaf 16611)))) (.node (.node (.node (.leaf 18765) .skip) (.node (.leaf 23082) (.leaf 25243))) (.node (.node (.leaf 27414) (.leaf 29571)) (.node (.leaf 31723) (.leaf 33894))))) (.node (.node (.node (.node (.leaf 36041) (.leaf 38204)) (.node (.leaf 40387) (.leaf 42542))) (.node (.node (.leaf 44702) (.leaf 46861)) (.node (.leaf 49013) .skip))) (.node (.node (.node (.leaf 53316) (.leaf 55477)) (.node (.leaf 57648) (.leaf 59804))) (.node (.node (.leaf 61959) (.leaf 64122)) (.node (.leaf 66286) (.leaf 68454))))))

theorem progressionSegment00028_2_0000Check :
    progressionSegment00028_2_0000Tree.check indexedMarker 85849 59341 0 = true :=
  by decide

theorem progressionSegment00028_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 85849 59341 0 32 :=
  by simpa [progressionSegment00028_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00028_2_0000Check

def progressionSegment00028_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 70600) (.leaf 72763)) (.node .skip (.leaf 77102))) (.node (.node (.leaf 79259) (.leaf 81428)) (.node (.leaf 83586) (.leaf 85752)))) (.node (.node (.node (.leaf 87911) (.leaf 90066)) (.node (.leaf 92216) (.leaf 94385))) (.node (.node (.leaf 96543) (.leaf 98687)) (.node (.leaf 100851) (.leaf 103013)))))

theorem progressionSegment00028_2_0001Check :
    progressionSegment00028_2_0001Tree.check indexedMarker 85849 59341 32 = true :=
  by decide

theorem progressionSegment00028_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 85849 59341 32 48 :=
  by simpa [progressionSegment00028_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00028_2_0001Check

def progressionSegment00028_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node .skip (.leaf 107338)) (.node (.leaf 109493) (.leaf 111658))) (.node (.node (.leaf 113810) (.leaf 115974)) (.node (.leaf 118137) (.leaf 120293))))

theorem progressionSegment00028_2_0002Check :
    progressionSegment00028_2_0002Tree.check indexedMarker 85849 59341 48 = true :=
  by decide

theorem progressionSegment00028_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 85849 59341 48 56 :=
  by simpa [progressionSegment00028_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00028_2_0002Check

def progressionSegment00028_2_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 122465) (.leaf 124609))

theorem progressionSegment00028_2_0003Check :
    progressionSegment00028_2_0003Tree.check indexedMarker 85849 59341 56 = true :=
  by decide

theorem progressionSegment00028_2_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 85849 59341 56 58 :=
  by simpa [progressionSegment00028_2_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00028_2_0003Check

def progressionSegment00029_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 2265) (.leaf 4740)) (.node .skip (.leaf 9663))) (.node (.node (.leaf 12138) (.leaf 14591)) (.node (.leaf 17063) (.leaf 19513)))) (.node (.node (.node (.leaf 21973) (.leaf 24444)) (.node (.leaf 26915) (.leaf 29378))) (.node (.node (.leaf 31839) (.leaf 34312)) (.node (.leaf 36776) (.leaf 39239))))) (.node (.node (.node (.node (.leaf 41708) (.leaf 44181)) (.node (.leaf 46644) (.leaf 49098))) (.node (.node (.leaf 51555) .skip) (.node (.leaf 56482) (.leaf 58945)))) (.node (.node (.node (.leaf 61410) (.leaf 63887)) (.node (.leaf 66345) .skip)) (.node (.node (.leaf 71274) (.leaf 73747)) (.node (.leaf 76215) (.leaf 78682))))))

theorem progressionSegment00029_1_0000Check :
    progressionSegment00029_1_0000Tree.check indexedMarker 97969 90119 0 = true :=
  by decide

theorem progressionSegment00029_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 97969 90119 0 32 :=
  by simpa [progressionSegment00029_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00029_1_0000Check

def progressionSegment00029_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 81157) (.leaf 83623)) (.node (.leaf 86090) (.leaf 88553))) (.node (.node (.leaf 91008) (.leaf 93484)) (.node (.leaf 95934) (.leaf 98401)))) (.node (.node (.node (.leaf 100861) (.leaf 103329)) (.node (.leaf 105800) (.leaf 108254))) (.node (.node (.leaf 110733) (.leaf 113196)) (.node .skip (.leaf 118125)))))

theorem progressionSegment00029_1_0001Check :
    progressionSegment00029_1_0001Tree.check indexedMarker 97969 90119 32 = true :=
  by decide

theorem progressionSegment00029_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 97969 90119 32 48 :=
  by simpa [progressionSegment00029_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00029_1_0001Check

def progressionSegment00029_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 120578) (.leaf 123056))

theorem progressionSegment00029_1_0002Check :
    progressionSegment00029_1_0002Tree.check indexedMarker 97969 90119 48 = true :=
  by decide

theorem progressionSegment00029_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 97969 90119 48 50 :=
  by simpa [progressionSegment00029_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00029_1_0002Check

def progressionSegment00029_1_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 125514)

theorem progressionSegment00029_1_0003Check :
    progressionSegment00029_1_0003Tree.check indexedMarker 97969 90119 50 = true :=
  by decide

theorem progressionSegment00029_1_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 97969 90119 50 51 :=
  by simpa [progressionSegment00029_1_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00029_1_0003Check

def progressionSegment00029_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 197) (.leaf 2658)) (.node (.leaf 5146) .skip)) (.node (.node (.leaf 10060) (.leaf 12522)) (.node (.leaf 14990) (.leaf 17450)))) (.node (.node (.node (.leaf 19910) (.leaf 22368)) (.node (.leaf 24837) (.leaf 27304))) (.node (.node (.leaf 29778) (.leaf 32237)) (.node (.leaf 34698) (.leaf 37168))))) (.node (.node (.node (.node (.leaf 39639) (.leaf 42114)) (.node (.leaf 44570) (.leaf 47039))) (.node (.node (.leaf 49490) (.leaf 51958)) (.node .skip (.leaf 56873)))) (.node (.node (.node (.leaf 59345) (.leaf 61809)) (.node (.leaf 64284) (.leaf 66751))) (.node (.node .skip (.leaf 71674)) (.node (.leaf 74136) (.leaf 76616))))))

theorem progressionSegment00029_2_0000Check :
    progressionSegment00029_2_0000Tree.check indexedMarker 97969 7850 0 = true :=
  by decide

theorem progressionSegment00029_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 97969 7850 0 32 :=
  by simpa [progressionSegment00029_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00029_2_0000Check

def progressionSegment00029_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 79077) (.leaf 81555)) (.node (.leaf 84023) (.leaf 86481))) (.node (.node (.leaf 88943) (.leaf 91409)) (.node (.leaf 93873) (.leaf 96331)))) (.node (.node (.node (.leaf 98789) (.leaf 101254)) (.node (.leaf 103726) (.leaf 106189))) (.node (.node (.leaf 108651) (.leaf 111126)) (.node (.leaf 113584) .skip))))

theorem progressionSegment00029_2_0001Check :
    progressionSegment00029_2_0001Tree.check indexedMarker 97969 7850 32 = true :=
  by decide

theorem progressionSegment00029_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 97969 7850 32 48 :=
  by simpa [progressionSegment00029_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00029_2_0001Check

def progressionSegment00029_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 118517) (.leaf 120983))

theorem progressionSegment00029_2_0002Check :
    progressionSegment00029_2_0002Tree.check indexedMarker 97969 7850 48 = true :=
  by decide

theorem progressionSegment00029_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 97969 7850 48 50 :=
  by simpa [progressionSegment00029_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00029_2_0002Check

def progressionSegment00029_2_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 123446)

theorem progressionSegment00029_2_0003Check :
    progressionSegment00029_2_0003Tree.check indexedMarker 97969 7850 50 = true :=
  by decide

theorem progressionSegment00029_2_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 97969 7850 50 51 :=
  by simpa [progressionSegment00029_2_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00029_2_0003Check

def progressionSegment00030_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 1582) (.leaf 4122)) (.node (.leaf 6648) (.leaf 9167))) (.node (.node (.leaf 11707) (.leaf 14228)) (.node (.leaf 16757) (.leaf 19278)))) (.node (.node (.node (.leaf 21794) (.leaf 24328)) (.node (.leaf 26868) (.leaf 29396))) (.node (.node (.leaf 31916) (.leaf 34452)) (.node (.leaf 36979) (.leaf 39508))))) (.node (.node (.node (.node .skip .skip) (.node (.leaf 47105) (.leaf 49618))) (.node (.node (.leaf 52150) (.leaf 54655)) (.node (.leaf 57191) (.leaf 59727)))) (.node (.node (.node (.leaf 62251) (.leaf 64792)) (.node (.leaf 67306) (.leaf 69849))) (.node (.node (.leaf 72375) (.leaf 74907)) (.node (.leaf 77442) (.leaf 79963))))))

theorem progressionSegment00030_1_0000Check :
    progressionSegment00030_1_0000Tree.check indexedMarker 100489 62969 0 = true :=
  by decide

theorem progressionSegment00030_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 100489 62969 0 32 :=
  by simpa [progressionSegment00030_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00030_1_0000Check

def progressionSegment00030_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 82513) (.leaf 85038)) (.node (.leaf 87568) (.leaf 90090))) (.node (.node (.leaf 92606) (.leaf 95142)) (.node (.leaf 97663) (.leaf 100188)))) (.node (.node (.node (.leaf 102716) .skip) (.node .skip (.leaf 110307))) (.node (.node (.leaf 112838) (.leaf 115365)) (.node (.leaf 117891) (.leaf 120412)))))

theorem progressionSegment00030_1_0001Check :
    progressionSegment00030_1_0001Tree.check indexedMarker 100489 62969 32 = true :=
  by decide

theorem progressionSegment00030_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 100489 62969 32 48 :=
  by simpa [progressionSegment00030_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00030_1_0001Check

def progressionSegment00030_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 122951) (.leaf 125471))

theorem progressionSegment00030_1_0002Check :
    progressionSegment00030_1_0002Tree.check indexedMarker 100489 62969 48 = true :=
  by decide

theorem progressionSegment00030_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 100489 62969 48 50 :=
  by simpa [progressionSegment00030_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00030_1_0002Check

def progressionSegment00030_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 943) (.leaf 3480)) (.node (.leaf 6004) (.leaf 8528))) (.node (.node (.leaf 11064) (.leaf 13584)) (.node (.leaf 16113) .skip))) (.node (.node (.node .skip (.leaf 23681)) (.node (.leaf 26219) (.leaf 28751))) (.node (.node (.leaf 31276) (.leaf 33811)) (.node (.leaf 36341) (.leaf 38865))))) (.node (.node (.node (.node (.leaf 41403) (.leaf 43935)) (.node (.leaf 46465) (.leaf 48982))) (.node (.node (.leaf 51502) (.leaf 54014)) (.node (.leaf 56558) (.leaf 59086)))) (.node (.node (.node (.leaf 61611) (.leaf 64140)) (.node (.leaf 66680) (.leaf 69212))) (.node (.node (.leaf 71732) (.leaf 74267)) (.node (.leaf 76795) (.leaf 79327))))))

theorem progressionSegment00030_2_0000Check :
    progressionSegment00030_2_0000Tree.check indexedMarker 100489 37520 0 = true :=
  by decide

theorem progressionSegment00030_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 100489 37520 0 32 :=
  by simpa [progressionSegment00030_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00030_2_0000Check

def progressionSegment00030_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node .skip .skip) (.node (.leaf 86927) (.leaf 89444))) (.node (.node (.leaf 91974) (.leaf 94502)) (.node (.leaf 97026) (.leaf 99544)))) (.node (.node (.node (.leaf 102071) (.leaf 104605)) (.node (.leaf 107134) (.leaf 109667))) (.node (.node (.leaf 112206) (.leaf 114722)) (.node (.leaf 117251) (.leaf 119785)))))

theorem progressionSegment00030_2_0001Check :
    progressionSegment00030_2_0001Tree.check indexedMarker 100489 37520 32 = true :=
  by decide

theorem progressionSegment00030_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 100489 37520 32 48 :=
  by simpa [progressionSegment00030_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00030_2_0001Check

def progressionSegment00030_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 122310) (.leaf 124832))

theorem progressionSegment00030_2_0002Check :
    progressionSegment00030_2_0002Tree.check indexedMarker 100489 37520 48 = true :=
  by decide

theorem progressionSegment00030_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 100489 37520 48 50 :=
  by simpa [progressionSegment00030_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00030_2_0002Check

def progressionSegment00031_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 774) (.leaf 3644)) (.node (.leaf 6506) (.leaf 9356))) (.node (.node (.leaf 12216) (.leaf 15077)) (.node (.leaf 17925) (.leaf 20780)))) (.node (.node (.node (.leaf 23629) (.leaf 26495)) (.node (.leaf 29353) (.leaf 32209))) (.node (.node (.leaf 35073) (.leaf 37922)) (.node .skip (.leaf 43657))))) (.node (.node (.node (.node (.leaf 46514) (.leaf 49351)) (.node (.leaf 52211) (.leaf 55056))) (.node (.node .skip (.leaf 60777)) (.node (.leaf 63644) (.leaf 66502)))) (.node (.node (.node (.leaf 69361) (.leaf 72215)) (.node (.leaf 75077) (.leaf 77930))) (.node (.node (.leaf 80803) (.leaf 83661)) (.node (.leaf 86519) (.leaf 89376))))))

theorem progressionSegment00031_1_0000Check :
    progressionSegment00031_1_0000Tree.check indexedMarker 113569 31152 0 = true :=
  by decide

theorem progressionSegment00031_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 113569 31152 0 32 :=
  by simpa [progressionSegment00031_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00031_1_0000Check

def progressionSegment00031_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 92229) (.leaf 95087)) (.node (.leaf 97939) (.leaf 100792))) (.node (.node (.leaf 103655) (.leaf 106508)) (.node (.leaf 109377) .skip)))

theorem progressionSegment00031_1_0001Check :
    progressionSegment00031_1_0001Tree.check indexedMarker 113569 31152 32 = true :=
  by decide

theorem progressionSegment00031_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 113569 31152 32 40 :=
  by simpa [progressionSegment00031_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00031_1_0001Check

def progressionSegment00031_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 115083) (.leaf 117941)) (.node (.leaf 120798) (.leaf 123660)))

theorem progressionSegment00031_1_0002Check :
    progressionSegment00031_1_0002Tree.check indexedMarker 113569 31152 40 = true :=
  by decide

theorem progressionSegment00031_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 113569 31152 40 44 :=
  by simpa [progressionSegment00031_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00031_1_0002Check

def progressionSegment00031_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 2072) (.leaf 4942)) (.node (.leaf 7801) (.leaf 10649))) (.node (.node .skip (.leaf 16360)) (.node (.leaf 19212) (.leaf 22061)))) (.node (.node (.node (.leaf 24915) (.leaf 27792)) (.node .skip (.leaf 33502))) (.node (.node (.leaf 36365) (.leaf 39217)) (.node (.leaf 42090) (.leaf 44949))))) (.node (.node (.node (.node (.leaf 47795) (.leaf 50647)) (.node (.leaf 53481) (.leaf 56356))) (.node (.node (.leaf 59211) (.leaf 62065)) (.node (.leaf 64940) (.leaf 67791)))) (.node (.node (.node (.leaf 70644) (.leaf 73511)) (.node (.leaf 76371) (.leaf 79232))) (.node (.node (.leaf 82099) .skip) (.node (.leaf 87823) (.leaf 90661))))))

theorem progressionSegment00031_2_0000Check :
    progressionSegment00031_2_0000Tree.check indexedMarker 113569 82417 0 = true :=
  by decide

theorem progressionSegment00031_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 113569 82417 0 32 :=
  by simpa [progressionSegment00031_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00031_2_0000Check

def progressionSegment00031_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 93525) (.leaf 96374)) (.node (.leaf 99223) .skip)) (.node (.node (.leaf 104937) (.leaf 107803)) (.node (.leaf 110661) (.leaf 113519))))

theorem progressionSegment00031_2_0001Check :
    progressionSegment00031_2_0001Tree.check indexedMarker 113569 82417 32 = true :=
  by decide

theorem progressionSegment00031_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 113569 82417 32 40 :=
  by simpa [progressionSegment00031_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00031_2_0001Check

def progressionSegment00031_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 116383) (.leaf 119230)) (.node (.leaf 122093) (.leaf 124942)))

theorem progressionSegment00031_2_0002Check :
    progressionSegment00031_2_0002Tree.check indexedMarker 113569 82417 40 = true :=
  by decide

theorem progressionSegment00031_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 113569 82417 40 44 :=
  by simpa [progressionSegment00031_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00031_2_0002Check

def progressionSegment00032_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 2055) (.leaf 5141)) (.node (.leaf 8189) .skip)) (.node (.node (.leaf 14315) (.leaf 17378)) (.node (.leaf 20441) (.leaf 23499)))) (.node (.node (.node (.leaf 26564) (.leaf 29638)) (.node (.leaf 32710) (.leaf 35762))) (.node (.node (.leaf 38829) (.leaf 41910)) (.node .skip (.leaf 48030))))) (.node (.node (.node (.node (.leaf 51092) (.leaf 54137)) (.node (.leaf 57210) (.leaf 60271))) (.node (.node (.leaf 63345) (.leaf 66409)) (.node (.leaf 69473) (.leaf 72537)))) (.node (.node (.node (.leaf 75615) (.leaf 78673)) (.node (.leaf 81758) (.leaf 84818))) (.node (.node .skip (.leaf 90936)) (.node (.leaf 94012) (.leaf 97063))))))

theorem progressionSegment00032_1_0000Check :
    progressionSegment00032_1_0000Tree.check indexedMarker 121801 81879 0 = true :=
  by decide

theorem progressionSegment00032_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 121801 81879 0 32 :=
  by simpa [progressionSegment00032_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00032_1_0000Check

def progressionSegment00032_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 100122) (.leaf 103193)) (.node (.leaf 106256) (.leaf 109327))) (.node (.node (.leaf 112392) (.leaf 115455)) (.node (.leaf 118516) .skip)))

theorem progressionSegment00032_1_0001Check :
    progressionSegment00032_1_0001Tree.check indexedMarker 121801 81879 32 = true :=
  by decide

theorem progressionSegment00032_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 121801 81879 32 40 :=
  by simpa [progressionSegment00032_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00032_1_0001Check

def progressionSegment00032_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 124641)

theorem progressionSegment00032_1_0002Check :
    progressionSegment00032_1_0002Tree.check indexedMarker 121801 81879 40 = true :=
  by decide

theorem progressionSegment00032_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 121801 81879 40 41 :=
  by simpa [progressionSegment00032_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00032_1_0002Check

def progressionSegment00032_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 1002) (.leaf 4072)) (.node (.leaf 7139) (.leaf 10195))) (.node (.node (.leaf 13263) (.leaf 16326)) (.node (.leaf 19385) (.leaf 22446)))) (.node (.node (.node (.leaf 25511) (.leaf 28585)) (.node .skip (.leaf 34709))) (.node (.node (.leaf 37773) (.leaf 40846)) (.node (.leaf 43917) (.leaf 46977))))) (.node (.node (.node (.node (.leaf 50036) (.leaf 53084)) (.node (.leaf 56151) (.leaf 59218))) (.node (.node (.leaf 62287) .skip) (.node (.leaf 68427) (.leaf 71476)))) (.node (.node (.node (.leaf 74551) (.leaf 77623)) (.node (.leaf 80698) (.leaf 83758))) (.node (.node (.leaf 86829) (.leaf 89893)) (.node (.leaf 92947) (.leaf 96006))))))

theorem progressionSegment00032_2_0000Check :
    progressionSegment00032_2_0000Tree.check indexedMarker 121801 39922 0 = true :=
  by decide

theorem progressionSegment00032_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 121801 39922 0 32 :=
  by simpa [progressionSegment00032_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00032_2_0000Check

def progressionSegment00032_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 99071) (.leaf 102129)) (.node (.leaf 105205) .skip)) (.node (.node (.leaf 111342) (.leaf 114391)) (.node (.leaf 117467) (.leaf 120522))))

theorem progressionSegment00032_2_0001Check :
    progressionSegment00032_2_0001Tree.check indexedMarker 121801 39922 32 = true :=
  by decide

theorem progressionSegment00032_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 121801 39922 32 40 :=
  by simpa [progressionSegment00032_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00032_2_0001Check

def progressionSegment00032_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 123592)

theorem progressionSegment00032_2_0002Check :
    progressionSegment00032_2_0002Tree.check indexedMarker 121801 39922 40 = true :=
  by decide

theorem progressionSegment00032_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 121801 39922 40 41 :=
  by simpa [progressionSegment00032_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00032_2_0002Check

def progressionSegment00033_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 2196) (.leaf 5348)) (.node (.leaf 8474) (.leaf 11615))) (.node (.node (.leaf 14748) (.leaf 17872)) (.node (.leaf 21007) (.leaf 24139)))) (.node (.node (.node (.leaf 27277) (.leaf 30415)) (.node (.leaf 33553) (.leaf 36686))) (.node (.node (.leaf 39826) (.leaf 42962)) (.node (.leaf 46109) (.leaf 49225))))) (.node (.node (.node (.node (.leaf 52357) (.leaf 55484)) (.node (.leaf 58627) (.leaf 61760))) (.node (.node .skip (.leaf 68035)) (.node (.leaf 71165) (.leaf 74314)))) (.node (.node (.node .skip (.leaf 80591)) (.node (.leaf 83729) (.leaf 86870))) (.node (.node (.leaf 90001) (.leaf 93127)) (.node (.leaf 96260) (.leaf 99396))))))

theorem progressionSegment00033_1_0000Check :
    progressionSegment00033_1_0000Tree.check indexedMarker 124609 87502 0 = true :=
  by decide

theorem progressionSegment00033_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 124609 87502 0 32 :=
  by simpa [progressionSegment00033_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00033_1_0000Check

def progressionSegment00033_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 102524) (.leaf 105665)) (.node (.leaf 108800) (.leaf 111943))) (.node (.node (.leaf 115068) (.leaf 118212)) (.node (.leaf 121350) (.leaf 124469))))

theorem progressionSegment00033_1_0001Check :
    progressionSegment00033_1_0001Tree.check indexedMarker 124609 87502 32 = true :=
  by decide

theorem progressionSegment00033_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 124609 87502 32 40 :=
  by simpa [progressionSegment00033_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00033_1_0001Check

def progressionSegment00033_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node .skip (.leaf 4071)) (.node (.leaf 7210) (.leaf 10342))) (.node (.node .skip (.leaf 16606)) (.node (.leaf 19734) (.leaf 22869)))) (.node (.node (.node (.leaf 26005) (.leaf 29150)) (.node (.leaf 32281) (.leaf 35417))) (.node (.node (.leaf 38551) (.leaf 41695)) (.node (.leaf 44837) (.leaf 47963))))) (.node (.node (.node (.node (.leaf 51097) (.leaf 54209)) (.node (.leaf 57358) (.leaf 60484))) (.node (.node (.leaf 63632) (.leaf 66773)) (.node (.leaf 69909) (.leaf 73037)))) (.node (.node (.node (.leaf 76182) .skip) (.node (.leaf 82469) (.leaf 85604))) (.node (.node (.leaf 88728) .skip) (.node (.leaf 94998) (.leaf 98128))))))

theorem progressionSegment00033_2_0000Check :
    progressionSegment00033_2_0000Tree.check indexedMarker 124609 37107 0 = true :=
  by decide

theorem progressionSegment00033_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 124609 37107 0 32 :=
  by simpa [progressionSegment00033_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00033_2_0000Check

def progressionSegment00033_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 101255) (.leaf 104387)) (.node (.leaf 107537) (.leaf 110672))) (.node (.node (.leaf 113799) (.leaf 116940)) (.node (.leaf 120074) (.leaf 123219))))

theorem progressionSegment00033_2_0001Check :
    progressionSegment00033_2_0001Tree.check indexedMarker 124609 37107 32 = true :=
  by decide

theorem progressionSegment00033_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 124609 37107 32 40 :=
  by simpa [progressionSegment00033_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00033_2_0001Check

def progressionSegment00034_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 151) (.leaf 3658)) (.node (.leaf 7159) (.leaf 10659))) (.node (.node (.leaf 14154) (.leaf 17651)) (.node (.leaf 21141) (.leaf 24652)))) (.node (.node (.node (.leaf 28153) (.leaf 31651)) (.node (.leaf 35159) (.leaf 38654))) (.node (.node (.leaf 42174) (.leaf 45669)) (.node (.leaf 49156) .skip)))) (.node (.node (.node (.node (.leaf 56146) (.leaf 59647)) (.node (.leaf 63155) (.leaf 66661))) (.node (.node (.leaf 70155) (.leaf 73658)) (.node (.leaf 77173) (.leaf 80681)))) (.node (.node (.node .skip (.leaf 87685)) (.node (.leaf 91168) (.leaf 94677))) (.node (.node (.leaf 98172) (.leaf 101665)) (.node (.leaf 105174) (.leaf 108671))))))

theorem progressionSegment00034_1_0000Check :
    progressionSegment00034_1_0000Tree.check indexedMarker 139129 6072 0 = true :=
  by decide

theorem progressionSegment00034_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 139129 6072 0 32 :=
  by simpa [progressionSegment00034_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00034_1_0000Check

def progressionSegment00034_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 112182) (.leaf 115676)) (.node (.leaf 119170) (.leaf 122680)))

theorem progressionSegment00034_1_0001Check :
    progressionSegment00034_1_0001Tree.check indexedMarker 139129 6072 32 = true :=
  by decide

theorem progressionSegment00034_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 139129 6072 32 36 :=
  by simpa [progressionSegment00034_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00034_1_0001Check

def progressionSegment00034_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node .skip (.leaf 6856)) (.node (.leaf 10353) (.leaf 13844))) (.node (.node (.leaf 17344) (.leaf 20848)) (.node (.leaf 24338) (.leaf 27856)))) (.node (.node (.node (.leaf 31346) .skip) (.node (.leaf 38344) (.leaf 41865))) (.node (.node (.leaf 45367) (.leaf 48851)) (.node (.leaf 52347) (.leaf 55833))))) (.node (.node (.node (.node (.leaf 59346) (.leaf 62848)) (.node (.leaf 66350) (.leaf 69860))) (.node (.node (.leaf 73351) (.leaf 76866)) (.node (.leaf 80367) (.leaf 83873)))) (.node (.node (.node (.leaf 87379) .skip) (.node (.leaf 94374) (.leaf 97862))) (.node (.node (.leaf 101360) (.leaf 104859)) (.node (.leaf 108365) (.leaf 111872))))))

theorem progressionSegment00034_2_0000Check :
    progressionSegment00034_2_0000Tree.check indexedMarker 139129 133057 0 = true :=
  by decide

theorem progressionSegment00034_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 139129 133057 0 32 :=
  by simpa [progressionSegment00034_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00034_2_0000Check

def progressionSegment00034_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 115371) (.leaf 118868))

theorem progressionSegment00034_2_0001Check :
    progressionSegment00034_2_0001Tree.check indexedMarker 139129 133057 32 = true :=
  by decide

theorem progressionSegment00034_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 139129 133057 32 34 :=
  by simpa [progressionSegment00034_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00034_2_0001Check

def progressionSegment00034_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  .skip

theorem progressionSegment00034_2_0002Check :
    progressionSegment00034_2_0002Tree.check indexedMarker 139129 133057 34 = true :=
  by decide

theorem progressionSegment00034_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 139129 133057 34 35 :=
  by simpa [progressionSegment00034_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00034_2_0002Check

def progressionSegment00035_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 97) (.leaf 3906)) (.node (.leaf 7721) .skip)) (.node (.node (.leaf 15332) (.leaf 19129)) (.node (.leaf 22930) (.leaf 26748)))) (.node (.node (.node (.leaf 30557) (.leaf 34364)) (.node (.leaf 38167) (.leaf 41991))) (.node (.node .skip (.leaf 49590)) (.node (.leaf 53387) (.leaf 57195))))) (.node (.node (.node (.node (.leaf 61003) (.leaf 64824)) (.node (.leaf 68638) (.leaf 72433))) (.node (.node (.leaf 76249) (.leaf 80055)) (.node (.leaf 83875) (.leaf 87689)))) (.node (.node (.node (.leaf 91485) (.leaf 95289)) (.node (.leaf 99091) (.leaf 102896))) (.node (.node .skip (.leaf 110522)) (.node (.leaf 114315) (.leaf 118133))))))

theorem progressionSegment00035_1_0000Check :
    progressionSegment00035_1_0000Tree.check indexedMarker 151321 4005 0 = true :=
  by decide

theorem progressionSegment00035_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 151321 4005 0 32 :=
  by simpa [progressionSegment00035_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00035_1_0000Check

def progressionSegment00035_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 121943) (.leaf 125744))

theorem progressionSegment00035_1_0001Check :
    progressionSegment00035_1_0001Tree.check indexedMarker 151321 4005 32 = true :=
  by decide

theorem progressionSegment00035_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 151321 4005 32 34 :=
  by simpa [progressionSegment00035_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00035_1_0001Check

def progressionSegment00035_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 3710) (.leaf 7520)) (.node (.leaf 11324) (.leaf 15133))) (.node (.node (.leaf 18927) (.leaf 22729)) (.node (.leaf 26540) (.leaf 30354)))) (.node (.node (.node (.leaf 34164) (.leaf 37968)) (.node (.leaf 41788) (.leaf 45596))) (.node (.node .skip (.leaf 53189)) (.node (.leaf 56998) (.leaf 60802))))) (.node (.node (.node (.node (.leaf 64620) (.leaf 68432)) (.node (.leaf 72234) (.leaf 76050))) (.node (.node (.leaf 79851) .skip) (.node (.leaf 87484) (.leaf 91276)))) (.node (.node (.node (.leaf 95090) (.leaf 98887)) (.node (.leaf 102693) (.leaf 106501))) (.node (.node (.leaf 110316) (.leaf 114122)) (.node (.leaf 117926) (.leaf 121747))))))

theorem progressionSegment00035_2_0000Check :
    progressionSegment00035_2_0000Tree.check indexedMarker 151321 147316 0 = true :=
  by decide

theorem progressionSegment00035_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 151321 147316 0 32 :=
  by simpa [progressionSegment00035_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00035_2_0000Check

def progressionSegment00035_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 125544)

theorem progressionSegment00035_2_0001Check :
    progressionSegment00035_2_0001Tree.check indexedMarker 151321 147316 32 = true :=
  by decide

theorem progressionSegment00035_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 151321 147316 32 33 :=
  by simpa [progressionSegment00035_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00035_2_0001Check

def progressionSegment00036_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node .skip (.leaf 7119)) (.node (.leaf 11086) (.leaf 15049))) (.node (.node (.leaf 19007) (.leaf 22960)) (.node (.leaf 26939) (.leaf 30898)))) (.node (.node (.node (.leaf 34871) (.leaf 38836)) (.node (.leaf 42810) (.leaf 46777))) (.node (.node (.leaf 50732) (.leaf 54679)) (.node (.leaf 58655) (.leaf 62619)))))

theorem progressionSegment00036_1_0000Check :
    progressionSegment00036_1_0000Tree.check indexedMarker 157609 125118 0 = true :=
  by decide

theorem progressionSegment00036_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 157609 125118 0 16 :=
  by simpa [progressionSegment00036_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00036_1_0000Check

def progressionSegment00036_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 66590) (.leaf 70548)) (.node (.leaf 74524) (.leaf 78496))) (.node (.node (.leaf 82477) .skip) (.node (.leaf 90402) (.leaf 94365))))

theorem progressionSegment00036_1_0001Check :
    progressionSegment00036_1_0001Tree.check indexedMarker 157609 125118 16 = true :=
  by decide

theorem progressionSegment00036_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 157609 125118 16 24 :=
  by simpa [progressionSegment00036_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00036_1_0001Check

def progressionSegment00036_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 98322) .skip) (.node (.leaf 106252) (.leaf 110221)))

theorem progressionSegment00036_1_0002Check :
    progressionSegment00036_1_0002Tree.check indexedMarker 157609 125118 24 = true :=
  by decide

theorem progressionSegment00036_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 157609 125118 24 28 :=
  by simpa [progressionSegment00036_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00036_1_0002Check

def progressionSegment00036_1_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 114179) (.leaf 118156))

theorem progressionSegment00036_1_0003Check :
    progressionSegment00036_1_0003Tree.check indexedMarker 157609 125118 28 = true :=
  by decide

theorem progressionSegment00036_1_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 157609 125118 28 30 :=
  by simpa [progressionSegment00036_1_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00036_1_0003Check

def progressionSegment00036_1_0004Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 122120)

theorem progressionSegment00036_1_0004Check :
    progressionSegment00036_1_0004Tree.check indexedMarker 157609 125118 30 = true :=
  by decide

theorem progressionSegment00036_1_0004 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 157609 125118 30 31 :=
  by simpa [progressionSegment00036_1_0004Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00036_1_0004Check

def progressionSegment00036_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 814) (.leaf 4789)) (.node (.leaf 8747) .skip)) (.node (.node (.leaf 16682) (.leaf 20640)) (.node (.leaf 24604) (.leaf 28574)))) (.node (.node (.node (.leaf 32541) (.leaf 36504)) (.node (.leaf 40484) (.leaf 44447))) (.node (.node (.leaf 48397) (.leaf 52361)) (.node (.leaf 56323) (.leaf 60283))))) (.node (.node (.node (.node (.leaf 64261) (.leaf 68228)) (.node (.leaf 72189) (.leaf 76165))) (.node (.node (.leaf 80134) (.leaf 84115)) (.node (.leaf 88080) (.leaf 92031)))) (.node (.node (.node .skip (.leaf 99955)) (.node (.leaf 103926) (.leaf 107892))) (.node (.node .skip (.leaf 115826)) (.node (.leaf 119792) (.leaf 123760))))))

theorem progressionSegment00036_2_0000Check :
    progressionSegment00036_2_0000Tree.check indexedMarker 157609 32491 0 = true :=
  by decide

theorem progressionSegment00036_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 157609 32491 0 32 :=
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

def progressionSegment00037_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 3945) (.leaf 7996)) (.node (.leaf 12041) (.leaf 16079))) (.node (.node (.leaf 20121) (.leaf 24167)) (.node (.leaf 28217) (.leaf 32259)))) (.node (.node (.node (.leaf 36308) (.leaf 40368)) (.node (.leaf 44412) .skip)) (.node (.node (.leaf 52485) (.leaf 56530)) (.node (.leaf 60569) (.leaf 64627)))))

theorem progressionSegment00037_2_0000Check :
    progressionSegment00037_2_0000Tree.check indexedMarker 160801 156771 0 = true :=
  by decide

theorem progressionSegment00037_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 160801 156771 0 16 :=
  by simpa [progressionSegment00037_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00037_2_0000Check

def progressionSegment00037_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 68685) (.leaf 72715)) (.node (.leaf 76771) (.leaf 80829))) (.node (.node (.leaf 84878) (.leaf 88915)) (.node .skip (.leaf 97002))))

theorem progressionSegment00037_2_0001Check :
    progressionSegment00037_2_0001Tree.check indexedMarker 160801 156771 16 = true :=
  by decide

theorem progressionSegment00037_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 160801 156771 16 24 :=
  by simpa [progressionSegment00037_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00037_2_0001Check

def progressionSegment00037_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 101035) (.leaf 105090)) (.node (.leaf 109145) (.leaf 113185)))

theorem progressionSegment00037_2_0002Check :
    progressionSegment00037_2_0002Tree.check indexedMarker 160801 156771 24 = true :=
  by decide

theorem progressionSegment00037_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 160801 156771 24 28 :=
  by simpa [progressionSegment00037_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00037_2_0002Check

def progressionSegment00037_2_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 117230) (.leaf 121286))

theorem progressionSegment00037_2_0003Check :
    progressionSegment00037_2_0003Tree.check indexedMarker 160801 156771 28 = true :=
  by decide

theorem progressionSegment00037_2_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 160801 156771 28 30 :=
  by simpa [progressionSegment00037_2_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00037_2_0003Check

def progressionSegment00037_2_0004Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 125323)

theorem progressionSegment00037_2_0004Check :
    progressionSegment00037_2_0004Tree.check indexedMarker 160801 156771 30 = true :=
  by decide

theorem progressionSegment00037_2_0004 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 160801 156771 30 31 :=
  by simpa [progressionSegment00037_2_0004Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00037_2_0004Check

def progressionSegment00038_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 1090) (.leaf 5310)) (.node (.leaf 9507) (.leaf 13713))) (.node (.node (.leaf 17919) (.leaf 22118)) (.node (.leaf 26335) (.leaf 30543)))) (.node (.node (.node (.leaf 34753) (.leaf 38965)) (.node (.leaf 43181) (.leaf 47389))) (.node (.node (.leaf 51587) (.leaf 55785)) (.node (.leaf 60003) (.leaf 64210)))))

theorem progressionSegment00038_1_0000Check :
    progressionSegment00038_1_0000Tree.check indexedMarker 167281 43211 0 = true :=
  by decide

theorem progressionSegment00038_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 167281 43211 0 16 :=
  by simpa [progressionSegment00038_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00038_1_0000Check

def progressionSegment00038_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node .skip (.leaf 72624)) (.node (.leaf 76854) (.leaf 81071))) (.node (.node (.leaf 85278) (.leaf 89483)) (.node .skip (.leaf 97892))))

theorem progressionSegment00038_1_0001Check :
    progressionSegment00038_1_0001Tree.check indexedMarker 167281 43211 16 = true :=
  by decide

theorem progressionSegment00038_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 167281 43211 16 24 :=
  by simpa [progressionSegment00038_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00038_1_0001Check

def progressionSegment00038_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 102096) (.leaf 106311)) (.node (.leaf 110527) (.leaf 114727)))

theorem progressionSegment00038_1_0002Check :
    progressionSegment00038_1_0002Tree.check indexedMarker 167281 43211 24 = true :=
  by decide

theorem progressionSegment00038_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 167281 43211 24 28 :=
  by simpa [progressionSegment00038_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00038_1_0002Check

def progressionSegment00038_1_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 118941) (.leaf 123155))

theorem progressionSegment00038_1_0003Check :
    progressionSegment00038_1_0003Tree.check indexedMarker 167281 43211 28 = true :=
  by decide

theorem progressionSegment00038_1_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 167281 43211 28 30 :=
  by simpa [progressionSegment00038_1_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00038_1_0003Check

def progressionSegment00038_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 3122) (.leaf 7335)) (.node .skip (.leaf 15755))) (.node (.node (.leaf 19949) (.leaf 24158)) (.node (.leaf 28377) (.leaf 32585)))) (.node (.node (.node .skip (.leaf 41004)) (.node (.leaf 45223) (.leaf 49412))) (.node (.node (.leaf 53604) (.leaf 57827)) (.node (.leaf 62030) (.leaf 66247)))))

theorem progressionSegment00038_2_0000Check :
    progressionSegment00038_2_0000Tree.check indexedMarker 167281 124070 0 = true :=
  by decide

theorem progressionSegment00038_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 167281 124070 0 16 :=
  by simpa [progressionSegment00038_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00038_2_0000Check

def progressionSegment00038_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 70454) (.leaf 74665)) (.node (.leaf 78883) (.leaf 83103))) (.node (.node (.leaf 87319) (.leaf 91513)) (.node (.leaf 95723) (.leaf 99927))))

theorem progressionSegment00038_2_0001Check :
    progressionSegment00038_2_0001Tree.check indexedMarker 167281 124070 16 = true :=
  by decide

theorem progressionSegment00038_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 167281 124070 16 24 :=
  by simpa [progressionSegment00038_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00038_2_0001Check

def progressionSegment00038_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 104138) (.leaf 108344)) (.node (.leaf 112563) .skip))

theorem progressionSegment00038_2_0002Check :
    progressionSegment00038_2_0002Tree.check indexedMarker 167281 124070 24 = true :=
  by decide

theorem progressionSegment00038_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 167281 124070 24 28 :=
  by simpa [progressionSegment00038_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00038_2_0002Check

def progressionSegment00038_2_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 120970) (.leaf 125185))

theorem progressionSegment00038_2_0003Check :
    progressionSegment00038_2_0003Tree.check indexedMarker 167281 124070 28 = true :=
  by decide

theorem progressionSegment00038_2_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 167281 124070 28 30 :=
  by simpa [progressionSegment00038_2_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00038_2_0003Check

def progressionSegment00039_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 310) (.leaf 4773)) (.node (.leaf 9225) (.leaf 13683))) (.node (.node (.leaf 18141) .skip) (.node (.leaf 27064) (.leaf 31515)))) (.node (.node (.node (.leaf 35975) .skip) (.node (.leaf 44914) (.leaf 49354))) (.node (.node (.leaf 53804) (.leaf 58275)) (.node (.leaf 62735) (.leaf 67193)))))

theorem progressionSegment00039_1_0000Check :
    progressionSegment00039_1_0000Tree.check indexedMarker 177241 12238 0 = true :=
  by decide

theorem progressionSegment00039_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 177241 12238 0 16 :=
  by simpa [progressionSegment00039_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00039_1_0000Check

def progressionSegment00039_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 71651) (.leaf 76119)) (.node (.leaf 80585) (.leaf 85055))) (.node (.node (.leaf 89509) (.leaf 93967)) (.node (.leaf 98418) (.leaf 102873))))

theorem progressionSegment00039_1_0001Check :
    progressionSegment00039_1_0001Tree.check indexedMarker 177241 12238 16 = true :=
  by decide

theorem progressionSegment00039_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 177241 12238 16 24 :=
  by simpa [progressionSegment00039_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00039_1_0001Check

def progressionSegment00039_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 107342) (.leaf 111803)) (.node (.leaf 116262) (.leaf 120715)))

theorem progressionSegment00039_1_0002Check :
    progressionSegment00039_1_0002Tree.check indexedMarker 177241 12238 24 = true :=
  by decide

theorem progressionSegment00039_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 177241 12238 24 28 :=
  by simpa [progressionSegment00039_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00039_1_0002Check

def progressionSegment00039_1_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 125179)

theorem progressionSegment00039_1_0003Check :
    progressionSegment00039_1_0003Tree.check indexedMarker 177241 12238 28 = true :=
  by decide

theorem progressionSegment00039_1_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 177241 12238 28 29 :=
  by simpa [progressionSegment00039_1_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00039_1_0003Check

def progressionSegment00039_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 4165) (.leaf 8609)) (.node (.leaf 13073) (.leaf 17528))) (.node (.node (.leaf 21975) (.leaf 26441)) (.node (.leaf 30902) (.leaf 35361)))) (.node (.node (.node (.leaf 39830) (.leaf 44295)) (.node (.leaf 48741) (.leaf 53194))) (.node (.node (.leaf 57664) (.leaf 62113)) (.node (.leaf 66577) .skip))))

theorem progressionSegment00039_2_0000Check :
    progressionSegment00039_2_0000Tree.check indexedMarker 177241 165003 0 = true :=
  by decide

theorem progressionSegment00039_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 177241 165003 0 16 :=
  by simpa [progressionSegment00039_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00039_2_0000Check

def progressionSegment00039_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 75510) (.leaf 79961)) (.node (.leaf 84434) .skip)) (.node (.node (.leaf 93352) (.leaf 97804)) (.node (.leaf 102255) (.leaf 106722))))

theorem progressionSegment00039_2_0001Check :
    progressionSegment00039_2_0001Tree.check indexedMarker 177241 165003 16 = true :=
  by decide

theorem progressionSegment00039_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 177241 165003 16 24 :=
  by simpa [progressionSegment00039_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00039_2_0001Check

def progressionSegment00039_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 111190) (.leaf 115649)) (.node (.leaf 120101) (.leaf 124551)))

theorem progressionSegment00039_2_0002Check :
    progressionSegment00039_2_0002Tree.check indexedMarker 177241 165003 24 = true :=
  by decide

theorem progressionSegment00039_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 177241 165003 24 28 :=
  by simpa [progressionSegment00039_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00039_2_0002Check

def progressionSegment00040_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 1399) (.leaf 6120)) (.node (.leaf 10841) (.leaf 15550))) (.node (.node (.leaf 20266) (.leaf 24969)) (.node (.leaf 29701) (.leaf 34419)))) (.node (.node (.node (.leaf 39130) (.leaf 43863)) (.node .skip .skip)) (.node (.node (.leaf 58003) (.leaf 62717)) (.node (.leaf 67438) (.leaf 72153)))))

theorem progressionSegment00040_1_0000Check :
    progressionSegment00040_1_0000Tree.check indexedMarker 187489 55603 0 = true :=
  by decide

theorem progressionSegment00040_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 187489 55603 0 16 :=
  by simpa [progressionSegment00040_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00040_1_0000Check

def progressionSegment00040_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 76879) (.leaf 81607)) (.node (.leaf 86325) (.leaf 91035))) (.node (.node (.leaf 95752) (.leaf 100468)) (.node (.leaf 105186) (.leaf 109901))))

theorem progressionSegment00040_1_0001Check :
    progressionSegment00040_1_0001Tree.check indexedMarker 187489 55603 16 = true :=
  by decide

theorem progressionSegment00040_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 187489 55603 16 24 :=
  by simpa [progressionSegment00040_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00040_1_0001Check

def progressionSegment00040_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 114614) (.leaf 119334))

theorem progressionSegment00040_1_0002Check :
    progressionSegment00040_1_0002Tree.check indexedMarker 187489 55603 24 = true :=
  by decide

theorem progressionSegment00040_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 187489 55603 24 26 :=
  by simpa [progressionSegment00040_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00040_1_0002Check

def progressionSegment00040_1_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 124057)

theorem progressionSegment00040_1_0003Check :
    progressionSegment00040_1_0003Tree.check indexedMarker 187489 55603 26 = true :=
  by decide

theorem progressionSegment00040_1_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 187489 55603 26 27 :=
  by simpa [progressionSegment00040_1_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00040_1_0003Check

def progressionSegment00040_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 3315) (.leaf 8040)) (.node (.leaf 12752) (.leaf 17472))) (.node (.node (.leaf 22174) (.leaf 26902)) (.node (.leaf 31615) (.leaf 36338)))) (.node (.node (.node (.leaf 41061) (.leaf 45792)) (.node (.leaf 50489) (.leaf 55192))) (.node (.node (.leaf 59920) .skip) (.node .skip (.leaf 74069)))))

theorem progressionSegment00040_2_0000Check :
    progressionSegment00040_2_0000Tree.check indexedMarker 187489 131886 0 = true :=
  by decide

theorem progressionSegment00040_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 187489 131886 0 16 :=
  by simpa [progressionSegment00040_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00040_2_0000Check

def progressionSegment00040_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 78796) (.leaf 83525)) (.node (.leaf 88251) (.leaf 92952))) (.node (.node (.leaf 97666) (.leaf 102375)) (.node (.leaf 107095) (.leaf 111826))))

theorem progressionSegment00040_2_0001Check :
    progressionSegment00040_2_0001Tree.check indexedMarker 187489 131886 16 = true :=
  by decide

theorem progressionSegment00040_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 187489 131886 16 24 :=
  by simpa [progressionSegment00040_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00040_2_0001Check

def progressionSegment00040_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 116543) (.leaf 121258))

theorem progressionSegment00040_2_0002Check :
    progressionSegment00040_2_0002Tree.check indexedMarker 187489 131886 24 = true :=
  by decide

theorem progressionSegment00040_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 187489 131886 24 26 :=
  by simpa [progressionSegment00040_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00040_2_0002Check

def progressionSegment00041_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node .skip (.leaf 8855)) (.node (.leaf 13934) (.leaf 18999))) (.node (.node (.leaf 24064) (.leaf 29146)) (.node (.leaf 34226) (.leaf 39287)))) (.node (.node (.node (.leaf 44372) (.leaf 49431)) (.node (.leaf 54484) .skip)) (.node (.node (.leaf 64648) (.leaf 69725)) (.node (.leaf 74796) (.leaf 79869)))))

theorem progressionSegment00041_1_0000Check :
    progressionSegment00041_1_0000Tree.check indexedMarker 201601 150482 0 = true :=
  by decide

theorem progressionSegment00041_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 201601 150482 0 16 :=
  by simpa [progressionSegment00041_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00041_1_0000Check

def progressionSegment00041_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 84962) (.leaf 90032)) (.node (.leaf 95100) (.leaf 100160))) (.node (.node (.leaf 105240) (.leaf 110312)) (.node (.leaf 115382) (.leaf 120448))))

theorem progressionSegment00041_1_0001Check :
    progressionSegment00041_1_0001Tree.check indexedMarker 201601 150482 16 = true :=
  by decide

theorem progressionSegment00041_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 201601 150482 16 24 :=
  by simpa [progressionSegment00041_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00041_1_0001Check

def progressionSegment00041_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 125528)

theorem progressionSegment00041_1_0002Check :
    progressionSegment00041_1_0002Tree.check indexedMarker 201601 150482 24 = true :=
  by decide

theorem progressionSegment00041_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 201601 150482 24 25 :=
  by simpa [progressionSegment00041_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00041_1_0002Check

def progressionSegment00041_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 1285) (.leaf 6362)) (.node (.leaf 11431) (.leaf 16502))) (.node (.node (.leaf 21567) (.leaf 26641)) (.node (.leaf 31708) (.leaf 36792)))) (.node (.node (.node (.leaf 41877) (.leaf 46943)) (.node (.leaf 52008) (.leaf 57068))) (.node (.node (.leaf 62143) .skip) (.node (.leaf 72297) (.leaf 77373)))))

theorem progressionSegment00041_2_0000Check :
    progressionSegment00041_2_0000Tree.check indexedMarker 201601 51119 0 = true :=
  by decide

theorem progressionSegment00041_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 201601 51119 0 16 :=
  by simpa [progressionSegment00041_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00041_2_0000Check

def progressionSegment00041_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 82465) (.leaf 87532)) (.node (.leaf 92591) (.leaf 97662))) (.node (.node (.leaf 102732) (.leaf 107809)) (.node (.leaf 112886) (.leaf 117955))))

theorem progressionSegment00041_2_0001Check :
    progressionSegment00041_2_0001Tree.check indexedMarker 201601 51119 16 = true :=
  by decide

theorem progressionSegment00041_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 201601 51119 16 24 :=
  by simpa [progressionSegment00041_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00041_2_0001Check

def progressionSegment00041_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  .skip

theorem progressionSegment00041_2_0002Check :
    progressionSegment00041_2_0002Tree.check indexedMarker 201601 51119 24 = true :=
  by decide

theorem progressionSegment00041_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 201601 51119 24 25 :=
  by simpa [progressionSegment00041_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00041_2_0002Check

def progressionSegment00042_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node .skip (.leaf 9976)) (.node (.leaf 15234) (.leaf 20483))) (.node (.node (.leaf 25735) (.leaf 30991)) (.node (.leaf 36249) (.leaf 41510)))) (.node (.node (.node (.leaf 46767) (.leaf 52016)) (.node (.leaf 57262) .skip)) (.node (.node (.leaf 67776) (.leaf 73029)) (.node (.leaf 78288) (.leaf 83560)))))

theorem progressionSegment00042_1_0000Check :
    progressionSegment00042_1_0000Tree.check indexedMarker 208849 187718 0 = true :=
  by decide

theorem progressionSegment00042_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 208849 187718 0 16 :=
  by simpa [progressionSegment00042_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00042_1_0000Check

def progressionSegment00042_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 88809) (.leaf 94064)) (.node (.leaf 99305) (.leaf 104562))) (.node (.node (.leaf 109822) (.leaf 115070)) (.node (.leaf 120326) (.leaf 125583))))

theorem progressionSegment00042_1_0001Check :
    progressionSegment00042_1_0001Tree.check indexedMarker 208849 187718 16 = true :=
  by decide

theorem progressionSegment00042_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 208849 187718 16 24 :=
  by simpa [progressionSegment00042_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00042_1_0001Check

def progressionSegment00042_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 526) (.leaf 5789)) (.node (.leaf 11051) (.leaf 16296))) (.node (.node (.leaf 21538) (.leaf 26805)) (.node (.leaf 32053) (.leaf 37311)))) (.node (.node (.node (.leaf 42574) (.leaf 47826)) (.node (.leaf 53060) (.leaf 58328))) (.node (.node (.leaf 63585) .skip) (.node (.leaf 74089) (.leaf 79355)))))

theorem progressionSegment00042_2_0000Check :
    progressionSegment00042_2_0000Tree.check indexedMarker 208849 21131 0 = true :=
  by decide

theorem progressionSegment00042_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 208849 21131 0 16 :=
  by simpa [progressionSegment00042_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00042_2_0000Check

def progressionSegment00042_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 84623) (.leaf 89876)) (.node (.leaf 95125) (.leaf 100374))) (.node (.node (.leaf 105629) (.leaf 110888)) (.node (.leaf 116140) (.leaf 121402))))

theorem progressionSegment00042_2_0001Check :
    progressionSegment00042_2_0001Tree.check indexedMarker 208849 21131 16 = true :=
  by decide

theorem progressionSegment00042_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 208849 21131 16 24 :=
  by simpa [progressionSegment00042_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00042_2_0001Check

def progressionSegment00043_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node .skip (.leaf 6752)) (.node (.leaf 12099) (.leaf 17430))) (.node (.node (.leaf 22767) (.leaf 28128)) (.node (.leaf 33472) (.leaf 38815)))) (.node (.node (.node (.leaf 44180) .skip) (.node (.leaf 54847) (.leaf 60191))) (.node (.node (.leaf 65560) (.leaf 70893)) (.node (.leaf 76254) (.leaf 81616)))))

theorem progressionSegment00043_1_0000Check :
    progressionSegment00043_1_0000Tree.check indexedMarker 212521 55368 0 = true :=
  by decide

theorem progressionSegment00043_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 212521 55368 0 16 :=
  by simpa [progressionSegment00043_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00043_1_0000Check

def progressionSegment00043_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 86963) (.leaf 92300)) (.node (.leaf 97643) (.leaf 102991))) (.node (.node (.leaf 108335) (.leaf 113681)) (.node (.leaf 119032) (.leaf 124369))))

theorem progressionSegment00043_1_0001Check :
    progressionSegment00043_1_0001Tree.check indexedMarker 212521 55368 16 = true :=
  by decide

theorem progressionSegment00043_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 212521 55368 16 24 :=
  by simpa [progressionSegment00043_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00043_1_0001Check

def progressionSegment00043_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 3955) (.leaf 9303)) (.node (.leaf 14656) (.leaf 19987))) (.node (.node (.leaf 25332) (.leaf 30685)) (.node (.leaf 36025) (.leaf 41387)))) (.node (.node (.node (.leaf 46736) (.leaf 52078)) (.node (.leaf 57417) (.leaf 62764))) (.node (.node (.leaf 68120) (.leaf 73468)) (.node (.leaf 78816) .skip))))

theorem progressionSegment00043_2_0000Check :
    progressionSegment00043_2_0000Tree.check indexedMarker 212521 157153 0 = true :=
  by decide

theorem progressionSegment00043_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 212521 157153 0 16 :=
  by simpa [progressionSegment00043_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00043_2_0000Check

def progressionSegment00043_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 89518) (.leaf 94859)) (.node (.leaf 100202) (.leaf 105556)))

theorem progressionSegment00043_2_0001Check :
    progressionSegment00043_2_0001Tree.check indexedMarker 212521 157153 16 = true :=
  by decide

theorem progressionSegment00043_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 212521 157153 16 20 :=
  by simpa [progressionSegment00043_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00043_2_0001Check

def progressionSegment00043_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 110905) (.leaf 116248))

theorem progressionSegment00043_2_0002Check :
    progressionSegment00043_2_0002Tree.check indexedMarker 212521 157153 20 = true :=
  by decide

theorem progressionSegment00043_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 212521 157153 20 22 :=
  by simpa [progressionSegment00043_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00043_2_0002Check

def progressionSegment00043_2_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 121602)

theorem progressionSegment00043_2_0003Check :
    progressionSegment00043_2_0003Tree.check indexedMarker 212521 157153 22 = true :=
  by decide

theorem progressionSegment00043_2_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 212521 157153 22 23 :=
  by simpa [progressionSegment00043_2_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00043_2_0003Check

def progressionSegment00044_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 4127) (.leaf 10639)) (.node (.leaf 17153) (.leaf 23656))) (.node (.node (.leaf 30191) (.leaf 36708)) (.node (.leaf 43239) .skip))) (.node (.node (.node (.leaf 56255) (.leaf 62778)) (.node (.leaf 69306) (.leaf 75829))) (.node (.node (.leaf 82360) .skip) (.node (.leaf 95386) (.leaf 101894)))))

theorem progressionSegment00044_1_0000Check :
    progressionSegment00044_1_0000Tree.check indexedMarker 259081 163690 0 = true :=
  by decide

theorem progressionSegment00044_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 259081 163690 0 16 :=
  by simpa [progressionSegment00044_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00044_1_0000Check

def progressionSegment00044_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 108417) (.leaf 114929))

theorem progressionSegment00044_1_0001Check :
    progressionSegment00044_1_0001Tree.check indexedMarker 259081 163690 16 = true :=
  by decide

theorem progressionSegment00044_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 259081 163690 16 18 :=
  by simpa [progressionSegment00044_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00044_1_0001Check

def progressionSegment00044_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 121463)

theorem progressionSegment00044_1_0002Check :
    progressionSegment00044_1_0002Tree.check indexedMarker 259081 163690 18 = true :=
  by decide

theorem progressionSegment00044_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 259081 163690 18 19 :=
  by simpa [progressionSegment00044_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00044_1_0002Check

def progressionSegment00044_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 2394) (.leaf 8922)) (.node (.leaf 15439) (.leaf 21938))) (.node (.node (.leaf 28474) (.leaf 34991)) (.node (.leaf 41516) (.leaf 48033)))) (.node (.node (.node (.leaf 54519) (.leaf 61054)) (.node (.leaf 67584) .skip)) (.node (.node (.leaf 80637) (.leaf 87162)) (.node (.leaf 93667) (.leaf 100180)))))

theorem progressionSegment00044_2_0000Check :
    progressionSegment00044_2_0000Tree.check indexedMarker 259081 95391 0 = true :=
  by decide

theorem progressionSegment00044_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 259081 95391 0 16 :=
  by simpa [progressionSegment00044_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00044_2_0000Check

def progressionSegment00044_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 106695) .skip)

theorem progressionSegment00044_2_0001Check :
    progressionSegment00044_2_0001Tree.check indexedMarker 259081 95391 16 = true :=
  by decide

theorem progressionSegment00044_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 259081 95391 16 18 :=
  by simpa [progressionSegment00044_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00044_2_0001Check

def progressionSegment00044_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 119744)

theorem progressionSegment00044_2_0002Check :
    progressionSegment00044_2_0002Tree.check indexedMarker 259081 95391 18 = true :=
  by decide

theorem progressionSegment00044_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 259081 95391 18 19 :=
  by simpa [progressionSegment00044_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00044_2_0002Check

def progressionSegment00045_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 6200) (.leaf 13027)) (.node (.leaf 19844) (.leaf 26678))) (.node (.node (.leaf 33507) (.leaf 40351)) (.node .skip (.leaf 53977)))) (.node (.node (.node (.leaf 60818) (.leaf 67656)) (.node .skip (.leaf 81328))) (.node (.node (.leaf 88170) (.leaf 94984)) (.node (.leaf 101807) (.leaf 108637)))))

theorem progressionSegment00045_1_0000Check :
    progressionSegment00045_1_0000Tree.check indexedMarker 271441 246147 0 = true :=
  by decide

theorem progressionSegment00045_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 271441 246147 0 16 :=
  by simpa [progressionSegment00045_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00045_1_0000Check

def progressionSegment00045_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 115473) (.leaf 122300))

theorem progressionSegment00045_1_0001Check :
    progressionSegment00045_1_0001Tree.check indexedMarker 271441 246147 16 = true :=
  by decide

theorem progressionSegment00045_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 271441 246147 16 18 :=
  by simpa [progressionSegment00045_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00045_1_0001Check

def progressionSegment00045_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 629) (.leaf 7466)) (.node (.leaf 14291) (.leaf 21112))) (.node (.node (.leaf 27956) (.leaf 34778)) (.node (.leaf 41621) (.leaf 48439)))) (.node (.node (.node (.leaf 55257) (.leaf 62091)) (.node (.leaf 68930) (.leaf 75766))) (.node (.node (.leaf 82606) (.leaf 89432)) (.node .skip (.leaf 103079)))))

theorem progressionSegment00045_2_0000Check :
    progressionSegment00045_2_0000Tree.check indexedMarker 271441 25294 0 = true :=
  by decide

theorem progressionSegment00045_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 271441 25294 0 16 :=
  by simpa [progressionSegment00045_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00045_2_0000Check

def progressionSegment00045_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 109914) (.leaf 116742))

theorem progressionSegment00045_2_0001Check :
    progressionSegment00045_2_0001Tree.check indexedMarker 271441 25294 16 = true :=
  by decide

theorem progressionSegment00045_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 271441 25294 16 18 :=
  by simpa [progressionSegment00045_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00045_2_0001Check

def progressionSegment00045_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  .skip

theorem progressionSegment00045_2_0002Check :
    progressionSegment00045_2_0002Tree.check indexedMarker 271441 25294 18 = true :=
  by decide

theorem progressionSegment00045_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 271441 25294 18 19 :=
  by simpa [progressionSegment00045_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00045_2_0002Check

def progressionSegment00046_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node .skip (.leaf 9129)) (.node (.leaf 16498) (.leaf 23842))) (.node (.node (.leaf 31219) (.leaf 38588)) (.node .skip (.leaf 53300)))) (.node (.node (.node (.leaf 60663) (.leaf 68043)) (.node (.leaf 75416) (.leaf 82794))) (.node (.node (.leaf 90155) (.leaf 97496)) (.node (.leaf 104861) (.leaf 112241)))))

theorem progressionSegment00046_1_0000Check :
    progressionSegment00046_1_0000Tree.check indexedMarker 292681 70382 0 = true :=
  by decide

theorem progressionSegment00046_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 292681 70382 0 16 :=
  by simpa [progressionSegment00046_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00046_1_0000Check

def progressionSegment00046_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 119598)

theorem progressionSegment00046_1_0001Check :
    progressionSegment00046_1_0001Tree.check indexedMarker 292681 70382 16 = true :=
  by decide

theorem progressionSegment00046_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 292681 70382 16 17 :=
  by simpa [progressionSegment00046_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00046_1_0001Check

def progressionSegment00046_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 5602) (.leaf 12957)) (.node (.leaf 20317) (.leaf 27685))) (.node (.node (.leaf 35047) (.leaf 42421)) (.node (.leaf 49773) (.leaf 57127)))) (.node (.node (.node (.leaf 64501) (.leaf 71860)) (.node (.leaf 79239) (.leaf 86616))) (.node (.node (.leaf 93971) (.leaf 101316)) (.node (.leaf 108689) (.leaf 116056)))))

theorem progressionSegment00046_2_0000Check :
    progressionSegment00046_2_0000Tree.check indexedMarker 292681 222299 0 = true :=
  by decide

theorem progressionSegment00046_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 292681 222299 0 16 :=
  by simpa [progressionSegment00046_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00046_2_0000Check

def progressionSegment00046_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 123420)

theorem progressionSegment00046_2_0001Check :
    progressionSegment00046_2_0001Tree.check indexedMarker 292681 222299 16 = true :=
  by decide

theorem progressionSegment00046_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 292681 222299 16 17 :=
  by simpa [progressionSegment00046_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00046_2_0001Check

def progressionSegment00047_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 5073) (.leaf 12868)) (.node .skip (.leaf 28481))) (.node (.node (.leaf 36284) (.leaf 44099)) (.node (.leaf 51893) (.leaf 59689)))) (.node (.node (.node (.leaf 67504) (.leaf 75316)) (.node (.leaf 83132) (.leaf 90932))) (.node (.node (.leaf 98731) .skip) (.node (.leaf 114344) (.leaf 122155)))))

theorem progressionSegment00047_1_0000Check :
    progressionSegment00047_1_0000Tree.check indexedMarker 310249 201195 0 = true :=
  by decide

theorem progressionSegment00047_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 310249 201195 0 16 :=
  by simpa [progressionSegment00047_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00047_1_0000Check

def progressionSegment00047_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 2741) (.leaf 10548)) (.node (.leaf 18351) (.leaf 26152))) (.node (.node (.leaf 33968) (.leaf 41781)) (.node (.leaf 49577) (.leaf 57378)))) (.node (.node (.node (.leaf 65188) (.leaf 72992)) (.node (.leaf 80813) .skip)) (.node (.node (.leaf 96421) (.leaf 104225)) (.node (.leaf 112039) (.leaf 119844)))))

theorem progressionSegment00047_2_0000Check :
    progressionSegment00047_2_0000Tree.check indexedMarker 310249 109054 0 = true :=
  by decide

theorem progressionSegment00047_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 310249 109054 0 16 :=
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

def progressionSegment00048_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node .skip .skip) (.node (.leaf 24288) (.leaf 32442))) (.node (.node (.leaf 40601) (.leaf 48731)) (.node (.leaf 56863) (.leaf 65030))))

theorem progressionSegment00048_2_0000Check :
    progressionSegment00048_2_0000Tree.check indexedMarker 323761 318157 0 = true :=
  by decide

theorem progressionSegment00048_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 323761 318157 0 8 :=
  by simpa [progressionSegment00048_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00048_2_0000Check

def progressionSegment00048_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 73171) (.leaf 81330)) (.node (.leaf 89476) (.leaf 97611)))

theorem progressionSegment00048_2_0001Check :
    progressionSegment00048_2_0001Tree.check indexedMarker 323761 318157 8 = true :=
  by decide

theorem progressionSegment00048_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 323761 318157 8 12 :=
  by simpa [progressionSegment00048_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00048_2_0001Check

def progressionSegment00048_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 105765) (.leaf 113896))

theorem progressionSegment00048_2_0002Check :
    progressionSegment00048_2_0002Tree.check indexedMarker 323761 318157 12 = true :=
  by decide

theorem progressionSegment00048_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 323761 318157 12 14 :=
  by simpa [progressionSegment00048_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00048_2_0002Check

def progressionSegment00048_2_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 122051)

theorem progressionSegment00048_2_0003Check :
    progressionSegment00048_2_0003Tree.check indexedMarker 323761 318157 14 = true :=
  by decide

theorem progressionSegment00048_2_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 323761 318157 14 15 :=
  by simpa [progressionSegment00048_2_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00048_2_0003Check

def progressionSegment00049_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 8205) (.leaf 16572)) (.node (.leaf 24936) .skip)) (.node (.node (.leaf 41713) (.leaf 50088)) (.node (.leaf 58455) (.leaf 66839))))

theorem progressionSegment00049_1_0000Check :
    progressionSegment00049_1_0000Tree.check indexedMarker 332929 325981 0 = true :=
  by decide

theorem progressionSegment00049_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 332929 325981 0 8 :=
  by simpa [progressionSegment00049_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00049_1_0000Check

def progressionSegment00049_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 75216) (.leaf 83604)) (.node (.leaf 91978) (.leaf 100347)))

theorem progressionSegment00049_1_0001Check :
    progressionSegment00049_1_0001Tree.check indexedMarker 332929 325981 8 = true :=
  by decide

theorem progressionSegment00049_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 332929 325981 8 12 :=
  by simpa [progressionSegment00049_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00049_1_0001Check

def progressionSegment00049_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 108726) (.leaf 117102))

theorem progressionSegment00049_1_0002Check :
    progressionSegment00049_1_0002Tree.check indexedMarker 332929 325981 12 = true :=
  by decide

theorem progressionSegment00049_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 332929 325981 12 14 :=
  by simpa [progressionSegment00049_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00049_1_0002Check

def progressionSegment00049_1_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 125474)

theorem progressionSegment00049_1_0003Check :
    progressionSegment00049_1_0003Tree.check indexedMarker 332929 325981 14 = true :=
  by decide

theorem progressionSegment00049_1_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 332929 325981 14 15 :=
  by simpa [progressionSegment00049_1_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00049_1_0003Check

def progressionSegment00049_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 175) (.leaf 8550)) (.node (.leaf 16931) (.leaf 25295))) (.node (.node (.leaf 33681) .skip) (.node (.leaf 50434) (.leaf 58798))))

theorem progressionSegment00049_2_0000Check :
    progressionSegment00049_2_0000Tree.check indexedMarker 332929 6948 0 = true :=
  by decide

theorem progressionSegment00049_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 332929 6948 0 8 :=
  by simpa [progressionSegment00049_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00049_2_0000Check

def progressionSegment00049_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 67180) (.leaf 75570)) (.node (.leaf 83957) (.leaf 92323)))

theorem progressionSegment00049_2_0001Check :
    progressionSegment00049_2_0001Tree.check indexedMarker 332929 6948 8 = true :=
  by decide

theorem progressionSegment00049_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 332929 6948 8 12 :=
  by simpa [progressionSegment00049_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00049_2_0001Check

def progressionSegment00049_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 100691) (.leaf 109078))

theorem progressionSegment00049_2_0002Check :
    progressionSegment00049_2_0002Tree.check indexedMarker 332929 6948 12 = true :=
  by decide

theorem progressionSegment00049_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 332929 6948 12 14 :=
  by simpa [progressionSegment00049_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00049_2_0002Check

def progressionSegment00049_2_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 117456)

theorem progressionSegment00049_2_0003Check :
    progressionSegment00049_2_0003Tree.check indexedMarker 332929 6948 14 = true :=
  by decide

theorem progressionSegment00049_2_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 332929 6948 14 15 :=
  by simpa [progressionSegment00049_2_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00049_2_0003Check

def progressionSegment00050_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node .skip (.leaf 14593)) (.node (.leaf 23425) (.leaf 32287))) (.node (.node (.leaf 41144) (.leaf 49985)) (.node (.leaf 58820) (.leaf 67678))))

theorem progressionSegment00050_1_0000Check :
    progressionSegment00050_1_0000Tree.check indexedMarker 351649 228382 0 = true :=
  by decide

theorem progressionSegment00050_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 351649 228382 0 8 :=
  by simpa [progressionSegment00050_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00050_1_0000Check

def progressionSegment00050_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 76530) (.leaf 85393)) (.node (.leaf 94230) (.leaf 103069)))

theorem progressionSegment00050_1_0001Check :
    progressionSegment00050_1_0001Tree.check indexedMarker 351649 228382 8 = true :=
  by decide

theorem progressionSegment00050_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 351649 228382 8 12 :=
  by simpa [progressionSegment00050_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00050_1_0001Check

def progressionSegment00050_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 111931) (.leaf 120766))

theorem progressionSegment00050_1_0002Check :
    progressionSegment00050_1_0002Tree.check indexedMarker 351649 228382 12 = true :=
  by decide

theorem progressionSegment00050_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 351649 228382 12 14 :=
  by simpa [progressionSegment00050_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00050_1_0002Check

def progressionSegment00050_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 3103) (.leaf 11957)) (.node (.leaf 20791) (.leaf 29642))) (.node (.node (.leaf 38484) (.leaf 47342)) (.node (.leaf 56176) (.leaf 65042))))

theorem progressionSegment00050_2_0000Check :
    progressionSegment00050_2_0000Tree.check indexedMarker 351649 123267 0 = true :=
  by decide

theorem progressionSegment00050_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 351649 123267 0 8 :=
  by simpa [progressionSegment00050_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00050_2_0000Check

def progressionSegment00050_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 73877) (.leaf 82748)) (.node .skip (.leaf 100430)))

theorem progressionSegment00050_2_0001Check :
    progressionSegment00050_2_0001Tree.check indexedMarker 351649 123267 8 = true :=
  by decide

theorem progressionSegment00050_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 351649 123267 8 12 :=
  by simpa [progressionSegment00050_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00050_2_0001Check

def progressionSegment00050_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 109283) (.leaf 118126))

theorem progressionSegment00050_2_0002Check :
    progressionSegment00050_2_0002Tree.check indexedMarker 351649 123267 12 = true :=
  by decide

theorem progressionSegment00050_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 351649 123267 12 14 :=
  by simpa [progressionSegment00050_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00050_2_0002Check

def progressionSegment00051_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 2686) (.leaf 11785)) (.node (.leaf 20864) (.leaf 29953))) (.node (.node .skip (.leaf 48132)) (.node (.leaf 57203) (.leaf 66297))))

theorem progressionSegment00051_1_0000Check :
    progressionSegment00051_1_0000Tree.check indexedMarker 361201 106853 0 = true :=
  by decide

theorem progressionSegment00051_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 361201 106853 0 8 :=
  by simpa [progressionSegment00051_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00051_1_0000Check

def progressionSegment00051_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 75398) (.leaf 84499)) (.node (.leaf 93581) (.leaf 102650)))

theorem progressionSegment00051_1_0001Check :
    progressionSegment00051_1_0001Tree.check indexedMarker 361201 106853 8 = true :=
  by decide

theorem progressionSegment00051_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 361201 106853 8 12 :=
  by simpa [progressionSegment00051_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00051_1_0001Check

def progressionSegment00051_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 111752) (.leaf 120836))

theorem progressionSegment00051_1_0002Check :
    progressionSegment00051_1_0002Tree.check indexedMarker 361201 106853 12 = true :=
  by decide

theorem progressionSegment00051_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 361201 106853 12 14 :=
  by simpa [progressionSegment00051_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00051_1_0002Check

def progressionSegment00051_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 6401) (.leaf 15486)) (.node (.leaf 24568) (.leaf 33665))) (.node (.node (.leaf 42758) (.leaf 51833)) (.node (.leaf 60912) (.leaf 70013))))

theorem progressionSegment00051_2_0000Check :
    progressionSegment00051_2_0000Tree.check indexedMarker 361201 254348 0 = true :=
  by decide

theorem progressionSegment00051_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 361201 254348 0 8 :=
  by simpa [progressionSegment00051_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00051_2_0000Check

def progressionSegment00051_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 79104) .skip) (.node (.leaf 97282) (.leaf 106367)))

theorem progressionSegment00051_2_0001Check :
    progressionSegment00051_2_0001Tree.check indexedMarker 361201 254348 8 = true :=
  by decide

theorem progressionSegment00051_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 361201 254348 8 12 :=
  by simpa [progressionSegment00051_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00051_2_0001Check

def progressionSegment00051_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 115462) (.leaf 124538))

theorem progressionSegment00051_2_0002Check :
    progressionSegment00051_2_0002Tree.check indexedMarker 361201 254348 12 = true :=
  by decide

theorem progressionSegment00051_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 361201 254348 12 14 :=
  by simpa [progressionSegment00051_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00051_2_0002Check

def progressionSegment00052_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 8914) (.leaf 18367)) (.node (.leaf 27826) (.leaf 37274))) (.node (.node (.leaf 46738) (.leaf 56174)) (.node .skip (.leaf 75093))))

theorem progressionSegment00052_1_0000Check :
    progressionSegment00052_1_0000Tree.check indexedMarker 375769 354279 0 = true :=
  by decide

theorem progressionSegment00052_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 375769 354279 0 8 :=
  by simpa [progressionSegment00052_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00052_1_0000Check

def progressionSegment00052_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 84563) (.leaf 94018)) (.node (.leaf 103462) (.leaf 112925)))

theorem progressionSegment00052_1_0001Check :
    progressionSegment00052_1_0001Tree.check indexedMarker 375769 354279 8 = true :=
  by decide

theorem progressionSegment00052_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 375769 354279 8 12 :=
  by simpa [progressionSegment00052_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00052_1_0001Check

def progressionSegment00052_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  .skip

theorem progressionSegment00052_1_0002Check :
    progressionSegment00052_1_0002Tree.check indexedMarker 375769 354279 12 = true :=
  by decide

theorem progressionSegment00052_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 375769 354279 12 13 :=
  by simpa [progressionSegment00052_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00052_1_0002Check

def progressionSegment00052_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 534) (.leaf 9993)) (.node (.leaf 19440) (.leaf 28906))) (.node (.node (.leaf 38350) (.leaf 47815)) (.node (.leaf 57257) (.leaf 66723))))

theorem progressionSegment00052_2_0000Check :
    progressionSegment00052_2_0000Tree.check indexedMarker 375769 21490 0 = true :=
  by decide

theorem progressionSegment00052_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 375769 21490 0 8 :=
  by simpa [progressionSegment00052_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00052_2_0000Check

def progressionSegment00052_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 76179) (.leaf 85650)) (.node (.leaf 95094) (.leaf 104539)))

theorem progressionSegment00052_2_0001Check :
    progressionSegment00052_2_0001Tree.check indexedMarker 375769 21490 8 = true :=
  by decide

theorem progressionSegment00052_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 375769 21490 8 12 :=
  by simpa [progressionSegment00052_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00052_2_0001Check

def progressionSegment00052_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node .skip (.leaf 123456))

theorem progressionSegment00052_2_0002Check :
    progressionSegment00052_2_0002Tree.check indexedMarker 375769 21490 12 = true :=
  by decide

theorem progressionSegment00052_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 375769 21490 12 14 :=
  by simpa [progressionSegment00052_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00052_2_0002Check

def progressionSegment00053_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node .skip (.leaf 15237)) (.node (.leaf 24800) (.leaf 34393))) (.node (.node (.leaf 43978) (.leaf 53522)) (.node (.leaf 63119) (.leaf 72693))))

theorem progressionSegment00053_1_0000Check :
    progressionSegment00053_1_0000Tree.check indexedMarker 380689 224782 0 = true :=
  by decide

theorem progressionSegment00053_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 380689 224782 0 8 :=
  by simpa [progressionSegment00053_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00053_1_0000Check

def progressionSegment00053_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 82301) (.leaf 91866)) (.node (.leaf 101440) (.leaf 111023)))

theorem progressionSegment00053_1_0001Check :
    progressionSegment00053_1_0001Tree.check indexedMarker 380689 224782 8 = true :=
  by decide

theorem progressionSegment00053_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 380689 224782 8 12 :=
  by simpa [progressionSegment00053_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00053_1_0001Check

def progressionSegment00053_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 120593)

theorem progressionSegment00053_1_0002Check :
    progressionSegment00053_1_0002Tree.check indexedMarker 380689 224782 12 = true :=
  by decide

theorem progressionSegment00053_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 380689 224782 12 13 :=
  by simpa [progressionSegment00053_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00053_1_0002Check

def progressionSegment00053_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node .skip (.leaf 13497)) (.node (.leaf 23064) (.leaf 32661))) (.node (.node (.leaf 42246) (.leaf 51806)) (.node (.leaf 61375) (.leaf 70957))))

theorem progressionSegment00053_2_0000Check :
    progressionSegment00053_2_0000Tree.check indexedMarker 380689 155907 0 = true :=
  by decide

theorem progressionSegment00053_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 380689 155907 0 8 :=
  by simpa [progressionSegment00053_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00053_2_0000Check

def progressionSegment00053_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 80554) (.leaf 90148)) (.node (.leaf 99703) (.leaf 109295)))

theorem progressionSegment00053_2_0001Check :
    progressionSegment00053_2_0001Tree.check indexedMarker 380689 155907 8 = true :=
  by decide

theorem progressionSegment00053_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 380689 155907 8 12 :=
  by simpa [progressionSegment00053_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00053_2_0001Check

def progressionSegment00053_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 118863)

theorem progressionSegment00053_2_0002Check :
    progressionSegment00053_2_0002Tree.check indexedMarker 380689 155907 12 = true :=
  by decide

theorem progressionSegment00053_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 380689 155907 12 13 :=
  by simpa [progressionSegment00053_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00053_2_0002Check

def progressionSegment00054_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 5742) (.leaf 16072)) (.node (.leaf 26406) (.leaf 36749))) (.node (.node (.leaf 47100) (.leaf 57422)) (.node (.leaf 67763) (.leaf 78102))))

theorem progressionSegment00054_1_0000Check :
    progressionSegment00054_1_0000Tree.check indexedMarker 410881 228042 0 = true :=
  by decide

theorem progressionSegment00054_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 410881 228042 0 8 :=
  by simpa [progressionSegment00054_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00054_1_0000Check

def progressionSegment00054_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 88454) (.leaf 98772)) (.node (.leaf 109123) (.leaf 119461)))

theorem progressionSegment00054_1_0001Check :
    progressionSegment00054_1_0001Tree.check indexedMarker 410881 228042 8 = true :=
  by decide

theorem progressionSegment00054_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 410881 228042 8 12 :=
  by simpa [progressionSegment00054_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00054_1_0001Check

def progressionSegment00054_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 4607) (.leaf 14941)) (.node (.leaf 25267) .skip)) (.node (.node (.leaf 45972) (.leaf 56279)) (.node (.leaf 66622) (.leaf 76966))))

theorem progressionSegment00054_2_0000Check :
    progressionSegment00054_2_0000Tree.check indexedMarker 410881 182839 0 = true :=
  by decide

theorem progressionSegment00054_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 410881 182839 0 8 :=
  by simpa [progressionSegment00054_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00054_2_0000Check

def progressionSegment00054_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 87326) .skip) (.node (.leaf 107981) (.leaf 118325)))

theorem progressionSegment00054_2_0001Check :
    progressionSegment00054_2_0001Tree.check indexedMarker 410881 182839 8 = true :=
  by decide

theorem progressionSegment00054_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 410881 182839 8 12 :=
  by simpa [progressionSegment00054_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00054_2_0001Check

def progressionSegment00055_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 9434) (.leaf 20156)) (.node (.leaf 30882) (.leaf 41626))) (.node (.node .skip (.leaf 63068)) (.node (.leaf 73803) (.leaf 84549))))

theorem progressionSegment00055_1_0000Check :
    progressionSegment00055_1_0000Tree.check indexedMarker 426409 374971 0 = true :=
  by decide

theorem progressionSegment00055_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 426409 374971 0 8 :=
  by simpa [progressionSegment00055_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00055_1_0000Check

def progressionSegment00055_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node .skip (.leaf 105997))

theorem progressionSegment00055_1_0001Check :
    progressionSegment00055_1_0001Tree.check indexedMarker 426409 374971 8 = true :=
  by decide

theorem progressionSegment00055_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 426409 374971 8 10 :=
  by simpa [progressionSegment00055_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00055_1_0001Check

def progressionSegment00055_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 116724)

theorem progressionSegment00055_1_0002Check :
    progressionSegment00055_1_0002Tree.check indexedMarker 426409 374971 10 = true :=
  by decide

theorem progressionSegment00055_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 426409 374971 10 11 :=
  by simpa [progressionSegment00055_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00055_1_0002Check

def progressionSegment00055_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 1295) (.leaf 12028)) (.node (.leaf 22740) (.leaf 33477))) (.node (.node (.leaf 44219) (.leaf 54920)) (.node (.leaf 65655) (.leaf 76398))))

theorem progressionSegment00055_2_0000Check :
    progressionSegment00055_2_0000Tree.check indexedMarker 426409 51438 0 = true :=
  by decide

theorem progressionSegment00055_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 426409 51438 0 8 :=
  by simpa [progressionSegment00055_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00055_2_0000Check

def progressionSegment00055_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 87141) (.leaf 97850)) (.node (.leaf 108575) (.leaf 119307)))

theorem progressionSegment00055_2_0001Check :
    progressionSegment00055_2_0001Tree.check indexedMarker 426409 51438 8 = true :=
  by decide

theorem progressionSegment00055_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 426409 51438 8 12 :=
  by simpa [progressionSegment00055_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00055_2_0001Check

def progressionSegment00056_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 7004) (.leaf 17990)) (.node (.leaf 28983) (.leaf 39983))) (.node (.node (.leaf 50969) (.leaf 61951)) (.node (.leaf 72949) (.leaf 83967))))

theorem progressionSegment00056_1_0000Check :
    progressionSegment00056_1_0000Tree.check indexedMarker 436921 278175 0 = true :=
  by decide

theorem progressionSegment00056_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 436921 278175 0 8 :=
  by simpa [progressionSegment00056_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00056_1_0000Check

def progressionSegment00056_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node .skip (.leaf 105936))

theorem progressionSegment00056_1_0001Check :
    progressionSegment00056_1_0001Tree.check indexedMarker 436921 278175 8 = true :=
  by decide

theorem progressionSegment00056_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 436921 278175 8 10 :=
  by simpa [progressionSegment00056_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00056_1_0001Check

def progressionSegment00056_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 116932)

theorem progressionSegment00056_1_0002Check :
    progressionSegment00056_1_0002Tree.check indexedMarker 436921 278175 10 = true :=
  by decide

theorem progressionSegment00056_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 436921 278175 10 11 :=
  by simpa [progressionSegment00056_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00056_1_0002Check

def progressionSegment00056_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 3994) (.leaf 14991)) (.node (.leaf 25969) (.leaf 36971))) (.node (.node (.leaf 47967) (.leaf 58944)) (.node (.leaf 69949) .skip)))

theorem progressionSegment00056_2_0000Check :
    progressionSegment00056_2_0000Tree.check indexedMarker 436921 158746 0 = true :=
  by decide

theorem progressionSegment00056_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 436921 158746 0 8 :=
  by simpa [progressionSegment00056_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00056_2_0000Check

def progressionSegment00056_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 91949) (.leaf 102929)) (.node (.leaf 113923) (.leaf 124914)))

theorem progressionSegment00056_2_0001Check :
    progressionSegment00056_2_0001Tree.check indexedMarker 436921 158746 8 = true :=
  by decide

theorem progressionSegment00056_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 436921 158746 8 12 :=
  by simpa [progressionSegment00056_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00056_2_0001Check

def progressionSegment00057_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node .skip (.leaf 13847)) (.node (.leaf 25238) (.leaf 36642))) (.node (.node (.leaf 48044) (.leaf 59424)) (.node (.leaf 70821) (.leaf 82247))))

theorem progressionSegment00057_1_0000Check :
    progressionSegment00057_1_0000Tree.check indexedMarker 452929 97643 0 = true :=
  by decide

theorem progressionSegment00057_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 452929 97643 0 8 :=
  by simpa [progressionSegment00057_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00057_1_0000Check

def progressionSegment00057_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 93632) (.leaf 105021))

theorem progressionSegment00057_1_0001Check :
    progressionSegment00057_1_0001Tree.check indexedMarker 452929 97643 8 = true :=
  by decide

theorem progressionSegment00057_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 452929 97643 8 10 :=
  by simpa [progressionSegment00057_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00057_1_0001Check

def progressionSegment00057_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 116425)

theorem progressionSegment00057_1_0002Check :
    progressionSegment00057_1_0002Tree.check indexedMarker 452929 97643 10 = true :=
  by decide

theorem progressionSegment00057_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 452929 97643 10 11 :=
  by simpa [progressionSegment00057_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00057_1_0002Check

def progressionSegment00057_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 8938) (.leaf 20331)) (.node (.leaf 31719) (.leaf 43128))) (.node (.node (.leaf 54496) (.leaf 65914)) (.node (.leaf 77316) (.leaf 88718))))

theorem progressionSegment00057_2_0000Check :
    progressionSegment00057_2_0000Tree.check indexedMarker 452929 355286 0 = true :=
  by decide

theorem progressionSegment00057_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 452929 355286 0 8 :=
  by simpa [progressionSegment00057_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00057_2_0000Check

def progressionSegment00057_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node .skip (.leaf 111518))

theorem progressionSegment00057_2_0001Check :
    progressionSegment00057_2_0001Tree.check indexedMarker 452929 355286 8 = true :=
  by decide

theorem progressionSegment00057_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 452929 355286 8 10 :=
  by simpa [progressionSegment00057_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00057_2_0001Check

def progressionSegment00057_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 122899)

theorem progressionSegment00057_2_0002Check :
    progressionSegment00057_2_0002Tree.check indexedMarker 452929 355286 10 = true :=
  by decide

theorem progressionSegment00057_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 452929 355286 10 11 :=
  by simpa [progressionSegment00057_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00057_2_0002Check

def progressionSegment00058_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 220) (.leaf 11764)) (.node (.leaf 23270) (.leaf 34814))) (.node (.node .skip (.leaf 57873)) (.node (.leaf 69405) (.leaf 80961))))

theorem progressionSegment00058_1_0000Check :
    progressionSegment00058_1_0000Tree.check indexedMarker 458329 8827 0 = true :=
  by decide

theorem progressionSegment00058_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 458329 8827 0 8 :=
  by simpa [progressionSegment00058_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00058_1_0000Check

def progressionSegment00058_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 92479) (.leaf 104013))

theorem progressionSegment00058_1_0001Check :
    progressionSegment00058_1_0001Tree.check indexedMarker 458329 8827 8 = true :=
  by decide

theorem progressionSegment00058_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 458329 8827 8 10 :=
  by simpa [progressionSegment00058_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00058_1_0001Check

def progressionSegment00058_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 115549)

theorem progressionSegment00058_1_0002Check :
    progressionSegment00058_1_0002Tree.check indexedMarker 458329 8827 10 = true :=
  by decide

theorem progressionSegment00058_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 458329 8827 10 11 :=
  by simpa [progressionSegment00058_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00058_1_0002Check

def progressionSegment00058_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 11311) (.leaf 22831)) (.node (.leaf 34372) (.leaf 45922))) (.node (.node .skip (.leaf 68967)) (.node (.leaf 80509) (.leaf 92038))))

theorem progressionSegment00058_2_0000Check :
    progressionSegment00058_2_0000Tree.check indexedMarker 458329 449502 0 = true :=
  by decide

theorem progressionSegment00058_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 458329 449502 0 8 :=
  by simpa [progressionSegment00058_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00058_2_0000Check

def progressionSegment00058_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 103569) (.leaf 115099))

theorem progressionSegment00058_2_0001Check :
    progressionSegment00058_2_0001Tree.check indexedMarker 458329 449502 8 = true :=
  by decide

theorem progressionSegment00058_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 458329 449502 8 10 :=
  by simpa [progressionSegment00058_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00058_2_0001Check

def progressionSegment00059_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 6138) (.leaf 18497)) (.node (.leaf 30852) (.leaf 43234))) (.node (.node (.leaf 55576) .skip) (.node (.leaf 80322) (.leaf 92683))))

theorem progressionSegment00059_1_0000Check :
    progressionSegment00059_1_0000Tree.check indexedMarker 491401 243813 0 = true :=
  by decide

theorem progressionSegment00059_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 491401 243813 0 8 :=
  by simpa [progressionSegment00059_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00059_1_0000Check

def progressionSegment00059_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 105044) (.leaf 117417))

theorem progressionSegment00059_1_0001Check :
    progressionSegment00059_1_0001Tree.check indexedMarker 491401 243813 8 = true :=
  by decide

theorem progressionSegment00059_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 491401 243813 8 10 :=
  by simpa [progressionSegment00059_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00059_1_0001Check

def progressionSegment00059_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 6235) (.leaf 18589)) (.node (.leaf 30950) (.leaf 43328))) (.node (.node (.leaf 55665) .skip) (.node (.leaf 80418) (.leaf 92779))))

theorem progressionSegment00059_2_0000Check :
    progressionSegment00059_2_0000Tree.check indexedMarker 491401 247588 0 = true :=
  by decide

theorem progressionSegment00059_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 491401 247588 0 8 :=
  by simpa [progressionSegment00059_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00059_2_0000Check

def progressionSegment00059_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 105143) (.leaf 117511))

theorem progressionSegment00059_2_0001Check :
    progressionSegment00059_2_0001Tree.check indexedMarker 491401 247588 8 = true :=
  by decide

theorem progressionSegment00059_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 491401 247588 8 10 :=
  by simpa [progressionSegment00059_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00059_2_0001Check

def progressionSegment00060_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 11140) .skip) (.node (.leaf 36430) (.leaf 49075))) (.node (.node (.leaf 61711) (.leaf 74374)) (.node (.leaf 87041) (.leaf 99665))))

theorem progressionSegment00060_1_0000Check :
    progressionSegment00060_1_0000Tree.check indexedMarker 502681 442512 0 = true :=
  by decide

theorem progressionSegment00060_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 502681 442512 0 8 :=
  by simpa [progressionSegment00060_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00060_1_0000Check

def progressionSegment00060_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 112325) (.leaf 124961))

theorem progressionSegment00060_1_0001Check :
    progressionSegment00060_1_0001Tree.check indexedMarker 502681 442512 8 = true :=
  by decide

theorem progressionSegment00060_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 502681 442512 8 10 :=
  by simpa [progressionSegment00060_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00060_1_0001Check

def progressionSegment00060_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 1509) (.leaf 14162)) (.node (.leaf 26812) (.leaf 39454))) (.node (.node .skip (.leaf 64747)) (.node (.leaf 77403) (.leaf 90061))))

theorem progressionSegment00060_2_0000Check :
    progressionSegment00060_2_0000Tree.check indexedMarker 502681 60169 0 = true :=
  by decide

theorem progressionSegment00060_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 502681 60169 0 8 :=
  by simpa [progressionSegment00060_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00060_2_0000Check

def progressionSegment00060_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 102692) (.leaf 115347))

theorem progressionSegment00060_2_0001Check :
    progressionSegment00060_2_0001Tree.check indexedMarker 502681 60169 8 = true :=
  by decide

theorem progressionSegment00060_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 502681 60169 8 10 :=
  by simpa [progressionSegment00060_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00060_2_0001Check

def progressionSegment00061_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 871) (.leaf 14392)) (.node (.leaf 27914) (.leaf 41437))) (.node (.node (.leaf 54934) (.leaf 68471)) (.node (.leaf 82001) (.leaf 95512))))

theorem progressionSegment00061_1_0000Check :
    progressionSegment00061_1_0000Tree.check indexedMarker 537289 34831 0 = true :=
  by decide

theorem progressionSegment00061_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 537289 34831 0 8 :=
  by simpa [progressionSegment00061_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00061_1_0000Check

def progressionSegment00061_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node .skip .skip)

theorem progressionSegment00061_1_0001Check :
    progressionSegment00061_1_0001Tree.check indexedMarker 537289 34831 8 = true :=
  by decide

theorem progressionSegment00061_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 537289 34831 8 10 :=
  by simpa [progressionSegment00061_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00061_1_0001Check

def progressionSegment00061_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 12638) (.leaf 26148)) (.node (.leaf 39681) (.leaf 53185))) (.node (.node (.leaf 66714) (.leaf 80237)) (.node (.leaf 93758) (.leaf 107273))))

theorem progressionSegment00061_2_0000Check :
    progressionSegment00061_2_0000Tree.check indexedMarker 537289 502458 0 = true :=
  by decide

theorem progressionSegment00061_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 537289 502458 0 8 :=
  by simpa [progressionSegment00061_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00061_2_0000Check

def progressionSegment00061_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 120791)

theorem progressionSegment00061_2_0001Check :
    progressionSegment00061_2_0001Tree.check indexedMarker 537289 502458 8 = true :=
  by decide

theorem progressionSegment00061_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 537289 502458 8 9 :=
  by simpa [progressionSegment00061_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00061_2_0001Check

def progressionSegment00062_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node .skip (.leaf 22697)) (.node (.leaf 37117) (.leaf 51535))) (.node (.node (.leaf 65960) (.leaf 80385)) (.node (.leaf 94804) (.leaf 109222))))

theorem progressionSegment00062_1_0000Check :
    progressionSegment00062_1_0000Tree.check indexedMarker 573049 329382 0 = true :=
  by decide

theorem progressionSegment00062_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 573049 329382 0 8 :=
  by simpa [progressionSegment00062_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00062_1_0000Check

def progressionSegment00062_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 123642)

theorem progressionSegment00062_1_0001Check :
    progressionSegment00062_1_0001Tree.check indexedMarker 573049 329382 8 = true :=
  by decide

theorem progressionSegment00062_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 573049 329382 8 9 :=
  by simpa [progressionSegment00062_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00062_1_0001Check

def progressionSegment00062_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 6135) (.leaf 20547)) (.node (.leaf 34964) (.leaf 49378))) (.node (.node (.leaf 63799) (.leaf 78219)) (.node (.leaf 92641) (.leaf 107054))))

theorem progressionSegment00062_2_0000Check :
    progressionSegment00062_2_0000Tree.check indexedMarker 573049 243667 0 = true :=
  by decide

theorem progressionSegment00062_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 573049 243667 0 8 :=
  by simpa [progressionSegment00062_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00062_2_0000Check

def progressionSegment00062_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 121484)

theorem progressionSegment00062_2_0001Check :
    progressionSegment00062_2_0001Tree.check indexedMarker 573049 243667 8 = true :=
  by decide

theorem progressionSegment00062_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 573049 243667 8 9 :=
  by simpa [progressionSegment00062_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00062_2_0001Check

def progressionSegment00063_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 13816) (.leaf 28392)) (.node (.leaf 42966) (.leaf 57531))) (.node (.node (.leaf 72101) (.leaf 86696)) (.node (.leaf 101242) (.leaf 115829))))

theorem progressionSegment00063_1_0000Check :
    progressionSegment00063_1_0000Tree.check indexedMarker 579121 549403 0 = true :=
  by decide

theorem progressionSegment00063_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 579121 549403 0 8 :=
  by simpa [progressionSegment00063_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00063_1_0000Check

def progressionSegment00063_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node .skip (.leaf 15319)) (.node (.leaf 29888) (.leaf 44467))) (.node (.node (.leaf 59017) (.leaf 73599)) (.node (.leaf 88193) (.leaf 102742))))

theorem progressionSegment00063_2_0000Check :
    progressionSegment00063_2_0000Tree.check indexedMarker 579121 29718 0 = true :=
  by decide

theorem progressionSegment00063_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 579121 29718 0 8 :=
  by simpa [progressionSegment00063_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00063_2_0000Check

def progressionSegment00063_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 117323)

theorem progressionSegment00063_2_0001Check :
    progressionSegment00063_2_0001Tree.check indexedMarker 579121 29718 8 = true :=
  by decide

theorem progressionSegment00063_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 579121 29718 8 9 :=
  by simpa [progressionSegment00063_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00063_2_0001Check

def progressionSegment00064_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 11889) (.leaf 26752)) (.node (.leaf 41641) (.leaf 56501))) (.node (.node (.leaf 71382) (.leaf 86287)) (.node (.leaf 101139) (.leaf 116035))))

theorem progressionSegment00064_1_0000Check :
    progressionSegment00064_1_0000Tree.check indexedMarker 591361 472104 0 = true :=
  by decide

theorem progressionSegment00064_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 591361 472104 0 8 :=
  by simpa [progressionSegment00064_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00064_1_0000Check

def progressionSegment00064_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node .skip .skip) (.node (.leaf 32763) (.leaf 47639))) (.node (.node (.leaf 62502) (.leaf 77397)) (.node (.leaf 92281) (.leaf 107152))))

theorem progressionSegment00064_2_0000Check :
    progressionSegment00064_2_0000Tree.check indexedMarker 591361 119257 0 = true :=
  by decide

theorem progressionSegment00064_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 591361 119257 0 8 :=
  by simpa [progressionSegment00064_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00064_2_0000Check

def progressionSegment00064_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 122035)

theorem progressionSegment00064_2_0001Check :
    progressionSegment00064_2_0001Tree.check indexedMarker 591361 119257 8 = true :=
  by decide

theorem progressionSegment00064_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 591361 119257 8 9 :=
  by simpa [progressionSegment00064_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00064_2_0001Check

def progressionSegment00065_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 9873) .skip) (.node (.leaf 39943) (.leaf 54953))) (.node (.node (.leaf 70002) (.leaf 85056)) (.node (.leaf 100071) (.leaf 115109))))

theorem progressionSegment00065_1_0000Check :
    progressionSegment00065_1_0000Tree.check indexedMarker 597529 392228 0 = true :=
  by decide

theorem progressionSegment00065_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 597529 392228 0 8 :=
  by simpa [progressionSegment00065_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00065_1_0000Check

def progressionSegment00065_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 5184) (.leaf 20193)) (.node (.leaf 35233) (.leaf 50268))) (.node (.node (.leaf 65295) (.leaf 80341)) (.node (.leaf 95376) (.leaf 110411))))

theorem progressionSegment00065_2_0000Check :
    progressionSegment00065_2_0000Tree.check indexedMarker 597529 205301 0 = true :=
  by decide

theorem progressionSegment00065_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 597529 205301 0 8 :=
  by simpa [progressionSegment00065_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00065_2_0000Check

def progressionSegment00065_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 125438)

theorem progressionSegment00065_2_0001Check :
    progressionSegment00065_2_0001Tree.check indexedMarker 597529 205301 8 = true :=
  by decide

theorem progressionSegment00065_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 597529 205301 8 9 :=
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

def progressionSegment00066_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 2818) (.leaf 18796)) (.node (.leaf 34784) (.leaf 50765))) (.node (.node (.leaf 66749) .skip) (.node (.leaf 98710) (.leaf 114696))))

theorem progressionSegment00066_2_0000Check :
    progressionSegment00066_2_0000Tree.check indexedMarker 635209 112162 0 = true :=
  by decide

theorem progressionSegment00066_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 635209 112162 0 8 :=
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

def progressionSegment00067_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 9350) (.leaf 25808)) (.node (.leaf 42295) (.leaf 58741))) (.node (.node (.leaf 75220) (.leaf 91694)) (.node (.leaf 108154) (.leaf 124617))))

theorem progressionSegment00067_2_0000Check :
    progressionSegment00067_2_0000Tree.check indexedMarker 654481 371649 0 = true :=
  by decide

theorem progressionSegment00067_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 654481 371649 0 8 :=
  by simpa [progressionSegment00067_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00067_2_0000Check

def progressionSegment00068_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 743) (.leaf 17707)) (.node (.leaf 34661) (.leaf 51623))) (.node (.node (.leaf 68590) (.leaf 85567)) (.node (.leaf 102503) (.leaf 119469))))

theorem progressionSegment00068_1_0000Check :
    progressionSegment00068_1_0000Tree.check indexedMarker 674041 29851 0 = true :=
  by decide

theorem progressionSegment00068_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 674041 29851 0 8 :=
  by simpa [progressionSegment00068_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00068_1_0000Check

def progressionSegment00068_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 16206) (.leaf 33172)) (.node (.leaf 50131) (.leaf 67081)))

theorem progressionSegment00068_2_0000Check :
    progressionSegment00068_2_0000Tree.check indexedMarker 674041 644190 0 = true :=
  by decide

theorem progressionSegment00068_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 674041 644190 0 4 :=
  by simpa [progressionSegment00068_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00068_2_0000Check

def progressionSegment00068_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 84063) (.leaf 100998))

theorem progressionSegment00068_2_0001Check :
    progressionSegment00068_2_0001Tree.check indexedMarker 674041 644190 4 = true :=
  by decide

theorem progressionSegment00068_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 674041 644190 4 6 :=
  by simpa [progressionSegment00068_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00068_2_0001Check

def progressionSegment00068_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 117967)

theorem progressionSegment00068_2_0002Check :
    progressionSegment00068_2_0002Tree.check indexedMarker 674041 644190 6 = true :=
  by decide

theorem progressionSegment00068_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 674041 644190 6 7 :=
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

def progressionSegment00069_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 14377) .skip) (.node (.leaf 48958) (.leaf 66243)))

theorem progressionSegment00069_2_0000Check :
    progressionSegment00069_2_0000Tree.check indexedMarker 687241 571427 0 = true :=
  by decide

theorem progressionSegment00069_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 687241 571427 0 4 :=
  by simpa [progressionSegment00069_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00069_2_0000Check

def progressionSegment00069_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 83557) .skip)

theorem progressionSegment00069_2_0001Check :
    progressionSegment00069_2_0001Tree.check indexedMarker 687241 571427 4 = true :=
  by decide

theorem progressionSegment00069_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 687241 571427 4 6 :=
  by simpa [progressionSegment00069_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00069_2_0001Check

def progressionSegment00069_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 118130)

theorem progressionSegment00069_2_0002Check :
    progressionSegment00069_2_0002Tree.check indexedMarker 687241 571427 6 = true :=
  by decide

theorem progressionSegment00069_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 687241 571427 6 7 :=
  by simpa [progressionSegment00069_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00069_2_0002Check

def progressionSegment00070_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node .skip (.leaf 25171)) (.node (.leaf 43498) (.leaf 61784)))

theorem progressionSegment00070_1_0000Check :
    progressionSegment00070_1_0000Tree.check indexedMarker 727609 273293 0 = true :=
  by decide

theorem progressionSegment00070_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 727609 273293 0 4 :=
  by simpa [progressionSegment00070_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00070_1_0000Check

def progressionSegment00070_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 80109) (.leaf 98411))

theorem progressionSegment00070_1_0001Check :
    progressionSegment00070_1_0001Tree.check indexedMarker 727609 273293 4 = true :=
  by decide

theorem progressionSegment00070_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 727609 273293 4 6 :=
  by simpa [progressionSegment00070_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00070_1_0001Check

def progressionSegment00070_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 116719)

theorem progressionSegment00070_1_0002Check :
    progressionSegment00070_1_0002Tree.check indexedMarker 727609 273293 6 = true :=
  by decide

theorem progressionSegment00070_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 727609 273293 6 7 :=
  by simpa [progressionSegment00070_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00070_1_0002Check

def progressionSegment00070_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 11430) (.leaf 29733)) (.node (.leaf 48047) .skip))

theorem progressionSegment00070_2_0000Check :
    progressionSegment00070_2_0000Tree.check indexedMarker 727609 454316 0 = true :=
  by decide

theorem progressionSegment00070_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 727609 454316 0 4 :=
  by simpa [progressionSegment00070_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00070_2_0000Check

def progressionSegment00070_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 84672) (.leaf 102968))

theorem progressionSegment00070_2_0001Check :
    progressionSegment00070_2_0001Tree.check indexedMarker 727609 454316 4 = true :=
  by decide

theorem progressionSegment00070_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 727609 454316 4 6 :=
  by simpa [progressionSegment00070_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00070_2_0001Check

def progressionSegment00070_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 121283)

theorem progressionSegment00070_2_0002Check :
    progressionSegment00070_2_0002Tree.check indexedMarker 727609 454316 6 = true :=
  by decide

theorem progressionSegment00070_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 727609 454316 6 7 :=
  by simpa [progressionSegment00070_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00070_2_0002Check

def progressionSegment00071_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 708) (.leaf 19189)) (.node (.leaf 37667) (.leaf 56135)))

theorem progressionSegment00071_1_0000Check :
    progressionSegment00071_1_0000Tree.check indexedMarker 734449 28488 0 = true :=
  by decide

theorem progressionSegment00071_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 734449 28488 0 4 :=
  by simpa [progressionSegment00071_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00071_1_0000Check

def progressionSegment00071_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 74627) (.leaf 93118))

theorem progressionSegment00071_1_0001Check :
    progressionSegment00071_1_0001Tree.check indexedMarker 734449 28488 4 = true :=
  by decide

theorem progressionSegment00071_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 734449 28488 4 6 :=
  by simpa [progressionSegment00071_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00071_1_0001Check

def progressionSegment00071_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  .skip

theorem progressionSegment00071_1_0002Check :
    progressionSegment00071_1_0002Tree.check indexedMarker 734449 28488 6 = true :=
  by decide

theorem progressionSegment00071_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 734449 28488 6 7 :=
  by simpa [progressionSegment00071_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00071_1_0002Check

def progressionSegment00071_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 17758) (.leaf 36236)) (.node (.leaf 54702) (.leaf 73198)))

theorem progressionSegment00071_2_0000Check :
    progressionSegment00071_2_0000Tree.check indexedMarker 734449 705961 0 = true :=
  by decide

theorem progressionSegment00071_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 734449 705961 0 4 :=
  by simpa [progressionSegment00071_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00071_2_0000Check

def progressionSegment00071_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node .skip (.leaf 110160))

theorem progressionSegment00071_2_0001Check :
    progressionSegment00071_2_0001Tree.check indexedMarker 734449 705961 4 = true :=
  by decide

theorem progressionSegment00071_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 734449 705961 4 6 :=
  by simpa [progressionSegment00071_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00071_2_0001Check

def progressionSegment00072_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 4625) (.leaf 23945)) (.node (.leaf 43326) (.leaf 62664)))

theorem progressionSegment00072_1_0000Check :
    progressionSegment00072_1_0000Tree.check indexedMarker 769129 183444 0 = true :=
  by decide

theorem progressionSegment00072_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 769129 183444 0 4 :=
  by simpa [progressionSegment00072_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00072_1_0000Check

def progressionSegment00072_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 82039) (.leaf 101376))

theorem progressionSegment00072_1_0001Check :
    progressionSegment00072_1_0001Tree.check indexedMarker 769129 183444 4 = true :=
  by decide

theorem progressionSegment00072_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 769129 183444 4 6 :=
  by simpa [progressionSegment00072_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00072_1_0001Check

def progressionSegment00072_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  .skip

theorem progressionSegment00072_1_0002Check :
    progressionSegment00072_1_0002Tree.check indexedMarker 769129 183444 6 = true :=
  by decide

theorem progressionSegment00072_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 769129 183444 6 7 :=
  by simpa [progressionSegment00072_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00072_1_0002Check

def progressionSegment00072_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 14742) (.leaf 34090)) (.node .skip (.leaf 72784)))

theorem progressionSegment00072_2_0000Check :
    progressionSegment00072_2_0000Tree.check indexedMarker 769129 585685 0 = true :=
  by decide

theorem progressionSegment00072_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 769129 585685 0 4 :=
  by simpa [progressionSegment00072_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00072_2_0000Check

def progressionSegment00072_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 92145) (.leaf 111508))

theorem progressionSegment00072_2_0001Check :
    progressionSegment00072_2_0001Tree.check indexedMarker 769129 585685 4 = true :=
  by decide

theorem progressionSegment00072_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 769129 585685 4 6 :=
  by simpa [progressionSegment00072_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00072_2_0001Check

def progressionSegment00073_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 6622) (.leaf 26132)) (.node (.leaf 45685) (.leaf 65198)))

theorem progressionSegment00073_1_0000Check :
    progressionSegment00073_1_0000Tree.check indexedMarker 776161 262925 0 = true :=
  by decide

theorem progressionSegment00073_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 776161 262925 0 4 :=
  by simpa [progressionSegment00073_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00073_1_0000Check

def progressionSegment00073_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 84744) (.leaf 104259))

theorem progressionSegment00073_1_0001Check :
    progressionSegment00073_1_0001Tree.check indexedMarker 776161 262925 4 = true :=
  by decide

theorem progressionSegment00073_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 776161 262925 4 6 :=
  by simpa [progressionSegment00073_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00073_1_0001Check

def progressionSegment00073_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 123793)

theorem progressionSegment00073_1_0002Check :
    progressionSegment00073_1_0002Tree.check indexedMarker 776161 262925 6 = true :=
  by decide

theorem progressionSegment00073_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 776161 262925 6 7 :=
  by simpa [progressionSegment00073_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00073_1_0002Check

def progressionSegment00073_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 12914) (.leaf 32439)) (.node (.leaf 51967) (.leaf 71485)))

theorem progressionSegment00073_2_0000Check :
    progressionSegment00073_2_0000Tree.check indexedMarker 776161 513236 0 = true :=
  by decide

theorem progressionSegment00073_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 776161 513236 0 4 :=
  by simpa [progressionSegment00073_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00073_2_0000Check

def progressionSegment00073_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 91033) (.leaf 110562))

theorem progressionSegment00073_2_0001Check :
    progressionSegment00073_2_0001Tree.check indexedMarker 776161 513236 4 = true :=
  by decide

theorem progressionSegment00073_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 776161 513236 4 6 :=
  by simpa [progressionSegment00073_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00073_2_0001Check

def progressionSegment00074_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 6398) (.leaf 28110)) (.node (.leaf 49821) (.leaf 71525)))

theorem progressionSegment00074_1_0000Check :
    progressionSegment00074_1_0000Tree.check indexedMarker 863041 254222 0 = true :=
  by decide

theorem progressionSegment00074_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 863041 254222 0 4 :=
  by simpa [progressionSegment00074_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00074_1_0000Check

def progressionSegment00074_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 93268) (.leaf 114966))

theorem progressionSegment00074_1_0001Check :
    progressionSegment00074_1_0001Tree.check indexedMarker 863041 254222 4 = true :=
  by decide

theorem progressionSegment00074_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 863041 254222 4 6 :=
  by simpa [progressionSegment00074_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00074_1_0001Check

def progressionSegment00074_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 15317) (.leaf 37034)) (.node (.leaf 58737) (.leaf 80470)))

theorem progressionSegment00074_2_0000Check :
    progressionSegment00074_2_0000Tree.check indexedMarker 863041 608819 0 = true :=
  by decide

theorem progressionSegment00074_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 863041 608819 0 4 :=
  by simpa [progressionSegment00074_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00074_2_0000Check

def progressionSegment00074_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 102172) (.leaf 123894))

theorem progressionSegment00074_2_0001Check :
    progressionSegment00074_2_0001Tree.check indexedMarker 863041 608819 4 = true :=
  by decide

theorem progressionSegment00074_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 863041 608819 4 6 :=
  by simpa [progressionSegment00074_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00074_2_0001Check

def progressionSegment00075_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 15725) (.leaf 37803)) (.node (.leaf 59891) (.leaf 82003)))

theorem progressionSegment00075_1_0000Check :
    progressionSegment00075_1_0000Tree.check indexedMarker 877969 624783 0 = true :=
  by decide

theorem progressionSegment00075_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 877969 624783 0 4 :=
  by simpa [progressionSegment00075_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00075_1_0000Check

def progressionSegment00075_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 104082)

theorem progressionSegment00075_1_0001Check :
    progressionSegment00075_1_0001Tree.check indexedMarker 877969 624783 4 = true :=
  by decide

theorem progressionSegment00075_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 877969 624783 4 5 :=
  by simpa [progressionSegment00075_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00075_1_0001Check

def progressionSegment00075_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 6374) (.leaf 28458)) (.node (.leaf 50548) .skip))

theorem progressionSegment00075_2_0000Check :
    progressionSegment00075_2_0000Tree.check indexedMarker 877969 253186 0 = true :=
  by decide

theorem progressionSegment00075_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 877969 253186 0 4 :=
  by simpa [progressionSegment00075_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00075_2_0000Check

def progressionSegment00075_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 94736) (.leaf 116824))

theorem progressionSegment00075_2_0001Check :
    progressionSegment00075_2_0001Tree.check indexedMarker 877969 253186 4 = true :=
  by decide

theorem progressionSegment00075_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 877969 253186 4 6 :=
  by simpa [progressionSegment00075_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00075_2_0001Check

def progressionSegment00076_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 10799) (.leaf 33075)) (.node (.leaf 55337) (.leaf 77638)))

theorem progressionSegment00076_1_0000Check :
    progressionSegment00076_1_0000Tree.check indexedMarker 885481 428999 0 = true :=
  by decide

theorem progressionSegment00076_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 885481 428999 0 4 :=
  by simpa [progressionSegment00076_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00076_1_0000Check

def progressionSegment00076_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 99913) (.leaf 122195))

theorem progressionSegment00076_1_0001Check :
    progressionSegment00076_1_0001Tree.check indexedMarker 885481 428999 4 = true :=
  by decide

theorem progressionSegment00076_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 885481 428999 4 6 :=
  by simpa [progressionSegment00076_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00076_1_0001Check

def progressionSegment00076_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node .skip (.leaf 33765)) (.node (.leaf 56024) (.leaf 78323)))

theorem progressionSegment00076_2_0000Check :
    progressionSegment00076_2_0000Tree.check indexedMarker 885481 456482 0 = true :=
  by decide

theorem progressionSegment00076_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 885481 456482 0 4 :=
  by simpa [progressionSegment00076_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00076_2_0000Check

def progressionSegment00076_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 100606) (.leaf 122884))

theorem progressionSegment00076_2_0001Check :
    progressionSegment00076_2_0001Tree.check indexedMarker 885481 456482 4 = true :=
  by decide

theorem progressionSegment00076_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 885481 456482 4 6 :=
  by simpa [progressionSegment00076_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00076_2_0001Check

def progressionSegment00077_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 10513) (.leaf 33362)) (.node .skip (.leaf 79067)))

theorem progressionSegment00077_1_0000Check :
    progressionSegment00077_1_0000Tree.check indexedMarker 908209 417925 0 = true :=
  by decide

theorem progressionSegment00077_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 908209 417925 0 4 :=
  by simpa [progressionSegment00077_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00077_1_0000Check

def progressionSegment00077_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 101915) (.leaf 124768))

theorem progressionSegment00077_1_0001Check :
    progressionSegment00077_1_0001Tree.check indexedMarker 908209 417925 4 = true :=
  by decide

theorem progressionSegment00077_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 908209 417925 4 6 :=
  by simpa [progressionSegment00077_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00077_1_0001Check

def progressionSegment00077_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 12339) .skip) (.node (.leaf 58033) (.leaf 80905)))

theorem progressionSegment00077_2_0000Check :
    progressionSegment00077_2_0000Tree.check indexedMarker 908209 490284 0 = true :=
  by decide

theorem progressionSegment00077_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 908209 490284 0 4 :=
  by simpa [progressionSegment00077_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00077_2_0000Check

def progressionSegment00077_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 103743)

theorem progressionSegment00077_2_0001Check :
    progressionSegment00077_2_0001Tree.check indexedMarker 908209 490284 4 = true :=
  by decide

theorem progressionSegment00077_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 908209 490284 4 5 :=
  by simpa [progressionSegment00077_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00077_2_0001Check

def progressionSegment00078_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 9200) (.leaf 33220)) (.node (.leaf 57220) (.leaf 81259)))

theorem progressionSegment00078_1_0000Check :
    progressionSegment00078_1_0000Tree.check indexedMarker 954529 365650 0 = true :=
  by decide

theorem progressionSegment00078_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 954529 365650 0 4 :=
  by simpa [progressionSegment00078_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00078_1_0000Check

def progressionSegment00078_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 105272)

theorem progressionSegment00078_1_0001Check :
    progressionSegment00078_1_0001Tree.check indexedMarker 954529 365650 4 = true :=
  by decide

theorem progressionSegment00078_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 954529 365650 4 5 :=
  by simpa [progressionSegment00078_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00078_1_0001Check

def progressionSegment00078_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 14823) (.leaf 38828)) (.node (.leaf 62842) (.leaf 86883)))

theorem progressionSegment00078_2_0000Check :
    progressionSegment00078_2_0000Tree.check indexedMarker 954529 588879 0 = true :=
  by decide

theorem progressionSegment00078_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 954529 588879 0 4 :=
  by simpa [progressionSegment00078_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00078_2_0000Check

def progressionSegment00078_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 110889)

theorem progressionSegment00078_2_0001Check :
    progressionSegment00078_2_0001Tree.check indexedMarker 954529 588879 4 = true :=
  by decide

theorem progressionSegment00078_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 954529 588879 4 5 :=
  by simpa [progressionSegment00078_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00078_2_0001Check

def progressionSegment00079_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 2482) (.leaf 27494)) (.node .skip (.leaf 77519)))

theorem progressionSegment00079_1_0000Check :
    progressionSegment00079_1_0000Tree.check indexedMarker 994009 98864 0 = true :=
  by decide

theorem progressionSegment00079_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 994009 98864 0 4 :=
  by simpa [progressionSegment00079_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00079_1_0000Check

def progressionSegment00079_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 102522)

theorem progressionSegment00079_1_0001Check :
    progressionSegment00079_1_0001Tree.check indexedMarker 994009 98864 4 = true :=
  by decide

theorem progressionSegment00079_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 994009 98864 4 5 :=
  by simpa [progressionSegment00079_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00079_1_0001Check

def progressionSegment00079_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 22512) (.leaf 47539)) (.node (.leaf 72532) (.leaf 97551)))

theorem progressionSegment00079_2_0000Check :
    progressionSegment00079_2_0000Tree.check indexedMarker 994009 895145 0 = true :=
  by decide

theorem progressionSegment00079_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 994009 895145 0 4 :=
  by simpa [progressionSegment00079_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00079_2_0000Check

def progressionSegment00079_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 122571)

theorem progressionSegment00079_2_0001Check :
    progressionSegment00079_2_0001Tree.check indexedMarker 994009 895145 4 = true :=
  by decide

theorem progressionSegment00079_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 994009 895145 4 5 :=
  by simpa [progressionSegment00079_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00079_2_0001Check

def progressionSegment00080_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 17049) (.leaf 42670)) (.node (.leaf 68275) (.leaf 93902)))

theorem progressionSegment00080_1_0000Check :
    progressionSegment00080_1_0000Tree.check indexedMarker 1018081 677508 0 = true :=
  by decide

theorem progressionSegment00080_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1018081 677508 0 4 :=
  by simpa [progressionSegment00080_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00080_1_0000Check

def progressionSegment00080_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  .skip

theorem progressionSegment00080_1_0001Check :
    progressionSegment00080_1_0001Tree.check indexedMarker 1018081 677508 4 = true :=
  by decide

theorem progressionSegment00080_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1018081 677508 4 5 :=
  by simpa [progressionSegment00080_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00080_1_0001Check

def progressionSegment00080_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 8570) (.leaf 34186)) (.node (.leaf 59788) (.leaf 85433)))

theorem progressionSegment00080_2_0000Check :
    progressionSegment00080_2_0000Tree.check indexedMarker 1018081 340573 0 = true :=
  by decide

theorem progressionSegment00080_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1018081 340573 0 4 :=
  by simpa [progressionSegment00080_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00080_2_0000Check

def progressionSegment00080_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 111039)

theorem progressionSegment00080_2_0001Check :
    progressionSegment00080_2_0001Tree.check indexedMarker 1018081 340573 4 = true :=
  by decide

theorem progressionSegment00080_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1018081 340573 4 5 :=
  by simpa [progressionSegment00080_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00080_2_0001Check

def progressionSegment00081_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 1151) (.leaf 26965)) (.node .skip (.leaf 78605)))

theorem progressionSegment00081_1_0000Check :
    progressionSegment00081_1_0000Tree.check indexedMarker 1026169 45630 0 = true :=
  by decide

theorem progressionSegment00081_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1026169 45630 0 4 :=
  by simpa [progressionSegment00081_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00081_1_0000Check

def progressionSegment00081_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 104413)

theorem progressionSegment00081_1_0001Check :
    progressionSegment00081_1_0001Tree.check indexedMarker 1026169 45630 4 = true :=
  by decide

theorem progressionSegment00081_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1026169 45630 4 5 :=
  by simpa [progressionSegment00081_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00081_1_0001Check

def progressionSegment00081_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 24666) (.leaf 50487)) (.node (.leaf 76311) (.leaf 102120)))

theorem progressionSegment00081_2_0000Check :
    progressionSegment00081_2_0000Tree.check indexedMarker 1026169 980539 0 = true :=
  by decide

theorem progressionSegment00081_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1026169 980539 0 4 :=
  by simpa [progressionSegment00081_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00081_2_0000Check

def progressionSegment00082_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 2420) (.leaf 28651)) (.node (.leaf 54865) (.leaf 81124)))

theorem progressionSegment00082_1_0000Check :
    progressionSegment00082_1_0000Tree.check indexedMarker 1042441 96348 0 = true :=
  by decide

theorem progressionSegment00082_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1042441 96348 0 4 :=
  by simpa [progressionSegment00082_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00082_1_0000Check

def progressionSegment00082_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 107343)

theorem progressionSegment00082_1_0001Check :
    progressionSegment00082_1_0001Tree.check indexedMarker 1042441 96348 4 = true :=
  by decide

theorem progressionSegment00082_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1042441 96348 4 5 :=
  by simpa [progressionSegment00082_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00082_1_0001Check

def progressionSegment00082_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node .skip (.leaf 50029)) (.node (.leaf 76263) (.leaf 102482)))

theorem progressionSegment00082_2_0000Check :
    progressionSegment00082_2_0000Tree.check indexedMarker 1042441 946093 0 = true :=
  by decide

theorem progressionSegment00082_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1042441 946093 0 4 :=
  by simpa [progressionSegment00082_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00082_2_0000Check

def progressionSegment00083_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 978) (.leaf 27833)) (.node (.leaf 54650) (.leaf 81536)))

theorem progressionSegment00083_1_0000Check :
    progressionSegment00083_1_0000Tree.check indexedMarker 1067089 38899 0 = true :=
  by decide

theorem progressionSegment00083_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1067089 38899 0 4 :=
  by simpa [progressionSegment00083_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00083_1_0000Check

def progressionSegment00083_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 108375)

theorem progressionSegment00083_1_0001Check :
    progressionSegment00083_1_0001Tree.check indexedMarker 1067089 38899 4 = true :=
  by decide

theorem progressionSegment00083_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1067089 38899 4 5 :=
  by simpa [progressionSegment00083_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00083_1_0001Check

def progressionSegment00083_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 25858) (.leaf 52713)) (.node .skip .skip))

theorem progressionSegment00083_2_0000Check :
    progressionSegment00083_2_0000Tree.check indexedMarker 1067089 1028190 0 = true :=
  by decide

theorem progressionSegment00083_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1067089 1028190 0 4 :=
  by simpa [progressionSegment00083_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00083_2_0000Check

def progressionSegment00084_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 24128) (.leaf 51820)) (.node (.leaf 79515) (.leaf 107200)))

theorem progressionSegment00084_1_0000Check :
    progressionSegment00084_1_0000Tree.check indexedMarker 1100401 959409 0 = true :=
  by decide

theorem progressionSegment00084_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1100401 959409 0 4 :=
  by simpa [progressionSegment00084_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00084_1_0000Check

def progressionSegment00084_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 3553) .skip) (.node (.leaf 58906) (.leaf 86623)))

theorem progressionSegment00084_2_0000Check :
    progressionSegment00084_2_0000Tree.check indexedMarker 1100401 140992 0 = true :=
  by decide

theorem progressionSegment00084_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1100401 140992 0 4 :=
  by simpa [progressionSegment00084_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00084_2_0000Check

def progressionSegment00084_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 114292)

theorem progressionSegment00084_2_0001Check :
    progressionSegment00084_2_0001Tree.check indexedMarker 1100401 140992 4 = true :=
  by decide

theorem progressionSegment00084_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1100401 140992 4 5 :=
  by simpa [progressionSegment00084_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00084_2_0001Check

def progressionSegment00085_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 14571) (.leaf 42901)) (.node (.leaf 71207) (.leaf 99536)))

theorem progressionSegment00085_1_0000Check :
    progressionSegment00085_1_0000Tree.check indexedMarker 1125721 579203 0 = true :=
  by decide

theorem progressionSegment00085_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1125721 579203 0 4 :=
  by simpa [progressionSegment00085_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00085_1_0000Check

def progressionSegment00085_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node .skip (.leaf 42087)) (.node (.leaf 70383) (.leaf 98719)))

theorem progressionSegment00085_2_0000Check :
    progressionSegment00085_2_0000Tree.check indexedMarker 1125721 546518 0 = true :=
  by decide

theorem progressionSegment00085_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1125721 546518 0 4 :=
  by simpa [progressionSegment00085_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00085_2_0000Check

def progressionSegment00086_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 7046) (.leaf 35789)) (.node (.leaf 64544) (.leaf 93310)))

theorem progressionSegment00086_1_0000Check :
    progressionSegment00086_1_0000Tree.check indexedMarker 1142761 279829 0 = true :=
  by decide

theorem progressionSegment00086_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1142761 279829 0 4 :=
  by simpa [progressionSegment00086_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00086_1_0000Check

def progressionSegment00086_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 122054)

theorem progressionSegment00086_1_0001Check :
    progressionSegment00086_1_0001Tree.check indexedMarker 1142761 279829 4 = true :=
  by decide

theorem progressionSegment00086_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1142761 279829 4 5 :=
  by simpa [progressionSegment00086_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00086_1_0001Check

def progressionSegment00086_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node .skip .skip) (.node (.leaf 79219) (.leaf 107973)))

theorem progressionSegment00086_2_0000Check :
    progressionSegment00086_2_0000Tree.check indexedMarker 1142761 862932 0 = true :=
  by decide

theorem progressionSegment00086_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1142761 862932 0 4 :=
  by simpa [progressionSegment00086_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00086_2_0000Check

def progressionSegment00087_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node .skip (.leaf 39390)) (.node (.leaf 69445) (.leaf 99504)))

theorem progressionSegment00087_1_0000Check :
    progressionSegment00087_1_0000Tree.check indexedMarker 1194649 371057 0 = true :=
  by decide

theorem progressionSegment00087_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1194649 371057 0 4 :=
  by simpa [progressionSegment00087_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00087_1_0000Check

def progressionSegment00087_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 20717) (.leaf 50776)) (.node (.leaf 80853) (.leaf 110904)))

theorem progressionSegment00087_2_0000Check :
    progressionSegment00087_2_0000Tree.check indexedMarker 1194649 823592 0 = true :=
  by decide

theorem progressionSegment00087_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1194649 823592 0 4 :=
  by simpa [progressionSegment00087_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00087_2_0000Check

def progressionSegment00088_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 14387) (.leaf 44672)) (.node (.leaf 74947) (.leaf 105228)))

theorem progressionSegment00088_1_0000Check :
    progressionSegment00088_1_0000Tree.check indexedMarker 1203409 571878 0 = true :=
  by decide

theorem progressionSegment00088_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1203409 571878 0 4 :=
  by simpa [progressionSegment00088_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00088_1_0000Check

def progressionSegment00088_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 15890) (.leaf 46179)) (.node (.leaf 76451) (.leaf 106727)))

theorem progressionSegment00088_2_0000Check :
    progressionSegment00088_2_0000Tree.check indexedMarker 1203409 631531 0 = true :=
  by decide

theorem progressionSegment00088_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1203409 631531 0 4 :=
  by simpa [progressionSegment00088_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00088_2_0000Check

def progressionSegment00089_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 1100) (.leaf 32033)) (.node (.leaf 62982) (.leaf 93943)))

theorem progressionSegment00089_1_0000Check :
    progressionSegment00089_1_0000Tree.check indexedMarker 1229881 43605 0 = true :=
  by decide

theorem progressionSegment00089_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1229881 43605 0 4 :=
  by simpa [progressionSegment00089_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00089_1_0000Check

def progressionSegment00089_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 124874)

theorem progressionSegment00089_1_0001Check :
    progressionSegment00089_1_0001Tree.check indexedMarker 1229881 43605 4 = true :=
  by decide

theorem progressionSegment00089_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1229881 43605 4 5 :=
  by simpa [progressionSegment00089_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00089_1_0001Check

def progressionSegment00089_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 29845) .skip) (.node (.leaf 91747) (.leaf 122685)))

theorem progressionSegment00089_2_0000Check :
    progressionSegment00089_2_0000Tree.check indexedMarker 1229881 1186276 0 = true :=
  by decide

theorem progressionSegment00089_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1229881 1186276 0 4 :=
  by simpa [progressionSegment00089_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00089_2_0000Check

def progressionSegment00090_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 29120) (.leaf 60495)) (.node (.leaf 91913) .skip))

theorem progressionSegment00090_1_0000Check :
    progressionSegment00090_1_0000Tree.check indexedMarker 1247689 1157426 0 = true :=
  by decide

theorem progressionSegment00090_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1247689 1157426 0 4 :=
  by simpa [progressionSegment00090_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00090_1_0000Check

def progressionSegment00090_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 2271) (.leaf 33666)) (.node (.leaf 65059) (.leaf 96457)))

theorem progressionSegment00090_2_0000Check :
    progressionSegment00090_2_0000Tree.check indexedMarker 1247689 90263 0 = true :=
  by decide

theorem progressionSegment00090_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1247689 90263 0 4 :=
  by simpa [progressionSegment00090_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00090_2_0000Check

def progressionSegment00091_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 27583) .skip) (.node (.leaf 91736) (.leaf 123807)))

theorem progressionSegment00091_1_0000Check :
    progressionSegment00091_1_0000Tree.check indexedMarker 1274641 1096427 0 = true :=
  by decide

theorem progressionSegment00091_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1274641 1096427 0 4 :=
  by simpa [progressionSegment00091_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00091_1_0000Check

def progressionSegment00091_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 4492) (.leaf 36555)) (.node (.leaf 68630) (.leaf 100694)))

theorem progressionSegment00091_2_0000Check :
    progressionSegment00091_2_0000Tree.check indexedMarker 1274641 178214 0 = true :=
  by decide

theorem progressionSegment00091_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 1274641 178214 0 4 :=
  by simpa [progressionSegment00091_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00091_2_0000Check

end Erdos848.GeneratedLowDiagonalCoverage
