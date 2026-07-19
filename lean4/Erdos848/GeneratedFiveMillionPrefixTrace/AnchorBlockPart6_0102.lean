import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0102

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0102 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 105216
  | _ => True

theorem anchorPart6_0102 : anchorPartValid6_0102 anchorHistoryChunk0102 := by
  unfold anchorPartValid6_0102 anchorHistoryChunk0102
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
