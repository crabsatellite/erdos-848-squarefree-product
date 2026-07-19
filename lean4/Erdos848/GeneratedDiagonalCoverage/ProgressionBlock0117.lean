import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00000_1_0117Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 157481) (.leaf 157484)) (.node (.leaf 157487) (.leaf 157489))) (.node (.node (.leaf 157492) (.leaf 157494)) (.node (.leaf 157497) (.leaf 157501)))) (.node (.node (.node (.leaf 157504) (.leaf 157506)) (.node (.leaf 157509) (.leaf 157512))) (.node (.node (.leaf 157514) (.leaf 157518)) (.node (.leaf 157521) (.leaf 157523))))) (.node (.node (.node (.node (.leaf 157525) (.leaf 157527)) (.node (.leaf 157529) (.leaf 157531))) (.node (.node (.leaf 157534) (.leaf 157537)) (.node (.leaf 157541) (.leaf 157543)))) (.node (.node (.node (.leaf 157545) (.leaf 157549)) (.node (.leaf 157552) (.leaf 157554))) (.node (.node (.leaf 157557) (.leaf 157559)) (.node (.leaf 157561) (.leaf 157563)))))) (.node (.node (.node (.node (.node (.leaf 157565) (.leaf 157569)) (.node (.leaf 157572) (.leaf 157574))) (.node (.node (.leaf 157577) (.leaf 157579)) (.node (.leaf 157581) (.leaf 157583)))) (.node (.node (.node (.leaf 157585) (.leaf 157589)) (.node (.leaf 157591) (.leaf 157593))) (.node (.node (.leaf 157596) (.leaf 157599)) (.node (.leaf 157601) (.leaf 157604))))) (.node (.node (.node (.node (.leaf 157608) (.leaf 157610)) (.node (.leaf 157612) (.leaf 157615))) (.node (.node (.leaf 157617) (.leaf 157620)) (.node (.leaf 157623) (.leaf 157626)))) (.node (.node (.node (.leaf 157629) (.leaf 157631)) (.node (.leaf 157633) (.leaf 157637))) (.node (.node (.leaf 157640) (.leaf 157643)) (.node (.leaf 157645) (.leaf 157648)))))))

theorem progressionSegment00000_1_0117Check :
    progressionSegment00000_1_0117Tree.check indexedMarker 25 7 59904 = true :=
  by decide

theorem progressionSegment00000_1_0117 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 25 7 59904 59968 :=
  by simpa [progressionSegment00000_1_0117Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00000_1_0117Check

def progressionSegment00000_1_0118Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 157650) (.leaf 157652)) (.node (.leaf 157654) (.leaf 157657))) (.node (.node (.leaf 157661) (.leaf 157663)) (.node (.leaf 157665) (.leaf 157668)))) (.node (.node (.node (.leaf 157670) (.leaf 157672)) (.node (.leaf 157675) (.leaf 157679))) (.node (.node (.leaf 157682) (.leaf 157684)) (.node (.leaf 157687) (.leaf 157689))))) (.node (.node (.node (.node (.leaf 157692) (.leaf 157694)) (.node (.leaf 157697) (.leaf 157700))) (.node (.node (.leaf 157702) (.leaf 157704)) (.node (.leaf 157706) (.leaf 157709)))) (.node (.node (.node (.leaf 157712) (.leaf 157715)) (.node (.leaf 157717) (.leaf 157720))) (.node (.node (.leaf 157722) (.leaf 157724)) (.node (.leaf 157728) (.leaf 157731))))))

theorem progressionSegment00000_1_0118Check :
    progressionSegment00000_1_0118Tree.check indexedMarker 25 7 59968 = true :=
  by decide

theorem progressionSegment00000_1_0118 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 25 7 59968 60000 :=
  by simpa [progressionSegment00000_1_0118Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00000_1_0118Check

end Erdos848.GeneratedDiagonalCoverage
