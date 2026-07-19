import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0176

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0176 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 180992
  | _ => True

theorem anchorPart6_0176 : anchorPartValid6_0176 anchorHistoryChunk0176 := by
  unfold anchorPartValid6_0176 anchorHistoryChunk0176
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
