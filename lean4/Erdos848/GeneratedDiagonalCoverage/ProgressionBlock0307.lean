import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00004_2_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 147433) (.leaf 147571)) (.node (.leaf 147714) (.leaf 147860))) (.node (.node (.leaf 148006) (.leaf 148148)) (.node (.leaf 148288) (.leaf 148429)))) (.node (.node (.node (.leaf 148573) (.leaf 148718)) (.node (.leaf 148860) (.leaf 149007))) (.node (.node (.leaf 149150) (.leaf 149296)) (.node (.leaf 149440) (.leaf 149588))))) (.node (.node (.node (.node (.leaf 149731) (.leaf 149872)) (.node (.leaf 150020) (.leaf 150163))) (.node (.node (.leaf 150303) (.leaf 150448)) (.node (.leaf 150587) (.leaf 150733)))) (.node (.node (.node (.leaf 150879) (.leaf 151024)) (.node (.leaf 151167) (.leaf 151316))) (.node (.node (.leaf 151457) (.leaf 151607)) (.node (.leaf 151748) (.leaf 151897)))))) (.node (.node (.node (.node (.node (.leaf 152042) (.leaf 152184)) (.node (.leaf 152329) (.leaf 152469))) (.node (.node (.leaf 152612) (.leaf 152757)) (.node (.leaf 152900) (.leaf 153045)))) (.node (.node (.node (.leaf 153191) (.leaf 153333)) (.node (.leaf 153479) (.leaf 153620))) (.node (.node (.leaf 153765) (.leaf 153911)) (.node (.leaf 154054) (.leaf 154197))))) (.node (.node (.node (.node (.leaf 154343) (.leaf 154483)) (.node (.leaf 154630) (.leaf 154774))) (.node (.node (.leaf 154916) (.leaf 155059)) (.node (.leaf 155198) (.leaf 155345)))) (.node (.node (.node (.leaf 155491) (.leaf 155635)) (.node (.leaf 155778) (.leaf 155923))) (.node (.node (.leaf 156067) (.leaf 156213)) (.node (.leaf 156356) (.leaf 156495)))))))

theorem progressionSegment00004_2_0002Check :
    progressionSegment00004_2_0002Tree.check indexedMarker 1369 117 1024 = true :=
  by decide

theorem progressionSegment00004_2_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1369 117 1024 1088 :=
  by simpa [progressionSegment00004_2_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00004_2_0002Check

def progressionSegment00004_2_0003Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 156641) (.leaf 156784)) (.node (.leaf 156928) (.leaf 157077))) (.node (.node (.leaf 157218) (.leaf 157362)) (.node (.leaf 157503) (.leaf 157647))))

theorem progressionSegment00004_2_0003Check :
    progressionSegment00004_2_0003Tree.check indexedMarker 1369 117 1088 = true :=
  by decide

theorem progressionSegment00004_2_0003 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1369 117 1088 1096 :=
  by simpa [progressionSegment00004_2_0003Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00004_2_0003Check

end Erdos848.GeneratedDiagonalCoverage
