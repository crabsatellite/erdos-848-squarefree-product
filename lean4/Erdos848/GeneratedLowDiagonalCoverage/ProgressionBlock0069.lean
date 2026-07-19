import Erdos848.GeneratedLowDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedLowDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00017_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node (.leaf 329) (.leaf 1088)) (.node (.leaf 1838) (.leaf 2588))) (.node (.node .skip (.leaf 4105)) (.node (.leaf 4857) (.leaf 5611)))) (.node (.node (.node (.leaf 6361) (.leaf 7112)) (.node (.leaf 7869) (.leaf 8616))) (.node (.node (.leaf 9372) .skip) (.node (.leaf 10881) (.leaf 11638))))) (.node (.node (.node (.node (.leaf 12385) (.leaf 13139)) (.node (.leaf 13889) (.leaf 14642))) (.node (.node (.leaf 15394) (.leaf 16144)) (.node (.leaf 16901) (.leaf 17648)))) (.node (.node (.node (.leaf 18402) (.leaf 19150)) (.node (.leaf 19904) (.leaf 20659))) (.node (.node (.leaf 21398) .skip) (.node (.leaf 22911) (.leaf 23660)))))) (.node (.node (.node (.node (.node (.leaf 24423) (.leaf 25170)) (.node (.leaf 25926) (.leaf 26684))) (.node (.node (.leaf 27440) (.leaf 28192)) (.node .skip (.leaf 29698)))) (.node (.node (.node (.leaf 30451) (.leaf 31196)) (.node (.leaf 31951) (.leaf 32717))) (.node (.node (.leaf 33461) (.leaf 34223)) (.node (.leaf 34970) (.leaf 35719))))) (.node (.node (.node (.node (.leaf 36476) (.leaf 37229)) (.node (.leaf 37979) (.leaf 38728))) (.node (.node (.leaf 39485) (.leaf 40251)) (.node .skip (.leaf 41755)))) (.node (.node (.node (.leaf 42513) (.leaf 43264)) (.node (.leaf 44018) (.leaf 44773))) (.node (.node (.leaf 45519) (.leaf 46280)) (.node (.leaf 47028) .skip)))))) (.node (.node (.node (.node (.node (.node (.leaf 48522) (.leaf 49274)) (.node (.leaf 50031) (.leaf 50784))) (.node (.node (.leaf 51532) (.leaf 52286)) (.node (.leaf 53022) (.leaf 53781)))) (.node (.node (.node (.leaf 54527) (.leaf 55285)) (.node (.leaf 56039) (.leaf 56793))) (.node (.node (.leaf 57562) (.leaf 58314)) (.node (.leaf 59055) .skip)))) (.node (.node (.node (.node (.leaf 60556) (.leaf 61315)) (.node (.leaf 62067) (.leaf 62823))) (.node (.node (.leaf 63582) (.leaf 64337)) (.node (.leaf 65096) (.leaf 65837)))) (.node (.node (.node .skip (.leaf 67343)) (.node (.leaf 68107) (.leaf 68859))) (.node (.node (.leaf 69608) (.leaf 70352)) (.node (.leaf 71108) (.leaf 71862)))))) (.node (.node (.node (.node (.node (.leaf 72609) (.leaf 73375)) (.node (.leaf 74121) (.leaf 74880))) (.node (.node (.leaf 75645) (.leaf 76392)) (.node (.leaf 77150) (.leaf 77891)))) (.node (.node (.node .skip (.leaf 79406)) (.node (.leaf 80159) (.leaf 80923))) (.node (.node (.leaf 81679) (.leaf 82432)) (.node (.leaf 83178) (.leaf 83935))))) (.node (.node (.node (.node (.leaf 84687) .skip) (.node (.leaf 86190) (.leaf 86946))) (.node (.node (.leaf 87702) (.leaf 88451)) (.node (.leaf 89201) (.leaf 89958)))) (.node (.node (.node (.leaf 90702) (.leaf 91456)) (.node (.leaf 92205) (.leaf 92963))) (.node (.node (.leaf 93716) (.leaf 94471)) (.node (.leaf 95224) (.leaf 95965))))))))

theorem progressionSegment00017_2_0000Check :
    progressionSegment00017_2_0000Tree.check indexedMarker 29929 13241 0 = true :=
  by decide

theorem progressionSegment00017_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 29929 13241 0 128 :=
  by simpa [progressionSegment00017_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00017_2_0000Check

def progressionSegment00017_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 96730) .skip) (.node (.leaf 98230) (.leaf 98977))) (.node (.node (.leaf 99731) (.leaf 100493)) (.node (.leaf 101231) (.leaf 101987)))) (.node (.node (.node (.leaf 102743) (.leaf 103501)) (.node .skip (.leaf 105000))) (.node (.node (.leaf 105767) (.leaf 106510)) (.node (.leaf 107265) (.leaf 108016))))) (.node (.node (.node (.node (.leaf 108768) (.leaf 109525)) (.node (.leaf 110279) (.leaf 111036))) (.node (.node (.leaf 111788) (.leaf 112543)) (.node (.leaf 113286) (.leaf 114037)))) (.node (.node (.node (.leaf 114794) (.leaf 115557)) (.node .skip (.leaf 117055))) (.node (.node (.leaf 117808) (.leaf 118559)) (.node (.leaf 119310) (.leaf 120063))))))

theorem progressionSegment00017_2_0001Check :
    progressionSegment00017_2_0001Tree.check indexedMarker 29929 13241 128 = true :=
  by decide

theorem progressionSegment00017_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 29929 13241 128 160 :=
  by simpa [progressionSegment00017_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00017_2_0001Check

def progressionSegment00017_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 120820) (.leaf 121585)) (.node (.leaf 122327) .skip))

theorem progressionSegment00017_2_0002Check :
    progressionSegment00017_2_0002Tree.check indexedMarker 29929 13241 160 = true :=
  by decide

theorem progressionSegment00017_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 29929 13241 160 164 :=
  by simpa [progressionSegment00017_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00017_2_0002Check

def progressionSegment00017_2_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 123835) (.leaf 124574))

theorem progressionSegment00017_2_0003Check :
    progressionSegment00017_2_0003Tree.check indexedMarker 29929 13241 164 = true :=
  by decide

theorem progressionSegment00017_2_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 29929 13241 164 166 :=
  by simpa [progressionSegment00017_2_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00017_2_0003Check

def progressionSegment00017_2_0004Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 125339)

theorem progressionSegment00017_2_0004Check :
    progressionSegment00017_2_0004Tree.check indexedMarker 29929 13241 166 = true :=
  by decide

theorem progressionSegment00017_2_0004 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 29929 13241 166 167 :=
  by simpa [progressionSegment00017_2_0004Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00017_2_0004Check

def progressionSegment00018_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node (.leaf 730) (.leaf 1557)) (.node (.leaf 2380) (.leaf 3211))) (.node (.node (.leaf 4036) (.leaf 4865)) (.node (.leaf 5688) (.leaf 6516)))) (.node (.node (.node (.leaf 7336) (.leaf 8155)) (.node (.leaf 8978) (.leaf 9806))) (.node (.node (.leaf 10632) (.leaf 11456)) (.node .skip .skip)))) (.node (.node (.node (.node (.leaf 13930) (.leaf 14756)) (.node (.leaf 15578) (.leaf 16394))) (.node (.node (.leaf 17223) (.leaf 18041)) (.node (.leaf 18861) (.leaf 19683)))) (.node (.node (.node (.leaf 20516) (.leaf 21327)) (.node (.leaf 22152) (.leaf 22978))) (.node (.node (.leaf 23797) (.leaf 24633)) (.node (.leaf 25460) (.leaf 26283)))))) (.node (.node (.node (.node (.node (.leaf 27112) (.leaf 27941)) (.node (.leaf 28759) (.leaf 29586))) (.node (.node (.leaf 30406) (.leaf 31226)) (.node (.leaf 32052) .skip))) (.node (.node (.node .skip (.leaf 34527)) (.node (.leaf 35350) (.leaf 36174))) (.node (.node (.leaf 37006) (.leaf 37826)) (.node (.leaf 38649) (.leaf 39475))))) (.node (.node (.node (.node (.leaf 40311) (.leaf 41133)) (.node (.leaf 41962) (.leaf 42784))) (.node (.node (.leaf 43607) (.leaf 44433)) (.node (.leaf 45259) (.leaf 46087)))) (.node (.node (.node (.leaf 46902) (.leaf 47725)) (.node (.leaf 48546) (.leaf 49366))) (.node (.node (.leaf 50196) (.leaf 51020)) (.node (.leaf 51837) (.leaf 52661))))))) (.node (.node (.node (.node (.node (.node .skip .skip) (.node (.leaf 55118) (.leaf 55944))) (.node (.node (.leaf 56771) (.leaf 57607)) (.node (.leaf 58429) (.leaf 59250)))) (.node (.node (.node (.leaf 60073) (.leaf 60898)) (.node (.leaf 61723) (.leaf 62546))) (.node (.node (.leaf 63375) (.leaf 64195)) (.node (.leaf 65036) (.leaf 65847))))) (.node (.node (.node (.node (.leaf 66678) (.leaf 67497)) (.node (.leaf 68330) (.leaf 69151))) (.node (.node (.leaf 69974) (.leaf 70791)) (.node (.leaf 71617) (.leaf 72446)))) (.node (.node (.node (.leaf 73271) .skip) (.node .skip (.leaf 75750))) (.node (.node (.leaf 76574) (.leaf 77398)) (.node (.leaf 78217) (.leaf 79041)))))) (.node (.node (.node (.node (.node (.leaf 79865) (.leaf 80707)) (.node (.leaf 81529) (.leaf 82359))) (.node (.node (.leaf 83177) (.leaf 84005)) (.node (.leaf 84832) (.leaf 85659)))) (.node (.node (.node (.leaf 86471) (.leaf 87309)) (.node (.leaf 88137) (.leaf 88942))) (.node (.node (.leaf 89774) (.leaf 90586)) (.node (.leaf 91415) (.leaf 92241))))) (.node (.node (.node (.node (.leaf 93061) (.leaf 93888)) (.node .skip .skip)) (.node (.node (.leaf 96355) (.leaf 97180)) (.node (.leaf 98005) (.leaf 98826)))) (.node (.node (.node (.leaf 99650) (.leaf 100481)) (.node (.leaf 101293) (.leaf 102116))) (.node (.node (.leaf 102948) (.leaf 103775)) (.node (.leaf 104594) (.leaf 105423))))))))

