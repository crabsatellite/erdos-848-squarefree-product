import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0043

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0043 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 44800
  | _ => True

theorem anchorPart6_0043 : anchorPartValid6_0043 anchorHistoryChunk0043 := by
  unfold anchorPartValid6_0043 anchorHistoryChunk0043
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
