import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0130

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0130 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 133888
  | _ => True

theorem anchorPart6_0130 : anchorPartValid6_0130 anchorHistoryChunk0130 := by
  unfold anchorPartValid6_0130 anchorHistoryChunk0130
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
