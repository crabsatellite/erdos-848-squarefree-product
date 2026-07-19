import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00010_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 127070) (.leaf 128064)) (.node (.leaf 129046) (.leaf 130036))) (.node (.node (.leaf 131027) (.leaf 132019)) (.node (.leaf 133003) (.leaf 133996)))) (.node (.node (.node (.leaf 134989) (.leaf 135982)) (.node (.leaf 136976) (.leaf 137962))) (.node (.node (.leaf 138953) (.leaf 139936)) (.node (.leaf 140928) (.leaf 141916)))))

theorem progressionSegment00010_2_0001Check :
    progressionSegment00010_2_0001Tree.check indexedMarker 9409 4052 128 = true :=
  by decide

theorem progressionSegment00010_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 9409 4052 128 144 :=
  by simpa [progressionSegment00010_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00010_2_0001Check

def progressionSegment00010_2_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 142910) (.leaf 143896)) (.node (.leaf 144878) (.leaf 145874))) (.node (.node (.leaf 146866) (.leaf 147850)) (.node (.leaf 148830) (.leaf 149828))))

theorem progressionSegment00010_2_0002Check :
    progressionSegment00010_2_0002Tree.check indexedMarker 9409 4052 144 = true :=
  by decide

theorem progressionSegment00010_2_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 9409 4052 144 152 :=
  by simpa [progressionSegment00010_2_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00010_2_0002Check

def progressionSegment00010_2_0003Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 150813) (.leaf 151813)) (.node (.leaf 152801) (.leaf 153791)))

theorem progressionSegment00010_2_0003Check :
    progressionSegment00010_2_0003Tree.check indexedMarker 9409 4052 152 = true :=
  by decide

theorem progressionSegment00010_2_0003 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 9409 4052 152 156 :=
  by simpa [progressionSegment00010_2_0003Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00010_2_0003Check

def progressionSegment00010_2_0004Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 154781) (.leaf 155766))

theorem progressionSegment00010_2_0004Check :
    progressionSegment00010_2_0004Tree.check indexedMarker 9409 4052 156 = true :=
  by decide

theorem progressionSegment00010_2_0004 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 9409 4052 156 158 :=
  by simpa [progressionSegment00010_2_0004Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00010_2_0004Check

end Erdos848.GeneratedDiagonalCoverage
