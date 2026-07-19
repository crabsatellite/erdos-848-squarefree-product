import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00004_1_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 147548) (.leaf 147688)) (.node (.leaf 147834) (.leaf 147979))) (.node (.node (.leaf 148124) (.leaf 148264)) (.node (.leaf 148406) (.leaf 148547)))) (.node (.node (.node (.leaf 148692) (.leaf 148833)) (.node (.leaf 148981) (.leaf 149124))) (.node (.node (.leaf 149270) (.leaf 149417)) (.node (.leaf 149563) (.leaf 149705))))) (.node (.node (.node (.node (.leaf 149848) (.leaf 149993)) (.node (.leaf 150138) (.leaf 150279))) (.node (.node (.leaf 150422) (.leaf 150563)) (.node (.leaf 150709) (.leaf 150855)))) (.node (.node (.node (.leaf 151000) (.leaf 151143)) (.node (.leaf 151290) (.leaf 151433))) (.node (.node (.leaf 151579) (.leaf 151723)) (.node (.leaf 151870) (.leaf 152017)))))) (.node (.node (.node (.node (.node (.leaf 152158) (.leaf 152305)) (.node (.leaf 152444) (.leaf 152588))) (.node (.node (.leaf 152731) (.leaf 152875)) (.node (.leaf 153018) (.leaf 153163)))) (.node (.node (.node (.leaf 153310) (.leaf 153452)) (.node (.leaf 153595) (.leaf 153742))) (.node (.node (.leaf 153886) (.leaf 154032)) (.node (.leaf 154172) (.leaf 154316))))) (.node (.node (.node (.node (.leaf 154459) (.leaf 154605)) (.node (.leaf 154749) (.leaf 154891))) (.node (.node (.leaf 155035) (.leaf 155175)) (.node (.leaf 155320) (.leaf 155465)))) (.node (.node (.node (.leaf 155612) (.leaf 155752)) (.node (.leaf 155895) (.leaf 156039))) (.node (.node (.leaf 156187) (.leaf 156331)) (.node (.leaf 156470) (.leaf 156615)))))))

theorem progressionSegment00004_1_0002Check :
    progressionSegment00004_1_0002Tree.check indexedMarker 1369 1252 1024 = true :=
  by decide

theorem progressionSegment00004_1_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1369 1252 1024 1088 :=
  by simpa [progressionSegment00004_1_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00004_1_0002Check

def progressionSegment00004_1_0003Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 156760) (.leaf 156905)) (.node (.leaf 157051) (.leaf 157191)))

theorem progressionSegment00004_1_0003Check :
    progressionSegment00004_1_0003Tree.check indexedMarker 1369 1252 1088 = true :=
  by decide

theorem progressionSegment00004_1_0003 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1369 1252 1088 1092 :=
  by simpa [progressionSegment00004_1_0003Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00004_1_0003Check

def progressionSegment00004_1_0004Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 157337) (.leaf 157477))

theorem progressionSegment00004_1_0004Check :
    progressionSegment00004_1_0004Tree.check indexedMarker 1369 1252 1092 = true :=
  by decide

theorem progressionSegment00004_1_0004 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1369 1252 1092 1094 :=
  by simpa [progressionSegment00004_1_0004Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00004_1_0004Check

def progressionSegment00004_1_0005Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 157621)

theorem progressionSegment00004_1_0005Check :
    progressionSegment00004_1_0005Tree.check indexedMarker 1369 1252 1094 = true :=
  by decide

theorem progressionSegment00004_1_0005 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 1369 1252 1094 1095 :=
  by simpa [progressionSegment00004_1_0005Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00004_1_0005Check

end Erdos848.GeneratedDiagonalCoverage
