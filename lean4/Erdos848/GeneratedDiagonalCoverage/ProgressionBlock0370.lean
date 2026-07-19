import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00027_2_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 157296)

theorem progressionSegment00027_2_0002Check :
    progressionSegment00027_2_0002Tree.check indexedMarker 78961 74518 18 = true :=
  by decide

theorem progressionSegment00027_2_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 78961 74518 18 19 :=
  by simpa [progressionSegment00027_2_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00027_2_0002Check

def progressionSegment00028_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 2779) (.leaf 11813)) (.node (.leaf 20857) (.leaf 29875))) (.node (.node (.leaf 38900) (.leaf 47932)) (.node (.leaf 56951) (.leaf 65990)))) (.node (.node (.node (.leaf 75010) (.leaf 84034)) (.node (.leaf 93051) (.leaf 102090))) (.node (.node (.leaf 111111) (.leaf 120146)) (.node (.leaf 129172) (.leaf 138209)))))

theorem progressionSegment00028_1_0000Check :
    progressionSegment00028_1_0000Tree.check indexedMarker 85849 26508 0 = true :=
  by decide

theorem progressionSegment00028_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 85849 26508 0 16 :=
  by simpa [progressionSegment00028_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00028_1_0000Check

def progressionSegment00028_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 147233) (.leaf 156259))

theorem progressionSegment00028_1_0001Check :
    progressionSegment00028_1_0001Tree.check indexedMarker 85849 26508 16 = true :=
  by decide

theorem progressionSegment00028_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 85849 26508 16 18 :=
  by simpa [progressionSegment00028_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00028_1_0001Check

def progressionSegment00028_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 6234) (.leaf 15272)) (.node (.leaf 24298) (.leaf 33328))) (.node (.node (.leaf 42355) (.leaf 51382)) (.node (.leaf 60406) (.leaf 69434)))) (.node (.node (.node (.leaf 78456) (.leaf 87487)) (.node (.leaf 96508) (.leaf 105537))) (.node (.node (.leaf 114576) (.leaf 123601)) (.node (.leaf 132621) (.leaf 141660)))))

theorem progressionSegment00028_2_0000Check :
    progressionSegment00028_2_0000Tree.check indexedMarker 85849 59341 0 = true :=
  by decide

theorem progressionSegment00028_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 85849 59341 0 16 :=
  by simpa [progressionSegment00028_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00028_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
