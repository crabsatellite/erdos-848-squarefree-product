import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0023

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0023 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 23936
  | _ => True

theorem anchorPart3_0023 : anchorPartValid3_0023 anchorHistoryChunk0023 := by
  unfold anchorPartValid3_0023 anchorHistoryChunk0023
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
