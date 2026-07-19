import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0170

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0170 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 174848
  | _ => True

theorem anchorPart6_0170 : anchorPartValid6_0170 anchorHistoryChunk0170 := by
  unfold anchorPartValid6_0170 anchorHistoryChunk0170
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
