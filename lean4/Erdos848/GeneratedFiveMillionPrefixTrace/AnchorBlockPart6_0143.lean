import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0143

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0143 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 147200
  | _ => True

theorem anchorPart6_0143 : anchorPartValid6_0143 anchorHistoryChunk0143 := by
  unfold anchorPartValid6_0143 anchorHistoryChunk0143
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
