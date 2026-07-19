import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0038

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0038 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 39680
  | _ => True

theorem anchorPart6_0038 : anchorPartValid6_0038 anchorHistoryChunk0038 := by
  unfold anchorPartValid6_0038 anchorHistoryChunk0038
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
