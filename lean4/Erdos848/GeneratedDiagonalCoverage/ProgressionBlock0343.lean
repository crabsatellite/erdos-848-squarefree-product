import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00012_1_0005Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 155569) (.leaf 156817))

theorem progressionSegment00012_1_0005Check :
    progressionSegment00012_1_0005Tree.check indexedMarker 11881 6137 124 = true :=
  by decide

theorem progressionSegment00012_1_0005 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 11881 6137 124 126 :=
  by simpa [progressionSegment00012_1_0005Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00012_1_0005Check

def progressionSegment00012_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 603) (.leaf 1849)) (.node (.leaf 3096) (.leaf 4353))) (.node (.node (.leaf 5604) (.leaf 6845)) (.node (.leaf 8095) (.leaf 9347)))) (.node (.node (.node (.leaf 10592) (.leaf 11847)) (.node (.leaf 13099) (.leaf 14348))) (.node (.node (.leaf 15600) (.leaf 16849)) (.node (.leaf 18102) (.leaf 19355))))) (.node (.node (.node (.node (.leaf 20602) (.leaf 21860)) (.node (.leaf 23101) (.leaf 24350))) (.node (.node (.leaf 25594) (.leaf 26845)) (.node (.leaf 28102) (.leaf 29345)))) (.node (.node (.node (.leaf 30590) (.leaf 31838)) (.node (.leaf 33093) (.leaf 34340))) (.node (.node (.leaf 35589) (.leaf 36832)) (.node (.leaf 38082) (.leaf 39337)))))) (.node (.node (.node (.node (.node (.leaf 40585) (.leaf 41832)) (.node (.leaf 43086) (.leaf 44333))) (.node (.node (.leaf 45591) (.leaf 46832)) (.node (.leaf 48086) (.leaf 49341)))) (.node (.node (.node (.leaf 50592) (.leaf 51830)) (.node (.leaf 53077) (.leaf 54332))) (.node (.node (.leaf 55578) (.leaf 56827)) (.node (.leaf 58077) (.leaf 59327))))) (.node (.node (.node (.node (.leaf 60573) (.leaf 61829)) (.node (.leaf 63082) (.leaf 64324))) (.node (.node (.leaf 65574) (.leaf 66821)) (.node (.leaf 68070) (.leaf 69314)))) (.node (.node (.node (.leaf 70572) (.leaf 71824)) (.node (.leaf 73070) (.leaf 74320))) (.node (.node (.leaf 75561) (.leaf 76814)) (.node (.leaf 78064) (.leaf 79308)))))))

theorem progressionSegment00012_2_0000Check :
    progressionSegment00012_2_0000Tree.check indexedMarker 11881 5744 0 = true :=
  by decide

theorem progressionSegment00012_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 11881 5744 0 64 :=
  by simpa [progressionSegment00012_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00012_2_0000Check

def progressionSegment00012_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 80558) (.leaf 81811)) (.node (.leaf 83059) (.leaf 84307))) (.node (.node (.leaf 85558) (.leaf 86807)) (.node (.leaf 88051) (.leaf 89295)))) (.node (.node (.node (.leaf 90550) (.leaf 91794)) (.node (.leaf 93042) (.leaf 94305))) (.node (.node (.leaf 95549) (.leaf 96792)) (.node (.leaf 98044) (.leaf 99287))))) (.node (.node (.node (.node (.leaf 100541) (.leaf 101794)) (.node (.leaf 103052) (.leaf 104286))) (.node (.node (.leaf 105545) (.leaf 106793)) (.node (.leaf 108041) (.leaf 109290)))) (.node (.node (.node (.leaf 110546) (.leaf 111797)) (.node (.leaf 113048) (.leaf 114296))) (.node (.node (.leaf 115550) (.leaf 116801)) (.node (.leaf 118048) (.leaf 119299))))))

theorem progressionSegment00012_2_0001Check :
    progressionSegment00012_2_0001Tree.check indexedMarker 11881 5744 64 = true :=
  by decide

theorem progressionSegment00012_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 11881 5744 64 96 :=
  by simpa [progressionSegment00012_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00012_2_0001Check

def progressionSegment00012_2_0002Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 120546) (.leaf 121794)) (.node (.leaf 123043) (.leaf 124291))) (.node (.node (.leaf 125544) (.leaf 126790)) (.node (.leaf 128041) (.leaf 129287)))) (.node (.node (.node (.leaf 130533) (.leaf 131786)) (.node (.leaf 133033) (.leaf 134287))) (.node (.node (.leaf 135536) (.leaf 136797)) (.node (.leaf 138040) (.leaf 139285)))))

theorem progressionSegment00012_2_0002Check :
    progressionSegment00012_2_0002Tree.check indexedMarker 11881 5744 96 = true :=
  by decide

theorem progressionSegment00012_2_0002 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 11881 5744 96 112 :=
  by simpa [progressionSegment00012_2_0002Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00012_2_0002Check

end Erdos848.GeneratedDiagonalCoverage
