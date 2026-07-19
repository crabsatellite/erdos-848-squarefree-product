import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00013_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 176) (.leaf 1521)) (.node (.leaf 2856) (.leaf 4207))) (.node (.node (.leaf 5552) (.leaf 6887)) (.node (.leaf 8232) (.leaf 9581)))) (.node (.node (.node (.leaf 10918) (.leaf 12264)) (.node (.leaf 13605) (.leaf 14955))) (.node (.node (.leaf 16291) (.leaf 17645)) (.node (.leaf 18987) (.leaf 20329))))) (.node (.node (.node (.node (.leaf 21681) (.leaf 23016)) (.node (.leaf 24357) (.leaf 25700))) (.node (.node (.leaf 27040) (.leaf 28388)) (.node (.leaf 29725) (.leaf 31066)))) (.node (.node (.node (.leaf 32415) (.leaf 33755)) (.node (.leaf 35095) (.leaf 36432))) (.node (.node (.leaf 37776) (.leaf 39123)) (.node (.leaf 40465) (.leaf 41803)))))) (.node (.node (.node (.node (.node (.leaf 43151) (.leaf 44494)) (.node (.leaf 45840) (.leaf 47180))) (.node (.node (.leaf 48528) (.leaf 49871)) (.node (.leaf 51207) (.leaf 52547)))) (.node (.node (.node (.leaf 53894) (.leaf 55234)) (.node (.leaf 56574) (.leaf 57914))) (.node (.node (.leaf 59263) (.leaf 60606)) (.node (.leaf 61956) (.leaf 63296))))) (.node (.node (.node (.node (.leaf 64635) (.leaf 65982)) (.node (.leaf 67318) (.leaf 68658))) (.node (.node (.leaf 70009) (.leaf 71352)) (.node (.leaf 72686) (.leaf 74034)))) (.node (.node (.node (.leaf 75371) (.leaf 76714)) (.node (.leaf 78058) (.leaf 79396))) (.node (.node (.leaf 80741) (.leaf 82081)) (.node (.leaf 83427) (.leaf 84772)))))))

theorem progressionSegment00013_2_0000Check :
    progressionSegment00013_2_0000Tree.check indexedMarker 12769 1710 0 = true :=
  by decide

theorem progressionSegment00013_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 12769 1710 0 64 :=
  by simpa [progressionSegment00013_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00013_2_0000Check

def progressionSegment00013_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 86112) (.leaf 87454)) (.node (.leaf 88792) (.leaf 90138))) (.node (.node (.leaf 91474) (.leaf 92815)) (.node (.leaf 94163) (.leaf 95506)))) (.node (.node (.node (.leaf 96847) (.leaf 98192)) (.node (.leaf 99527) (.leaf 100878))) (.node (.node (.leaf 102224) (.leaf 103563)) (.node (.leaf 104900) (.leaf 106251))))) (.node (.node (.node (.node (.leaf 107596) (.leaf 108931)) (.node (.leaf 110281) (.leaf 111629))) (.node (.node (.leaf 112973) (.leaf 114312)) (.node (.leaf 115660) (.leaf 117004)))) (.node (.node (.node (.leaf 118351) (.leaf 119688)) (.node (.leaf 121025) (.leaf 122373))) (.node (.node (.leaf 123715) (.leaf 125060)) (.node (.leaf 126400) (.leaf 127743))))))

theorem progressionSegment00013_2_0001Check :
    progressionSegment00013_2_0001Tree.check indexedMarker 12769 1710 64 = true :=
  by decide

theorem progressionSegment00013_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 12769 1710 64 96 :=
  by simpa [progressionSegment00013_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00013_2_0001Check

def progressionSegment00013_2_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 129079) (.leaf 130419)) (.node (.leaf 131766) (.leaf 133108))) (.node (.node (.leaf 134457) (.leaf 135802)) (.node (.leaf 137153) (.leaf 138487)))) (.node (.node (.node (.leaf 139825) (.leaf 141173)) (.node (.leaf 142517) (.leaf 143858))) (.node (.node (.leaf 145195) (.leaf 146542)) (.node (.leaf 147883) (.leaf 149223)))))

theorem progressionSegment00013_2_0002Check :
    progressionSegment00013_2_0002Tree.check indexedMarker 12769 1710 96 = true :=
  by decide

theorem progressionSegment00013_2_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 12769 1710 96 112 :=
  by simpa [progressionSegment00013_2_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00013_2_0002Check

def progressionSegment00013_2_0003Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 150561) (.leaf 151917)) (.node (.leaf 153256) (.leaf 154600)))

theorem progressionSegment00013_2_0003Check :
    progressionSegment00013_2_0003Tree.check indexedMarker 12769 1710 112 = true :=
  by decide

theorem progressionSegment00013_2_0003 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 12769 1710 112 116 :=
  by simpa [progressionSegment00013_2_0003Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00013_2_0003Check

end Erdos848.GeneratedDiagonalCoverage
