import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00022_1_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 139895) (.leaf 145608)) (.node (.leaf 151314) (.leaf 157025)))

theorem progressionSegment00022_1_0002Check :
    progressionSegment00022_1_0002Tree.check indexedMarker 54289 27405 24 = true :=
  by decide

theorem progressionSegment00022_1_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 54289 27405 24 28 :=
  by simpa [progressionSegment00022_1_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00022_1_0002Check

def progressionSegment00022_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 2818) (.leaf 8532)) (.node (.leaf 14247) (.leaf 19961))) (.node (.node (.leaf 25669) (.leaf 31375)) (.node (.leaf 37082) (.leaf 42789)))) (.node (.node (.node (.leaf 48506) (.leaf 54207)) (.node (.leaf 59916) (.leaf 65630))) (.node (.node (.leaf 71340) (.leaf 77040)) (.node (.leaf 82739) (.leaf 88451)))))

theorem progressionSegment00022_2_0000Check :
    progressionSegment00022_2_0000Tree.check indexedMarker 54289 26884 0 = true :=
  by decide

theorem progressionSegment00022_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 54289 26884 0 16 :=
  by simpa [progressionSegment00022_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00022_2_0000Check

def progressionSegment00022_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 94160) (.leaf 99863)) (.node (.leaf 105581) (.leaf 111292))) (.node (.node (.leaf 117010) (.leaf 122714)) (.node (.leaf 128419) (.leaf 134129))))

theorem progressionSegment00022_2_0001Check :
    progressionSegment00022_2_0001Tree.check indexedMarker 54289 26884 16 = true :=
  by decide

theorem progressionSegment00022_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 54289 26884 16 24 :=
  by simpa [progressionSegment00022_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00022_2_0001Check

def progressionSegment00022_2_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 139840) (.leaf 145553)) (.node (.leaf 151257) (.leaf 156968)))

theorem progressionSegment00022_2_0002Check :
    progressionSegment00022_2_0002Tree.check indexedMarker 54289 26884 24 = true :=
  by decide

theorem progressionSegment00022_2_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 54289 26884 24 28 :=
  by simpa [progressionSegment00022_2_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00022_2_0002Check

end Erdos848.GeneratedDiagonalCoverage
