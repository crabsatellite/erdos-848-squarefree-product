import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0121

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0121 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 124288
  | _ => True

theorem anchorPart3_0121 : anchorPartValid3_0121 anchorHistoryChunk0121 := by
  unfold anchorPartValid3_0121 anchorHistoryChunk0121
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
