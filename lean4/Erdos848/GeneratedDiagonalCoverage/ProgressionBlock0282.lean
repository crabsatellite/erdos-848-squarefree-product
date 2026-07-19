import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00002_1_0010Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 155627) (.leaf 155657)) (.node (.leaf 155685) (.leaf 155716))) (.node (.node (.leaf 155747) (.leaf 155779)) (.node (.leaf 155809) (.leaf 155839)))) (.node (.node (.node (.leaf 155869) (.leaf 155897)) (.node (.leaf 155930) (.leaf 155961))) (.node (.node (.leaf 155989) (.leaf 156020)) (.node (.leaf 156051) (.leaf 156081))))) (.node (.node (.node (.node (.leaf 156110) (.leaf 156141)) (.node (.leaf 156173) (.leaf 156206))) (.node (.node (.leaf 156236) (.leaf 156266)) (.node (.leaf 156298) (.leaf 156326)))) (.node (.node (.node (.leaf 156358) (.leaf 156386)) (.node (.leaf 156414) (.leaf 156443))) (.node (.node (.leaf 156474) (.leaf 156505)) (.node (.leaf 156533) (.leaf 156564)))))) (.node (.node (.node (.node (.node (.leaf 156594) (.leaf 156629)) (.node (.leaf 156658) (.leaf 156689))) (.node (.node (.leaf 156718) (.leaf 156746)) (.node (.leaf 156779) (.leaf 156811)))) (.node (.node (.node (.leaf 156842) (.leaf 156870)) (.node (.leaf 156902) (.leaf 156934))) (.node (.node (.leaf 156963) (.leaf 156996)) (.node (.leaf 157028) (.leaf 157056))))) (.node (.node (.node (.node (.leaf 157087) (.leaf 157118)) (.node (.leaf 157144) (.leaf 157174))) (.node (.node (.leaf 157206) (.leaf 157239)) (.node (.leaf 157266) (.leaf 157298)))) (.node (.node (.node (.leaf 157327) (.leaf 157357)) (.node (.leaf 157388) (.leaf 157417))) (.node (.node (.leaf 157447) (.leaf 157475)) (.node (.leaf 157508) (.leaf 157538)))))))

theorem progressionSegment00002_1_0010Check :
    progressionSegment00002_1_0010Tree.check indexedMarker 289 251 5120 = true :=
  by decide

theorem progressionSegment00002_1_0010 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 289 251 5120 5184 :=
  by simpa [progressionSegment00002_1_0010Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00002_1_0010Check

def progressionSegment00002_1_0011Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 157568) (.leaf 157597)) (.node (.leaf 157628) (.leaf 157659)))

theorem progressionSegment00002_1_0011Check :
    progressionSegment00002_1_0011Tree.check indexedMarker 289 251 5184 = true :=
  by decide

theorem progressionSegment00002_1_0011 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 289 251 5184 5188 :=
  by simpa [progressionSegment00002_1_0011Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00002_1_0011Check

def progressionSegment00002_1_0012Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 157690) (.leaf 157719))

theorem progressionSegment00002_1_0012Check :
    progressionSegment00002_1_0012Tree.check indexedMarker 289 251 5188 = true :=
  by decide

theorem progressionSegment00002_1_0012 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 289 251 5188 5190 :=
  by simpa [progressionSegment00002_1_0012Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00002_1_0012Check

end Erdos848.GeneratedDiagonalCoverage
