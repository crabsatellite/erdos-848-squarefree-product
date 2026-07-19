import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0136

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0136 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 140032
  | _ => True

theorem anchorPart6_0136 : anchorPartValid6_0136 anchorHistoryChunk0136 := by
  unfold anchorPartValid6_0136 anchorHistoryChunk0136
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
