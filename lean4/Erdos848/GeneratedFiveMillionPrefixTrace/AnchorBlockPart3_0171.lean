import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0171

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0171 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 175488
  | _ => True

theorem anchorPart3_0171 : anchorPartValid3_0171 anchorHistoryChunk0171 := by
  unfold anchorPartValid3_0171 anchorHistoryChunk0171
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
