import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00018_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 113324) (.leaf 116774)) (.node (.leaf 120213) (.leaf 123661))) (.node (.node (.leaf 127102) (.leaf 130543)) (.node (.leaf 133990) (.leaf 137447))))

theorem progressionSegment00018_1_0001Check :
    progressionSegment00018_1_0001Tree.check indexedMarker 32761 29303 32 = true :=
  by decide

theorem progressionSegment00018_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 32761 29303 32 40 :=
  by simpa [progressionSegment00018_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00018_1_0001Check

def progressionSegment00018_1_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 140888) (.leaf 144327)) (.node (.leaf 147771) (.leaf 151216)))

theorem progressionSegment00018_1_0002Check :
    progressionSegment00018_1_0002Tree.check indexedMarker 32761 29303 40 = true :=
  by decide

theorem progressionSegment00018_1_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 32761 29303 40 44 :=
  by simpa [progressionSegment00018_1_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00018_1_0002Check

def progressionSegment00018_1_0003Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 154669)

theorem progressionSegment00018_1_0003Check :
    progressionSegment00018_1_0003Tree.check indexedMarker 32761 29303 44 = true :=
  by decide

theorem progressionSegment00018_1_0003 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 32761 29303 44 45 :=
  by simpa [progressionSegment00018_1_0003Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00018_1_0003Check

def progressionSegment00018_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 361) (.leaf 3807)) (.node (.leaf 7247) (.leaf 10696))) (.node (.node (.leaf 14145) (.leaf 17602)) (.node (.leaf 21046) (.leaf 24483)))) (.node (.node (.node (.leaf 27934) (.leaf 31372)) (.node (.leaf 34817) (.leaf 38255))) (.node (.node (.leaf 41706) (.leaf 45157)) (.node (.leaf 48603) (.leaf 52043))))) (.node (.node (.node (.node (.leaf 55488) (.leaf 58935)) (.node (.leaf 62380) (.leaf 65829))) (.node (.node (.leaf 69263) (.leaf 72710)) (.node (.leaf 76150) (.leaf 79604)))) (.node (.node (.node (.leaf 83039) (.leaf 86488)) (.node (.leaf 89924) (.leaf 93365))) (.node (.node (.leaf 96811) (.leaf 100255)) (.node (.leaf 103707) (.leaf 107153))))))

theorem progressionSegment00018_2_0000Check :
    progressionSegment00018_2_0000Tree.check indexedMarker 32761 3458 0 = true :=
  by decide

theorem progressionSegment00018_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 32761 3458 0 32 :=
  by simpa [progressionSegment00018_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00018_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
