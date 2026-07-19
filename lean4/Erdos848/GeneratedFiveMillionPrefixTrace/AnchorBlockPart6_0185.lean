import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0185

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0185 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 190208
  | _ => True

theorem anchorPart6_0185 : anchorPartValid6_0185 anchorHistoryChunk0185 := by
  unfold anchorPartValid6_0185 anchorHistoryChunk0185
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
