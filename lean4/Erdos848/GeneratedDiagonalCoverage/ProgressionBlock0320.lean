import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00007_2_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node (.leaf 100475) (.leaf 100873)) (.node (.leaf 101267) (.leaf 101656))) (.node (.node (.leaf 102050) (.leaf 102443)) (.node (.leaf 102831) (.leaf 103226)))) (.node (.node (.node (.leaf 103611) (.leaf 104001)) (.node (.leaf 104390) (.leaf 104781))) (.node (.node (.leaf 105170) (.leaf 105571)) (.node (.leaf 105965) (.leaf 106352))))) (.node (.node (.node (.node (.leaf 106745) (.leaf 107135)) (.node (.leaf 107528) (.leaf 107918))) (.node (.node (.leaf 108309) (.leaf 108701)) (.node (.leaf 109087) (.leaf 109484)))) (.node (.node (.node (.leaf 109878) (.leaf 110267)) (.node (.leaf 110661) (.leaf 111047))) (.node (.node (.leaf 111446) (.leaf 111835)) (.node (.leaf 112231) (.leaf 112622)))))) (.node (.node (.node (.node (.node (.leaf 113012) (.leaf 113402)) (.node (.leaf 113792) (.leaf 114183))) (.node (.node (.leaf 114581) (.leaf 114968)) (.node (.leaf 115362) (.leaf 115754)))) (.node (.node (.node (.leaf 116144) (.leaf 116537)) (.node (.leaf 116929) (.leaf 117320))) (.node (.node (.leaf 117706) (.leaf 118104)) (.node (.leaf 118493) (.leaf 118880))))) (.node (.node (.node (.node (.leaf 119271) (.leaf 119665)) (.node (.leaf 120053) (.leaf 120447))) (.node (.node (.leaf 120841) (.leaf 121233)) (.node (.leaf 121622) (.leaf 122011)))) (.node (.node (.node (.leaf 122406) (.leaf 122793)) (.node (.leaf 123187) (.leaf 123579))) (.node (.node (.leaf 123970) (.leaf 124363)) (.node (.leaf 124753) (.leaf 125147))))))) (.node (.node (.node (.node (.node (.node (.leaf 125535) (.leaf 125929)) (.node (.leaf 126315) (.leaf 126709))) (.node (.node (.leaf 127097) (.leaf 127486)) (.node (.leaf 127884) (.leaf 128271)))) (.node (.node (.node (.leaf 128657) (.leaf 129049)) (.node (.leaf 129444) (.leaf 129834))) (.node (.node (.leaf 130221) (.leaf 130616)) (.node (.leaf 131007) (.leaf 131398))))) (.node (.node (.node (.node (.leaf 131791) (.leaf 132184)) (.node (.leaf 132568) (.leaf 132961))) (.node (.node (.leaf 133355) (.leaf 133745)) (.node (.leaf 134141) (.leaf 134533)))) (.node (.node (.node (.leaf 134923) (.leaf 135315)) (.node (.leaf 135710) (.leaf 136101))) (.node (.node (.leaf 136496) (.leaf 136887)) (.node (.leaf 137282) (.leaf 137667)))))) (.node (.node (.node (.node (.node (.leaf 138059) (.leaf 138449)) (.node (.leaf 138844) (.leaf 139228))) (.node (.node (.leaf 139623) (.leaf 140009)) (.node (.leaf 140406) (.leaf 140797)))) (.node (.node (.node (.leaf 141188) (.leaf 141577)) (.node (.leaf 141969) (.leaf 142362))) (.node (.node (.leaf 142755) (.leaf 143148)) (.node (.leaf 143534) (.leaf 143925))))) (.node (.node (.node (.node (.leaf 144310) (.leaf 144700)) (.node (.leaf 145096) (.leaf 145490))) (.node (.node (.leaf 145884) (.leaf 146275)) (.node (.leaf 146664) (.leaf 147058)))) (.node (.node (.node (.leaf 147451) (.leaf 147835)) (.node (.leaf 148228) (.leaf 148612))) (.node (.node (.leaf 149006) (.leaf 149399)) (.node (.leaf 149790) (.leaf 150183))))))))

theorem progressionSegment00007_2_0001Check :
    progressionSegment00007_2_0001Tree.check indexedMarker 3721 3039 256 = true :=
  by decide

theorem progressionSegment00007_2_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 3721 3039 256 384 :=
  by simpa [progressionSegment00007_2_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00007_2_0001Check

end Erdos848.GeneratedDiagonalCoverage
