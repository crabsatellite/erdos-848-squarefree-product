import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0138

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0138 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 141696
  | _ => True

theorem anchorPart3_0138 : anchorPartValid3_0138 anchorHistoryChunk0138 := by
  unfold anchorPartValid3_0138 anchorHistoryChunk0138
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
