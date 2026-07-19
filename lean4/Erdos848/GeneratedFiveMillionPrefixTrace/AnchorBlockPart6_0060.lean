import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0060

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0060 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 62208
  | _ => True

theorem anchorPart6_0060 : anchorPartValid6_0060 anchorHistoryChunk0060 := by
  unfold anchorPartValid6_0060 anchorHistoryChunk0060
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
