import Erdos848.GeneratedDiagonalCoverage.IndexedData

namespace Erdos848.GeneratedDiagonalCoverage

open PrimeRootCoverageData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def progressionSegment00003_2_0003Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.node (.leaf 135926) (.leaf 136015)) (.node (.leaf 136105) (.leaf 136195))) (.node (.node (.leaf 136286) (.leaf 136374)) (.node (.leaf 136459) (.leaf 136550)))) (.node (.node (.node (.leaf 136637) (.leaf 136726)) (.node (.leaf 136818) (.leaf 136905))) (.node (.node (.leaf 136992) (.leaf 137083)) (.node (.leaf 137173) (.leaf 137261))))) (.node (.node (.node (.node (.leaf 137349) (.leaf 137434)) (.node (.leaf 137523) (.leaf 137610))) (.node (.node (.leaf 137697) (.leaf 137783)) (.node (.leaf 137872) (.leaf 137965)))) (.node (.node (.node (.leaf 138053) (.leaf 138143)) (.node (.leaf 138229) (.leaf 138317))) (.node (.node (.leaf 138405) (.leaf 138495)) (.node (.leaf 138584) (.leaf 138673)))))) (.node (.node (.node (.node (.node (.leaf 138759) (.leaf 138851)) (.node (.leaf 138937) (.leaf 139024))) (.node (.node (.leaf 139111) (.leaf 139196)) (.node (.leaf 139284) (.leaf 139374)))) (.node (.node (.node (.leaf 139463) (.leaf 139552)) (.node (.leaf 139642) (.leaf 139725))) (.node (.node (.leaf 139812) (.leaf 139903)) (.node (.leaf 139990) (.leaf 140083))))) (.node (.node (.node (.node (.leaf 140171) (.leaf 140262)) (.node (.leaf 140348) (.leaf 140435))) (.node (.node (.leaf 140526) (.leaf 140616)) (.node (.leaf 140706) (.leaf 140792)))) (.node (.node (.node (.leaf 140881) (.leaf 140970)) (.node (.leaf 141055) (.leaf 141147))) (.node (.node (.leaf 141236) (.leaf 141321)) (.node (.leaf 141411) (.leaf 141495))))))) (.node (.node (.node (.node (.node (.node (.leaf 141586) (.leaf 141677)) (.node (.leaf 141764) (.leaf 141853))) (.node (.node (.leaf 141941) (.leaf 142030)) (.node (.leaf 142123) (.leaf 142208)))) (.node (.node (.node (.leaf 142296) (.leaf 142385)) (.node (.leaf 142474) (.leaf 142562))) (.node (.node (.leaf 142648) (.leaf 142737)) (.node (.leaf 142828) (.leaf 142917))))) (.node (.node (.node (.node (.leaf 143005) (.leaf 143097)) (.node (.leaf 143184) (.leaf 143270))) (.node (.node (.leaf 143356) (.leaf 143445)) (.node (.leaf 143529) (.leaf 143618)))) (.node (.node (.node (.leaf 143712) (.leaf 143798)) (.node (.leaf 143885) (.leaf 143974))) (.node (.node (.leaf 144062) (.leaf 144150)) (.node (.leaf 144235) (.leaf 144323)))))) (.node (.node (.node (.node (.node (.leaf 144412) (.leaf 144497)) (.node (.leaf 144584) (.leaf 144672))) (.node (.node (.leaf 144761) (.leaf 144851)) (.node (.leaf 144941) (.leaf 145029)))) (.node (.node (.node (.leaf 145121) (.leaf 145209)) (.node (.leaf 145298) (.leaf 145387))) (.node (.node (.leaf 145474) (.leaf 145568)) (.node (.leaf 145658) (.leaf 145744))))) (.node (.node (.node (.node (.leaf 145831) (.leaf 145920)) (.node (.leaf 146009) (.leaf 146096))) (.node (.node (.leaf 146187) (.leaf 146276)) (.node (.leaf 146362) (.leaf 146450)))) (.node (.node (.node (.leaf 146536) (.leaf 146627)) (.node (.leaf 146714) (.leaf 146803))) (.node (.node (.leaf 146894) (.leaf 146982)) (.node (.leaf 147072) (.leaf 147161))))))))

theorem progressionSegment00003_2_0003Check :
    progressionSegment00003_2_0003Tree.check indexedMarker 841 800 1536 = true :=
  by decide

