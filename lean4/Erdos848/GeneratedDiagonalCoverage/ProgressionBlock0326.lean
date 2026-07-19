import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00009_1_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node (.leaf 403) (.leaf 1238)) (.node (.leaf 2069) (.leaf 2899))) (.node (.node (.leaf 3731) (.leaf 4574)) (.node (.leaf 5403) (.leaf 6231)))) (.node (.node (.node (.leaf 7063) (.leaf 7899)) (.node (.leaf 8733) (.leaf 9569))) (.node (.node (.leaf 10397) (.leaf 11231)) (.node (.leaf 12065) (.leaf 12901))))) (.node (.node (.node (.node (.leaf 13733) (.leaf 14575)) (.node (.leaf 15402) (.leaf 16226))) (.node (.node (.leaf 17066) (.leaf 17907)) (.node (.leaf 18740) (.leaf 19576)))) (.node (.node (.node (.leaf 20405) (.leaf 21246)) (.node (.leaf 22078) (.leaf 22903))) (.node (.node (.leaf 23733) (.leaf 24567)) (.node (.leaf 25397) (.leaf 26234)))))) (.node (.node (.node (.node (.node (.leaf 27069) (.leaf 27902)) (.node (.leaf 28738) (.leaf 29562))) (.node (.node (.leaf 30397) (.leaf 31227)) (.node (.leaf 32060) (.leaf 32899)))) (.node (.node (.node (.leaf 33730) (.leaf 34559)) (.node (.leaf 35393) (.leaf 36224))) (.node (.node (.leaf 37056) (.leaf 37885)) (.node (.leaf 38721) (.leaf 39559))))) (.node (.node (.node (.node (.leaf 40392) (.leaf 41224)) (.node (.leaf 42057) (.leaf 42886))) (.node (.node (.leaf 43719) (.leaf 44560)) (.node (.leaf 45394) (.leaf 46227)))) (.node (.node (.node (.leaf 47053) (.leaf 47889)) (.node (.leaf 48728) (.leaf 49562))) (.node (.node (.leaf 50387) (.leaf 51220)) (.node (.leaf 52054) (.leaf 52881))))))) (.node (.node (.node (.node (.node (.node (.leaf 53716) (.leaf 54551)) (.node (.leaf 55383) (.leaf 56213))) (.node (.node (.leaf 57045) (.leaf 57876)) (.node (.leaf 58710) (.leaf 59550)))) (.node (.node (.node (.leaf 60378) (.leaf 61221)) (.node (.leaf 62050) (.leaf 62883))) (.node (.node (.leaf 63715) (.leaf 64547)) (.node (.leaf 65378) (.leaf 66215))))) (.node (.node (.node (.node (.leaf 67043) (.leaf 67875)) (.node (.leaf 68707) (.leaf 69541))) (.node (.node (.leaf 70378) (.leaf 71212)) (.node (.leaf 72044) (.leaf 72873)))) (.node (.node (.node (.leaf 73701) (.leaf 74536)) (.node (.leaf 75367) (.leaf 76200))) (.node (.node (.leaf 77036) (.leaf 77870)) (.node (.leaf 78697) (.leaf 79537)))))) (.node (.node (.node (.node (.node (.leaf 80363) (.leaf 81196)) (.node (.leaf 82027) (.leaf 82860))) (.node (.node (.leaf 83701) (.leaf 84532)) (.node (.leaf 85361) (.leaf 86195)))) (.node (.node (.node (.leaf 87031) (.leaf 87860)) (.node (.leaf 88690) (.leaf 89516))) (.node (.node (.leaf 90355) (.leaf 91184)) (.node (.leaf 92018) (.leaf 92849))))) (.node (.node (.node (.node (.leaf 93686) (.leaf 94520)) (.node (.leaf 95350) (.leaf 96186))) (.node (.node (.leaf 97021) (.leaf 97851)) (.node (.leaf 98682) (.leaf 99510)))) (.node (.node (.node (.leaf 100345) (.leaf 101188)) (.node (.leaf 102020) (.leaf 102855))) (.node (.node (.leaf 103683) (.leaf 104511)) (.node (.leaf 105347) (.leaf 106183))))))))

theorem progressionSegment00009_1_0000Check :
    progressionSegment00009_1_0000Tree.check indexedMarker 7921 3861 0 = true :=
  by decide

theorem progressionSegment00009_1_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 7921 3861 0 128 :=
  by simpa [progressionSegment00009_1_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00009_1_0000Check

end Erdos848.GeneratedDiagonalCoverage
