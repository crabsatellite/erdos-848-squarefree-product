import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00014_2_0000Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 693) (.leaf 2661)) (.node (.leaf 4648) (.leaf 6611))) (.node (.node (.leaf 8583) (.leaf 10558)) (.node (.leaf 12538) (.leaf 14518)))) (.node (.node (.node (.leaf 16485) (.leaf 18467)) (.node (.leaf 20442) (.leaf 22420))) (.node (.node (.leaf 24387) (.leaf 26362)) (.node (.leaf 28337) (.leaf 30306))))) (.node (.node (.node (.node (.leaf 32283) (.leaf 34248)) (.node (.leaf 36222) (.leaf 38190))) (.node (.node (.leaf 40171) (.leaf 42147)) (.node (.leaf 44116) (.leaf 46099)))) (.node (.node (.node (.leaf 48068) (.leaf 50049)) (.node (.leaf 52015) (.leaf 53989))) (.node (.node (.leaf 55964) (.leaf 57932)) (.node (.leaf 59906) (.leaf 61885)))))) (.node (.node (.node (.node (.node (.leaf 63861) (.leaf 65837)) (.node (.leaf 67800) (.leaf 69776))) (.node (.node (.leaf 71751) (.leaf 73717)) (.node (.leaf 75692) (.leaf 77666)))) (.node (.node (.node (.leaf 79645) (.leaf 81610)) (.node (.leaf 83589) (.leaf 85562))) (.node (.node (.leaf 87535) (.leaf 89495)) (.node (.leaf 91472) (.leaf 93446))))) (.node (.node (.node (.node (.leaf 95424) (.leaf 97395)) (.node (.leaf 99366) (.leaf 101349))) (.node (.node (.leaf 103323) (.leaf 105290)) (.node (.leaf 107269) (.leaf 109239)))) (.node (.node (.node (.leaf 111214) (.leaf 113199)) (.node (.leaf 115169) (.leaf 117152))) (.node (.node (.leaf 119122) (.leaf 121091)) (.node (.leaf 123065) (.leaf 125041)))))))

theorem progressionSegment00014_2_0000Check :
    progressionSegment00014_2_0000Tree.check indexedMarker 18769 6613 0 = true :=
  by decide

theorem progressionSegment00014_2_0000 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 18769 6613 0 64 :=
  by simpa [progressionSegment00014_2_0000Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00014_2_0000Check

def progressionSegment00014_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 127011) (.leaf 128979)) (.node (.leaf 130955) (.leaf 132927))) (.node (.node (.leaf 134905) (.leaf 136888)) (.node (.leaf 138863) (.leaf 140834)))) (.node (.node (.node (.leaf 142805) (.leaf 144769)) (.node (.leaf 146751) (.leaf 148715))) (.node (.node (.leaf 150689) (.leaf 152673)) (.node (.leaf 154649) (.leaf 156617)))))

theorem progressionSegment00014_2_0001Check :
    progressionSegment00014_2_0001Tree.check indexedMarker 18769 6613 64 = true :=
  by decide

theorem progressionSegment00014_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 18769 6613 64 80 :=
  by simpa [progressionSegment00014_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00014_2_0001Check

end Erdos848.GeneratedDiagonalCoverage
