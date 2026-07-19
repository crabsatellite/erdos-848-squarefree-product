import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0158

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0158 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 162560
  | _ => True

theorem anchorPart6_0158 : anchorPartValid6_0158 anchorHistoryChunk0158 := by
  unfold anchorPartValid6_0158 anchorHistoryChunk0158
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
