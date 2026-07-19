import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00007_1_0001Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node (.leaf 100226) (.leaf 100626)) (.node (.leaf 101022) (.leaf 101411))) (.node (.node (.leaf 101800) (.leaf 102195)) (.node (.leaf 102590) (.leaf 102976)))) (.node (.node (.node (.leaf 103369) (.leaf 103760)) (.node (.leaf 104142) (.leaf 104535))) (.node (.node (.leaf 104925) (.leaf 105318)) (.node (.leaf 105716) (.leaf 106106))))) (.node (.node (.node (.node (.leaf 106498) (.leaf 106888)) (.node (.leaf 107284) (.leaf 107672))) (.node (.node (.leaf 108060) (.leaf 108453)) (.node (.leaf 108842) (.leaf 109232)))) (.node (.node (.node (.leaf 109628) (.leaf 110026)) (.node (.leaf 110412) (.leaf 110802))) (.node (.node (.leaf 111191) (.leaf 111586)) (.node (.leaf 111981) (.leaf 112374)))))) (.node (.node (.node (.node (.node (.leaf 112767) (.leaf 113157)) (.node (.leaf 113543) (.leaf 113933))) (.node (.node (.leaf 114327) (.leaf 114720)) (.node (.leaf 115107) (.leaf 115504)))) (.node (.node (.node (.leaf 115898) (.leaf 116293)) (.node (.leaf 116681) (.leaf 117078))) (.node (.node (.leaf 117460) (.leaf 117849)) (.node (.leaf 118248) (.leaf 118636))))) (.node (.node (.node (.node (.leaf 119028) (.leaf 119418)) (.node (.leaf 119810) (.leaf 120198))) (.node (.node (.leaf 120594) (.leaf 120980)) (.node (.leaf 121377) (.leaf 121764)))) (.node (.node (.node (.leaf 122156) (.leaf 122547)) (.node (.leaf 122943) (.leaf 123331))) (.node (.node (.leaf 123724) (.leaf 124111)) (.node (.leaf 124507) (.leaf 124897))))))) (.node (.node (.node (.node (.node (.node (.leaf 125289) (.leaf 125683)) (.node (.leaf 126071) (.leaf 126458))) (.node (.node (.leaf 126851) (.leaf 127239)) (.node (.leaf 127629) (.leaf 128024)))) (.node (.node (.node (.leaf 128412) (.leaf 128803)) (.node (.leaf 129197) (.leaf 129591))) (.node (.node (.leaf 129975) (.leaf 130365)) (.node (.leaf 130758) (.leaf 131151))))) (.node (.node (.node (.node (.leaf 131541) (.leaf 131934)) (.node (.leaf 132325) (.leaf 132713))) (.node (.node (.leaf 133106) (.leaf 133499)) (.node (.leaf 133885) (.leaf 134283)))) (.node (.node (.node (.leaf 134672) (.leaf 135069)) (.node (.leaf 135457) (.leaf 135855))) (.node (.node (.leaf 136249) (.leaf 136640)) (.node (.leaf 137030) (.leaf 137421)))))) (.node (.node (.node (.node (.node (.leaf 137809) (.leaf 138204)) (.node (.leaf 138596) (.leaf 138986))) (.node (.node (.leaf 139372) (.leaf 139761)) (.node (.leaf 140154) (.leaf 140548)))) (.node (.node (.node (.leaf 140942) (.leaf 141332)) (.node (.leaf 141724) (.leaf 142117))) (.node (.node (.leaf 142506) (.leaf 142899)) (.node (.leaf 143290) (.leaf 143679))))) (.node (.node (.node (.node (.leaf 144069) (.leaf 144454)) (.node (.leaf 144845) (.leaf 145241))) (.node (.node (.leaf 145639) (.leaf 146027)) (.node (.leaf 146417) (.leaf 146807)))) (.node (.node (.node (.leaf 147201) (.leaf 147589)) (.node (.leaf 147981) (.leaf 148367))) (.node (.node (.leaf 148757) (.leaf 149147)) (.node (.leaf 149544) (.leaf 149934))))))))

theorem progressionSegment00007_1_0001Check :
    progressionSegment00007_1_0001Tree.check indexedMarker 3721 682 256 = true :=
  by decide

theorem progressionSegment00007_1_0001 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 3721 682 256 384 :=
  by simpa [progressionSegment00007_1_0001Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00007_1_0001Check

end Erdos848.GeneratedDiagonalCoverage
