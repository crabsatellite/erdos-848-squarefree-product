import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0123

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0123 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 126336
  | _ => True

theorem anchorPart3_0123 : anchorPartValid3_0123 anchorHistoryChunk0123 := by
  unfold anchorPartValid3_0123 anchorHistoryChunk0123
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