theorem progressionSegment00018_1_0000Check :
    progressionSegment00018_1_0000Tree.check indexedMarker 32761 29303 0 = true :=
  by decide

theorem progressionSegment00018_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 32761 29303 0 128 :=
  by simpa [progressionSegment00018_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00018_1_0000Check

def progressionSegment00018_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 106246) (.leaf 107064)) (.node (.leaf 107898) (.leaf 108719))) (.node (.node (.leaf 109549) (.leaf 110375)) (.node (.leaf 111203) (.leaf 112027)))) (.node (.node (.node (.leaf 112847) (.leaf 113661)) (.node (.leaf 114492) .skip)) (.node (.node .skip (.leaf 116966)) (.node (.leaf 117783) (.leaf 118611)))))

theorem progressionSegment00018_1_0001Check :
    progressionSegment00018_1_0001Tree.check indexedMarker 32761 29303 128 = true :=
  by decide

theorem progressionSegment00018_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 32761 29303 128 144 :=
  by simpa [progressionSegment00018_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00018_1_0001Check

def progressionSegment00018_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 119437) (.leaf 120259)) (.node (.leaf 121092) (.leaf 121919))) (.node (.node (.leaf 122742) (.leaf 123561)) (.node (.leaf 124373) (.leaf 125210))))

theorem progressionSegment00018_1_0002Check :
    progressionSegment00018_1_0002Tree.check indexedMarker 32761 29303 144 = true :=
  by decide

theorem progressionSegment00018_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 32761 29303 144 152 :=
  by simpa [progressionSegment00018_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00018_1_0002Check

def progressionSegment00018_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node (.leaf 84) (.leaf 909)) (.node (.leaf 1729) (.leaf 2557))) (.node (.node (.leaf 3385) (.leaf 4221)) (.node (.leaf 5044) (.leaf 5860)))) (.node (.node (.node (.leaf 6690) .skip) (.node .skip (.leaf 9149))) (.node (.node (.leaf 9979) (.leaf 10809)) (.node (.leaf 11634) (.leaf 12453))))) (.node (.node (.node (.node (.leaf 13277) (.leaf 14103)) (.node (.leaf 14928) (.leaf 15756))) (.node (.node (.leaf 16569) (.leaf 17395)) (.node (.leaf 18214) (.leaf 19047)))) (.node (.node (.node (.leaf 19861) (.leaf 20689)) (.node (.leaf 21504) (.leaf 22325))) (.node (.node (.leaf 23150) (.leaf 23973)) (.node (.leaf 24804) (.leaf 25629)))))) (.node (.node (.node (.node (.node (.leaf 26459) (.leaf 27279)) (.node .skip .skip)) (.node (.node (.leaf 29761) (.leaf 30580)) (.node (.leaf 31405) (.leaf 32228)))) (.node (.node (.node (.leaf 33060) (.leaf 33878)) (.node (.leaf 34699) (.leaf 35520))) (.node (.node (.leaf 36359) (.leaf 37177)) (.node (.leaf 38001) (.leaf 38822))))) (.node (.node (.node (.node (.leaf 39654) (.leaf 40488)) (.node (.leaf 41300) (.leaf 42139))) (.node (.node (.leaf 42949) (.leaf 43785)) (.node (.leaf 44601) (.leaf 45429)))) (.node (.node (.node (.leaf 46258) (.leaf 47076)) (.node (.leaf 47892) .skip)) (.node (.node .skip (.leaf 50370)) (.node (.leaf 51189) (.leaf 52017))))))) (.node (.node (.node (.node (.node (.node (.leaf 52830) (.leaf 53648)) (.node (.leaf 54465) (.leaf 55299))) (.node (.node (.leaf 56119) (.leaf 56949)) (.node (.leaf 57780) (.leaf 58598)))) (.node (.node (.node (.leaf 59423) (.leaf 60240)) (.node (.leaf 61072) (.leaf 61894))) (.node (.node (.leaf 62725) (.leaf 63549)) (.node (.leaf 64377) (.leaf 65205))))) (.node (.node (.node (.node (.leaf 66027) (.leaf 66855)) (.node (.leaf 67675) (.leaf 68504))) (.node (.node .skip .skip) (.node (.leaf 70963) (.leaf 71793)))) (.node (.node (.node (.leaf 72610) (.leaf 73449)) (.node (.leaf 74274) (.leaf 75094))) (.node (.node (.leaf 75925) (.leaf 76749)) (.node (.leaf 77574) (.leaf 78390)))))) (.node (.node (.node (.node (.node (.leaf 79221) (.leaf 80042)) (.node (.leaf 80883) (.leaf 81711))) (.node (.node (.leaf 82536) (.leaf 83352)) (.node (.leaf 84181) (.leaf 85005)))) (.node (.node (.node (.leaf 85831) (.leaf 86654)) (.node (.leaf 87480) (.leaf 88307))) (.node (.node (.leaf 89114) .skip) (.node .skip (.leaf 91593))))) (.node (.node (.node (.node (.leaf 92411) (.leaf 93244)) (.node (.leaf 94070) (.leaf 94883))) (.node (.node (.leaf 95708) (.leaf 96537)) (.node (.leaf 97352) (.leaf 98181)))) (.node (.node (.node (.leaf 98999) (.leaf 99827)) (.node (.leaf 100650) (.leaf 101471))) (.node (.node (.leaf 102294) (.leaf 103123)) (.node (.leaf 103955) (.leaf 104766))))))))

theorem progressionSegment00018_2_0000Check :
    progressionSegment00018_2_0000Tree.check indexedMarker 32761 3458 0 = true :=
  by decide

theorem progressionSegment00018_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 32761 3458 0 128 :=
  by simpa [progressionSegment00018_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00018_2_0000Check

def progressionSegment00018_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 105596) (.leaf 106413)) (.node (.leaf 107243) (.leaf 108070))) (.node (.node (.leaf 108897) (.leaf 109722)) (.node .skip .skip))) (.node (.node (.node (.leaf 112201) (.leaf 113017)) (.node (.leaf 113832) (.leaf 114664))) (.node (.node (.leaf 115493) (.leaf 116320)) (.node (.leaf 117138) (.leaf 117963)))))

theorem progressionSegment00018_2_0001Check :
    progressionSegment00018_2_0001Tree.check indexedMarker 32761 3458 128 = true :=
  by decide

theorem progressionSegment00018_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 32761 3458 128 144 :=
  by simpa [progressionSegment00018_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00018_2_0001Check

def progressionSegment00018_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 118781) (.leaf 119614)) (.node (.leaf 120430) (.leaf 121263))) (.node (.node (.leaf 122088) (.leaf 122907)) (.node (.leaf 123740) (.leaf 124548))))

theorem progressionSegment00018_2_0002Check :
    progressionSegment00018_2_0002Tree.check indexedMarker 32761 3458 144 = true :=
  by decide

theorem progressionSegment00018_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 32761 3458 144 152 :=
  by simpa [progressionSegment00018_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00018_2_0002Check

def progressionSegment00018_2_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 125381)

theorem progressionSegment00018_2_0003Check :
    progressionSegment00018_2_0003Tree.check indexedMarker 32761 3458 152 = true :=
  by decide

