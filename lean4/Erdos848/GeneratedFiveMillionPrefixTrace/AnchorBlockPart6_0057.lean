import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0057

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0057 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 59136
  | _ => True

theorem anchorPart6_0057 : anchorPartValid6_0057 anchorHistoryChunk0057 := by
  unfold anchorPartValid6_0057 anchorHistoryChunk0057
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
