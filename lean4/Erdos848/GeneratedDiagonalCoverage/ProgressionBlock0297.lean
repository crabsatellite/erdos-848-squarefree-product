import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00003_1_0003Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node (.leaf 135849) (.leaf 135936)) (.node (.leaf 136025) (.leaf 136114))) (.node (.node (.leaf 136204) (.leaf 136296)) (.node (.leaf 136383) (.leaf 136470)))) (.node (.node (.node (.leaf 136561) (.leaf 136649)) (.node (.leaf 136737) (.leaf 136829))) (.node (.node (.leaf 136915) (.leaf 137000)) (.node (.leaf 137091) (.leaf 137181))))) (.node (.node (.node (.node (.leaf 137270) (.leaf 137357)) (.node (.leaf 137443) (.leaf 137533))) (.node (.node (.leaf 137619) (.leaf 137705)) (.node (.leaf 137793) (.leaf 137881)))) (.node (.node (.node (.leaf 137972) (.leaf 138061)) (.node (.leaf 138151) (.leaf 138238))) (.node (.node (.leaf 138324) (.leaf 138414)) (.node (.leaf 138505) (.leaf 138593)))))) (.node (.node (.node (.node (.node (.leaf 138681) (.leaf 138768)) (.node (.leaf 138860) (.leaf 138946))) (.node (.node (.leaf 139032) (.leaf 139120)) (.node (.leaf 139204) (.leaf 139293)))) (.node (.node (.node (.leaf 139383) (.leaf 139474)) (.node (.leaf 139562) (.leaf 139651))) (.node (.node (.leaf 139736) (.leaf 139822)) (.node (.leaf 139913) (.leaf 140000))))) (.node (.node (.node (.node (.leaf 140093) (.leaf 140180)) (.node (.leaf 140271) (.leaf 140360))) (.node (.node (.leaf 140445) (.leaf 140535)) (.node (.leaf 140626) (.leaf 140714)))) (.node (.node (.node (.leaf 140803) (.leaf 140889)) (.node (.leaf 140979) (.leaf 141065))) (.node (.node (.leaf 141155) (.leaf 141245)) (.node (.leaf 141331) (.leaf 141419))))))) (.node (.node (.node (.node (.node (.node (.leaf 141504) (.leaf 141594)) (.node (.leaf 141686) (.leaf 141772))) (.node (.node (.leaf 141860) (.leaf 141949)) (.node (.leaf 142040) (.leaf 142130)))) (.node (.node (.node (.leaf 142216) (.leaf 142305)) (.node (.leaf 142393) (.leaf 142483))) (.node (.node (.leaf 142571) (.leaf 142658)) (.node (.leaf 142746) (.leaf 142836))))) (.node (.node (.node (.node (.leaf 142927) (.leaf 143014)) (.node (.leaf 143104) (.leaf 143193))) (.node (.node (.leaf 143280) (.leaf 143366)) (.node (.leaf 143454) (.leaf 143540)))) (.node (.node (.node (.leaf 143628) (.leaf 143721)) (.node (.leaf 143808) (.leaf 143895))) (.node (.node (.leaf 143983) (.leaf 144072)) (.node (.leaf 144160) (.leaf 144245)))))) (.node (.node (.node (.node (.node (.leaf 144334) (.leaf 144422)) (.node (.leaf 144508) (.leaf 144593))) (.node (.node (.leaf 144682) (.leaf 144771)) (.node (.leaf 144860) (.leaf 144949)))) (.node (.node (.node (.leaf 145037) (.leaf 145131)) (.node (.leaf 145217) (.leaf 145306))) (.node (.node (.leaf 145398) (.leaf 145484)) (.node (.leaf 145576) (.leaf 145666))))) (.node (.node (.node (.node (.leaf 145754) (.leaf 145839)) (.node (.leaf 145927) (.leaf 146018))) (.node (.node (.leaf 146105) (.leaf 146194)) (.node (.leaf 146285) (.leaf 146371)))) (.node (.node (.node (.leaf 146460) (.leaf 146547)) (.node (.leaf 146637) (.leaf 146724))) (.node (.node (.leaf 146811) (.leaf 146903)) (.node (.leaf 146991) (.leaf 147082))))))))

theorem progressionSegment00003_1_0003Check :
    progressionSegment00003_1_0003Tree.check indexedMarker 841 41 1536 = true :=
  by decide