theorem progressionSegment00018_2_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 32761 3458 152 153 :=
  by simpa [progressionSegment00018_2_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00018_2_0003Check

def progressionSegment00019_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node (.leaf 805) (.leaf 1742)) (.node (.leaf 2678) (.leaf 3626))) (.node (.node (.leaf 4566) (.leaf 5501)) (.node (.leaf 6437) .skip))) (.node (.node (.node (.leaf 8310) (.leaf 9241)) (.node (.leaf 10180) (.leaf 11124))) (.node (.node (.leaf 12059) (.leaf 12993)) (.node (.leaf 13933) (.leaf 14870))))) (.node (.node (.node (.node (.leaf 15808) (.leaf 16744)) (.node .skip (.leaf 18612))) (.node (.node (.leaf 19544) (.leaf 20487)) (.node (.leaf 21408) (.leaf 22350)))) (.node (.node (.node (.leaf 23286) (.leaf 24229)) (.node (.leaf 25160) (.leaf 26102))) (.node (.node (.leaf 27049) (.leaf 27987)) (.node (.leaf 28924) (.leaf 29863)))))) (.node (.node (.node (.node (.node .skip (.leaf 31727)) (.node (.leaf 32678) (.leaf 33609))) (.node (.node (.leaf 34543) (.leaf 35478)) (.node (.leaf 36424) (.leaf 37354)))) (.node (.node (.node (.leaf 38289) (.leaf 39229)) (.node (.leaf 40179) .skip)) (.node (.node (.leaf 42057) (.leaf 42986)) (.node (.leaf 43930) (.leaf 44868))))) (.node (.node (.node (.node (.leaf 45809) (.leaf 46737)) (.node (.leaf 47667) (.leaf 48603))) (.node (.node (.leaf 49540) (.leaf 50479)) (.node (.leaf 51409) (.leaf 52346)))) (.node (.node (.node (.leaf 53276) .skip) (.node (.leaf 55149) (.leaf 56087))) (.node (.node (.leaf 57030) (.leaf 57974)) (.node (.leaf 58901) (.leaf 59843))))))) (.node (.node (.node (.node (.node (.node (.leaf 60775) (.leaf 61716)) (.node (.leaf 62658) (.leaf 63595))) (.node (.node .skip (.leaf 65481)) (.node (.leaf 66406) (.leaf 67339)))) (.node (.node (.node (.leaf 68290) (.leaf 69226)) (.node (.leaf 70153) (.leaf 71092))) (.node (.node (.leaf 72026) (.leaf 72968)) (.node (.leaf 73905) (.leaf 74848))))) (.node (.node (.node (.node (.leaf 75792) (.leaf 76726)) (.node .skip (.leaf 78595))) (.node (.node (.leaf 79537) (.leaf 80478)) (.node (.leaf 81422) (.leaf 82364)))) (.node (.node (.node (.leaf 83294) (.leaf 84238)) (.node (.leaf 85172) (.leaf 86110))) (.node (.node (.leaf 87053) .skip) (.node (.leaf 88913) (.leaf 89855)))))) (.node (.node (.node (.node (.node (.leaf 90784) (.leaf 91725)) (.node (.leaf 92654) (.leaf 93606))) (.node (.node (.leaf 94535) (.leaf 95469)) (.node (.leaf 96406) (.leaf 97340)))) (.node (.node (.node (.leaf 98280) (.leaf 99210)) (.node (.leaf 100150) .skip)) (.node (.node (.leaf 102020) (.leaf 102966)) (.node (.leaf 103903) (.leaf 104834))))) (.node (.node (.node (.node (.leaf 105780) (.leaf 106714)) (.node (.leaf 107654) (.leaf 108584))) (.node (.node (.leaf 109530) (.leaf 110471)) (.node .skip (.leaf 112347)))) (.node (.node (.node (.leaf 113273) (.leaf 114207)) (.node (.leaf 115149) (.leaf 116088))) (.node (.node (.leaf 117024) (.leaf 117962)) (.node (.leaf 118900) (.leaf 119843))))))))

theorem progressionSegment00019_1_0000Check :
    progressionSegment00019_1_0000Tree.check indexedMarker 37249 32150 0 = true :=
  by decide

theorem progressionSegment00019_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 37249 32150 0 128 :=
  by simpa [progressionSegment00019_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00019_1_0000Check

def progressionSegment00019_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 120771) (.leaf 121719)) (.node (.leaf 122649) (.leaf 123587)))

theorem progressionSegment00019_1_0001Check :
    progressionSegment00019_1_0001Tree.check indexedMarker 37249 32150 128 = true :=
  by decide

theorem progressionSegment00019_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 37249 32150 128 132 :=
  by simpa [progressionSegment00019_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00019_1_0001Check

def progressionSegment00019_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node .skip (.leaf 125458))

theorem progressionSegment00019_1_0002Check :
    progressionSegment00019_1_0002Tree.check indexedMarker 37249 32150 132 = true :=
  by decide

theorem progressionSegment00019_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 37249 32150 132 134 :=
  by simpa [progressionSegment00019_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00019_1_0002Check

def progressionSegment00019_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node (.leaf 127) (.leaf 1066)) (.node (.leaf 2001) (.leaf 2938))) (.node (.node (.leaf 3872) (.leaf 4820)) (.node .skip (.leaf 6702)))) (.node (.node (.node (.leaf 7627) (.leaf 8563)) (.node (.leaf 9500) (.leaf 10436))) (.node (.node (.leaf 11376) (.leaf 12315)) (.node (.leaf 13249) (.leaf 14184))))) (.node (.node (.node (.node (.leaf 15127) .skip) (.node (.leaf 17000) (.leaf 17931))) (.node (.node (.leaf 18862) (.leaf 19800)) (.node (.leaf 20742) (.leaf 21670)))) (.node (.node (.node (.leaf 22611) (.leaf 23544)) (.node (.leaf 24490) (.leaf 25424))) (.node (.node (.leaf 26362) (.leaf 27299)) (.node (.leaf 28244) .skip))))) (.node (.node (.node (.node (.node (.leaf 30118) (.leaf 31050)) (.node (.leaf 31984) (.leaf 32932))) (.node (.node (.leaf 33865) (.leaf 34799)) (.node (.leaf 35736) (.leaf 36679)))) (.node (.node (.node (.leaf 37612) (.leaf 38548)) (.node .skip (.leaf 40439))) (.node (.node (.leaf 41367) (.leaf 42313)) (.node (.leaf 43248) (.leaf 44188))))) (.node (.node (.node (.node (.leaf 45121) (.leaf 46066)) (.node (.leaf 46997) (.leaf 47925))) (.node (.node (.leaf 48861) (.leaf 49793)) (.node (.leaf 50734) (.leaf 51667)))) (.node (.node (.node .skip (.leaf 53525)) (.node (.leaf 54460) (.leaf 55406))) (.node (.node (.leaf 56351) (.leaf 57287)) (.node (.leaf 58229) (.leaf 59160))))))) (.node (.node (.node (.node (.node (.node (.leaf 60096) (.leaf 61033)) (.node (.leaf 61968) .skip)) (.node (.node (.leaf 63851) (.leaf 64795)) (.node (.leaf 65728) (.leaf 66667)))) (.node (.node (.node (.leaf 67601) (.leaf 68548)) (.node (.leaf 69475) (.leaf 70409))) (.node (.node (.leaf 71343) (.leaf 72290)) (.node (.leaf 73230) (.leaf 74163))))) (.node (.node (.node (.node (.leaf 75104) .skip) (.node (.leaf 76981) (.leaf 77912))) (.node (.node (.leaf 78859) (.leaf 79787)) (.node (.leaf 80742) (.leaf 81685)))) (.node (.node (.node (.leaf 82618) (.leaf 83551)) (.node (.leaf 84494) (.leaf 85430))) (.node (.node .skip (.leaf 87310)) (.node (.leaf 88246) (.leaf 89169)))))) (.node (.node (.node (.node (.node (.leaf 90117) (.leaf 91047)) (.node (.leaf 91984) (.leaf 92916))) (.node (.node (.leaf 93854) (.leaf 94789)) (.node (.leaf 95732) (.leaf 96669)))) (.node (.node (.node (.leaf 97598) (.leaf 98529)) (.node .skip (.leaf 100412))) (.node (.node (.leaf 101342) (.leaf 102280)) (.node (.leaf 103221) (.leaf 104159))))) (.node (.node (.node (.node (.leaf 105097) (.leaf 106034)) (.node (.leaf 106966) (.leaf 107910))) (.node (.node (.leaf 108846) .skip) (.node (.leaf 110726) (.leaf 111662)))) (.node (.node (.node (.leaf 112601) (.leaf 113534)) (.node (.leaf 114469) (.leaf 115408))) (.node (.node (.leaf 116352) (.leaf 117279)) (.node (.leaf 118221) (.leaf 119152))))))))

theorem progressionSegment00019_2_0000Check :
    progressionSegment00019_2_0000Tree.check indexedMarker 37249 5099 0 = true :=
  by decide

theorem progressionSegment00019_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 37249 5099 0 128 :=
  by simpa [progressionSegment00019_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00019_2_0000Check

def progressionSegment00019_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 120094) (.leaf 121030)) (.node (.leaf 121967) .skip))

theorem progressionSegment00019_2_0001Check :
    progressionSegment00019_2_0001Tree.check indexedMarker 37249 5099 128 = true :=
  by decide

theorem progressionSegment00019_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 37249 5099 128 132 :=
  by simpa [progressionSegment00019_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00019_2_0001Check

def progressionSegment00019_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 123843) (.leaf 124774))

theorem progressionSegment00019_2_0002Check :
    progressionSegment00019_2_0002Tree.check indexedMarker 37249 5099 132 = true :=
  by decide

theorem progressionSegment00019_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 37249 5099 132 134 :=
  by simpa [progressionSegment00019_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00019_2_0002Check

def progressionSegment00019_2_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 125715)

theorem progressionSegment00019_2_0003Check :
    progressionSegment00019_2_0003Tree.check indexedMarker 37249 5099 134 = true :=
  by decide

