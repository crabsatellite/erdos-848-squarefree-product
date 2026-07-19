import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0078

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0078 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 80256
  | _ => True

theorem anchorPart3_0078 : anchorPartValid3_0078 anchorHistoryChunk0078 := by
  unfold anchorPartValid3_0078 anchorHistoryChunk0078
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
