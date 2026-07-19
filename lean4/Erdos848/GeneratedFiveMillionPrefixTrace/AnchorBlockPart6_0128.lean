import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0128

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0128 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 131840
  | _ => True

theorem anchorPart6_0128 : anchorPartValid6_0128 anchorHistoryChunk0128 := by
  unfold anchorPartValid6_0128 anchorHistoryChunk0128
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