theorem progressionSegment00019_2_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 37249 5099 134 135 :=
  by simpa [progressionSegment00019_2_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00019_2_0003Check

def progressionSegment00020_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node (.leaf 940) (.leaf 1912)) (.node (.leaf 2894) .skip)) (.node (.node (.leaf 4851) (.leaf 5829)) (.node (.leaf 6811) (.leaf 7785)))) (.node (.node (.node (.leaf 8750) (.leaf 9730)) (.node (.leaf 10710) (.leaf 11692))) (.node (.node (.leaf 12658) (.leaf 13634)) (.node (.leaf 14613) (.leaf 15589))))) (.node (.node (.node (.node (.leaf 16558) (.leaf 17538)) (.node (.leaf 18515) (.leaf 19484))) (.node (.node (.leaf 20464) (.leaf 21432)) (.node (.leaf 22411) (.leaf 23385)))) (.node (.node (.node .skip (.leaf 25343)) (.node (.leaf 26327) (.leaf 27298))) (.node (.node .skip (.leaf 29256)) (.node (.leaf 30229) (.leaf 31203)))))) (.node (.node (.node (.node (.node (.leaf 32184) (.leaf 33168)) (.node (.leaf 34140) (.leaf 35115))) (.node (.node (.leaf 36083) (.leaf 37066)) (.node (.leaf 38041) (.leaf 39019)))) (.node (.node (.node (.leaf 40006) (.leaf 40979)) (.node (.leaf 41963) (.leaf 42932))) (.node (.node (.leaf 43912) (.leaf 44893)) (.node (.leaf 45874) (.leaf 46842))))) (.node (.node (.node (.node (.leaf 47812) .skip) (.node (.leaf 49754) (.leaf 50738))) (.node (.node (.leaf 51710) .skip) (.node (.leaf 53654) (.leaf 54620)))) (.node (.node (.node (.leaf 55604) (.leaf 56586)) (.node (.leaf 57574) (.leaf 58540))) (.node (.node (.leaf 59519) (.leaf 60486)) (.node (.leaf 61467) (.leaf 62445))))))) (.node (.node (.node (.node (.node (.node (.leaf 63423) (.leaf 64408)) (.node (.leaf 65384) (.leaf 66355))) (.node (.node (.leaf 67328) (.leaf 68320)) (.node (.leaf 69292) (.leaf 70254)))) (.node (.node (.node (.leaf 71234) (.leaf 72218)) (.node .skip (.leaf 74170))) (.node (.node (.leaf 75150) (.leaf 76131)) (.node .skip (.leaf 78077))))) (.node (.node (.node (.node (.leaf 79055) (.leaf 80034)) (.node (.leaf 81026) (.leaf 82000))) (.node (.node (.leaf 82980) (.leaf 83955)) (.node (.leaf 84936) (.leaf 85911)))) (.node (.node (.node (.leaf 86887) (.leaf 87867)) (.node (.leaf 88832) (.leaf 89809))) (.node (.node (.leaf 90777) (.leaf 91763)) (.node (.leaf 92732) (.leaf 93711)))))) (.node (.node (.node (.node (.node (.leaf 94690) (.leaf 95661)) (.node (.leaf 96639) .skip)) (.node (.node (.leaf 98586) (.leaf 99560)) (.node (.leaf 100543) .skip))) (.node (.node (.node (.leaf 102488) (.leaf 103471)) (.node (.leaf 104436) (.leaf 105425))) (.node (.node (.leaf 106395) (.leaf 107383)) (.node (.leaf 108352) (.leaf 109335))))) (.node (.node (.node (.node (.leaf 110309) (.leaf 111289)) (.node (.leaf 112271) (.leaf 113237))) (.node (.node (.leaf 114205) (.leaf 115189)) (.node (.leaf 116168) (.leaf 117143)))) (.node (.node (.node (.leaf 118119) (.leaf 119093)) (.node (.leaf 120069) (.leaf 121048))) (.node (.node .skip (.leaf 123002)) (.node (.leaf 123983) (.leaf 124951))))))))

theorem progressionSegment00020_1_0000Check :
    progressionSegment00020_1_0000Tree.check indexedMarker 38809 37416 0 = true :=
  by decide

theorem progressionSegment00020_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 38809 37416 0 128 :=
  by simpa [progressionSegment00020_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00020_1_0000Check

def progressionSegment00020_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node .skip (.leaf 1010)) (.node (.leaf 1981) (.leaf 2963))) (.node (.node (.leaf 3939) (.leaf 4926)) (.node (.leaf 5900) (.leaf 6881)))) (.node (.node (.node (.leaf 7850) (.leaf 8821)) (.node (.leaf 9800) (.leaf 10777))) (.node (.node (.leaf 11763) (.leaf 12727)) (.node (.leaf 13700) (.leaf 14686))))) (.node (.node (.node (.node (.leaf 15658) (.leaf 16632)) (.node (.leaf 17605) (.leaf 18582))) (.node (.node (.leaf 19556) .skip) (.node (.leaf 21501) (.leaf 22484)))) (.node (.node (.node (.leaf 23456) .skip) (.node (.leaf 25412) (.leaf 26389))) (.node (.node (.leaf 27374) (.leaf 28355)) (.node (.leaf 29325) (.leaf 30299)))))) (.node (.node (.node (.node (.node (.leaf 31274) (.leaf 32251)) (.node (.leaf 33239) (.leaf 34214))) (.node (.node (.leaf 35188) (.leaf 36155)) (.node (.leaf 37133) (.leaf 38110)))) (.node (.node (.node (.leaf 39091) (.leaf 40077)) (.node (.leaf 41047) (.leaf 42034))) (.node (.node (.leaf 43004) (.leaf 43986)) (.node .skip (.leaf 45945))))) (.node (.node (.node (.node (.leaf 46909) (.leaf 47877)) (.node .skip (.leaf 49830))) (.node (.node (.leaf 50812) (.leaf 51779)) (.node (.leaf 52755) (.leaf 53724)))) (.node (.node (.node (.leaf 54696) (.leaf 55676)) (.node (.leaf 56654) (.leaf 57641))) (.node (.node (.leaf 58611) (.leaf 59588)) (.node (.leaf 60555) (.leaf 61537))))))) (.node (.node (.node (.node (.node (.node (.leaf 62517) (.leaf 63492)) (.node (.leaf 64478) (.leaf 65456))) (.node (.node (.leaf 66431) (.leaf 67398)) (.node (.leaf 68385) .skip))) (.node (.node (.node (.leaf 70327) (.leaf 71305)) (.node (.leaf 72289) .skip)) (.node (.node (.leaf 74241) (.leaf 75224)) (.node (.leaf 76202) (.leaf 77183))))) (.node (.node (.node (.node (.leaf 78145) (.leaf 79128)) (.node (.leaf 80110) (.leaf 81095))) (.node (.node (.leaf 82073) (.leaf 83051)) (.node (.leaf 84031) (.leaf 85002)))) (.node (.node (.node (.leaf 85979) (.leaf 86954)) (.node (.leaf 87935) (.leaf 88898))) (.node (.node (.leaf 89885) (.leaf 90854)) (.node (.leaf 91827) (.leaf 92801)))))) (.node (.node (.node (.node (.node .skip (.leaf 94750)) (.node (.leaf 95736) (.leaf 96714))) (.node (.node .skip (.leaf 98653)) (.node (.leaf 99630) (.leaf 100613)))) (.node (.node (.node (.leaf 101586) (.leaf 102560)) (.node (.leaf 103544) (.leaf 104512))) (.node (.node (.leaf 105490) (.leaf 106467)) (.node (.leaf 107454) (.leaf 108421))))) (.node (.node (.node (.node (.leaf 109408) (.leaf 110382)) (.node (.leaf 111365) (.leaf 112340))) (.node (.node (.leaf 113307) (.leaf 114276)) (.node (.leaf 115259) (.leaf 116237)))) (.node (.node (.node (.leaf 117215) .skip) (.node (.leaf 119159) (.leaf 120144))) (.node (.node (.leaf 121121) .skip) (.node (.leaf 123076) (.leaf 124052))))))))

theorem progressionSegment00020_2_0000Check :
    progressionSegment00020_2_0000Tree.check indexedMarker 38809 1393 0 = true :=
  by decide

theorem progressionSegment00020_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 38809 1393 0 128 :=
  by simpa [progressionSegment00020_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00020_2_0000Check

def progressionSegment00020_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 125027)

theorem progressionSegment00020_2_0001Check :
    progressionSegment00020_2_0001Tree.check indexedMarker 38809 1393 128 = true :=
  by decide

theorem progressionSegment00020_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 38809 1393 128 129 :=
  by simpa [progressionSegment00020_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00020_2_0001Check

def progressionSegment00021_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 414) (.leaf 1733)) (.node (.leaf 3056) (.leaf 4381))) (.node (.node (.leaf 5704) (.leaf 7020)) (.node (.leaf 8338) (.leaf 9655)))) (.node (.node (.node (.leaf 10980) (.leaf 12293)) (.node (.leaf 13610) (.leaf 14936))) (.node (.node (.leaf 16253) .skip) (.node (.leaf 18882) (.leaf 20206))))) (.node (.node (.node (.node (.leaf 21515) .skip) (.node (.leaf 24161) (.leaf 25478))) (.node (.node (.leaf 26806) (.leaf 28126)) (.node (.leaf 29443) (.leaf 30755)))) (.node (.node (.node (.leaf 32079) (.leaf 33403)) (.node (.leaf 34720) (.leaf 36030))) (.node (.node (.leaf 37358) (.leaf 38676)) (.node (.leaf 40008) (.leaf 41321)))))) (.node (.node (.node (.node (.node (.leaf 42649) (.leaf 43971)) (.node (.leaf 45288) (.leaf 46607))) (.node (.node (.leaf 47917) (.leaf 49229)) (.node .skip (.leaf 51871)))) (.node (.node (.node (.leaf 53178) (.leaf 54490)) (.node .skip (.leaf 57141))) (.node (.node (.leaf 58466) (.leaf 59778)) (.node (.leaf 61104) (.leaf 62421))))) (.node (.node (.node (.node (.leaf 63750) (.leaf 65074)) (.node (.leaf 66381) (.leaf 67708))) (.node (.node (.leaf 69029) (.leaf 70334)) (.node (.leaf 71659) (.leaf 72982)))) (.node (.node (.node (.leaf 74309) (.leaf 75630)) (.node (.leaf 76947) (.leaf 78266))) (.node (.node (.leaf 79588) (.leaf 80920)) (.node (.leaf 82240) .skip))))))

theorem progressionSegment00021_1_0000Check :
    progressionSegment00021_1_0000Tree.check indexedMarker 52441 16610 0 = true :=
  by decide

