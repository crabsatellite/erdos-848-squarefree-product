import Erdos848.GeneratedLowDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedLowDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00011_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node (.leaf 65713) (.leaf 65974)) (.node (.leaf 66222) (.leaf 66485))) (.node (.node (.leaf 66745) (.leaf 67002)) (.node (.leaf 67249) (.leaf 67510)))) (.node (.node (.node (.leaf 67769) (.leaf 68023)) (.node (.leaf 68285) .skip)) (.node (.node (.leaf 68799) (.leaf 69053)) (.node (.leaf 69313) (.leaf 69566))))) (.node (.node (.node (.node (.leaf 69826) (.leaf 70079)) (.node (.leaf 70324) (.leaf 70580))) (.node (.node (.leaf 70842) (.leaf 71101)) (.node .skip (.leaf 71611)))) (.node (.node (.node (.leaf 71869) (.leaf 72130)) (.node (.leaf 72388) (.leaf 72639))) (.node (.node (.leaf 72898) (.leaf 73157)) (.node (.leaf 73415) (.leaf 73670)))))) (.node (.node (.node (.node (.node (.leaf 73925) (.leaf 74183)) (.node (.leaf 74443) (.leaf 74697))) (.node (.node .skip (.leaf 75215)) (.node (.leaf 75478) (.leaf 75729)))) (.node (.node (.node (.leaf 75987) (.leaf 76243)) (.node (.leaf 76505) (.leaf 76759))) (.node (.node (.leaf 77013) (.leaf 77275)) (.node (.leaf 77529) .skip)))) (.node (.node (.node (.node (.leaf 78034) (.leaf 78296)) (.node (.leaf 78553) (.leaf 78810))) (.node (.node (.leaf 79063) (.leaf 79324)) (.node (.leaf 79580) (.leaf 79831)))) (.node (.node (.node (.leaf 80097) (.leaf 80355)) (.node (.leaf 80619) (.leaf 80879))) (.node (.node (.leaf 81131) .skip) (.node (.leaf 81651) (.leaf 81905))))))) (.node (.node (.node (.node (.node (.node (.leaf 82160) (.leaf 82420)) (.node (.leaf 82679) (.leaf 82932))) (.node (.node (.leaf 83184) (.leaf 83443)) (.node (.leaf 83693) (.leaf 83958)))) (.node (.node (.node .skip (.leaf 84471)) (.node (.leaf 84725) (.leaf 84985))) (.node (.node (.leaf 85242) (.leaf 85497)) (.node (.leaf 85760) (.leaf 86011))))) (.node (.node (.node (.node (.leaf 86265) (.leaf 86521)) (.node (.leaf 86778) (.leaf 87042))) (.node (.node (.leaf 87298) (.leaf 87554)) (.node .skip (.leaf 88069)))) (.node (.node (.node (.leaf 88328) (.leaf 88572)) (.node (.leaf 88827) (.leaf 89081))) (.node (.node (.leaf 89340) (.leaf 89606)) (.node (.leaf 89859) (.leaf 90122)))))) (.node (.node (.node (.node (.node (.leaf 90371) .skip) (.node (.leaf 90877) (.leaf 91131))) (.node (.node (.leaf 91390) (.leaf 91649)) (.node (.leaf 91904) (.leaf 92159)))) (.node (.node (.node (.leaf 92414) (.leaf 92668)) (.node (.leaf 92928) (.leaf 93192))) (.node (.node (.leaf 93451) (.leaf 93700)) (.node (.leaf 93962) .skip)))) (.node (.node (.node (.node (.leaf 94475) (.leaf 94726)) (.node (.leaf 94986) (.leaf 95245))) (.node (.node (.leaf 95495) (.leaf 95756)) (.node (.leaf 96003) (.leaf 96263)))) (.node (.node (.node (.leaf 96527) (.leaf 96785)) (.node .skip (.leaf 97289))) (.node (.node (.leaf 97540) (.leaf 97807)) (.node (.leaf 98060) (.leaf 98316))))))))

theorem progressionSegment00011_1_0001Check :
    progressionSegment00011_1_0001Tree.check indexedMarker 10201 515 256 = true :=
  by decide

theorem progressionSegment00011_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 10201 515 256 384 :=
  by simpa [progressionSegment00011_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00011_1_0001Check

def progressionSegment00011_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 98569) (.leaf 98827)) (.node (.leaf 99082) (.leaf 99341))) (.node (.node (.leaf 99596) (.leaf 99855)) (.node (.leaf 100109) (.leaf 100370)))) (.node (.node (.node .skip (.leaf 100874)) (.node (.leaf 101122) (.leaf 101396))) (.node (.node (.leaf 101647) (.leaf 101905)) (.node (.leaf 102159) (.leaf 102418))))) (.node (.node (.node (.node (.leaf 102671) (.leaf 102933)) (.node (.leaf 103194) .skip)) (.node (.node (.leaf 103705) (.leaf 103970)) (.node (.leaf 104219) (.leaf 104471)))) (.node (.node (.node (.leaf 104724) (.leaf 104985)) (.node (.leaf 105249) (.leaf 105500))) (.node (.node (.leaf 105768) (.leaf 106017)) (.node (.leaf 106271) (.leaf 106530)))))) (.node (.node (.node (.node (.node (.leaf 106787) .skip) (.node (.leaf 107300) (.leaf 107559))) (.node (.node (.leaf 107816) (.leaf 108069)) (.node (.leaf 108322) (.leaf 108576)))) (.node (.node (.node (.leaf 108840) (.leaf 109102)) (.node (.leaf 109360) (.leaf 109612))) (.node (.node .skip (.leaf 110126)) (.node (.leaf 110383) (.leaf 110638))))) (.node (.node (.node (.node (.leaf 110899) (.leaf 111156)) (.node (.leaf 111426) (.leaf 111669))) (.node (.node (.leaf 111930) (.leaf 112185)) (.node (.leaf 112442) (.leaf 112695)))) (.node (.node (.node (.leaf 112951) (.leaf 113205)) (.node .skip (.leaf 113713))) (.node (.node (.leaf 113966) (.leaf 114227)) (.node (.leaf 114487) (.leaf 114741)))))))

theorem progressionSegment00011_1_0002Check :
    progressionSegment00011_1_0002Tree.check indexedMarker 10201 515 384 = true :=
  by decide

theorem progressionSegment00011_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 10201 515 384 448 :=
  by simpa [progressionSegment00011_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00011_1_0002Check

def progressionSegment00011_1_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 114995) (.leaf 115255)) (.node (.leaf 115519) (.leaf 115779))) (.node (.node (.leaf 116028) .skip) (.node (.leaf 116548) (.leaf 116798)))) (.node (.node (.node (.leaf 117053) (.leaf 117312)) (.node (.leaf 117572) (.leaf 117823))) (.node (.node (.leaf 118080) (.leaf 118343)) (.node (.leaf 118592) (.leaf 118850))))) (.node (.node (.node (.node (.leaf 119101) (.leaf 119364)) (.node (.leaf 119621) .skip)) (.node (.node (.leaf 120135) (.leaf 120385)) (.node (.leaf 120646) (.leaf 120906)))) (.node (.node (.node (.leaf 121164) (.leaf 121423)) (.node (.leaf 121682) (.leaf 121937))) (.node (.node (.leaf 122190) (.leaf 122449)) (.node .skip (.leaf 122960))))))

theorem progressionSegment00011_1_0003Check :
    progressionSegment00011_1_0003Tree.check indexedMarker 10201 515 448 = true :=
  by decide

theorem progressionSegment00011_1_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 10201 515 448 480 :=
  by simpa [progressionSegment00011_1_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00011_1_0003Check

def progressionSegment00011_1_0004Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 123221) (.leaf 123474)) (.node (.leaf 123735) (.leaf 123992))) (.node (.node (.leaf 124238) (.leaf 124486)) (.node (.leaf 124748) (.leaf 125012))))

theorem progressionSegment00011_1_0004Check :
    progressionSegment00011_1_0004Tree.check indexedMarker 10201 515 480 = true :=
  by decide

theorem progressionSegment00011_1_0004 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 10201 515 480 488 :=
  by simpa [progressionSegment00011_1_0004Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00011_1_0004Check

def progressionSegment00011_1_0005Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 125268) (.leaf 125523))

theorem progressionSegment00011_1_0005Check :
    progressionSegment00011_1_0005Tree.check indexedMarker 10201 515 488 = true :=
  by decide

