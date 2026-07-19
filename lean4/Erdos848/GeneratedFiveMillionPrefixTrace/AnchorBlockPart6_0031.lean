import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0031

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0031 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 32512
  | _ => True

theorem anchorPart6_0031 : anchorPartValid6_0031 anchorHistoryChunk0031 := by
  unfold anchorPartValid6_0031 anchorHistoryChunk0031
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