theorem progressionSegment00021_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 52441 16610 0 64 :=
  by simpa [progressionSegment00021_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00021_1_0000Check

def progressionSegment00021_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 84881) (.leaf 86194)) (.node (.leaf 87516) .skip)) (.node (.node (.leaf 90159) (.leaf 91468)) (.node (.leaf 92780) (.leaf 94113)))) (.node (.node (.node (.leaf 95424) (.leaf 96746)) (.node (.leaf 98059) (.leaf 99377))) (.node (.node (.leaf 100693) (.leaf 102010)) (.node (.leaf 103333) (.leaf 104651))))) (.node (.node (.node (.node (.leaf 105975) (.leaf 107294)) (.node (.leaf 108609) (.leaf 109939))) (.node (.node (.leaf 111259) (.leaf 112580)) (.node (.leaf 113882) (.leaf 115213)))) (.node (.node (.node .skip (.leaf 117848)) (.node (.leaf 119166) (.leaf 120487))) (.node (.node .skip (.leaf 123130)) (.node (.leaf 124437) (.leaf 125768))))))

theorem progressionSegment00021_1_0001Check :
    progressionSegment00021_1_0001Tree.check indexedMarker 52441 16610 64 = true :=
  by decide

theorem progressionSegment00021_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 52441 16610 64 96 :=
  by simpa [progressionSegment00021_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00021_1_0001Check

def progressionSegment00021_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 898) (.leaf 2217)) (.node (.leaf 3545) (.leaf 4867))) (.node (.node (.leaf 6184) (.leaf 7501)) (.node (.leaf 8813) .skip))) (.node (.node (.node (.leaf 11461) (.leaf 12773)) (.node (.leaf 14098) .skip)) (.node (.node (.leaf 16732) (.leaf 18052)) (.node (.leaf 19365) (.leaf 20686))))) (.node (.node (.node (.node (.leaf 21996) (.leaf 23318)) (.node (.leaf 24646) (.leaf 25959))) (.node (.node (.leaf 27283) (.leaf 28608)) (.node (.leaf 29929) (.leaf 31240)))) (.node (.node (.node (.leaf 32569) (.leaf 33885)) (.node (.leaf 35207) (.leaf 36523))) (.node (.node (.leaf 37841) (.leaf 39164)) (.node (.leaf 40497) (.leaf 41811)))))) (.node (.node (.node (.node (.node .skip (.leaf 44452)) (.node (.leaf 45776) (.leaf 47090))) (.node (.node .skip (.leaf 49708)) (.node (.leaf 51040) (.leaf 52352)))) (.node (.node (.node (.leaf 53662) (.leaf 54982)) (.node (.leaf 56308) (.leaf 57633))) (.node (.node (.leaf 58940) (.leaf 60258)) (.node (.leaf 61584) (.leaf 62910))))) (.node (.node (.node (.node (.leaf 64226) (.leaf 65556)) (.node (.leaf 66876) (.leaf 68192))) (.node (.node (.leaf 69511) (.leaf 70820)) (.node (.leaf 72143) (.leaf 73472)))) (.node (.node (.node (.leaf 74787) .skip) (.node (.leaf 77434) (.leaf 78751))) (.node (.node (.leaf 80071) .skip) (.node (.leaf 82727) (.leaf 84046)))))))

theorem progressionSegment00021_2_0000Check :
    progressionSegment00021_2_0000Tree.check indexedMarker 52441 35831 0 = true :=
  by decide

theorem progressionSegment00021_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 52441 35831 0 64 :=
  by simpa [progressionSegment00021_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00021_2_0000Check

def progressionSegment00021_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 85362) (.leaf 86681)) (.node (.leaf 88004) (.leaf 89308))) (.node (.node (.leaf 90629) (.leaf 91955)) (.node (.leaf 93275) (.leaf 94588)))) (.node (.node (.node (.leaf 95904) (.leaf 97223)) (.node (.leaf 98534) (.leaf 99863))) (.node (.node (.leaf 101167) (.leaf 102493)) (.node (.leaf 103821) (.leaf 105139)))))

theorem progressionSegment00021_2_0001Check :
    progressionSegment00021_2_0001Tree.check indexedMarker 52441 35831 64 = true :=
  by decide

theorem progressionSegment00021_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 52441 35831 64 80 :=
  by simpa [progressionSegment00021_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00021_2_0001Check

def progressionSegment00021_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 106453) (.leaf 107779)) (.node .skip (.leaf 110423))) (.node (.node (.leaf 111741) (.leaf 113059)) (.node .skip (.leaf 115698))))

theorem progressionSegment00021_2_0002Check :
    progressionSegment00021_2_0002Tree.check indexedMarker 52441 35831 80 = true :=
  by decide

theorem progressionSegment00021_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 52441 35831 80 88 :=
  by simpa [progressionSegment00021_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00021_2_0002Check

def progressionSegment00021_2_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 117013) (.leaf 118340)) (.node (.leaf 119655) (.leaf 120973)))

theorem progressionSegment00021_2_0003Check :
    progressionSegment00021_2_0003Tree.check indexedMarker 52441 35831 88 = true :=
  by decide

theorem progressionSegment00021_2_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 52441 35831 88 92 :=
  by simpa [progressionSegment00021_2_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00021_2_0003Check

def progressionSegment00021_2_0004Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 122296) (.leaf 123616))

theorem progressionSegment00021_2_0004Check :
    progressionSegment00021_2_0004Tree.check indexedMarker 52441 35831 92 = true :=
  by decide

theorem progressionSegment00021_2_0004 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 52441 35831 92 94 :=
  by simpa [progressionSegment00021_2_0004Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00021_2_0004Check

def progressionSegment00021_2_0005Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 124923)

theorem progressionSegment00021_2_0005Check :
    progressionSegment00021_2_0005Tree.check indexedMarker 52441 35831 94 = true :=
  by decide

theorem progressionSegment00021_2_0005 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 52441 35831 94 95 :=
  by simpa [progressionSegment00021_2_0005Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00021_2_0005Check

def progressionSegment00022_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 681) (.leaf 2049)) (.node (.leaf 3423) (.leaf 4795))) (.node (.node (.leaf 6159) (.leaf 7524)) (.node (.leaf 8883) (.leaf 10249)))) (.node (.node (.node (.leaf 11624) (.leaf 12981)) (.node (.leaf 14348) (.leaf 15721))) (.node (.node (.leaf 17086) (.leaf 18443)) (.node (.leaf 19802) (.leaf 21166))))) (.node (.node (.node (.node (.leaf 22534) .skip) (.node .skip (.leaf 26637))) (.node (.node (.leaf 28014) (.leaf 29370)) (.node (.leaf 30733) (.leaf 32106)))) (.node (.node (.node (.leaf 33468) (.leaf 34838)) (.node (.leaf 36200) (.leaf 37568))) (.node (.node (.leaf 38934) (.leaf 40310)) (.node (.leaf 41670) (.leaf 43038)))))) (.node (.node (.node (.node (.node (.leaf 44408) (.leaf 45781)) (.node (.leaf 47141) (.leaf 48492))) (.node (.node (.leaf 49859) (.leaf 51229)) (.node (.leaf 52586) (.leaf 53941)))) (.node (.node (.node (.leaf 55314) (.leaf 56674)) (.node .skip .skip)) (.node (.node (.leaf 60778) (.leaf 62146)) (.node (.leaf 63512) (.leaf 64892))))) (.node (.node (.node (.node (.leaf 66246) (.leaf 67618)) (.node (.leaf 68985) (.leaf 70339))) (.node (.node (.leaf 71714) (.leaf 73080)) (.node (.leaf 74450) (.leaf 75820)))) (.node (.node (.node (.leaf 77190) (.leaf 78551)) (.node (.leaf 79914) (.leaf 81293))) (.node (.node (.leaf 82664) (.leaf 84033)) (.node (.leaf 85396) (.leaf 86758)))))))

theorem progressionSegment00022_1_0000Check :
    progressionSegment00022_1_0000Tree.check indexedMarker 54289 27405 0 = true :=
  by decide

theorem progressionSegment00022_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 54289 27405 0 64 :=
  by simpa [progressionSegment00022_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00022_1_0000Check

def progressionSegment00022_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 88132) (.leaf 89485)) (.node (.leaf 90850) .skip)) (.node (.node .skip (.leaf 94943)) (.node (.leaf 96307) (.leaf 97674)))) (.node (.node (.node (.leaf 99037) (.leaf 100404)) (.node (.leaf 101766) (.leaf 103139))) (.node (.node (.leaf 104494) (.leaf 105866)) (.node (.leaf 107234) (.leaf 108596)))))

theorem progressionSegment00022_1_0001Check :
    progressionSegment00022_1_0001Tree.check indexedMarker 54289 27405 64 = true :=
  by decide

theorem progressionSegment00022_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 54289 27405 64 80 :=
  by simpa [progressionSegment00022_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00022_1_0001Check

def progressionSegment00022_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 109971) (.leaf 111344)) (.node (.leaf 112701) (.leaf 114062))) (.node (.node (.leaf 115437) (.leaf 116798)) (.node (.leaf 118169) (.leaf 119534))))

theorem progressionSegment00022_1_0002Check :
    progressionSegment00022_1_0002Tree.check indexedMarker 54289 27405 80 = true :=
  by decide

theorem progressionSegment00022_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 54289 27405 80 88 :=
  by simpa [progressionSegment00022_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00022_1_0002Check

def progressionSegment00022_1_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 120898) (.leaf 122258)) (.node (.leaf 123633) (.leaf 124993)))

theorem progressionSegment00022_1_0003Check :
    progressionSegment00022_1_0003Tree.check indexedMarker 54289 27405 88 = true :=
  by decide