theorem progressionSegment00011_1_0005 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 10201 515 488 490 :=
  by simpa [progressionSegment00011_1_0005Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00011_1_0005Check

def progressionSegment00011_1_0006Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 125781)

theorem progressionSegment00011_1_0006Check :
    progressionSegment00011_1_0006Tree.check indexedMarker 10201 515 490 = true :=
  by decide

theorem progressionSegment00011_1_0006 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 10201 515 490 491 :=
  by simpa [progressionSegment00011_1_0006Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00011_1_0006Check

def progressionSegment00011_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node (.node (.leaf 240) (.leaf 496)) (.node (.leaf 749) (.leaf 1013))) (.node (.node (.leaf 1268) (.leaf 1522)) (.node (.leaf 1780) .skip))) (.node (.node (.node (.leaf 2299) (.leaf 2551)) (.node (.leaf 2804) (.leaf 3065))) (.node (.node (.leaf 3323) (.leaf 3587)) (.node (.leaf 3830) (.leaf 4100))))) (.node (.node (.node (.node (.leaf 4358) (.leaf 4615)) (.node (.leaf 4872) (.leaf 5137))) (.node (.node (.leaf 5391) .skip) (.node (.leaf 5895) (.leaf 6153)))) (.node (.node (.node (.leaf 6405) (.leaf 6668)) (.node (.leaf 6923) (.leaf 7179))) (.node (.node (.leaf 7430) (.leaf 7691)) (.node (.leaf 7950) (.leaf 8201)))))) (.node (.node (.node (.node (.node .skip (.leaf 8710)) (.node (.leaf 8967) (.leaf 9226))) (.node (.node (.leaf 9488) (.leaf 9743)) (.node (.leaf 9994) (.leaf 10251)))) (.node (.node (.node (.leaf 10509) (.leaf 10767)) (.node (.leaf 11028) (.leaf 11282))) (.node (.node (.leaf 11545) (.leaf 11804)) (.node .skip (.leaf 12308))))) (.node (.node (.node (.node (.leaf 12560) (.leaf 12818)) (.node (.leaf 13079) (.leaf 13335))) (.node (.node (.leaf 13589) (.leaf 13841)) (.node (.leaf 14108) (.leaf 14357)))) (.node (.node (.node (.leaf 14619) .skip) (.node (.leaf 15134) (.leaf 15388))) (.node (.node (.leaf 15643) (.leaf 15900)) (.node (.leaf 16155) (.leaf 16409))))))) (.node (.node (.node (.node (.node (.node (.leaf 16669) (.leaf 16927)) (.node (.leaf 17186) (.leaf 17439))) (.node (.node (.leaf 17692) (.leaf 17953)) (.node (.leaf 18203) .skip))) (.node (.node (.node (.leaf 18716) (.leaf 18974)) (.node (.leaf 19232) (.leaf 19480))) (.node (.node (.leaf 19739) (.leaf 20001)) (.node (.leaf 20259) (.leaf 20515))))) (.node (.node (.node (.node (.leaf 20770) (.leaf 21027)) (.node .skip (.leaf 21535))) (.node (.node (.leaf 21787) (.leaf 22042)) (.node (.leaf 22300) (.leaf 22564)))) (.node (.node (.node (.leaf 22815) (.leaf 23075)) (.node (.leaf 23332) (.leaf 23586))) (.node (.node (.leaf 23837) (.leaf 24104)) (.node (.leaf 24358) (.leaf 24619)))))) (.node (.node (.node (.node (.node .skip (.leaf 25119)) (.node (.leaf 25389) (.leaf 25644))) (.node (.node (.leaf 25899) (.leaf 26158)) (.node (.leaf 26417) (.leaf 26674)))) (.node (.node (.node (.leaf 26933) (.leaf 27186)) (.node (.leaf 27449) .skip)) (.node (.node (.leaf 27963) (.leaf 28219)) (.node (.leaf 28477) (.leaf 28727))))) (.node (.node (.node (.node (.leaf 28987) (.leaf 29243)) (.node (.leaf 29502) (.leaf 29759))) (.node (.node (.leaf 30015) (.leaf 30268)) (.node (.leaf 30522) (.leaf 30777)))) (.node (.node (.node (.leaf 31042) .skip) (.node (.leaf 31550) (.leaf 31802))) (.node (.node (.leaf 32063) (.leaf 32322)) (.node (.leaf 32584) (.leaf 32847)))))))) (.node (.node (.node (.node (.node (.node (.node (.leaf 33097) (.leaf 33350)) (.node (.leaf 33607) (.leaf 33864))) (.node (.node .skip (.leaf 34380)) (.node (.leaf 34626) (.leaf 34890)))) (.node (.node (.node (.leaf 35151) (.leaf 35404)) (.node (.leaf 35652) (.leaf 35915))) (.node (.node (.leaf 36171) (.leaf 36433)) (.node (.leaf 36688) (.leaf 36944))))) (.node (.node (.node (.node (.leaf 37199) (.leaf 37452)) (.node .skip (.leaf 37969))) (.node (.node (.leaf 38223) (.leaf 38477)) (.node (.leaf 38735) (.leaf 38998)))) (.node (.node (.node (.leaf 39252) (.leaf 39511)) (.node (.leaf 39772) (.leaf 40031))) (.node (.node (.leaf 40291) .skip) (.node (.leaf 40797) (.leaf 41056)))))) (.node (.node (.node (.node (.node (.leaf 41310) (.leaf 41572)) (.node (.leaf 41831) (.leaf 42092))) (.node (.node (.leaf 42346) (.leaf 42599)) (.node (.leaf 42854) (.leaf 43110)))) (.node (.node (.node (.leaf 43373) (.leaf 43629)) (.node (.leaf 43882) .skip)) (.node (.node (.leaf 44394) (.leaf 44653)) (.node (.leaf 44915) (.leaf 45167))))) (.node (.node (.node (.node (.leaf 45426) (.leaf 45686)) (.node (.leaf 45947) (.leaf 46197))) (.node (.node (.leaf 46450) (.leaf 46702)) (.node .skip (.leaf 47220)))) (.node (.node (.node (.leaf 47477) (.leaf 47728)) (.node (.leaf 47983) (.leaf 48240))) (.node (.node (.leaf 48490) (.leaf 48747)) (.node (.leaf 49008) (.leaf 49260))))))) (.node (.node (.node (.node (.node (.node (.leaf 49518) (.leaf 49776)) (.node (.leaf 50034) (.leaf 50292))) (.node (.node .skip (.leaf 50808)) (.node (.leaf 51062) (.leaf 51313)))) (.node (.node (.node (.leaf 51570) (.leaf 51827)) (.node (.leaf 52086) (.leaf 52334))) (.node (.node (.leaf 52597) (.leaf 52848)) (.node (.leaf 53103) .skip)))) (.node (.node (.node (.node (.leaf 53606) (.leaf 53868)) (.node (.leaf 54119) (.leaf 54372))) (.node (.node (.leaf 54630) (.leaf 54900)) (.node (.leaf 55154) (.leaf 55411)))) (.node (.node (.node (.leaf 55661) (.leaf 55922)) (.node (.leaf 56183) (.leaf 56435))) (.node (.node (.leaf 56693) .skip) (.node (.leaf 57212) (.leaf 57472)))))) (.node (.node (.node (.node (.node (.leaf 57730) (.leaf 57987)) (.node (.leaf 58242) (.leaf 58495))) (.node (.node (.leaf 58754) (.leaf 59006)) (.node (.leaf 59263) (.leaf 59524)))) (.node (.node (.node .skip (.leaf 60033)) (.node (.leaf 60288) (.leaf 60544))) (.node (.node (.leaf 60801) (.leaf 61059)) (.node (.leaf 61316) (.leaf 61571))))) (.node (.node (.node (.node (.leaf 61829) (.leaf 62087)) (.node (.leaf 62347) (.leaf 62599))) (.node (.node (.leaf 62861) (.leaf 63120)) (.node .skip (.leaf 63635)))) (.node (.node (.node (.leaf 63892) (.leaf 64139)) (.node (.leaf 64404) (.leaf 64662))) (.node (.node (.leaf 64927) (.leaf 65175)) (.node (.leaf 65432) (.leaf 65685)))))))))

theorem progressionSegment00011_2_0000Check :
    progressionSegment00011_2_0000Tree.check indexedMarker 10201 9686 0 = true :=
  by decide

