import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00016_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 84376) (.leaf 86970)) (.node (.leaf 89549) (.leaf 92141))) (.node (.node (.leaf 94740) (.leaf 97326)) (.node (.leaf 99917) (.leaf 102521)))) (.node (.node (.node (.leaf 105099) (.leaf 107702)) (.node (.leaf 110294) (.leaf 112892))) (.node (.node (.leaf 115485) (.leaf 118081)) (.node (.leaf 120672) (.leaf 123261)))))

theorem progressionSegment00016_1_0001Check :
    progressionSegment00016_1_0001Tree.check indexedMarker 24649 13631 32 = true :=
  by decide

theorem progressionSegment00016_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 24649 13631 32 48 :=
  by simpa [progressionSegment00016_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00016_1_0001Check

def progressionSegment00016_1_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 125855) (.leaf 128440)) (.node (.leaf 131031) (.leaf 133621))) (.node (.node (.leaf 136227) (.leaf 138818)) (.node (.leaf 141406) (.leaf 143998))))

theorem progressionSegment00016_1_0002Check :
    progressionSegment00016_1_0002Tree.check indexedMarker 24649 13631 48 = true :=
  by decide

theorem progressionSegment00016_1_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 24649 13631 48 56 :=
  by simpa [progressionSegment00016_1_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00016_1_0002Check

def progressionSegment00016_1_0003Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 146590) (.leaf 149173)) (.node (.leaf 151774) (.leaf 154368)))

theorem progressionSegment00016_1_0003Check :
    progressionSegment00016_1_0003Tree.check indexedMarker 24649 13631 56 = true :=
  by decide

theorem progressionSegment00016_1_0003 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 24649 13631 56 60 :=
  by simpa [progressionSegment00016_1_0003Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00016_1_0003Check

def progressionSegment00016_1_0004Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 156956)

theorem progressionSegment00016_1_0004Check :
    progressionSegment00016_1_0004Tree.check indexedMarker 24649 13631 60 = true :=
  by decide

theorem progressionSegment00016_1_0004 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 24649 13631 60 61 :=
  by simpa [progressionSegment00016_1_0004Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00016_1_0004Check

end Erdos848.GeneratedDiagonalCoverage
