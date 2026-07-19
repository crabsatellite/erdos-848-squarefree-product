import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00010_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node (.leaf 424) (.leaf 1413)) (.node (.leaf 2398) (.leaf 3390))) (.node (.node (.leaf 4387) (.leaf 5370)) (.node (.leaf 6357) (.leaf 7349)))) (.node (.node (.node (.leaf 8338) (.leaf 9329)) (.node (.leaf 10314) (.leaf 11308))) (.node (.node (.leaf 12300) (.leaf 13292)) (.node (.leaf 14279) (.leaf 15271))))) (.node (.node (.node (.node (.leaf 16254) (.leaf 17256)) (.node (.leaf 18242) (.leaf 19232))) (.node (.node (.leaf 20219) (.leaf 21215)) (.node (.leaf 22206) (.leaf 23192)))) (.node (.node (.node (.leaf 24173) (.leaf 25168)) (.node (.leaf 26158) (.leaf 27148))) (.node (.node (.leaf 28143) (.leaf 29127)) (.node (.leaf 30115) (.leaf 31101)))))) (.node (.node (.node (.node (.node (.leaf 32088) (.leaf 33081)) (.node (.leaf 34069) (.leaf 35063))) (.node (.node (.leaf 36045) (.leaf 37033)) (.node (.leaf 38022) (.leaf 39013)))) (.node (.node (.node (.leaf 40008) (.leaf 40995)) (.node (.leaf 41982) (.leaf 42974))) (.node (.node (.leaf 43961) (.leaf 44955)) (.node (.leaf 45946) (.leaf 46934))))) (.node (.node (.node (.node (.leaf 47923) (.leaf 48918)) (.node (.leaf 49909) (.leaf 50897))) (.node (.node (.leaf 51879) (.leaf 52863)) (.node (.leaf 53855) (.leaf 54849)))) (.node (.node (.node (.leaf 55836) (.leaf 56824)) (.node (.leaf 57806) (.leaf 58803))) (.node (.node (.leaf 59791) (.leaf 60783)) (.node (.leaf 61777) (.leaf 62766))))))) (.node (.node (.node (.node (.node (.node (.leaf 63752) (.leaf 64742)) (.node (.leaf 65736) (.leaf 66718))) (.node (.node (.leaf 67707) (.leaf 68695)) (.node (.leaf 69688) (.leaf 70679)))) (.node (.node (.node (.leaf 71664) (.leaf 72652)) (.node (.leaf 73638) (.leaf 74627))) (.node (.node (.leaf 75623) (.leaf 76611)) (.node (.leaf 77601) (.leaf 78584))))) (.node (.node (.node (.node (.leaf 79580) (.leaf 80567)) (.node (.leaf 81551) (.leaf 82540))) (.node (.node (.leaf 83531) (.leaf 84523)) (.node (.leaf 85512) (.leaf 86504)))) (.node (.node (.node (.leaf 87493) (.leaf 88474)) (.node (.leaf 89458) (.leaf 90455))) (.node (.node (.leaf 91440) (.leaf 92432)) (.node (.leaf 93419) (.leaf 94413)))))) (.node (.node (.node (.node (.node (.leaf 95398) (.leaf 96388)) (.node (.leaf 97378) (.leaf 98370))) (.node (.node (.leaf 99354) (.leaf 100343)) (.node (.leaf 101341) (.leaf 102334)))) (.node (.node (.node (.leaf 103321) (.leaf 104302)) (.node (.leaf 105294) (.leaf 106288))) (.node (.node (.leaf 107282) (.leaf 108266)) (.node (.leaf 109254) (.leaf 110245))))) (.node (.node (.node (.node (.leaf 111235) (.leaf 112234)) (.node (.leaf 113224) (.leaf 114207))) (.node (.node (.leaf 115199) (.leaf 116196)) (.node (.leaf 117185) (.leaf 118174)))) (.node (.node (.node (.leaf 119161) (.leaf 120144)) (.node (.leaf 121135) (.leaf 122127))) (.node (.node (.leaf 123119) (.leaf 124101)) (.node (.leaf 125099) (.leaf 126087))))))))

theorem progressionSegment00010_2_0000Check :
    progressionSegment00010_2_0000Tree.check indexedMarker 9409 4052 0 = true :=
  by decide

theorem progressionSegment00010_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 9409 4052 0 128 :=
  by simpa [progressionSegment00010_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00010_2_0000Check

end Erdos848.GeneratedDiagonalCoverage
