import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0033

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0033 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 34560
  | _ => True

theorem anchorPart6_0033 : anchorPartValid6_0033 anchorHistoryChunk0033 := by
  unfold anchorPartValid6_0033 anchorHistoryChunk0033
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