theorem progressionSegment00003_1_0003 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 841 41 1536 1664 :=
  by simpa [progressionSegment00003_1_0003Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00003_1_0003Check

def progressionSegment00003_1_0004Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 147170) (.leaf 147256)) (.node (.leaf 147347) (.leaf 147436))) (.node (.node (.leaf 147521) (.leaf 147608)) (.node (.leaf 147694) (.leaf 147782)))) (.node (.node (.node (.leaf 147873) (.leaf 147961)) (.node (.leaf 148051) (.leaf 148139))) (.node (.node (.leaf 148225) (.leaf 148312)) (.node (.leaf 148397) (.leaf 148483))))) (.node (.node (.node (.node (.leaf 148572) (.leaf 148660)) (.node (.leaf 148749) (.leaf 148836))) (.node (.node (.leaf 148927) (.leaf 149016)) (.node (.leaf 149101) (.leaf 149194)))) (.node (.node (.node (.leaf 149283) (.leaf 149372)) (.node (.leaf 149460) (.leaf 149552))) (.node (.node (.leaf 149640) (.leaf 149727)) (.node (.leaf 149815) (.leaf 149903)))))) (.node (.node (.node (.node (.node (.leaf 149992) (.leaf 150081)) (.node (.leaf 150171) (.leaf 150256))) (.node (.node (.leaf 150344) (.leaf 150433)) (.node (.leaf 150519) (.leaf 150605)))) (.node (.node (.node (.leaf 150694) (.leaf 150785)) (.node (.leaf 150875) (.leaf 150964))) (.node (.node (.leaf 151052) (.leaf 151139)) (.node (.leaf 151232) (.leaf 151323))))) (.node (.node (.node (.node (.leaf 151409) (.leaf 151499)) (.node (.leaf 151589) (.leaf 151676))) (.node (.node (.leaf 151766) (.leaf 151855)) (.node (.leaf 151945) (.leaf 152036)))) (.node (.node (.node (.leaf 152121) (.leaf 152211)) (.node (.leaf 152300) (.leaf 152388))) (.node (.node (.leaf 152474) (.leaf 152561)) (.node (.leaf 152647) (.leaf 152737)))))))

theorem progressionSegment00003_1_0004Check :
    progressionSegment00003_1_0004Tree.check indexedMarker 841 41 1664 = true :=
  by decide

theorem progressionSegment00003_1_0004 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 841 41 1664 1728 :=
  by simpa [progressionSegment00003_1_0004Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00003_1_0004Check

def progressionSegment00003_1_0005Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 152826) (.leaf 152915)) (.node (.leaf 153002) (.leaf 153093))) (.node (.node (.leaf 153181) (.leaf 153271)) (.node (.leaf 153359) (.leaf 153444)))) (.node (.node (.node (.leaf 153535) (.leaf 153623)) (.node (.leaf 153713) (.leaf 153801))) (.node (.node (.leaf 153889) (.leaf 153980)) (.node (.leaf 154068) (.leaf 154154))))) (.node (.node (.node (.node (.leaf 154243) (.leaf 154333)) (.node (.leaf 154417) (.leaf 154507))) (.node (.node (.leaf 154596) (.leaf 154685)) (.node (.leaf 154773) (.leaf 154862)))) (.node (.node (.node (.leaf 154950) (.leaf 155037)) (.node (.leaf 155122) (.leaf 155211))) (.node (.node (.leaf 155300) (.leaf 155389)) (.node (.leaf 155479) (.leaf 155567))))))

theorem progressionSegment00003_1_0005Check :
    progressionSegment00003_1_0005Tree.check indexedMarker 841 41 1728 = true :=
  by decide

theorem progressionSegment00003_1_0005 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 841 41 1728 1760 :=
  by simpa [progressionSegment00003_1_0005Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00003_1_0005Check

def progressionSegment00003_1_0006Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 155654) (.leaf 155741)) (.node (.leaf 155832) (.leaf 155919))) (.node (.node (.leaf 156007) (.leaf 156096)) (.node (.leaf 156186) (.leaf 156278)))) (.node (.node (.node (.leaf 156364) (.leaf 156447)) (.node (.leaf 156535) (.leaf 156626))) (.node (.node (.leaf 156712) (.leaf 156804)) (.node (.leaf 156890) (.leaf 156982)))))

theorem progressionSegment00003_1_0006Check :
    progressionSegment00003_1_0006Tree.check indexedMarker 841 41 1760 = true :=
  by decide

theorem progressionSegment00003_1_0006 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 841 41 1760 1776 :=
  by simpa [progressionSegment00003_1_0006Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00003_1_0006Check

def progressionSegment00003_1_0007Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 157072) (.leaf 157157)) (.node (.leaf 157248) (.leaf 157333))) (.node (.node (.leaf 157421) (.leaf 157510)) (.node (.leaf 157595) (.leaf 157686))))

theorem progressionSegment00003_1_0007Check :
    progressionSegment00003_1_0007Tree.check indexedMarker 841 41 1776 = true :=
  by decide

theorem progressionSegment00003_1_0007 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 841 41 1776 1784 :=
  by simpa [progressionSegment00003_1_0007Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00003_1_0007Check

end Erdos848.GeneratedDiagonalCoverage