theorem progressionSegment00022_1_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 54289 27405 88 92 :=
  by simpa [progressionSegment00022_1_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00022_1_0003Check

def progressionSegment00022_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 667) (.leaf 2038)) (.node (.leaf 3410) (.leaf 4781))) (.node (.node (.leaf 6146) (.leaf 7509)) (.node .skip .skip))) (.node (.node (.node (.leaf 11610) (.leaf 12968)) (.node (.leaf 14334) (.leaf 15705))) (.node (.node (.leaf 17072) (.leaf 18429)) (.node (.leaf 19785) (.leaf 21153))))) (.node (.node (.node (.node (.leaf 22519) (.leaf 23879)) (.node (.leaf 25254) (.leaf 26622))) (.node (.node (.leaf 27997) (.leaf 29358)) (.node (.leaf 30720) (.leaf 32087)))) (.node (.node (.node (.leaf 33454) (.leaf 34824)) (.node (.leaf 36185) (.leaf 37553))) (.node (.node (.leaf 38918) (.leaf 40296)) (.node (.leaf 41660) .skip))))) (.node (.node (.node (.node (.node .skip (.leaf 45766)) (.node (.leaf 47126) (.leaf 48478))) (.node (.node (.leaf 49845) (.leaf 51213)) (.node (.leaf 52573) (.leaf 53929)))) (.node (.node (.node (.leaf 55298) (.leaf 56664)) (.node (.leaf 58043) (.leaf 59398))) (.node (.node (.leaf 60762) (.leaf 62133)) (.node (.leaf 63497) (.leaf 64882))))) (.node (.node (.node (.node (.leaf 66232) (.leaf 67604)) (.node (.leaf 68972) (.leaf 70326))) (.node (.node (.leaf 71698) (.leaf 73068)) (.node (.leaf 74434) (.leaf 75806)))) (.node (.node (.node .skip .skip) (.node (.leaf 79902) (.leaf 81280))) (.node (.node (.leaf 82651) (.leaf 84014)) (.node (.leaf 85384) (.leaf 86745)))))))

theorem progressionSegment00022_2_0000Check :
    progressionSegment00022_2_0000Tree.check indexedMarker 54289 26884 0 = true :=
  by decide

theorem progressionSegment00022_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 54289 26884 0 64 :=
  by simpa [progressionSegment00022_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00022_2_0000Check

def progressionSegment00022_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 88119) (.leaf 89473)) (.node (.leaf 90833) (.leaf 92197))) (.node (.node (.leaf 93570) (.leaf 94930)) (.node (.leaf 96294) (.leaf 97659)))) (.node (.node (.node (.leaf 99021) (.leaf 100392)) (.node (.leaf 101755) (.leaf 103121))) (.node (.node (.leaf 104484) (.leaf 105853)) (.node (.leaf 107220) (.leaf 108583)))))

theorem progressionSegment00022_2_0001Check :
    progressionSegment00022_2_0001Tree.check indexedMarker 54289 26884 64 = true :=
  by decide

theorem progressionSegment00022_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 54289 26884 64 80 :=
  by simpa [progressionSegment00022_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00022_2_0001Check

def progressionSegment00022_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 109959) .skip) (.node .skip (.leaf 114047))) (.node (.node (.leaf 115420) (.leaf 116784)) (.node (.leaf 118154) (.leaf 119520))))

theorem progressionSegment00022_2_0002Check :
    progressionSegment00022_2_0002Tree.check indexedMarker 54289 26884 80 = true :=
  by decide

theorem progressionSegment00022_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 54289 26884 80 88 :=
  by simpa [progressionSegment00022_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00022_2_0002Check

def progressionSegment00022_2_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 120885) (.leaf 122244)) (.node (.leaf 123617) (.leaf 124981)))

theorem progressionSegment00022_2_0003Check :
    progressionSegment00022_2_0003Tree.check indexedMarker 54289 26884 88 = true :=
  by decide

theorem progressionSegment00022_2_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 54289 26884 88 92 :=
  by simpa [progressionSegment00022_2_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00022_2_0003Check

def progressionSegment00023_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 1085) (.leaf 2539)) (.node (.leaf 4008) .skip)) (.node (.node (.leaf 6938) (.leaf 8395)) (.node (.leaf 9854) (.leaf 11315)))) (.node (.node (.node (.leaf 12769) (.leaf 14237)) (.node (.leaf 15697) (.leaf 17155))) (.node (.node (.leaf 18617) (.leaf 20076)) (.node (.leaf 21529) (.leaf 22990))))) (.node (.node (.node (.node (.leaf 24461) (.leaf 25916)) (.node (.leaf 27389) (.leaf 28850))) (.node (.node (.leaf 30306) (.leaf 31762)) (.node .skip (.leaf 34685)))) (.node (.node (.node (.leaf 36145) (.leaf 37615)) (.node (.leaf 39077) (.leaf 40550))) (.node (.node .skip (.leaf 43472)) (.node (.leaf 44938) (.leaf 46395)))))) (.node (.node (.node (.node (.node (.leaf 47846) (.leaf 49299)) (.node (.leaf 50767) (.leaf 52223))) (.node (.node (.leaf 53674) (.leaf 55135)) (.node (.leaf 56601) (.leaf 58072)))) (.node (.node (.node (.leaf 59527) (.leaf 60984)) (.node (.leaf 62448) (.leaf 63918))) (.node (.node (.leaf 65378) (.leaf 66844)) (.node (.leaf 68307) .skip)))) (.node (.node (.node (.node (.leaf 71215) (.leaf 72680)) (.node (.leaf 74143) (.leaf 75617))) (.node (.node (.leaf 77080) .skip) (.node (.leaf 79996) (.leaf 81470)))) (.node (.node (.node (.leaf 82936) (.leaf 84391)) (.node (.leaf 85861) (.leaf 87325))) (.node (.node (.leaf 88769) (.leaf 90244)) (.node (.leaf 91697) (.leaf 93157)))))))

theorem progressionSegment00023_1_0000Check :
    progressionSegment00023_1_0000Tree.check indexedMarker 58081 43075 0 = true :=
  by decide

theorem progressionSegment00023_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 58081 43075 0 64 :=
  by simpa [progressionSegment00023_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00023_1_0000Check

def progressionSegment00023_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 94617) (.leaf 96074)) (.node (.leaf 97528) (.leaf 98990))) (.node (.node (.leaf 100461) (.leaf 101912)) (.node (.leaf 103380) (.leaf 104837)))) (.node (.node (.node .skip (.leaf 107763)) (.node (.leaf 109229) (.leaf 110690))) (.node (.node (.leaf 112153) (.leaf 113609)) (.node .skip (.leaf 116536)))))

theorem progressionSegment00023_1_0001Check :
    progressionSegment00023_1_0001Tree.check indexedMarker 58081 43075 64 = true :=
  by decide

theorem progressionSegment00023_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 58081 43075 64 80 :=
  by simpa [progressionSegment00023_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00023_1_0001Check

def progressionSegment00023_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 117996) (.leaf 119456)) (.node (.leaf 120921) (.leaf 122380)))

theorem progressionSegment00023_1_0002Check :
    progressionSegment00023_1_0002Tree.check indexedMarker 58081 43075 80 = true :=
  by decide

theorem progressionSegment00023_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 58081 43075 80 84 :=
  by simpa [progressionSegment00023_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00023_1_0002Check

def progressionSegment00023_1_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 123840) (.leaf 125302))

theorem progressionSegment00023_1_0003Check :
    progressionSegment00023_1_0003Tree.check indexedMarker 58081 43075 84 = true :=
  by decide

theorem progressionSegment00023_1_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 58081 43075 84 86 :=
  by simpa [progressionSegment00023_1_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00023_1_0003Check

def progressionSegment00023_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 377) (.leaf 1837)) (.node .skip (.leaf 4768))) (.node (.node (.leaf 6229) (.leaf 7687)) (.node (.leaf 9142) (.leaf 10606)))) (.node (.node (.node (.leaf 12076) (.leaf 13527)) (.node (.leaf 14993) (.leaf 16449))) (.node (.node (.leaf 17908) (.leaf 19367)) (.node (.leaf 20831) (.leaf 22281))))) (.node (.node (.node (.node (.leaf 23738) (.leaf 25209)) (.node (.leaf 26677) (.leaf 28142))) (.node (.node (.leaf 29604) .skip) (.node (.leaf 32529) (.leaf 33990)))) (.node (.node (.node (.leaf 35447) (.leaf 36913)) (.node (.leaf 38368) .skip)) (.node (.node (.leaf 41296) (.leaf 42763)) (.node (.leaf 44225) (.leaf 45692)))))) (.node (.node (.node (.node (.node (.leaf 47150) (.leaf 48596)) (.node (.leaf 50063) (.leaf 51517))) (.node (.node (.leaf 52967) (.leaf 54421)) (.node (.leaf 55892) (.leaf 57360)))) (.node (.node (.node (.leaf 58818) (.leaf 60277)) (.node (.leaf 61742) (.leaf 63208))) (.node (.node (.leaf 64673) (.leaf 66133)) (.node .skip (.leaf 69062))))) (.node (.node (.node (.node (.leaf 70509) (.leaf 71974)) (.node (.leaf 73444) (.leaf 74906))) (.node (.node .skip (.leaf 77830)) (.node (.leaf 79294) (.leaf 80767)))) (.node (.node (.node (.leaf 82230) (.leaf 83684)) (.node (.leaf 85152) (.leaf 86615))) (.node (.node (.leaf 88079) (.leaf 89530)) (.node (.leaf 90987) (.leaf 92446)))))))

theorem progressionSegment00023_2_0000Check :
    progressionSegment00023_2_0000Tree.check indexedMarker 58081 15006 0 = true :=
  by decide

