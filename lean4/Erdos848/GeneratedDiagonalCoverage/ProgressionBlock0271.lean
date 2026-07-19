import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00001_2_0017Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node (.leaf 154695) (.leaf 154711)) (.node (.leaf 154730) (.leaf 154747))) (.node (.node (.leaf 154766) (.leaf 154786)) (.node (.leaf 154803) (.leaf 154821)))) (.node (.node (.node (.leaf 154837) (.leaf 154855)) (.node (.leaf 154872) (.leaf 154888))) (.node (.node (.leaf 154907) (.leaf 154923)) (.node (.leaf 154943) (.leaf 154960))))) (.node (.node (.node (.node (.leaf 154977) (.leaf 154995)) (.node (.leaf 155011) (.leaf 155030))) (.node (.node (.leaf 155047) (.leaf 155066)) (.node (.leaf 155083) (.leaf 155099)))) (.node (.node (.node (.leaf 155116) (.leaf 155134)) (.node (.leaf 155150) (.leaf 155169))) (.node (.node (.leaf 155186) (.leaf 155204)) (.node (.leaf 155221) (.leaf 155241)))))) (.node (.node (.node (.node (.node (.leaf 155257) (.leaf 155276)) (.node (.leaf 155293) (.leaf 155312))) (.node (.node (.leaf 155330) (.leaf 155348)) (.node (.leaf 155367) (.leaf 155384)))) (.node (.node (.node (.leaf 155402) (.leaf 155420)) (.node (.leaf 155439) (.leaf 155456))) (.node (.node (.leaf 155473) (.leaf 155493)) (.node (.leaf 155510) (.leaf 155528))))) (.node (.node (.node (.node (.leaf 155545) (.leaf 155561)) (.node (.leaf 155582) (.leaf 155600))) (.node (.node (.leaf 155618) (.leaf 155634)) (.node (.leaf 155651) (.leaf 155669)))) (.node (.node (.node (.leaf 155686) (.leaf 155703)) (.node (.leaf 155721) (.leaf 155738))) (.node (.node (.leaf 155758) (.leaf 155775)) (.node (.leaf 155794) (.leaf 155812))))))) (.node (.node (.node (.node (.node (.node (.leaf 155829) (.leaf 155847)) (.node (.leaf 155863) (.leaf 155882))) (.node (.node (.leaf 155898) (.leaf 155917)) (.node (.leaf 155935) (.leaf 155954)))) (.node (.node (.node (.leaf 155972) (.leaf 155987)) (.node (.leaf 156005) (.leaf 156024))) (.node (.node (.leaf 156041) (.leaf 156061)) (.node (.leaf 156077) (.leaf 156095))))) (.node (.node (.node (.node (.leaf 156112) (.leaf 156130)) (.node (.leaf 156147) (.leaf 156165))) (.node (.node (.leaf 156184) (.leaf 156204)) (.node (.leaf 156222) (.leaf 156241)))) (.node (.node (.node (.leaf 156257) (.leaf 156277)) (.node (.leaf 156293) (.leaf 156311))) (.node (.node (.leaf 156329) (.leaf 156346)) (.node (.leaf 156365) (.leaf 156380)))))) (.node (.node (.node (.node (.node (.leaf 156397) (.leaf 156412)) (.node (.leaf 156430) (.leaf 156448))) (.node (.node (.leaf 156465) (.leaf 156484)) (.node (.leaf 156502) (.leaf 156519)))) (.node (.node (.node (.leaf 156537) (.leaf 156553)) (.node (.leaf 156571) (.leaf 156588))) (.node (.node (.leaf 156609) (.leaf 156628)) (.node (.leaf 156646) (.leaf 156662))))) (.node (.node (.node (.node (.leaf 156681) (.leaf 156698)) (.node (.leaf 156715) (.leaf 156732))) (.node (.node (.leaf 156749) (.leaf 156769)) (.node (.leaf 156787) (.leaf 156806)))) (.node (.node (.node (.leaf 156824) (.leaf 156844)) (.node (.leaf 156860) (.leaf 156876))) (.node (.node (.leaf 156894) (.leaf 156913)) (.node (.leaf 156930) (.leaf 156949))))))))

theorem progressionSegment00001_2_0017Check :
    progressionSegment00001_2_0017Tree.check indexedMarker 169 70 8704 = true :=
  by decide

theorem progressionSegment00001_2_0017 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 169 70 8704 8832 :=
  by simpa [progressionSegment00001_2_0017Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00001_2_0017Check

def progressionSegment00001_2_0018Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 156966) (.leaf 156986)) (.node (.leaf 157005) (.leaf 157022))) (.node (.node (.leaf 157040) (.leaf 157058)) (.node (.leaf 157075) (.leaf 157093)))) (.node (.node (.node (.leaf 157110) (.leaf 157128)) (.node (.leaf 157143) (.leaf 157161))) (.node (.node (.leaf 157177) (.leaf 157196)) (.node (.leaf 157215) (.leaf 157234))))) (.node (.node (.node (.node (.leaf 157252) (.leaf 157268)) (.node (.leaf 157287) (.leaf 157304))) (.node (.node (.leaf 157320) (.leaf 157340)) (.node (.leaf 157356) (.leaf 157375)))) (.node (.node (.node (.leaf 157393) (.leaf 157409)) (.node (.leaf 157427) (.leaf 157442))) (.node (.node (.leaf 157461) (.leaf 157478)) (.node (.leaf 157496) (.leaf 157515))))))

theorem progressionSegment00001_2_0018Check :
    progressionSegment00001_2_0018Tree.check indexedMarker 169 70 8832 = true :=
  by decide

theorem progressionSegment00001_2_0018 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 169 70 8832 8864 :=
  by simpa [progressionSegment00001_2_0018Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00001_2_0018Check

def progressionSegment00001_2_0019Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.leaf 157532) (.leaf 157551)) (.node (.leaf 157567) (.leaf 157584))) (.node (.node (.leaf 157602) (.leaf 157619)) (.node (.leaf 157639) (.leaf 157656))))

theorem progressionSegment00001_2_0019Check :
    progressionSegment00001_2_0019Tree.check indexedMarker 169 70 8864 = true :=
  by decide

theorem progressionSegment00001_2_0019 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 169 70 8864 8872 :=
  by simpa [progressionSegment00001_2_0019Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00001_2_0019Check

def progressionSegment00001_2_0020Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 157673) (.leaf 157692)) (.node (.leaf 157708) (.leaf 157726)))

theorem progressionSegment00001_2_0020Check :
    progressionSegment00001_2_0020Tree.check indexedMarker 169 70 8872 = true :=
  by decide

theorem progressionSegment00001_2_0020 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 169 70 8872 8876 :=
  by simpa [progressionSegment00001_2_0020Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00001_2_0020Check

end Erdos848.GeneratedDiagonalCoverage
