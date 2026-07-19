import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0034

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0034 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 35584
  | _ => True

theorem anchorPart6_0034 : anchorPartValid6_0034 anchorHistoryChunk0034 := by
  unfold anchorPartValid6_0034 anchorHistoryChunk0034
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