theorem progressionSegment00023_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 58081 15006 0 64 :=
  by simpa [progressionSegment00023_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00023_2_0000Check

def progressionSegment00023_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 93914) (.leaf 95368)) (.node (.leaf 96836) (.leaf 98290))) (.node (.node (.leaf 99749) (.leaf 101201)) (.node (.leaf 102665) .skip))) (.node (.node (.node (.leaf 105594) (.leaf 107049)) (.node (.leaf 108512) (.leaf 109984))) (.node (.node (.leaf 111456) .skip) (.node (.leaf 114361) (.leaf 115832)))))

theorem progressionSegment00023_2_0001Check :
    progressionSegment00023_2_0001Tree.check indexedMarker 58081 15006 64 = true :=
  by decide

theorem progressionSegment00023_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 58081 15006 64 80 :=
  by simpa [progressionSegment00023_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00023_2_0001Check

def progressionSegment00023_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 117288) (.leaf 118746)) (.node (.leaf 120208) (.leaf 121681)))

theorem progressionSegment00023_2_0002Check :
    progressionSegment00023_2_0002Tree.check indexedMarker 58081 15006 80 = true :=
  by decide

theorem progressionSegment00023_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 58081 15006 80 84 :=
  by simpa [progressionSegment00023_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00023_2_0002Check

def progressionSegment00023_2_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 123139) (.leaf 124587))

theorem progressionSegment00023_2_0003Check :
    progressionSegment00023_2_0003Tree.check indexedMarker 58081 15006 84 = true :=
  by decide

theorem progressionSegment00023_2_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 58081 15006 84 86 :=
  by simpa [progressionSegment00023_2_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00023_2_0003Check

def progressionSegment00024_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 1604) (.leaf 3269)) (.node (.leaf 4944) (.leaf 6603))) (.node (.node (.leaf 8261) (.leaf 9921)) (.node (.leaf 11589) (.leaf 13241)))) (.node (.node (.node (.leaf 14905) .skip) (.node (.leaf 18221) (.leaf 19884))) (.node (.node (.leaf 21541) (.leaf 23202)) (.node (.leaf 24863) (.leaf 26530))))) (.node (.node (.node (.node (.leaf 28198) (.leaf 29861)) (.node (.leaf 31512) (.leaf 33188))) (.node (.node .skip (.leaf 36505)) (.node (.leaf 38162) (.leaf 39832)))) (.node (.node (.node (.leaf 41494) (.leaf 43160)) (.node (.leaf 44828) (.leaf 46491))) (.node (.node (.leaf 48145) (.leaf 49795)) (.node (.leaf 51455) (.leaf 53111)))))) (.node (.node (.node (.node (.node (.leaf 54769) (.leaf 56433)) (.node .skip (.leaf 59759))) (.node (.node (.leaf 61422) (.leaf 63088)) (.node (.leaf 64756) (.leaf 66417)))) (.node (.node (.node (.leaf 68081) (.leaf 69744)) (.node (.leaf 71395) (.leaf 73063))) (.node (.node (.leaf 74729) .skip) (.node (.leaf 78049) (.leaf 79716))))) (.node (.node (.node (.node (.leaf 81392) (.leaf 83057)) (.node (.leaf 84713) (.leaf 86374))) (.node (.node (.leaf 88044) (.leaf 89704)) (.node (.leaf 91349) (.leaf 93019)))) (.node (.node (.node (.leaf 94682) (.leaf 96334)) (.node (.leaf 97998) .skip)) (.node (.node (.leaf 101312) (.leaf 102981)) (.node (.leaf 104639) (.leaf 106305)))))))

theorem progressionSegment00024_1_0000Check :
    progressionSegment00024_1_0000Tree.check indexedMarker 66049 63977 0 = true :=
  by decide

theorem progressionSegment00024_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 66049 63977 0 64 :=
  by simpa [progressionSegment00024_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00024_1_0000Check

def progressionSegment00024_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 107970) (.leaf 109632)) (.node (.leaf 111301) (.leaf 112958))) (.node (.node (.leaf 114612) (.leaf 116285)) (.node .skip (.leaf 119605))))

theorem progressionSegment00024_1_0001Check :
    progressionSegment00024_1_0001Tree.check indexedMarker 66049 63977 64 = true :=
  by decide

theorem progressionSegment00024_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 66049 63977 64 72 :=
  by simpa [progressionSegment00024_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00024_1_0001Check

def progressionSegment00024_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.leaf 121269) (.leaf 122924))

theorem progressionSegment00024_1_0002Check :
    progressionSegment00024_1_0002Tree.check indexedMarker 66049 63977 72 = true :=
  by decide

theorem progressionSegment00024_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 66049 63977 72 74 :=
  by simpa [progressionSegment00024_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00024_1_0002Check

def progressionSegment00024_1_0003Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 124577)

theorem progressionSegment00024_1_0003Check :
    progressionSegment00024_1_0003Tree.check indexedMarker 66049 63977 74 = true :=
  by decide

theorem progressionSegment00024_1_0003 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 66049 63977 74 75 :=
  by simpa [progressionSegment00024_1_0003Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00024_1_0003Check

def progressionSegment00024_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 50) (.leaf 1706)) (.node (.leaf 3376) (.leaf 5050))) (.node (.node .skip (.leaf 8368)) (.node (.leaf 10024) (.leaf 11697)))) (.node (.node (.node (.leaf 13347) (.leaf 15013)) (.node (.leaf 16670) (.leaf 18328))) (.node (.node (.leaf 19983) (.leaf 21646)) (.node (.leaf 23303) .skip)))) (.node (.node (.node (.node (.leaf 26633) (.leaf 28306)) (.node (.leaf 29968) (.leaf 31621))) (.node (.node (.leaf 33289) (.leaf 34947)) (.node (.leaf 36609) (.leaf 38267)))) (.node (.node (.node (.leaf 39941) (.leaf 41602)) (.node (.leaf 43269) (.leaf 44931))) (.node (.node (.leaf 46592) .skip) (.node (.leaf 49905) (.leaf 51563)))))) (.node (.node (.node (.node (.node (.leaf 53217) (.leaf 54875)) (.node (.leaf 56541) (.leaf 58212))) (.node (.node (.leaf 59868) (.leaf 61526)) (.node (.leaf 63194) (.leaf 64867)))) (.node (.node (.node .skip (.leaf 68183)) (.node (.leaf 69848) (.leaf 71498))) (.node (.node (.leaf 73170) (.leaf 74833)) (.node (.leaf 76502) (.leaf 78155))))) (.node (.node (.node (.node (.leaf 79818) (.leaf 81492)) (.node (.leaf 83150) (.leaf 84821))) (.node (.node (.leaf 86477) (.leaf 88152)) (.node .skip (.leaf 91462)))) (.node (.node (.node (.leaf 93120) (.leaf 94781)) (.node (.leaf 96442) (.leaf 98104))) (.node (.node (.leaf 99762) (.leaf 101424)) (.node (.leaf 103083) (.leaf 104742)))))))

theorem progressionSegment00024_2_0000Check :
    progressionSegment00024_2_0000Tree.check indexedMarker 66049 2072 0 = true :=
  by decide

theorem progressionSegment00024_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 66049 2072 0 64 :=
  by simpa [progressionSegment00024_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00024_2_0000Check

def progressionSegment00024_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.leaf 106404) .skip) (.node (.leaf 109737) (.leaf 111412))) (.node (.node (.leaf 113061) (.leaf 114719)) (.node (.leaf 116391) (.leaf 118045))))

theorem progressionSegment00024_2_0001Check :
    progressionSegment00024_2_0001Tree.check indexedMarker 66049 2072 64 = true :=
  by decide

theorem progressionSegment00024_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 66049 2072 64 72 :=
  by simpa [progressionSegment00024_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00024_2_0001Check

def progressionSegment00024_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 119711) (.leaf 121377)) (.node (.leaf 123034) (.leaf 124690)))

theorem progressionSegment00024_2_0002Check :
    progressionSegment00024_2_0002Tree.check indexedMarker 66049 2072 72 = true :=
  by decide

theorem progressionSegment00024_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 66049 2072 72 76 :=
  by simpa [progressionSegment00024_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00024_2_0002Check

def progressionSegment00025_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 344) (.leaf 2157)) (.node (.leaf 3984) (.leaf 5807))) (.node (.node (.leaf 7625) (.leaf 9449)) (.node (.leaf 11270) (.leaf 13090)))) (.node (.node (.node (.leaf 14910) (.leaf 16725)) (.node (.leaf 18545) (.leaf 20366))) (.node (.node (.leaf 22177) (.leaf 23993)) (.node (.leaf 25821) (.leaf 27653))))) (.node (.node (.node (.node (.leaf 29471) (.leaf 31287)) (.node (.leaf 33116) (.leaf 34935))) (.node (.node .skip .skip) (.node (.leaf 40408) (.leaf 42229)))) (.node (.node (.node (.leaf 44046) (.leaf 45875)) (.node (.leaf 47681) (.leaf 49494))) (.node (.node (.leaf 51316) (.leaf 53127)) (.node (.leaf 54946) (.leaf 56767)))))) (.node (.node (.node (.node (.node (.leaf 58589) (.leaf 60400)) (.node (.leaf 62233) (.leaf 64055))) (.node (.node (.leaf 65880) (.leaf 67706)) (.node (.leaf 69522) (.leaf 71335)))) (.node (.node (.node (.leaf 73165) (.leaf 74993)) (.node (.leaf 76812) (.leaf 78632))) (.node (.node (.leaf 80457) .skip) (.node .skip (.leaf 85931))))) (.node (.node (.node (.node (.leaf 87756) (.leaf 89568)) (.node (.leaf 91379) (.leaf 93207))) (.node (.node (.leaf 95027) (.leaf 96847)) (.node (.leaf 98655) (.leaf 100485)))) (.node (.node (.node (.leaf 102295) (.leaf 104120)) (.node (.leaf 105941) (.leaf 107761))) (.node (.node (.leaf 109587) (.leaf 111422)) (.node (.leaf 113225) (.leaf 115037)))))))