theorem progressionSegment00011_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 10201 9686 0 256 :=
  by simpa [progressionSegment00011_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00011_2_0000Check

def progressionSegment00011_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node (.leaf 65949) .skip) (.node (.leaf 66459) (.leaf 66719))) (.node (.node (.leaf 66977) (.leaf 67224)) (.node (.leaf 67485) (.leaf 67742)))) (.node (.node (.node (.leaf 67999) (.leaf 68254)) (.node (.leaf 68519) (.leaf 68772))) (.node (.node (.leaf 69030) (.leaf 69285)) (.node (.leaf 69539) .skip)))) (.node (.node (.node (.node (.leaf 70052) (.leaf 70297)) (.node (.leaf 70554) (.leaf 70815))) (.node (.node (.leaf 71073) (.leaf 71326)) (.node (.leaf 71582) (.leaf 71843)))) (.node (.node (.node (.leaf 72102) (.leaf 72362)) (.node .skip (.leaf 72869))) (.node (.node (.leaf 73132) (.leaf 73390)) (.node (.leaf 73646) (.leaf 73901)))))) (.node (.node (.node (.node (.node (.leaf 74155) (.leaf 74414)) (.node (.leaf 74673) (.leaf 74934))) (.node (.node (.leaf 75187) (.leaf 75451)) (.node (.leaf 75704) (.leaf 75962)))) (.node (.node (.node .skip (.leaf 76478)) (.node (.leaf 76734) (.leaf 76990))) (.node (.node (.leaf 77249) (.leaf 77501)) (.node (.leaf 77756) (.leaf 78008))))) (.node (.node (.node (.node (.leaf 78270) (.leaf 78526)) (.node (.leaf 78783) .skip)) (.node (.node (.leaf 79300) (.leaf 79555)) (.node (.leaf 79804) (.leaf 80068)))) (.node (.node (.node (.leaf 80328) (.leaf 80586)) (.node (.leaf 80851) (.leaf 81109))) (.node (.node (.leaf 81363) (.leaf 81623)) (.node (.leaf 81879) (.leaf 82134))))))) (.node (.node (.node (.node (.node (.node (.leaf 82395) .skip) (.node (.leaf 82907) (.leaf 83153))) (.node (.node (.leaf 83415) (.leaf 83668)) (.node (.leaf 83931) (.leaf 84188)))) (.node (.node (.node (.leaf 84442) (.leaf 84698)) (.node (.leaf 84959) (.leaf 85216))) (.node (.node .skip (.leaf 85731)) (.node (.leaf 85985) (.leaf 86235))))) (.node (.node (.node (.node (.leaf 86493) (.leaf 86754)) (.node (.leaf 87012) (.leaf 87273))) (.node (.node (.leaf 87523) (.leaf 87787)) (.node (.leaf 88042) (.leaf 88298)))) (.node (.node (.node (.leaf 88548) (.leaf 88804)) (.node .skip (.leaf 89310))) (.node (.node (.leaf 89578) (.leaf 89832)) (.node (.leaf 90088) (.leaf 90343)))))) (.node (.node (.node (.node (.node (.leaf 90594) (.leaf 90855)) (.node (.leaf 91106) (.leaf 91362))) (.node (.node (.leaf 91624) .skip) (.node (.leaf 92129) (.leaf 92388)))) (.node (.node (.node (.leaf 92642) (.leaf 92905)) (.node (.leaf 93163) (.leaf 93423))) (.node (.node (.leaf 93674) (.leaf 93936)) (.node (.leaf 94197) (.leaf 94448))))) (.node (.node (.node (.node (.leaf 94704) (.leaf 94959)) (.node (.leaf 95218) .skip)) (.node (.node (.leaf 95730) (.leaf 95975)) (.node (.leaf 96233) (.leaf 96503)))) (.node (.node (.node (.leaf 96758) (.leaf 97007)) (.node (.leaf 97264) (.leaf 97513))) (.node (.node (.leaf 97778) (.leaf 98032)) (.node .skip (.leaf 98543))))))))

theorem progressionSegment00011_2_0001Check :
    progressionSegment00011_2_0001Tree.check indexedMarker 10201 9686 256 = true :=
  by decide

theorem progressionSegment00011_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 10201 9686 256 384 :=
  by simpa [progressionSegment00011_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00011_2_0001Check

def progressionSegment00011_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 98798) (.leaf 99055)) (.node (.leaf 99313) (.leaf 99571))) (.node (.node (.leaf 99828) (.leaf 100083)) (.node (.leaf 100343) (.leaf 100603)))) (.node (.node (.node (.leaf 100854) (.leaf 101095)) (.node (.leaf 101368) (.leaf 101624))) (.node (.node .skip (.leaf 102134)) (.node (.leaf 102390) (.leaf 102647))))) (.node (.node (.node (.node (.leaf 102908) (.leaf 103167)) (.node (.leaf 103425) (.leaf 103680))) (.node (.node (.leaf 103940) (.leaf 104192)) (.node (.leaf 104441) .skip))) (.node (.node (.node (.leaf 104956) (.leaf 105222)) (.node (.leaf 105474) (.leaf 105739))) (.node (.node (.leaf 105991) (.leaf 106243)) (.node (.leaf 106499) (.leaf 106762)))))) (.node (.node (.node (.node (.node (.leaf 107010) (.leaf 107274)) (.node (.leaf 107533) (.leaf 107789))) (.node (.node (.leaf 108039) .skip) (.node (.leaf 108549) (.leaf 108815)))) (.node (.node (.node (.leaf 109073) (.leaf 109333)) (.node (.leaf 109588) (.leaf 109842))) (.node (.node (.leaf 110098) (.leaf 110358)) (.node (.leaf 110615) (.leaf 110870))))) (.node (.node (.node (.node .skip (.leaf 111398)) (.node (.leaf 111643) (.leaf 111899))) (.node (.node (.leaf 112158) (.leaf 112415)) (.node (.leaf 112670) (.leaf 112931)))) (.node (.node (.node (.leaf 113179) (.leaf 113434)) (.node (.leaf 113687) (.leaf 113941))) (.node (.node (.leaf 114197) (.leaf 114458)) (.node .skip (.leaf 114969)))))))

theorem progressionSegment00011_2_0002Check :
    progressionSegment00011_2_0002Tree.check indexedMarker 10201 9686 384 = true :=
  by decide

theorem progressionSegment00011_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 10201 9686 384 448 :=
  by simpa [progressionSegment00011_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00011_2_0002Check

def progressionSegment00011_2_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 115229) (.leaf 115489)) (.node (.leaf 115754) (.leaf 115999))) (.node (.node (.leaf 116264) (.leaf 116519)) (.node (.leaf 116770) (.leaf 117027)))) (.node (.node (.node (.leaf 117285) .skip) (.node (.leaf 117793) (.leaf 118054))) (.node (.node (.leaf 118317) (.leaf 118567)) (.node (.leaf 118823) (.leaf 119078))))) (.node (.node (.node (.node (.leaf 119337) (.leaf 119594)) (.node (.leaf 119856) (.leaf 120109))) (.node (.node (.leaf 120358) (.leaf 120619)) (.node (.leaf 120880) .skip))) (.node (.node (.node (.leaf 121400) (.leaf 121656)) (.node (.leaf 121908) (.leaf 122164))) (.node (.node (.leaf 122424) (.leaf 122678)) (.node (.leaf 122928) (.leaf 123194))))))

theorem progressionSegment00011_2_0003Check :
    progressionSegment00011_2_0003Tree.check indexedMarker 10201 9686 448 = true :=
  by decide

theorem progressionSegment00011_2_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 10201 9686 448 480 :=
  by simpa [progressionSegment00011_2_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00011_2_0003Check

def progressionSegment00011_2_0004Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 123444) (.leaf 123708)) (.node .skip (.leaf 124216))) (.node (.node (.leaf 124462) (.leaf 124724)) (.node (.leaf 124985) (.leaf 125239))))

theorem progressionSegment00011_2_0004Check :
    progressionSegment00011_2_0004Tree.check indexedMarker 10201 9686 480 = true :=
  by decide

theorem progressionSegment00011_2_0004 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 10201 9686 480 488 :=
  by simpa [progressionSegment00011_2_0004Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00011_2_0004Check

def progressionSegment00011_2_0005Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 125494) (.leaf 125754))

