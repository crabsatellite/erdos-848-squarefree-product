import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0046

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0046 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 47488
  | _ => True

theorem anchorPart3_0046 : anchorPartValid3_0046 anchorHistoryChunk0046 := by
  unfold anchorPartValid3_0046 anchorHistoryChunk0046
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
