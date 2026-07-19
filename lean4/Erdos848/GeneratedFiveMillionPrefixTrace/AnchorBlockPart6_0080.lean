import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0080

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0080 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 82688
  | _ => True

theorem anchorPart6_0080 : anchorPartValid6_0080 anchorHistoryChunk0080 := by
  unfold anchorPartValid6_0080 anchorHistoryChunk0080
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