theorem progressionSegment00011_2_0005Check :
    progressionSegment00011_2_0005Tree.check indexedMarker 10201 9686 488 = true :=
  by decide

theorem progressionSegment00011_2_0005 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 10201 9686 488 490 :=
  by simpa [progressionSegment00011_2_0005Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00011_2_0005Check

def progressionSegment00012_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node (.node (.leaf 153) .skip) (.node (.leaf 745) (.leaf 1053))) (.node (.node (.leaf 1351) (.leaf 1642)) (.node (.leaf 1942) (.leaf 2245)))) (.node (.node (.node (.leaf 2541) (.leaf 2846)) (.node (.leaf 3146) (.leaf 3444))) (.node (.node (.leaf 3744) (.leaf 4041)) (.node (.leaf 4346) (.leaf 4651))))) (.node (.node (.node (.node (.leaf 4948) (.leaf 5253)) (.node (.leaf 5542) (.leaf 5841))) (.node (.node .skip (.leaf 6436)) (.node (.leaf 6744) (.leaf 7034)))) (.node (.node (.node (.leaf 7332) (.leaf 7630)) (.node .skip (.leaf 8227))) (.node (.node (.leaf 8523) (.leaf 8822)) (.node (.leaf 9116) (.leaf 9424)))))) (.node (.node (.node (.node (.node (.leaf 9722) (.leaf 10018)) (.node (.leaf 10322) (.leaf 10619))) (.node (.node (.leaf 10923) (.leaf 11215)) (.node (.leaf 11522) (.leaf 11824)))) (.node (.node (.node (.leaf 12122) (.leaf 12411)) (.node (.leaf 12707) (.leaf 13009))) (.node (.node (.leaf 13308) .skip) (.node (.leaf 13905) (.leaf 14207))))) (.node (.node (.node (.node (.leaf 14505) (.leaf 14804)) (.node (.leaf 15105) .skip)) (.node (.node (.leaf 15699) (.leaf 15998)) (.node (.leaf 16298) (.leaf 16590)))) (.node (.node (.node (.leaf 16896) (.leaf 17197)) (.node (.leaf 17491) (.leaf 17787))) (.node (.node (.leaf 18086) (.leaf 18387)) (.node (.leaf 18686) (.leaf 18981))))))) (.node (.node (.node (.node (.node (.node (.leaf 19282) (.leaf 19578)) (.node (.leaf 19876) (.leaf 20174))) (.node (.node (.leaf 20475) (.leaf 20776)) (.node .skip (.leaf 21361)))) (.node (.node (.node (.leaf 21665) (.leaf 21958)) (.node (.leaf 22258) (.leaf 22565))) (.node (.node .skip (.leaf 23158)) (.node (.leaf 23459) (.leaf 23753))))) (.node (.node (.node (.node (.leaf 24055) (.leaf 24357)) (.node (.leaf 24663) (.leaf 24948))) (.node (.node (.leaf 25258) (.leaf 25555)) (.node (.leaf 25851) (.leaf 26150)))) (.node (.node (.node (.leaf 26456) (.leaf 26754)) (.node (.leaf 27055) (.leaf 27355))) (.node (.node (.leaf 27658) (.leaf 27957)) (.node (.leaf 28257) .skip))))) (.node (.node (.node (.node (.node (.leaf 28851) (.leaf 29151)) (.node (.leaf 29449) (.leaf 29747))) (.node (.node (.leaf 30049) .skip) (.node (.leaf 30642) (.leaf 30936)))) (.node (.node (.node (.leaf 31234) (.leaf 31534)) (.node (.leaf 31831) (.leaf 32137))) (.node (.node (.leaf 32436) (.leaf 32745)) (.node (.leaf 33041) (.leaf 33331))))) (.node (.node (.node (.node (.leaf 33636) (.leaf 33932)) (.node (.leaf 34236) (.leaf 34524))) (.node (.node (.leaf 34831) (.leaf 35128)) (.node (.leaf 35426) (.leaf 35720)))) (.node (.node (.node .skip (.leaf 36325)) (.node (.leaf 36622) (.leaf 36922))) (.node (.node (.leaf 37219) (.leaf 37516)) (.node .skip (.leaf 38115)))))))) (.node (.node (.node (.node (.node (.node (.node (.leaf 38411) (.leaf 38706)) (.node (.leaf 39011) (.leaf 39311))) (.node (.node (.leaf 39612) (.leaf 39915)) (.node (.leaf 40220) (.leaf 40521)))) (.node (.node (.node (.leaf 40812) (.leaf 41116)) (.node (.leaf 41415) (.leaf 41706))) (.node (.node (.leaf 42017) (.leaf 42315)) (.node (.leaf 42609) (.leaf 42906))))) (.node (.node (.node (.node (.leaf 43210) .skip) (.node (.leaf 43806) (.leaf 44108))) (.node (.node (.leaf 44403) (.leaf 44703)) (.node (.leaf 45008) .skip))) (.node (.node (.node (.leaf 45601) (.leaf 45907)) (.node (.leaf 46203) (.leaf 46499))) (.node (.node (.leaf 46797) (.leaf 47097)) (.node (.leaf 47390) (.leaf 47684)))))) (.node (.node (.node (.node (.node (.leaf 47986) (.leaf 48281)) (.node (.leaf 48578) (.leaf 48879))) (.node (.node (.leaf 49176) (.leaf 49471)) (.node (.leaf 49771) (.leaf 50078)))) (.node (.node (.node (.leaf 50375) (.leaf 50672)) (.node .skip (.leaf 51270))) (.node (.node (.leaf 51565) (.leaf 51864)) (.node (.leaf 52167) (.leaf 52461))))) (.node (.node (.node (.node .skip (.leaf 53044)) (.node (.leaf 53348) (.leaf 53644))) (.node (.node (.leaf 53944) (.leaf 54240)) (.node (.leaf 54536) (.leaf 54843)))) (.node (.node (.node (.leaf 55139) (.leaf 55441)) (.node (.leaf 55737) (.leaf 56037))) (.node (.node (.leaf 56343) (.leaf 56638)) (.node (.leaf 56939) (.leaf 57241))))))) (.node (.node (.node (.node (.node (.node (.leaf 57544) (.leaf 57837)) (.node (.leaf 58147) .skip)) (.node (.node (.leaf 58733) (.leaf 59032)) (.node (.leaf 59330) (.leaf 59628)))) (.node (.node (.node (.leaf 59936) .skip) (.node (.leaf 60520) (.leaf 60827))) (.node (.node (.leaf 61128) (.leaf 61423)) (.node (.leaf 61724) (.leaf 62015))))) (.node (.node (.node (.node (.leaf 62321) (.leaf 62620)) (.node (.leaf 62928) (.leaf 63221))) (.node (.node (.leaf 63518) (.leaf 63823)) (.node (.leaf 64114) (.leaf 64421)))) (.node (.node (.node (.leaf 64720) (.leaf 65026)) (.node (.leaf 65317) (.leaf 65615))) (.node (.node .skip (.leaf 66209)) (.node (.leaf 66514) (.leaf 66817)))))) (.node (.node (.node (.node (.node (.leaf 67110) (.leaf 67404)) (.node .skip (.leaf 68010))) (.node (.node (.leaf 68314) (.leaf 68612)) (.node (.leaf 68908) (.leaf 69209)))) (.node (.node (.node (.leaf 69502) (.leaf 69807)) (.node (.leaf 70103) (.leaf 70392))) (.node (.node (.leaf 70697) (.leaf 70991)) (.node (.leaf 71288) (.leaf 71586))))) (.node (.node (.node (.node (.leaf 71891) (.leaf 72190)) (.node (.leaf 72490) (.leaf 72790))) (.node (.node (.leaf 73093) .skip) (.node (.leaf 73689) (.leaf 73987)))) (.node (.node (.node (.leaf 74288) (.leaf 74584)) (.node (.leaf 74887) .skip)) (.node (.node (.leaf 75492) (.leaf 75791)) (.node (.leaf 76086) (.leaf 76383)))))))))

theorem progressionSegment00012_1_0000Check :
    progressionSegment00012_1_0000Tree.check indexedMarker 11881 6137 0 = true :=
  by decide