theorem progressionSegment00003_2_0003 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 841 800 1536 1664 :=
  by simpa [progressionSegment00003_2_0003Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00003_2_0003Check

def progressionSegment00003_2_0004Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.node (.leaf 147247) (.leaf 147336)) (.node (.leaf 147424) (.leaf 147512))) (.node (.node (.leaf 147597) (.leaf 147682)) (.node (.leaf 147773) (.leaf 147864)))) (.node (.node (.node (.leaf 147951) (.leaf 148040)) (.node (.leaf 148130) (.leaf 148216))) (.node (.node (.leaf 148301) (.leaf 148388)) (.node (.leaf 148474) (.leaf 148562))))) (.node (.node (.node (.node (.leaf 148650) (.leaf 148741)) (.node (.leaf 148826) (.leaf 148918))) (.node (.node (.leaf 149009) (.leaf 149094)) (.node (.leaf 149185) (.leaf 149273)))) (.node (.node (.node (.leaf 149364) (.leaf 149452)) (.node (.leaf 149542) (.leaf 149631))) (.node (.node (.leaf 149720) (.leaf 149806)) (.node (.leaf 149895) (.leaf 149985)))))) (.node (.node (.node (.node (.node (.leaf 150074) (.leaf 150160)) (.node (.leaf 150247) (.leaf 150335))) (.node (.node (.leaf 150424) (.leaf 150509)) (.node (.leaf 150596) (.leaf 150685)))) (.node (.node (.node (.leaf 150775) (.leaf 150865)) (.node (.leaf 150954) (.leaf 151042))) (.node (.node (.leaf 151128) (.leaf 151222)) (.node (.leaf 151312) (.leaf 151398))))) (.node (.node (.node (.node (.leaf 151487) (.leaf 151578)) (.node (.leaf 151667) (.leaf 151755))) (.node (.node (.leaf 151845) (.leaf 151936)) (.node (.leaf 152027) (.leaf 152111)))) (.node (.node (.node (.leaf 152202) (.leaf 152291)) (.node (.leaf 152378) (.leaf 152464))) (.node (.node (.leaf 152553) (.leaf 152640)) (.node (.leaf 152728) (.leaf 152818)))))))

theorem progressionSegment00003_2_0004Check :
    progressionSegment00003_2_0004Tree.check indexedMarker 841 800 1664 = true :=
  by decide

theorem progressionSegment00003_2_0004 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 841 800 1664 1728 :=
  by simpa [progressionSegment00003_2_0004Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00003_2_0004Check

def progressionSegment00003_2_0005Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.node (.leaf 152908) (.leaf 152994)) (.node (.leaf 153084) (.leaf 153173))) (.node (.node (.leaf 153262) (.leaf 153350)) (.node (.leaf 153435) (.leaf 153527)))) (.node (.node (.node (.leaf 153614) (.leaf 153703)) (.node (.leaf 153794) (.leaf 153880))) (.node (.node (.leaf 153971) (.leaf 154059)) (.node (.leaf 154145) (.leaf 154232))))) (.node (.node (.node (.node (.leaf 154323) (.leaf 154409)) (.node (.leaf 154496) (.leaf 154585))) (.node (.node (.leaf 154676) (.leaf 154764)) (.node (.leaf 154853) (.leaf 154940)))) (.node (.node (.node (.leaf 155028) (.leaf 155112)) (.node (.leaf 155200) (.leaf 155289))) (.node (.node (.leaf 155379) (.leaf 155469)) (.node (.leaf 155556) (.leaf 155646))))))

theorem progressionSegment00003_2_0005Check :
    progressionSegment00003_2_0005Tree.check indexedMarker 841 800 1728 = true :=
  by decide

theorem progressionSegment00003_2_0005 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 841 800 1728 1760 :=
  by simpa [progressionSegment00003_2_0005Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00003_2_0005Check

def progressionSegment00003_2_0006Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.node (.node (.leaf 155733) (.leaf 155823)) (.node (.leaf 155910) (.leaf 155999))) (.node (.node (.leaf 156087) (.leaf 156176)) (.node (.leaf 156267) (.leaf 156355)))) (.node (.node (.node (.leaf 156438) (.leaf 156526)) (.node (.leaf 156619) (.leaf 156705))) (.node (.node (.leaf 156795) (.leaf 156883)) (.node (.leaf 156974) (.leaf 157064)))))

theorem progressionSegment00003_2_0006Check :
    progressionSegment00003_2_0006Tree.check indexedMarker 841 800 1760 = true :=
  by decide

theorem progressionSegment00003_2_0006 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 841 800 1760 1776 :=
  by simpa [progressionSegment00003_2_0006Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00003_2_0006Check

def progressionSegment00003_2_0007Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.node (.leaf 157149) (.leaf 157240)) (.node (.leaf 157325) (.leaf 157413)))

theorem progressionSegment00003_2_0007Check :
    progressionSegment00003_2_0007Tree.check indexedMarker 841 800 1776 = true :=
  by decide

theorem progressionSegment00003_2_0007 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 841 800 1776 1780 :=
  by simpa [progressionSegment00003_2_0007Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00003_2_0007Check

def progressionSegment00003_2_0008Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.node (.leaf 157500) (.leaf 157587))

theorem progressionSegment00003_2_0008Check :
    progressionSegment00003_2_0008Tree.check indexedMarker 841 800 1780 = true :=
  by decide

theorem progressionSegment00003_2_0008 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 841 800 1780 1782 :=
  by simpa [progressionSegment00003_2_0008Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00003_2_0008Check

def progressionSegment00003_2_0009Tree : IndexedMarkerData.ProgressionIndexTree :=
  (.leaf 157676)

theorem progressionSegment00003_2_0009Check :
    progressionSegment00003_2_0009Tree.check indexedMarker 841 800 1782 = true :=
  by decide

theorem progressionSegment00003_2_0009 :
    IndexedMarkerData.ProgressionIndexTree.RangeCovered indexedMarker 841 800 1782 1783 :=
  by simpa [progressionSegment00003_2_0009Tree, IndexedMarkerData.ProgressionIndexTree.size] using
    IndexedMarkerData.ProgressionIndexTree.range progressionSegment00003_2_0009Check

end Erdos848.GeneratedDiagonalCoverage
