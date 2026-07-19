import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0166

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0166 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 170752
  | _ => True

theorem anchorPart6_0166 : anchorPartValid6_0166 anchorHistoryChunk0166 := by
  unfold anchorPartValid6_0166 anchorHistoryChunk0166
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
