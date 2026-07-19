import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0182

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0182 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 187136
  | _ => True

theorem anchorPart6_0182 : anchorPartValid6_0182 anchorHistoryChunk0182 := by
  unfold anchorPartValid6_0182 anchorHistoryChunk0182
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
