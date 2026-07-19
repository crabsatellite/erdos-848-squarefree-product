import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00011_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 138330) (.leaf 139399)) (.node (.leaf 140472) (.leaf 141545))) (.node (.node (.leaf 142620) (.leaf 143694)) (.node (.leaf 144756) (.leaf 145836)))) (.node (.node (.node (.leaf 146913) (.leaf 147982)) (.node (.leaf 149046) (.leaf 150125))) (.node (.node (.leaf 151197) (.leaf 152275)) (.node (.leaf 153346) (.leaf 154418)))))

theorem progressionSegment00011_2_0001Check :
    progressionSegment00011_2_0001Tree.check indexedMarker 10201 9686 128 = true :=
  by decide

theorem progressionSegment00011_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 10201 9686 128 144 :=
  by simpa [progressionSegment00011_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00011_2_0001Check

def progressionSegment00011_2_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 155489) (.leaf 156558))

theorem progressionSegment00011_2_0002Check :
    progressionSegment00011_2_0002Tree.check indexedMarker 10201 9686 144 = true :=
  by decide

theorem progressionSegment00011_2_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 10201 9686 144 146 :=
  by simpa [progressionSegment00011_2_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00011_2_0002Check

def progressionSegment00011_2_0003Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 157631)

theorem progressionSegment00011_2_0003Check :
    progressionSegment00011_2_0003Tree.check indexedMarker 10201 9686 146 = true :=
  by decide

theorem progressionSegment00011_2_0003 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 10201 9686 146 147 :=
  by simpa [progressionSegment00011_2_0003Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00011_2_0003Check

def progressionSegment00012_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 644) (.leaf 1895)) (.node (.leaf 3137) (.leaf 4395))) (.node (.node (.leaf 5644) (.leaf 6885)) (.node (.leaf 8136) (.leaf 9389)))) (.node (.node (.node (.leaf 10636) (.leaf 11891)) (.node (.leaf 13142) (.leaf 14390))) (.node (.node (.leaf 15641) (.leaf 16888)) (.node (.leaf 18144) (.leaf 19399))))) (.node (.node (.node (.node (.leaf 20647) (.leaf 21902)) (.node (.leaf 23142) (.leaf 24391))) (.node (.node (.leaf 25636) (.leaf 26887)) (.node (.leaf 28146) (.leaf 29386)))) (.node (.node (.node (.leaf 30634) (.leaf 31883)) (.node (.leaf 33135) (.leaf 34381))) (.node (.node (.leaf 35627) (.leaf 36877)) (.node (.leaf 38121) (.leaf 39380)))))) (.node (.node (.node (.node (.node (.leaf 40628) (.leaf 41875)) (.node (.leaf 43129) (.leaf 44377))) (.node (.node (.leaf 45631) (.leaf 46874)) (.node (.leaf 48131) (.leaf 49384)))) (.node (.node (.node (.leaf 50632) (.leaf 51872)) (.node (.leaf 53118) (.leaf 54371))) (.node (.node (.leaf 55620) (.leaf 56866)) (.node (.leaf 58118) (.leaf 59371))))) (.node (.node (.node (.node (.leaf 60619) (.leaf 61868)) (.node (.leaf 63120) (.leaf 64370))) (.node (.node (.leaf 65615) (.leaf 66864)) (.node (.leaf 68115) (.leaf 69357)))) (.node (.node (.node (.leaf 70614) (.leaf 71865)) (.node (.leaf 73110) (.leaf 74356))) (.node (.node (.leaf 75606) (.leaf 76857)) (.node (.leaf 78107) (.leaf 79352)))))))

theorem progressionSegment00012_1_0000Check :
    progressionSegment00012_1_0000Tree.check indexedMarker 11881 6137 0 = true :=
  by decide

theorem progressionSegment00012_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 11881 6137 0 64 :=
  by simpa [progressionSegment00012_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00012_1_0000Check

end Erdos848.GeneratedDiagonalCoverage
