import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00015_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 2145) (.leaf 4487)) (.node (.leaf 6816) (.leaf 9151))) (.node (.node (.leaf 11487) (.leaf 13821)) (.node (.leaf 16150) (.leaf 18503)))) (.node (.node (.node (.leaf 20843) (.leaf 23169)) (.node (.leaf 25502) (.leaf 27840))) (.node (.node (.leaf 30174) (.leaf 32510)) (.node (.leaf 34841) (.leaf 37173))))) (.node (.node (.node (.node (.leaf 39509) (.leaf 41839)) (.node (.leaf 44175) (.leaf 46515))) (.node (.node (.leaf 48857) (.leaf 51180)) (.node (.leaf 53509) (.leaf 55849)))) (.node (.node (.node (.leaf 58182) (.leaf 60519)) (.node (.leaf 62856) (.leaf 65189))) (.node (.node (.leaf 67518) (.leaf 69856)) (.node (.leaf 72193) (.leaf 74523)))))) (.node (.node (.node (.node (.node (.leaf 76859) (.leaf 79187)) (.node (.leaf 81519) (.leaf 83860))) (.node (.node (.leaf 86191) (.leaf 88524)) (.node (.leaf 90858) (.leaf 93188)))) (.node (.node (.node (.leaf 95527) (.leaf 97858)) (.node (.leaf 100188) (.leaf 102538))) (.node (.node (.leaf 104859) (.leaf 107202)) (.node (.leaf 109538) (.leaf 111878))))) (.node (.node (.node (.node (.leaf 114210) (.leaf 116550)) (.node (.leaf 118881) (.leaf 121219))) (.node (.node (.leaf 123554) (.leaf 125890)) (.node (.leaf 128218) (.leaf 130549)))) (.node (.node (.node (.leaf 132881) (.leaf 135223)) (.node (.leaf 137564) (.leaf 139892))) (.node (.node (.leaf 142231) (.leaf 144556)) (.node (.leaf 146901) (.leaf 149228)))))))

theorem progressionSegment00015_2_0000Check :
    progressionSegment00015_2_0000Tree.check indexedMarker 22201 20457 0 = true :=
  by decide

theorem progressionSegment00015_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 22201 20457 0 64 :=
  by simpa [progressionSegment00015_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00015_2_0000Check

def progressionSegment00015_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 151567) (.leaf 153905))

theorem progressionSegment00015_2_0001Check :
    progressionSegment00015_2_0001Tree.check indexedMarker 22201 20457 64 = true :=
  by decide

theorem progressionSegment00015_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 22201 20457 64 66 :=
  by simpa [progressionSegment00015_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00015_2_0001Check

def progressionSegment00015_2_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 156238)

theorem progressionSegment00015_2_0002Check :
    progressionSegment00015_2_0002Tree.check indexedMarker 22201 20457 66 = true :=
  by decide

theorem progressionSegment00015_2_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 22201 20457 66 67 :=
  by simpa [progressionSegment00015_2_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00015_2_0002Check

def progressionSegment00016_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 1433) (.leaf 4024)) (.node (.leaf 6612) (.leaf 9205))) (.node (.node (.leaf 11798) (.leaf 14395)) (.node (.leaf 16988) (.leaf 19591)))) (.node (.node (.node (.leaf 22184) (.leaf 24769)) (.node (.leaf 27361) (.leaf 29952))) (.node (.node (.leaf 32546) (.leaf 35134)) (.node (.leaf 37721) (.leaf 40314))))) (.node (.node (.node (.node (.leaf 42906) (.leaf 45506)) (.node (.leaf 48096) (.leaf 50694))) (.node (.node (.leaf 53276) (.leaf 55869)) (.node (.leaf 58461) (.leaf 61052)))) (.node (.node (.node (.leaf 63647) (.leaf 66240)) (.node (.leaf 68828) (.leaf 71423))) (.node (.node (.leaf 74008) (.leaf 76599)) (.node (.leaf 79190) (.leaf 81781))))))

theorem progressionSegment00016_1_0000Check :
    progressionSegment00016_1_0000Tree.check indexedMarker 24649 13631 0 = true :=
  by decide

theorem progressionSegment00016_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 24649 13631 0 32 :=
  by simpa [progressionSegment00016_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00016_1_0000Check

end Erdos848.GeneratedDiagonalCoverage
