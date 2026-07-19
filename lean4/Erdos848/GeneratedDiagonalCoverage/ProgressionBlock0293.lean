import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00002_2_0010Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 155606) (.leaf 155636)) (.node (.leaf 155665) (.leaf 155695))) (.node (.node (.leaf 155724) (.leaf 155755)) (.node (.leaf 155787) (.leaf 155817)))) (.node (.node (.node (.leaf 155846) (.leaf 155877)) (.node (.leaf 155907) (.leaf 155938))) (.node (.node (.leaf 155968) (.leaf 155997)) (.node (.leaf 156029) (.leaf 156059))))) (.node (.node (.node (.node (.leaf 156089) (.leaf 156119)) (.node (.leaf 156150) (.leaf 156181))) (.node (.node (.leaf 156215) (.leaf 156246)) (.node (.leaf 156275) (.leaf 156305)))) (.node (.node (.node (.leaf 156336) (.leaf 156366)) (.node (.leaf 156393) (.leaf 156421))) (.node (.node (.leaf 156453) (.leaf 156482)) (.node (.leaf 156513) (.leaf 156543)))))) (.node (.node (.node (.node (.node (.leaf 156572) (.leaf 156603)) (.node (.leaf 156637) (.leaf 156666))) (.node (.node (.leaf 156696) (.leaf 156726)) (.node (.leaf 156757) (.leaf 156788)))) (.node (.node (.node (.leaf 156819) (.leaf 156851)) (.node (.leaf 156878) (.leaf 156910))) (.node (.node (.leaf 156942) (.leaf 156972)) (.node (.leaf 157004) (.leaf 157035))))) (.node (.node (.node (.node (.leaf 157066) (.leaf 157095)) (.node (.leaf 157125) (.leaf 157153))) (.node (.node (.leaf 157183) (.leaf 157213)) (.node (.leaf 157246) (.leaf 157275)))) (.node (.node (.node (.leaf 157306) (.leaf 157335)) (.node (.leaf 157366) (.leaf 157398))) (.node (.node (.leaf 157425) (.leaf 157454)) (.node (.leaf 157485) (.leaf 157517)))))))

theorem progressionSegment00002_2_0010Check :
    progressionSegment00002_2_0010Tree.check indexedMarker 289 38 5120 = true :=
  by decide

theorem progressionSegment00002_2_0010 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 289 38 5120 5184 :=
  by simpa [progressionSegment00002_2_0010Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00002_2_0010Check

def progressionSegment00002_2_0011Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 157546) (.leaf 157576)) (.node (.leaf 157606) (.leaf 157636)))

theorem progressionSegment00002_2_0011Check :
    progressionSegment00002_2_0011Tree.check indexedMarker 289 38 5184 = true :=
  by decide

theorem progressionSegment00002_2_0011 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 289 38 5184 5188 :=
  by simpa [progressionSegment00002_2_0011Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00002_2_0011Check

def progressionSegment00002_2_0012Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 157667) (.leaf 157698))

theorem progressionSegment00002_2_0012Check :
    progressionSegment00002_2_0012Tree.check indexedMarker 289 38 5188 = true :=
  by decide

theorem progressionSegment00002_2_0012 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 289 38 5188 5190 :=
  by simpa [progressionSegment00002_2_0012Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00002_2_0012Check

def progressionSegment00002_2_0013Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 157727)

theorem progressionSegment00002_2_0013Check :
    progressionSegment00002_2_0013Tree.check indexedMarker 289 38 5190 = true :=
  by decide

theorem progressionSegment00002_2_0013 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 289 38 5190 5191 :=
  by simpa [progressionSegment00002_2_0013Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00002_2_0013Check

end Erdos848.GeneratedDiagonalCoverage
