import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0157

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0157 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 161152
  | _ => True

theorem anchorPart3_0157 : anchorPartValid3_0157 anchorHistoryChunk0157 := by
  unfold anchorPartValid3_0157 anchorHistoryChunk0157
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
