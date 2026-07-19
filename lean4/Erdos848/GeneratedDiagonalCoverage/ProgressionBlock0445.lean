import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00238_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 57291)

theorem progressionSegment00238_2_0000Check :
    progressionSegment00238_2_0000Tree.check indexedMarker 11978521 544830 0 = true :=
  by decide

theorem progressionSegment00238_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 11978521 544830 0 1 :=
  by simpa [progressionSegment00238_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00238_2_0000Check

def progressionSegment00239_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 95824)

theorem progressionSegment00239_1_0000Check :
    progressionSegment00239_1_0000Tree.check indexedMarker 12033961 911344 0 = true :=
  by decide

theorem progressionSegment00239_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 12033961 911344 0 1 :=
  by simpa [progressionSegment00239_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00239_1_0000Check

def progressionSegment00247_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 32313)

theorem progressionSegment00247_2_0000Check :
    progressionSegment00247_2_0000Tree.check indexedMarker 13053769 307190 0 = true :=
  by decide

theorem progressionSegment00247_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 13053769 307190 0 1 :=
  by simpa [progressionSegment00247_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00247_2_0000Check

def progressionSegment00249_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 77147)

theorem progressionSegment00249_2_0000Check :
    progressionSegment00249_2_0000Tree.check indexedMarker 13227769 733647 0 = true :=
  by decide

theorem progressionSegment00249_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 13227769 733647 0 1 :=
  by simpa [progressionSegment00249_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00249_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
