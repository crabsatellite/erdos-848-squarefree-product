import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0152

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0152 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 156032
  | _ => True

theorem anchorPart3_0152 : anchorPartValid3_0152 anchorHistoryChunk0152 := by
  unfold anchorPartValid3_0152 anchorHistoryChunk0152
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
