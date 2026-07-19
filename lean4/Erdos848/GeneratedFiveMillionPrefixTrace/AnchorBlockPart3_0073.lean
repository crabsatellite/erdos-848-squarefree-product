import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0073

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0073 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 75136
  | _ => True

theorem anchorPart3_0073 : anchorPartValid3_0073 anchorHistoryChunk0073 := by
  unfold anchorPartValid3_0073 anchorHistoryChunk0073
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
