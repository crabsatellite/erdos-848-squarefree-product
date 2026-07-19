import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0072

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0072 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 74496
  | _ => True

theorem anchorPart6_0072 : anchorPartValid6_0072 anchorHistoryChunk0072 := by
  unfold anchorPartValid6_0072 anchorHistoryChunk0072
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