theorem progressionSegment00012_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 11881 6137 0 256 :=
  by simpa [progressionSegment00012_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00012_1_0000Check

def progressionSegment00012_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node (.leaf 76685) (.leaf 76982)) (.node (.leaf 77285) (.leaf 77585))) (.node (.node (.leaf 77874) (.leaf 78175)) (.node (.leaf 78478) (.leaf 78774)))) (.node (.node (.node (.leaf 79071) (.leaf 79375)) (.node (.leaf 79672) (.leaf 79969))) (.node (.node (.leaf 80272) (.leaf 80574)) (.node .skip (.leaf 81179))))) (.node (.node (.node (.node (.leaf 81474) (.leaf 81783)) (.node (.leaf 82077) (.leaf 82381))) (.node (.node .skip (.leaf 82974)) (.node (.leaf 83271) (.leaf 83570)))) (.node (.node (.node (.leaf 83867) (.leaf 84172)) (.node (.leaf 84469) (.leaf 84765))) (.node (.node (.leaf 85069) (.leaf 85365)) (.node (.leaf 85671) (.leaf 85964)))))) (.node (.node (.node (.node (.node (.leaf 86259) (.leaf 86562)) (.node (.leaf 86862) (.leaf 87164))) (.node (.node (.leaf 87459) (.leaf 87764)) (.node (.leaf 88059) .skip))) (.node (.node (.node (.leaf 88648) (.leaf 88946)) (.node (.leaf 89240) (.leaf 89549))) (.node (.node (.leaf 89847) .skip) (.node (.leaf 90444) (.leaf 90734))))) (.node (.node (.node (.node (.leaf 91038) (.leaf 91332)) (.node (.leaf 91638) (.leaf 91934))) (.node (.node (.leaf 92233) (.leaf 92527)) (.node (.leaf 92827) (.leaf 93126)))) (.node (.node (.node (.leaf 93436) (.leaf 93728)) (.node (.leaf 94034) (.leaf 94325))) (.node (.node (.leaf 94626) (.leaf 94921)) (.node (.leaf 95224) (.leaf 95522))))))) (.node (.node (.node (.node (.node (.node .skip (.leaf 96112)) (.node (.leaf 96415) (.leaf 96719))) (.node (.node (.leaf 97011) (.leaf 97306)) (.node .skip (.leaf 97908)))) (.node (.node (.node (.leaf 98206) (.leaf 98498)) (.node (.leaf 98797) (.leaf 99103))) (.node (.node (.leaf 99401) (.leaf 99697)) (.node (.leaf 100000) (.leaf 100299))))) (.node (.node (.node (.node (.leaf 100600) (.leaf 100889)) (.node (.leaf 101183) (.leaf 101494))) (.node (.node (.leaf 101791) (.leaf 102083)) (.node (.leaf 102382) (.leaf 102685)))) (.node (.node (.node (.leaf 102988) .skip) (.node (.leaf 103591) (.leaf 103885))) (.node (.node (.leaf 104183) (.leaf 104479)) (.node (.leaf 104779) .skip))))) (.node (.node (.node (.node (.node (.leaf 105381) (.leaf 105681)) (.node (.leaf 105978) (.leaf 106275))) (.node (.node (.leaf 106575) (.leaf 106869)) (.node (.leaf 107172) (.leaf 107478)))) (.node (.node (.node (.leaf 107773) (.leaf 108072)) (.node (.leaf 108370) (.leaf 108666))) (.node (.node (.leaf 108972) (.leaf 109273)) (.node (.leaf 109571) (.leaf 109867))))) (.node (.node (.node (.node (.leaf 110164) (.leaf 110468)) (.node .skip (.leaf 111067))) (.node (.node (.leaf 111374) (.leaf 111663)) (.node (.leaf 111965) (.leaf 112266)))) (.node (.node (.node .skip (.leaf 112861)) (.node (.leaf 113156) (.leaf 113454))) (.node (.node (.leaf 113750) (.leaf 114043)) (.node (.leaf 114343) (.leaf 114645))))))))

theorem progressionSegment00012_1_0001Check :
    progressionSegment00012_1_0001Tree.check indexedMarker 11881 6137 256 = true :=
  by decide

theorem progressionSegment00012_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 11881 6137 256 384 :=
  by simpa [progressionSegment00012_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00012_1_0001Check

def progressionSegment00012_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 114939) (.leaf 115244)) (.node (.leaf 115553) (.leaf 115851))) (.node (.node (.leaf 116144) (.leaf 116448)) (.node (.leaf 116740) (.leaf 117037)))) (.node (.node (.node (.leaf 117350) (.leaf 117641)) (.node (.leaf 117934) .skip)) (.node (.node (.leaf 118535) (.leaf 118833)) (.node (.leaf 119126) (.leaf 119430))))) (.node (.node (.node (.node (.leaf 119737) .skip) (.node (.leaf 120324) (.leaf 120623))) (.node (.node (.leaf 120927) (.leaf 121226)) (.node (.leaf 121535) (.leaf 121830)))) (.node (.node (.node (.leaf 122128) (.leaf 122427)) (.node (.leaf 122723) (.leaf 123021))) (.node (.node (.leaf 123318) (.leaf 123621)) (.node (.leaf 123919) (.leaf 124214))))))

theorem progressionSegment00012_1_0002Check :
    progressionSegment00012_1_0002Tree.check indexedMarker 11881 6137 384 = true :=
  by decide

theorem progressionSegment00012_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 11881 6137 384 416 :=
  by simpa [progressionSegment00012_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00012_1_0002Check

def progressionSegment00012_1_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 124504) (.leaf 124807)) (.node (.leaf 125116) (.leaf 125408)))

theorem progressionSegment00012_1_0003Check :
    progressionSegment00012_1_0003Tree.check indexedMarker 11881 6137 416 = true :=
  by decide

