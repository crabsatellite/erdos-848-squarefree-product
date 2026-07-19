import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0158

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0158 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 162176
  | _ => True

theorem anchorPart3_0158 : anchorPartValid3_0158 anchorHistoryChunk0158 := by
  unfold anchorPartValid3_0158 anchorHistoryChunk0158
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
