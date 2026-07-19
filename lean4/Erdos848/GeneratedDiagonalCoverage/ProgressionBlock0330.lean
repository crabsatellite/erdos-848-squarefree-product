import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00009_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 107038) (.leaf 107869)) (.node (.leaf 108705) (.leaf 109540))) (.node (.node (.leaf 110372) (.leaf 111202)) (.node (.leaf 112046) (.leaf 112879)))) (.node (.node (.node (.leaf 113706) (.leaf 114545)) (.node (.leaf 115377) (.leaf 116214))) (.node (.node (.leaf 117050) (.leaf 117876)) (.node (.leaf 118707) (.leaf 119541))))) (.node (.node (.node (.node (.leaf 120374) (.leaf 121207)) (.node (.leaf 122038) (.leaf 122876))) (.node (.node (.leaf 123707) (.leaf 124543)) (.node (.leaf 125374) (.leaf 126203)))) (.node (.node (.node (.leaf 127033) (.leaf 127870)) (.node (.leaf 128700) (.leaf 129533))) (.node (.node (.leaf 130360) (.leaf 131200)) (.node (.leaf 132034) (.leaf 132857))))))

theorem progressionSegment00009_2_0001Check :
    progressionSegment00009_2_0001Tree.check indexedMarker 7921 4060 128 = true :=
  by decide

theorem progressionSegment00009_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 7921 4060 128 160 :=
  by simpa [progressionSegment00009_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00009_2_0001Check

def progressionSegment00009_2_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 133694) (.leaf 134532)) (.node (.leaf 135366) (.leaf 136206))) (.node (.node (.leaf 137039) (.leaf 137867)) (.node (.leaf 138705) (.leaf 139534)))) (.node (.node (.node (.leaf 140368) (.leaf 141201)) (.node (.leaf 142034) (.leaf 142867))) (.node (.node (.leaf 143702) (.leaf 144524)) (.node (.leaf 145358) (.leaf 146197)))))

theorem progressionSegment00009_2_0002Check :
    progressionSegment00009_2_0002Tree.check indexedMarker 7921 4060 160 = true :=
  by decide

theorem progressionSegment00009_2_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 7921 4060 160 176 :=
  by simpa [progressionSegment00009_2_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00009_2_0002Check

def progressionSegment00009_2_0003Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 147031) (.leaf 147859)) (.node (.leaf 148685) (.leaf 149525))) (.node (.node (.leaf 150355) (.leaf 151190)) (.node (.leaf 152031) (.leaf 152858))))

theorem progressionSegment00009_2_0003Check :
    progressionSegment00009_2_0003Tree.check indexedMarker 7921 4060 176 = true :=
  by decide

theorem progressionSegment00009_2_0003 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 7921 4060 176 184 :=
  by simpa [progressionSegment00009_2_0003Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00009_2_0003Check

def progressionSegment00009_2_0004Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 153694) (.leaf 154525)) (.node (.leaf 155356) (.leaf 156192)))

theorem progressionSegment00009_2_0004Check :
    progressionSegment00009_2_0004Tree.check indexedMarker 7921 4060 184 = true :=
  by decide

theorem progressionSegment00009_2_0004 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 7921 4060 184 188 :=
  by simpa [progressionSegment00009_2_0004Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00009_2_0004Check

end Erdos848.GeneratedDiagonalCoverage
