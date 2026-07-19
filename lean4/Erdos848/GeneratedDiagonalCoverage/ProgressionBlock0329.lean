import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00009_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node (.leaf 426) (.leaf 1260)) (.node (.leaf 2089) (.leaf 2922))) (.node (.node (.leaf 3755) (.leaf 4594)) (.node (.leaf 5427) (.leaf 6252)))) (.node (.node (.node (.leaf 7085) (.leaf 7920)) (.node (.leaf 8753) (.leaf 9592))) (.node (.node (.leaf 10418) (.leaf 11253)) (.node (.leaf 12086) (.leaf 12923))))) (.node (.node (.node (.node (.leaf 13753) (.leaf 14593)) (.node (.leaf 15426) (.leaf 16247))) (.node (.node (.leaf 17092) (.leaf 17926)) (.node (.leaf 18762) (.leaf 19598)))) (.node (.node (.node (.leaf 20423) (.leaf 21267)) (.node (.leaf 22097) (.leaf 22926))) (.node (.node (.leaf 23754) (.leaf 24589)) (.node (.leaf 25419) (.leaf 26254)))))) (.node (.node (.node (.node (.node (.leaf 27091) (.leaf 27924)) (.node (.leaf 28760) (.leaf 29585))) (.node (.node (.leaf 30417) (.leaf 31250)) (.node (.leaf 32080) (.leaf 32919)))) (.node (.node (.node (.leaf 33751) (.leaf 34582)) (.node (.leaf 35415) (.leaf 36245))) (.node (.node (.leaf 37078) (.leaf 37905)) (.node (.leaf 38743) (.leaf 39580))))) (.node (.node (.node (.node (.leaf 40410) (.leaf 41246)) (.node (.leaf 42078) (.leaf 42909))) (.node (.node (.leaf 43740) (.leaf 44580)) (.node (.leaf 45415) (.leaf 46247)))) (.node (.node (.node (.leaf 47077) (.leaf 47911)) (.node (.leaf 48749) (.leaf 49583))) (.node (.node (.leaf 50410) (.leaf 51240)) (.node (.leaf 52075) (.leaf 52903))))))) (.node (.node (.node (.node (.node (.node (.leaf 53738) (.leaf 54574)) (.node (.leaf 55404) (.leaf 56234))) (.node (.node (.leaf 57068) (.leaf 57898)) (.node (.leaf 58735) (.leaf 59570)))) (.node (.node (.node (.leaf 60400) (.leaf 61241)) (.node (.leaf 62072) (.leaf 62906))) (.node (.node (.leaf 63734) (.leaf 64569)) (.node (.leaf 65399) (.leaf 66237))))) (.node (.node (.node (.node (.leaf 67064) (.leaf 67899)) (.node (.leaf 68730) (.leaf 69562))) (.node (.node (.leaf 70402) (.leaf 71231)) (.node (.leaf 72064) (.leaf 72895)))) (.node (.node (.node (.leaf 73723) (.leaf 74560)) (.node (.leaf 75389) (.leaf 76222))) (.node (.node (.leaf 77058) (.leaf 77889)) (.node (.leaf 78721) (.leaf 79556)))))) (.node (.node (.node (.node (.node (.leaf 80385) (.leaf 81217)) (.node (.leaf 82047) (.leaf 82883))) (.node (.node (.leaf 83720) (.leaf 84555)) (.node (.leaf 85384) (.leaf 86218)))) (.node (.node (.node (.leaf 87052) (.leaf 87880)) (.node (.leaf 88712) (.leaf 89535))) (.node (.node (.leaf 90378) (.leaf 91204)) (.node (.leaf 92038) (.leaf 92872))))) (.node (.node (.node (.node (.leaf 93707) (.leaf 94544)) (.node (.leaf 95370) (.leaf 96208))) (.node (.node (.leaf 97043) (.leaf 97870)) (.node (.leaf 98707) (.leaf 99533)))) (.node (.node (.node (.leaf 100369) (.leaf 101208)) (.node (.leaf 102040) (.leaf 102876))) (.node (.node (.leaf 103704) (.leaf 104534)) (.node (.leaf 105369) (.leaf 106206))))))))

theorem progressionSegment00009_2_0000Check :
    progressionSegment00009_2_0000Tree.check indexedMarker 7921 4060 0 = true :=
  by decide

theorem progressionSegment00009_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 7921 4060 0 128 :=
  by simpa [progressionSegment00009_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00009_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
