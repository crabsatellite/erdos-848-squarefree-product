import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0178

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0178 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 182656
  | _ => True

theorem anchorPart3_0178 : anchorPartValid3_0178 anchorHistoryChunk0178 := by
  unfold anchorPartValid3_0178 anchorHistoryChunk0178
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
