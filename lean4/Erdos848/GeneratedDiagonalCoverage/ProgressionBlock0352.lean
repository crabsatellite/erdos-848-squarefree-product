import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00016_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 1157) (.leaf 3744)) (.node (.leaf 6337) (.leaf 8933))) (.node (.node (.leaf 11526) (.leaf 14119)) (.node (.leaf 16711) (.leaf 19314)))) (.node (.node (.node (.leaf 21913) (.leaf 24492)) (.node (.leaf 27089) (.leaf 29676))) (.node (.node (.leaf 32271) (.leaf 34862)) (.node (.leaf 37447) (.leaf 40043))))) (.node (.node (.node (.node (.leaf 42630) (.leaf 45232)) (.node (.leaf 47820) (.leaf 50415))) (.node (.node (.leaf 53000) (.leaf 55595)) (.node (.leaf 58185) (.leaf 60777)))) (.node (.node (.node (.leaf 63378) (.leaf 65966)) (.node (.leaf 68549) (.leaf 71147))) (.node (.node (.leaf 73732) (.leaf 76329)) (.node (.leaf 78914) (.leaf 81505))))))

theorem progressionSegment00016_2_0000Check :
    progressionSegment00016_2_0000Tree.check indexedMarker 24649 11018 0 = true :=
  by decide

theorem progressionSegment00016_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 24649 11018 0 32 :=
  by simpa [progressionSegment00016_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00016_2_0000Check

def progressionSegment00016_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 84101) (.leaf 86692)) (.node (.leaf 89273) (.leaf 91865))) (.node (.node (.leaf 94466) (.leaf 97057)) (.node (.leaf 99638) (.leaf 102245)))) (.node (.node (.node (.leaf 104824) (.leaf 107425)) (.node (.leaf 110024) (.leaf 112618))) (.node (.node (.leaf 115208) (.leaf 117800)) (.node (.leaf 120393) (.leaf 122985)))))

theorem progressionSegment00016_2_0001Check :
    progressionSegment00016_2_0001Tree.check indexedMarker 24649 11018 32 = true :=
  by decide

theorem progressionSegment00016_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 24649 11018 32 48 :=
  by simpa [progressionSegment00016_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00016_2_0001Check

def progressionSegment00016_2_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 125579) (.leaf 128168)) (.node (.leaf 130755) (.leaf 133348))) (.node (.node (.leaf 135948) (.leaf 138542)) (.node (.leaf 141131) (.leaf 143726))))

theorem progressionSegment00016_2_0002Check :
    progressionSegment00016_2_0002Tree.check indexedMarker 24649 11018 48 = true :=
  by decide

theorem progressionSegment00016_2_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 24649 11018 48 56 :=
  by simpa [progressionSegment00016_2_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00016_2_0002Check

def progressionSegment00016_2_0003Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 146316) (.leaf 148897)) (.node (.leaf 151497) (.leaf 154093)))

theorem progressionSegment00016_2_0003Check :
    progressionSegment00016_2_0003Tree.check indexedMarker 24649 11018 56 = true :=
  by decide

theorem progressionSegment00016_2_0003 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 24649 11018 56 60 :=
  by simpa [progressionSegment00016_2_0003Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00016_2_0003Check

end Erdos848.GeneratedDiagonalCoverage
