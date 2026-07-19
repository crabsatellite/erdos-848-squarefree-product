import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0058

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0058 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 59776
  | _ => True

theorem anchorPart3_0058 : anchorPartValid3_0058 anchorHistoryChunk0058 := by
  unfold anchorPartValid3_0058 anchorHistoryChunk0058
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
