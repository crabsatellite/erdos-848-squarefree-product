import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0066

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0066 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 68352
  | _ => True

theorem anchorPart6_0066 : anchorPartValid6_0066 anchorHistoryChunk0066 := by
  unfold anchorPartValid6_0066 anchorHistoryChunk0066
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