theorem progressionSegment00012_1_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 11881 6137 416 420 :=
  by simpa [progressionSegment00012_1_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00012_1_0003Check

def progressionSegment00012_1_0004Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  .skip

theorem progressionSegment00012_1_0004Check :
    progressionSegment00012_1_0004Tree.check indexedMarker 11881 6137 420 = true :=
  by decide

theorem progressionSegment00012_1_0004 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 11881 6137 420 421 :=
  by simpa [progressionSegment00012_1_0004Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00012_1_0004Check

def progressionSegment00012_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node (.node (.leaf 143) (.leaf 439)) (.node (.leaf 736) (.leaf 1042))) (.node (.node .skip (.leaf 1633)) (.node (.leaf 1933) (.leaf 2234)))) (.node (.node (.node (.leaf 2529) (.leaf 2833)) (.node (.leaf 3135) (.leaf 3433))) (.node (.node (.leaf 3735) (.leaf 4033)) (.node (.leaf 4336) (.leaf 4638))))) (.node (.node (.node (.node (.leaf 4935) (.leaf 5242)) (.node (.leaf 5533) (.leaf 5831))) (.node (.node (.leaf 6125) (.leaf 6425)) (.node (.leaf 6732) .skip))) (.node (.node (.node (.leaf 7319) (.leaf 7616)) (.node (.leaf 7921) (.leaf 8218))) (.node (.node (.leaf 8516) .skip) (.node (.leaf 9108) (.leaf 9413)))))) (.node (.node (.node (.node (.node (.leaf 9710) (.leaf 10007)) (.node (.leaf 10310) (.leaf 10607))) (.node (.node (.leaf 10914) (.leaf 11205)) (.node (.leaf 11508) (.leaf 11813)))) (.node (.node (.node (.leaf 12113) (.leaf 12401)) (.node (.leaf 12697) (.leaf 13002))) (.node (.node (.leaf 13297) (.leaf 13596)) (.node (.leaf 13895) (.leaf 14195))))) (.node (.node (.node (.node .skip (.leaf 14796)) (.node (.leaf 15098) (.leaf 15390))) (.node (.node (.leaf 15690) (.leaf 15986)) (.node .skip (.leaf 16578)))) (.node (.node (.node (.leaf 16886) (.leaf 17187)) (.node (.leaf 17483) (.leaf 17782))) (.node (.node (.leaf 18073) (.leaf 18375)) (.node (.leaf 18675) (.leaf 18968))))))) (.node (.node (.node (.node (.node (.node (.leaf 19268) (.leaf 19570)) (.node (.leaf 19868) (.leaf 20165))) (.node (.node (.leaf 20466) (.leaf 20764)) (.node (.leaf 21058) (.leaf 21351)))) (.node (.node (.node (.leaf 21656) .skip) (.node (.leaf 22247) (.leaf 22559))) (.node (.node (.leaf 22853) (.leaf 23146)) (.node (.leaf 23447) .skip)))) (.node (.node (.node (.node (.leaf 24043) (.leaf 24346)) (.node (.leaf 24653) (.leaf 24937))) (.node (.node (.leaf 25245) (.leaf 25543)) (.node (.leaf 25840) (.leaf 26139)))) (.node (.node (.node (.leaf 26444) (.leaf 26745)) (.node (.leaf 27045) (.leaf 27343))) (.node (.node (.leaf 27646) (.leaf 27947)) (.node (.leaf 28243) (.leaf 28544)))))) (.node (.node (.node (.node (.node (.leaf 28840) (.leaf 29138)) (.node .skip (.leaf 29734))) (.node (.node (.leaf 30036) (.leaf 30332)) (.node (.leaf 30633) (.leaf 30928)))) (.node (.node (.node .skip (.leaf 31526)) (.node (.leaf 31823) (.leaf 32126))) (.node (.node (.leaf 32425) (.leaf 32735)) (.node (.leaf 33028) (.leaf 33322))))) (.node (.node (.node (.node (.leaf 33625) (.leaf 33923)) (.node (.leaf 34227) (.leaf 34515))) (.node (.node (.leaf 34818) (.leaf 35116)) (.node (.leaf 35416) (.leaf 35709)))) (.node (.node (.node (.leaf 36007) (.leaf 36316)) (.node (.leaf 36613) .skip)) (.node (.node (.leaf 37208) (.leaf 37505)) (.node (.leaf 37802) (.leaf 38103)))))))) (.node (.node (.node (.node (.node (.node (.node (.leaf 38400) .skip) (.node (.leaf 39004) (.leaf 39300))) (.node (.node (.leaf 39603) (.leaf 39903)) (.node (.leaf 40208) (.leaf 40511)))) (.node (.node (.node (.leaf 40802) (.leaf 41106)) (.node (.leaf 41402) (.leaf 41700))) (.node (.node (.leaf 42007) (.leaf 42303)) (.node (.leaf 42598) (.leaf 42894))))) (.node (.node (.node (.node (.leaf 43197) (.leaf 43497)) (.node (.leaf 43798) (.leaf 44093))) (.node (.node .skip (.leaf 44694)) (.node (.leaf 44997) (.leaf 45293)))) (.node (.node (.node (.leaf 45590) (.leaf 45896)) (.node .skip (.leaf 46490))) (.node (.node (.leaf 46787) (.leaf 47082)) (.node (.leaf 47380) (.leaf 47675)))))) (.node (.node (.node (.node (.node (.leaf 47973) (.leaf 48272)) (.node (.leaf 48570) (.leaf 48867))) (.node (.node (.leaf 49165) (.leaf 49462)) (.node (.leaf 49759) (.leaf 50067)))) (.node (.node (.node (.leaf 50367) (.leaf 50663)) (.node (.leaf 50959) (.leaf 51259))) (.node (.node (.leaf 51551) .skip) (.node (.leaf 52157) (.leaf 52452))))) (.node (.node (.node (.node (.leaf 52750) (.leaf 53032)) (.node (.leaf 53340) .skip)) (.node (.node (.leaf 53932) (.leaf 54227)) (.node (.leaf 54522) (.leaf 54832)))) (.node (.node (.node (.leaf 55129) (.leaf 55432)) (.node (.leaf 55727) (.leaf 56027))) (.node (.node (.leaf 56332) (.leaf 56628)) (.node (.leaf 56928) (.leaf 57230))))))) (.node (.node (.node (.node (.node (.node (.leaf 57536) (.leaf 57829)) (.node (.leaf 58137) (.leaf 58428))) (.node (.node (.leaf 58722) (.leaf 59020)) (.node .skip (.leaf 59619)))) (.node (.node (.node (.leaf 59924) (.leaf 60213)) (.node (.leaf 60511) (.leaf 60813))) (.node (.node .skip (.leaf 61409)) (.node (.leaf 61710) (.leaf 62004))))) (.node (.node (.node (.node (.leaf 62313) (.leaf 62609)) (.node (.leaf 62916) (.leaf 63212))) (.node (.node (.leaf 63506) (.leaf 63812)) (.node (.leaf 64105) (.leaf 64412)))) (.node (.node (.node (.leaf 64708) (.leaf 65016)) (.node (.leaf 65305) (.leaf 65603))) (.node (.node (.leaf 65904) (.leaf 66198)) (.node (.leaf 66505) .skip))))) (.node (.node (.node (.node (.node (.leaf 67103) (.leaf 67392)) (.node (.leaf 67701) (.leaf 67997))) (.node (.node (.leaf 68302) .skip) (.node (.leaf 68898) (.leaf 69197)))) (.node (.node (.node (.leaf 69491) (.leaf 69795)) (.node (.leaf 70091) (.leaf 70379))) (.node (.node (.leaf 70685) (.leaf 70980)) (.node (.leaf 71280) (.leaf 71575))))) (.node (.node (.node (.node (.leaf 71881) (.leaf 72180)) (.node (.leaf 72482) (.leaf 72776))) (.node (.node (.leaf 73079) (.leaf 73380)) (.node (.leaf 73678) (.leaf 73975)))) (.node (.node (.node .skip (.leaf 74575)) (.node (.leaf 74874) (.leaf 75174))) (.node (.node (.leaf 75481) (.leaf 75775)) (.node .skip (.leaf 76375)))))))))

theorem progressionSegment00012_2_0000Check :
    progressionSegment00012_2_0000Tree.check indexedMarker 11881 5744 0 = true :=
  by decide

theorem progressionSegment00012_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 11881 5744 0 256 :=
  by simpa [progressionSegment00012_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00012_2_0000Check

def progressionSegment00012_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node (.leaf 76677) (.leaf 76971)) (.node (.leaf 77276) (.leaf 77573))) (.node (.node (.leaf 77860) (.leaf 78164)) (.node (.leaf 78467) (.leaf 78765)))) (.node (.node (.node (.leaf 79061) (.leaf 79367)) (.node (.leaf 79660) (.leaf 79957))) (.node (.node (.leaf 80261) (.leaf 80563)) (.node (.leaf 80872) (.leaf 81171))))) (.node (.node (.node (.node (.leaf 81466) .skip) (.node (.leaf 82069) (.leaf 82370))) (.node (.node (.leaf 82668) (.leaf 82965)) (.node (.leaf 83259) .skip))) (.node (.node (.node (.leaf 83858) (.leaf 84160)) (.node (.leaf 84456) (.leaf 84753))) (.node (.node (.leaf 85061) (.leaf 85356)) (.node (.leaf 85660) (.leaf 85956)))))) (.node (.node (.node (.node (.node (.leaf 86249) (.leaf 86549)) (.node (.leaf 86849) (.leaf 87152))) (.node (.node (.leaf 87447) (.leaf 87753)) (.node (.leaf 88051) (.leaf 88349)))) (.node (.node (.node (.leaf 88635) (.leaf 88935)) (.node .skip (.leaf 89536))) (.node (.node (.leaf 89837) (.leaf 90144)) (.node (.leaf 90437) (.leaf 90724))))) (.node (.node (.node (.node .skip (.leaf 91321)) (.node (.leaf 91625) (.leaf 91923))) (.node (.node (.leaf 92221) (.leaf 92516)) (.node (.leaf 92819) (.leaf 93119)))) (.node (.node (.node (.leaf 93422) (.leaf 93718)) (.node (.leaf 94022) (.leaf 94315))) (.node (.node (.leaf 94611) (.leaf 94911)) (.node (.leaf 95213) (.leaf 95509))))))) (.node (.node (.node (.node (.node (.node (.leaf 95810) (.leaf 96100)) (.node (.leaf 96402) .skip)) (.node (.node (.leaf 97001) (.leaf 97297)) (.node (.leaf 97595) (.leaf 97898)))) (.node (.node (.node (.leaf 98197) .skip) (.node (.leaf 98785) (.leaf 99092))) (.node (.node (.leaf 99391) (.leaf 99686)) (.node (.leaf 99987) (.leaf 100290))))) (.node (.node (.node (.node (.leaf 100588) (.leaf 100879)) (.node (.leaf 101172) (.leaf 101485))) (.node (.node (.leaf 101780) (.leaf 102075)) (.node (.leaf 102372) (.leaf 102672)))) (.node (.node (.node (.leaf 102977) (.leaf 103277)) (.node (.leaf 103579) (.leaf 103875))) (.node (.node .skip (.leaf 104466)) (.node (.leaf 104765) (.leaf 105068)))))) (.node (.node (.node (.node (.node (.leaf 105368) (.leaf 105668)) (.node .skip (.leaf 106267))) (.node (.node (.leaf 106564) (.leaf 106861)) (.node (.leaf 107162) (.leaf 107467)))) (.node (.node (.node (.leaf 107760) (.leaf 108060)) (.node (.leaf 108357) (.leaf 108655))) (.node (.node (.leaf 108963) (.leaf 109261)) (.node (.leaf 109560) (.leaf 109858))))) (.node (.node (.node (.node (.leaf 110152) (.leaf 110454)) (.node (.leaf 110757) (.leaf 111056))) (.node (.node (.leaf 111361) .skip) (.node (.leaf 111958) (.leaf 112256)))) (.node (.node (.node (.leaf 112551) (.leaf 112850)) (.node (.leaf 113143) .skip)) (.node (.node (.leaf 113740) (.leaf 114033)) (.node (.leaf 114333) (.leaf 114636))))))))