theorem progressionSegment00025_1_0000Check :
    progressionSegment00025_1_0000Tree.check indexedMarker 72361 13637 0 = true :=
  by decide

theorem progressionSegment00025_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 72361 13637 0 64 :=
  by simpa [progressionSegment00025_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00025_1_0000Check

def progressionSegment00025_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 116864) (.leaf 118686)) (.node (.leaf 120503) (.leaf 122330)))

theorem progressionSegment00025_1_0001Check :
    progressionSegment00025_1_0001Tree.check indexedMarker 72361 13637 64 = true :=
  by decide

theorem progressionSegment00025_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 72361 13637 64 68 :=
  by simpa [progressionSegment00025_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00025_1_0001Check

def progressionSegment00025_1_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 124150)

theorem progressionSegment00025_1_0002Check :
    progressionSegment00025_1_0002Tree.check indexedMarker 72361 13637 68 = true :=
  by decide

theorem progressionSegment00025_1_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 72361 13637 68 69 :=
  by simpa [progressionSegment00025_1_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00025_1_0002Check

def progressionSegment00025_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 1471) (.leaf 3297)) (.node (.leaf 5134) .skip)) (.node (.node .skip (.leaf 10579)) (.node (.leaf 12404) (.leaf 14223)))) (.node (.node (.node (.leaf 16043) (.leaf 17858)) (.node (.leaf 19672) (.leaf 21489))) (.node (.node (.leaf 23311) (.leaf 25127)) (.node (.leaf 26964) (.leaf 28783))))) (.node (.node (.node (.node (.leaf 30605) (.leaf 32423)) (.node (.leaf 34253) (.leaf 36060))) (.node (.node (.leaf 37883) (.leaf 39714)) (.node (.leaf 41534) (.leaf 43362)))) (.node (.node (.node (.leaf 45182) (.leaf 47000)) (.node (.leaf 48811) (.leaf 50630))) (.node (.node .skip .skip) (.node (.leaf 56080) (.leaf 57914)))))) (.node (.node (.node (.node (.node (.leaf 59728) (.leaf 61546)) (.node (.leaf 63371) (.leaf 65195))) (.node (.node (.leaf 67020) (.leaf 68841)) (.node (.leaf 70652) (.leaf 72478)))) (.node (.node (.node (.leaf 74305) (.leaf 76125)) (.node (.leaf 77941) (.leaf 79761))) (.node (.node (.leaf 81599) (.leaf 83419)) (.node (.leaf 85243) (.leaf 87069))))) (.node (.node (.node (.node (.leaf 88875) (.leaf 90689)) (.node (.leaf 92511) (.leaf 94335))) (.node (.node (.leaf 96151) .skip) (.node .skip (.leaf 101610)))) (.node (.node (.node (.leaf 103435) (.leaf 105260)) (.node (.leaf 107071) (.leaf 108901))) (.node (.node (.leaf 110724) (.leaf 112545)) (.node (.leaf 114356) (.leaf 116183)))))))

theorem progressionSegment00025_2_0000Check :
    progressionSegment00025_2_0000Tree.check indexedMarker 72361 58724 0 = true :=
  by decide

theorem progressionSegment00025_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 72361 58724 0 64 :=
  by simpa [progressionSegment00025_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00025_2_0000Check

def progressionSegment00025_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.leaf 118004) (.leaf 119829)) (.node (.leaf 121653) (.leaf 123465)))

theorem progressionSegment00025_2_0001Check :
    progressionSegment00025_2_0001Tree.check indexedMarker 72361 58724 64 = true :=
  by decide

theorem progressionSegment00025_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 72361 58724 64 68 :=
  by simpa [progressionSegment00025_2_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00025_2_0001Check

def progressionSegment00025_2_0002Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 125286)

theorem progressionSegment00025_2_0002Check :
    progressionSegment00025_2_0002Tree.check indexedMarker 72361 58724 68 = true :=
  by decide

theorem progressionSegment00025_2_0002 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 72361 58724 68 69 :=
  by simpa [progressionSegment00025_2_0002Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00025_2_0002Check

def progressionSegment00026_1_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 782) (.leaf 2718)) (.node (.leaf 4661) (.leaf 6587))) (.node (.node (.leaf 8513) (.leaf 10442)) (.node (.leaf 12374) (.leaf 14299)))) (.node (.node (.node .skip (.leaf 18161)) (.node (.leaf 20089) (.leaf 22009))) (.node (.node (.leaf 23937) (.leaf 25876)) (.node (.leaf 27820) (.leaf 29745))))) (.node (.node (.node (.node (.leaf 31670) (.leaf 33605)) (.node (.leaf 35527) (.leaf 37462))) (.node (.node (.leaf 39398) (.leaf 41331)) (.node (.leaf 43271) (.leaf 45201)))) (.node (.node (.node .skip (.leaf 49051)) (.node (.leaf 50983) (.leaf 52897))) (.node (.node (.leaf 54824) (.leaf 56759)) (.node (.leaf 58691) (.leaf 60617)))))) (.node (.node (.node (.node (.node (.leaf 62554) .skip) (.node (.leaf 66424) (.leaf 68359))) (.node (.node (.leaf 70273) (.leaf 72212)) (.node (.leaf 74140) (.leaf 76083)))) (.node (.node (.node (.leaf 78005) (.leaf 79942)) (.node (.leaf 81889) (.leaf 83811))) (.node (.node (.leaf 85750) (.leaf 87680)) (.node (.leaf 89614) (.leaf 91533))))) (.node (.node (.node (.node (.leaf 93471) .skip) (.node (.leaf 97317) (.leaf 99246))) (.node (.node (.leaf 101164) (.leaf 103107)) (.node (.leaf 105038) (.leaf 106964)))) (.node (.node (.node (.leaf 108906) (.leaf 110837)) (.node .skip (.leaf 114691))) (.node (.node (.leaf 116627) (.leaf 118554)) (.node (.leaf 120480) (.leaf 122421)))))))

theorem progressionSegment00026_1_0000Check :
    progressionSegment00026_1_0000Tree.check indexedMarker 76729 31361 0 = true :=
  by decide

theorem progressionSegment00026_1_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 76729 31361 0 64 :=
  by simpa [progressionSegment00026_1_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00026_1_0000Check

def progressionSegment00026_1_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 124340)

theorem progressionSegment00026_1_0001Check :
    progressionSegment00026_1_0001Tree.check indexedMarker 76729 31361 64 = true :=
  by decide

theorem progressionSegment00026_1_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 76729 31361 64 65 :=
  by simpa [progressionSegment00026_1_0001Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00026_1_0001Check

def progressionSegment00026_2_0000Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node .skip (.leaf 3074)) (.node (.leaf 5017) (.leaf 6942))) (.node (.node (.leaf 8861) (.leaf 10800)) (.node (.leaf 12723) (.leaf 14662)))) (.node (.node (.node (.leaf 16579) (.leaf 18514)) (.node (.leaf 20440) (.leaf 22364))) (.node (.node (.leaf 24299) (.leaf 26233)) (.node (.leaf 28166) (.leaf 30099))))) (.node (.node (.node (.node .skip (.leaf 33959)) (.node (.leaf 35888) (.leaf 37817))) (.node (.node (.leaf 39755) (.leaf 41685)) (.node (.leaf 43623) (.leaf 45551)))) (.node (.node (.node (.leaf 47480) .skip) (.node (.leaf 51333) (.leaf 53251))) (.node (.node (.leaf 55180) (.leaf 57111)) (.node (.leaf 59044) (.leaf 60974)))))) (.node (.node (.node (.node (.node (.leaf 62915) (.leaf 64851)) (.node (.leaf 66781) (.leaf 68714))) (.node (.node (.leaf 70627) (.leaf 72560)) (.node (.leaf 74500) (.leaf 76436)))) (.node (.node (.node (.leaf 78360) .skip) (.node (.leaf 82242) (.leaf 84173))) (.node (.node (.leaf 86102) (.leaf 88035)) (.node (.leaf 89960) (.leaf 91883))))) (.node (.node (.node (.node (.leaf 93814) (.leaf 95744)) (.node .skip (.leaf 99598))) (.node (.node (.leaf 101530) (.leaf 103463)) (.node (.leaf 105391) (.leaf 107325)))) (.node (.node (.node (.leaf 109256) (.leaf 111193)) (.node (.leaf 113117) (.leaf 115036))) (.node (.node (.leaf 116976) (.leaf 118910)) (.node (.leaf 120838) (.leaf 122774)))))))

theorem progressionSegment00026_2_0000Check :
    progressionSegment00026_2_0000Tree.check indexedMarker 76729 45368 0 = true :=
  by decide

theorem progressionSegment00026_2_0000 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 76729 45368 0 64 :=
  by simpa [progressionSegment00026_2_0000Tree, IndexedMarkerData.OutsideProgressionIndexTree.size] using
    IndexedMarkerData.OutsideProgressionIndexTree.range progressionSegment00026_2_0000Check

def progressionSegment00026_2_0001Tree : IndexedMarkerData.OutsideProgressionIndexTree :=
  (.leaf 124699)

theorem progressionSegment00026_2_0001Check :
    progressionSegment00026_2_0001Tree.check indexedMarker 76729 45368 64 = true :=
  by decide

theorem progressionSegment00026_2_0001 :
    IndexedMarkerData.OutsideProgressionIndexTree.RangeCoveredOutside indexedMarker 76729 45368 64 65 :=
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

end Erdos848.GeneratedLowDiagonalCoverage
