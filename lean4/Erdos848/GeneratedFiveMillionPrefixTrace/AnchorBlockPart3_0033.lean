import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0033

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0033 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 34176
  | _ => True

theorem anchorPart3_0033 : anchorPartValid3_0033 anchorHistoryChunk0033 := by
  unfold anchorPartValid3_0033 anchorHistoryChunk0033
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