theorem progressionSegment00012_2_0001Check :
    progressionSegment00012_2_0001Tree.check indexedMarker 11881 5744 256 = true :=
  by decide

theorem progressionSegment00012_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 11881 5744 256 384 :=
  by simpa [progressionSegment00012_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00012_2_0001Check

def progressionSegment00012_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 114928) (.leaf 115235)) (.node (.leaf 115540) (.leaf 115842))) (.node (.node (.leaf 116131) (.leaf 116439)) (.node (.leaf 116730) (.leaf 117030)))) (.node (.node (.node (.leaf 117337) (.leaf 117629)) (.node (.leaf 117924) (.leaf 118229))) (.node (.node (.leaf 118525) (.leaf 118821)) (.node .skip (.leaf 119417))))) (.node (.node (.node (.node (.leaf 119725) (.leaf 120018)) (.node (.leaf 120311) (.leaf 120614))) (.node (.node .skip (.leaf 121216)) (.node (.leaf 121524) (.leaf 121817)))) (.node (.node (.node (.leaf 122115) (.leaf 122412)) (.node (.leaf 122714) (.leaf 123014))) (.node (.node (.leaf 123309) (.leaf 123611)) (.node (.leaf 123908) (.leaf 124199))))))

theorem progressionSegment00012_2_0002Check :
    progressionSegment00012_2_0002Tree.check indexedMarker 11881 5744 384 = true :=
  by decide

theorem progressionSegment00012_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 11881 5744 384 416 :=
  by simpa [progressionSegment00012_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00012_2_0002Check

def progressionSegment00012_2_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 124491) (.leaf 124796)) (.node (.leaf 125104) (.leaf 125402)))

theorem progressionSegment00012_2_0003Check :
    progressionSegment00012_2_0003Tree.check indexedMarker 11881 5744 416 = true :=
  by decide

theorem progressionSegment00012_2_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 11881 5744 416 420 :=
  by simpa [progressionSegment00012_2_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00012_2_0003Check

def progressionSegment00012_2_0004Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 125699)

theorem progressionSegment00012_2_0004Check :
    progressionSegment00012_2_0004Tree.check indexedMarker 11881 5744 420 = true :=
  by decide

theorem progressionSegment00012_2_0004 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 11881 5744 420 421 :=
  by simpa [progressionSegment00012_2_0004Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00012_2_0004Check

def progressionSegment00013_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node (.node (.leaf 278) (.leaf 591)) (.node (.leaf 919) (.leaf 1241))) (.node (.node (.leaf 1560) (.leaf 1881)) (.node (.leaf 2204) (.leaf 2519)))) (.node (.node (.node (.leaf 2849) (.leaf 3170)) (.node (.leaf 3498) .skip)) (.node (.node (.leaf 4144) (.leaf 4464)) (.node (.leaf 4782) (.leaf 5111))))) (.node (.node (.node (.node (.leaf 5432) .skip) (.node (.leaf 6063) (.leaf 6385))) (.node (.node (.leaf 6713) (.leaf 7029)) (.node (.leaf 7352) (.leaf 7668)))) (.node (.node (.node (.leaf 7995) (.leaf 8312)) (.node (.leaf 8631) (.leaf 8951))) (.node (.node (.leaf 9277) (.leaf 9597)) (.node (.leaf 9917) (.leaf 10236)))))) (.node (.node (.node (.node (.node (.leaf 10557) (.leaf 10888)) (.node (.leaf 11201) (.leaf 11529))) (.node (.node .skip (.leaf 12173)) (.node (.leaf 12492) (.leaf 12805)))) (.node (.node (.node (.leaf 13133) (.leaf 13448)) (.node .skip (.leaf 14093))) (.node (.node (.leaf 14414) (.leaf 14740)) (.node (.leaf 15064) (.leaf 15378))))) (.node (.node (.node (.node (.leaf 15700) (.leaf 16023)) (.node (.leaf 16340) (.leaf 16662))) (.node (.node (.leaf 16985) (.leaf 17304)) (.node (.leaf 17619) (.leaf 17948)))) (.node (.node (.node (.leaf 18268) (.leaf 18585)) (.node (.leaf 18905) (.leaf 19226))) (.node (.node (.leaf 19547) .skip) (.node (.leaf 20190) (.leaf 20512))))))) (.node (.node (.node (.node (.node (.node (.leaf 20836) (.leaf 21149)) (.node (.leaf 21467) .skip)) (.node (.node (.leaf 22110) (.leaf 22433)) (.node (.leaf 22752) (.leaf 23078)))) (.node (.node (.node (.leaf 23397) (.leaf 23712)) (.node (.leaf 24037) (.leaf 24364))) (.node (.node (.leaf 24690) (.leaf 25002)) (.node (.leaf 25327) (.leaf 25649))))) (.node (.node (.node (.node (.leaf 25968) (.leaf 26297)) (.node (.leaf 26614) (.leaf 26943))) (.node (.node (.leaf 27257) (.leaf 27582)) (.node .skip (.leaf 28230)))) (.node (.node (.node (.leaf 28550) (.leaf 28874)) (.node (.leaf 29188) (.leaf 29513))) (.node (.node .skip (.leaf 30157)) (.node (.leaf 30474) (.leaf 30792)))))) (.node (.node (.node (.node (.node (.leaf 31112) (.leaf 31434)) (.node (.leaf 31755) (.leaf 32078))) (.node (.node (.leaf 32398) (.leaf 32733)) (.node (.leaf 33052) (.leaf 33369)))) (.node (.node (.node (.leaf 33694) (.leaf 34015)) (.node (.leaf 34327) (.leaf 34645))) (.node (.node (.leaf 34974) (.leaf 35297)) (.node (.leaf 35606) .skip)))) (.node (.node (.node (.node (.leaf 36257) (.leaf 36578)) (.node (.leaf 36902) (.leaf 37221))) (.node (.node (.leaf 37541) .skip) (.node (.leaf 38182) (.leaf 38504)))) (.node (.node (.node (.leaf 38826) (.leaf 39147)) (.node (.leaf 39469) (.leaf 39793))) (.node (.node (.leaf 40122) (.leaf 40448)) (.node (.leaf 40761) (.leaf 41085)))))))) (.node (.node (.node (.node (.node (.node (.node (.leaf 41408) (.leaf 41728)) (.node (.leaf 42055) (.leaf 42377))) (.node (.node (.leaf 42697) (.leaf 43012)) (.node (.leaf 43336) (.leaf 43661)))) (.node (.node (.node .skip (.leaf 44304)) (.node (.leaf 44621) (.leaf 44948))) (.node (.node (.leaf 45266) (.leaf 45585)) (.node .skip (.leaf 46231))))) (.node (.node (.node (.node (.leaf 46555) (.leaf 46869)) (.node (.leaf 47192) (.leaf 47512))) (.node (.node (.leaf 47831) (.leaf 48151)) (.node (.leaf 48462) (.leaf 48786)))) (.node (.node (.node (.leaf 49109) (.leaf 49427)) (.node (.leaf 49746) (.leaf 50077))) (.node (.node (.leaf 50396) (.leaf 50713)) (.node (.leaf 51038) (.leaf 51359)))))) (.node (.node (.node (.node (.node (.leaf 51675) .skip) (.node (.leaf 52316) (.leaf 52639))) (.node (.node (.leaf 52948) (.leaf 53273)) (.node (.leaf 53584) .skip))) (.node (.node (.node (.leaf 54228) (.leaf 54550)) (.node (.leaf 54879) (.leaf 55200))) (.node (.node (.leaf 55523) (.leaf 55837)) (.node (.leaf 56166) (.leaf 56489))))) (.node (.node (.node (.node (.leaf 56808) (.leaf 57130)) (.node (.leaf 57458) (.leaf 57778))) (.node (.node (.leaf 58108) (.leaf 58422)) (.node (.leaf 58740) (.leaf 59056)))) (.node (.node (.node (.leaf 59383) (.leaf 59702)) (.node .skip (.leaf 60340))) (.node (.node (.leaf 60659) (.leaf 60985)) (.node (.leaf 61306) (.leaf 61629))))))) (.node (.node (.node (.node (.node (.node .skip (.leaf 62276)) (.node (.leaf 62589) (.leaf 62923))) (.node (.node (.leaf 63241) (.leaf 63562)) (.node (.leaf 63885) (.leaf 64201)))) (.node (.node (.node (.leaf 64531) (.leaf 64855)) (.node (.leaf 65170) (.leaf 65500))) (.node (.node (.leaf 65810) (.leaf 66135)) (.node (.leaf 66456) (.leaf 66786))))) (.node (.node (.node (.node (.leaf 67101) (.leaf 67416)) (.node (.leaf 67742) .skip)) (.node (.node (.leaf 68388) (.leaf 68713)) (.node (.leaf 69032) (.leaf 69350)))) (.node (.node (.node (.leaf 69667) .skip) (.node (.leaf 70303) (.leaf 70623))) (.node (.node (.leaf 70944) (.leaf 71267)) (.node (.leaf 71589) (.leaf 71917)))))) (.node (.node (.node (.node (.node (.leaf 72243) (.leaf 72556)) (.node (.leaf 72878) (.leaf 73207))) (.node (.node (.leaf 73531) (.leaf 73845)) (.node (.leaf 74166) (.leaf 74492)))) (.node (.node (.node (.leaf 74811) (.leaf 75133)) (.node (.leaf 75464) (.leaf 75782))) (.node (.node .skip (.leaf 76422)) (.node (.leaf 76746) (.leaf 77066))))) (.node (.node (.node (.node (.leaf 77387) (.leaf 77709)) (.node .skip (.leaf 78347))) (.node (.node (.leaf 78668) (.leaf 78986)) (.node (.leaf 79314) (.leaf 79634)))) (.node (.node (.node (.leaf 79953) (.leaf 80280)) (.node (.leaf 80607) (.leaf 80937))) (.node (.node (.leaf 81252) (.leaf 81572)) (.node (.leaf 81900) (.leaf 82214)))))))))

