import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00017_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 1388) (.leaf 4542)) (.node (.leaf 7686) (.leaf 10830))) (.node (.node (.leaf 13982) (.leaf 17136)) (.node (.leaf 20282) (.leaf 23431)))) (.node (.node (.node (.leaf 26575) (.leaf 29720)) (.node (.leaf 32871) (.leaf 36013))) (.node (.node (.leaf 39163) (.leaf 42311)) (.node (.leaf 45461) (.leaf 48612))))) (.node (.node (.node (.node (.leaf 51753) (.leaf 54902)) (.node (.leaf 58046) (.leaf 61193))) (.node (.node (.leaf 64340) (.leaf 67484)) (.node (.leaf 70635) (.leaf 73777)))) (.node (.node (.node (.leaf 76925) (.leaf 80067)) (.node (.leaf 83216) (.leaf 86365))) (.node (.node (.leaf 89498) (.leaf 92649)) (.node (.leaf 95800) (.leaf 98943))))))

theorem progressionSegment00017_2_0000Check :
    progressionSegment00017_2_0000Tree.check indexedMarker 29929 13241 0 = true :=
  by decide

theorem progressionSegment00017_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 29929 13241 0 32 :=
  by simpa [progressionSegment00017_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00017_2_0000Check

def progressionSegment00017_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 102101) (.leaf 105242)) (.node (.leaf 108392) (.leaf 111544))) (.node (.node (.leaf 114695) (.leaf 117841)) (.node (.leaf 120987) (.leaf 124136)))) (.node (.node (.node (.leaf 127283) (.leaf 130422)) (.node (.leaf 133572) (.leaf 136732))) (.node (.node (.leaf 139870) (.leaf 143027)) (.node (.leaf 146168) (.leaf 149311)))))

theorem progressionSegment00017_2_0001Check :
    progressionSegment00017_2_0001Tree.check indexedMarker 29929 13241 32 = true :=
  by decide

theorem progressionSegment00017_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 29929 13241 32 48 :=
  by simpa [progressionSegment00017_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00017_2_0001Check

def progressionSegment00017_2_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 152463) (.leaf 155610))

theorem progressionSegment00017_2_0002Check :
    progressionSegment00017_2_0002Tree.check indexedMarker 29929 13241 48 = true :=
  by decide

theorem progressionSegment00017_2_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 29929 13241 48 50 :=
  by simpa [progressionSegment00017_2_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00017_2_0002Check

def progressionSegment00018_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 3074) (.leaf 6522)) (.node (.leaf 9966) (.leaf 13418))) (.node (.node (.leaf 16864) (.leaf 20314)) (.node (.leaf 23758) (.leaf 27206)))) (.node (.node (.node (.leaf 30647) (.leaf 34087)) (.node (.leaf 37531) (.leaf 40980))) (.node (.node (.leaf 44427) (.leaf 47872)) (.node (.leaf 51315) (.leaf 54762))))) (.node (.node (.node (.node (.leaf 58208) (.leaf 61655)) (.node (.leaf 65098) (.leaf 68535))) (.node (.node (.leaf 71985) (.leaf 75424)) (.node (.leaf 78865) (.leaf 82307)))) (.node (.node (.node (.leaf 85761) (.leaf 89193)) (.node (.leaf 92639) (.leaf 96086))) (.node (.node (.leaf 99526) (.leaf 102983)) (.node (.leaf 106431) (.leaf 109875))))))

theorem progressionSegment00018_1_0000Check :
    progressionSegment00018_1_0000Tree.check indexedMarker 32761 29303 0 = true :=
  by decide

theorem progressionSegment00018_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 32761 29303 0 32 :=
  by simpa [progressionSegment00018_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00018_1_0000Check

end Erdos848.GeneratedDiagonalCoverage
