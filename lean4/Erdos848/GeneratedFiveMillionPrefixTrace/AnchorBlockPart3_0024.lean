import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0024

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0024 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 24960
  | _ => True

theorem anchorPart3_0024 : anchorPartValid3_0024 anchorHistoryChunk0024 := by
  unfold anchorPartValid3_0024 anchorHistoryChunk0024
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
