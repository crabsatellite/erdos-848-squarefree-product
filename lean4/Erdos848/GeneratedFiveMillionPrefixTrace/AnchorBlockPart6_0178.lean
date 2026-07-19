import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0178

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0178 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 183040
  | _ => True

theorem anchorPart6_0178 : anchorPartValid6_0178 anchorHistoryChunk0178 := by
  unfold anchorPartValid6_0178 anchorHistoryChunk0178
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