theorem progressionSegment00013_1_0000Check :
    progressionSegment00013_1_0000Tree.check indexedMarker 12769 11059 0 = true :=
  by decide

theorem progressionSegment00013_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 12769 11059 0 256 :=
  by simpa [progressionSegment00013_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00013_1_0000Check

def progressionSegment00013_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node (.leaf 82545) (.leaf 82867)) (.node (.leaf 83179) (.leaf 83498))) (.node (.node (.leaf 83822) .skip) (.node (.leaf 84468) (.leaf 84789)))) (.node (.node (.node (.leaf 85112) (.leaf 85434)) (.node (.leaf 85756) .skip)) (.node (.node (.leaf 86392) (.leaf 86716)) (.node (.leaf 87045) (.leaf 87363))))) (.node (.node (.node (.node (.leaf 87684) (.leaf 88006)) (.node (.leaf 88330) (.leaf 88636))) (.node (.node (.leaf 88958) (.leaf 89273)) (.node (.leaf 89612) (.leaf 89932)))) (.node (.node (.node (.leaf 90253) (.leaf 90563)) (.node (.leaf 90883) (.leaf 91205))) (.node (.node (.leaf 91529) (.leaf 91848)) (.node .skip (.leaf 92488)))))) (.node (.node (.node (.node (.node (.leaf 92810) (.leaf 93134)) (.node (.leaf 93463) (.leaf 93774))) (.node (.node .skip (.leaf 94420)) (.node (.leaf 94740) (.leaf 95063)))) (.node (.node (.node (.leaf 95382) (.leaf 95700)) (.node (.leaf 96014) (.leaf 96341))) (.node (.node (.leaf 96670) (.leaf 96984)) (.node (.leaf 97301) (.leaf 97622))))) (.node (.node (.node (.node (.leaf 97947) (.leaf 98268)) (.node (.leaf 98589) (.leaf 98905))) (.node (.node (.leaf 99226) (.leaf 99547)) (.node (.leaf 99875) .skip))) (.node (.node (.node (.leaf 100523) (.leaf 100835)) (.node (.leaf 101144) (.leaf 101482))) (.node (.node (.leaf 101801) .skip) (.node (.leaf 102442) (.leaf 102762))))))) (.node (.node (.node (.node (.node (.node (.leaf 103086) (.leaf 103409)) (.node (.leaf 103731) (.leaf 104054))) (.node (.node (.leaf 104367) (.leaf 104688)) (.node (.leaf 105013) (.leaf 105339)))) (.node (.node (.node (.leaf 105658) (.leaf 105979)) (.node (.leaf 106299) (.leaf 106622))) (.node (.node (.leaf 106935) (.leaf 107264)) (.node (.leaf 107591) (.leaf 107908))))) (.node (.node (.node (.node .skip (.leaf 108541)) (.node (.leaf 108871) (.leaf 109198))) (.node (.node (.leaf 109514) (.leaf 109836)) (.node .skip (.leaf 110486)))) (.node (.node (.node (.leaf 110805) (.leaf 111123)) (.node (.leaf 111455) (.leaf 111768))) (.node (.node (.leaf 112092) (.leaf 112413)) (.node (.leaf 112733) (.leaf 113050)))))) (.node (.node (.node (.node (.node (.leaf 113369) (.leaf 113686)) (.node (.leaf 114007) (.leaf 114327))) (.node (.node (.leaf 114654) (.leaf 114970)) (.node (.leaf 115299) (.leaf 115624)))) (.node (.node (.node (.leaf 115943) .skip) (.node (.leaf 116589) (.leaf 116903))) (.node (.node (.leaf 117225) (.leaf 117550)) (.node (.leaf 117862) .skip)))) (.node (.node (.node (.node (.leaf 118507) (.leaf 118831)) (.node (.leaf 119146) (.leaf 119477))) (.node (.node (.leaf 119802) (.leaf 120119)) (.node (.leaf 120431) (.leaf 120754)))) (.node (.node (.node (.leaf 121085) (.leaf 121410)) (.node (.leaf 121733) (.leaf 122045))) (.node (.node (.leaf 122367) (.leaf 122689)) (.node (.leaf 123013) (.leaf 123330))))))))

theorem progressionSegment00013_1_0001Check :
    progressionSegment00013_1_0001Tree.check indexedMarker 12769 11059 256 = true :=
  by decide

theorem progressionSegment00013_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 12769 11059 256 384 :=
  by simpa [progressionSegment00013_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00013_1_0001Check

def progressionSegment00013_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 123655) (.leaf 123976)) (.node .skip (.leaf 124607)))

theorem progressionSegment00013_1_0002Check :
    progressionSegment00013_1_0002Tree.check indexedMarker 12769 11059 384 = true :=
  by decide

theorem progressionSegment00013_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 12769 11059 384 388 :=
  by simpa [progressionSegment00013_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00013_1_0002Check

def progressionSegment00013_1_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 124929) (.leaf 125259))

theorem progressionSegment00013_1_0003Check :
    progressionSegment00013_1_0003Tree.check indexedMarker 12769 11059 388 = true :=
  by decide

theorem progressionSegment00013_1_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 12769 11059 388 390 :=
  by simpa [progressionSegment00013_1_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00013_1_0003Check

def progressionSegment00013_1_0004Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 125578)

theorem progressionSegment00013_1_0004Check :
    progressionSegment00013_1_0004Tree.check indexedMarker 12769 11059 390 = true :=
  by decide

theorem progressionSegment00013_1_0004 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 12769 11059 390 391 :=
  by simpa [progressionSegment00013_1_0004Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00013_1_0004Check

end Erdos848.GeneratedLowDiagonalCoverage
