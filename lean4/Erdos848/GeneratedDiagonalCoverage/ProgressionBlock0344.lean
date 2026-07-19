import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00012_2_0003Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 140538) (.leaf 141787)) (.node (.leaf 143041) (.leaf 144280))) (.node (.node (.leaf 145533) (.leaf 146782)) (.node (.leaf 148032) (.leaf 149276))))

theorem progressionSegment00012_2_0003Check :
    progressionSegment00012_2_0003Tree.check indexedMarker 11881 5744 112 = true :=
  by decide

theorem progressionSegment00012_2_0003 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 11881 5744 112 120 :=
  by simpa [progressionSegment00012_2_0003Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00012_2_0003Check

def progressionSegment00012_2_0004Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 150524) (.leaf 151784)) (.node (.leaf 153031) (.leaf 154282)))

theorem progressionSegment00012_2_0004Check :
    progressionSegment00012_2_0004Tree.check indexedMarker 11881 5744 120 = true :=
  by decide

theorem progressionSegment00012_2_0004 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 11881 5744 120 124 :=
  by simpa [progressionSegment00012_2_0004Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00012_2_0004Check

def progressionSegment00012_2_0005Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 155527) (.leaf 156775))

theorem progressionSegment00012_2_0005Check :
    progressionSegment00012_2_0005Tree.check indexedMarker 11881 5744 124 = true :=
  by decide

theorem progressionSegment00012_2_0005 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 11881 5744 124 126 :=
  by simpa [progressionSegment00012_2_0005Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00012_2_0005Check

def progressionSegment00013_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 1163) (.leaf 2497)) (.node (.leaf 3847) (.leaf 5190))) (.node (.node (.leaf 6531) (.leaf 7873)) (.node (.leaf 9218) (.leaf 10554)))) (.node (.node (.node (.leaf 11906) (.leaf 13248)) (.node (.leaf 14598) (.leaf 15930))) (.node (.node (.leaf 17287) (.leaf 18628)) (.node (.leaf 19968) (.leaf 21319))))) (.node (.node (.node (.node (.leaf 22661) (.leaf 23996)) (.node (.leaf 25335) (.leaf 26679))) (.node (.node (.leaf 28028) (.leaf 29366)) (.node (.leaf 30710) (.leaf 32048)))) (.node (.node (.node (.leaf 33396) (.leaf 34735)) (.node (.leaf 36075) (.leaf 37417))) (.node (.node (.leaf 38764) (.leaf 40106)) (.node (.leaf 41447) (.leaf 42788)))))) (.node (.node (.node (.node (.node (.leaf 44130) (.leaf 45483)) (.node (.leaf 46817) (.leaf 48167))) (.node (.node (.leaf 49514) (.leaf 50854)) (.node (.leaf 52194) (.leaf 53529)))) (.node (.node (.node (.leaf 54879) (.leaf 56215)) (.node (.leaf 57554) (.leaf 58903))) (.node (.node (.leaf 60246) (.leaf 61593)) (.node (.leaf 62939) (.leaf 64274))))) (.node (.node (.node (.node (.leaf 65618) (.leaf 66962)) (.node (.leaf 68301) (.leaf 69644))) (.node (.node (.leaf 70989) (.leaf 72329)) (.node (.leaf 73666) (.leaf 75016)))) (.node (.node (.node (.leaf 76358) (.leaf 77696)) (.node (.leaf 79038) (.leaf 80380))) (.node (.node (.leaf 81723) (.leaf 83066)) (.node (.leaf 84409) (.leaf 85752)))))))

theorem progressionSegment00013_1_0000Check :
    progressionSegment00013_1_0000Tree.check indexedMarker 12769 11059 0 = true :=
  by decide

theorem progressionSegment00013_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 12769 11059 0 64 :=
  by simpa [progressionSegment00013_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00013_1_0000Check

end Erdos848.GeneratedDiagonalCoverage
