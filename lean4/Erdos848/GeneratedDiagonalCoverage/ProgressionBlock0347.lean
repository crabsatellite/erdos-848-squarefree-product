import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00013_2_0004Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 155941) (.leaf 157282))

theorem progressionSegment00013_2_0004Check :
    progressionSegment00013_2_0004Tree.check indexedMarker 12769 1710 116 = true :=
  by decide

theorem progressionSegment00013_2_0004 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 12769 1710 116 118 :=
  by simpa [progressionSegment00013_2_0004Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00013_2_0004Check

def progressionSegment00014_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 1279) (.leaf 3243)) (.node (.leaf 5226) (.leaf 7194))) (.node (.node (.leaf 9167) (.leaf 11141)) (.node (.leaf 13122) (.leaf 15094)))) (.node (.node (.node (.leaf 17070) (.leaf 19050)) (.node (.leaf 21027) (.leaf 22996))) (.node (.node (.leaf 24966) (.leaf 26946)) (.node (.leaf 28918) (.leaf 30889))))) (.node (.node (.node (.node (.leaf 32865) (.leaf 34835)) (.node (.leaf 36801) (.leaf 38782))) (.node (.node (.leaf 40755) (.leaf 42724)) (.node (.leaf 44706) (.leaf 46677)))) (.node (.node (.node (.leaf 48657) (.leaf 50633)) (.node (.leaf 52591) (.leaf 54573))) (.node (.node (.leaf 56541) (.leaf 58519)) (.node (.leaf 60491) (.leaf 62469)))))) (.node (.node (.node (.node (.node (.leaf 64440) (.leaf 66414)) (.node (.leaf 68386) (.leaf 70361))) (.node (.node (.leaf 72332) (.leaf 74308)) (.node (.leaf 76277) (.leaf 78247)))) (.node (.node (.node (.leaf 80219) (.leaf 82190)) (.node (.leaf 84168) (.leaf 86144))) (.node (.node (.leaf 88114) (.leaf 90087)) (.node (.leaf 92058) (.leaf 94037))))) (.node (.node (.node (.node (.leaf 96004) (.leaf 97979)) (.node (.leaf 99948) (.leaf 101932))) (.node (.node (.leaf 103904) (.leaf 105876)) (.node (.leaf 107848) (.leaf 109827)))) (.node (.node (.node (.leaf 111804) (.leaf 113777)) (.node (.leaf 115757) (.leaf 117725))) (.node (.node (.leaf 119702) (.leaf 121677)) (.node (.leaf 123650) (.leaf 125627)))))))

theorem progressionSegment00014_1_0000Check :
    progressionSegment00014_1_0000Tree.check indexedMarker 18769 12156 0 = true :=
  by decide

theorem progressionSegment00014_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 18769 12156 0 64 :=
  by simpa [progressionSegment00014_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00014_1_0000Check

def progressionSegment00014_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 127591) (.leaf 129570)) (.node (.leaf 131538) (.leaf 133513))) (.node (.node (.leaf 135489) (.leaf 137470)) (.node (.leaf 139438) (.leaf 141414)))) (.node (.node (.node (.leaf 143388) (.leaf 145356)) (.node (.leaf 147335) (.leaf 149302))) (.node (.node (.leaf 151278) (.leaf 153254)) (.node (.leaf 155225) (.leaf 157201)))))

theorem progressionSegment00014_1_0001Check :
    progressionSegment00014_1_0001Tree.check indexedMarker 18769 12156 64 = true :=
  by decide

theorem progressionSegment00014_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 18769 12156 64 80 :=
  by simpa [progressionSegment00014_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00014_1_0001Check

end Erdos848.GeneratedDiagonalCoverage
