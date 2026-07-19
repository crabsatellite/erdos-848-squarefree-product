import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0007

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0007 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 7552
  | _ => True

theorem anchorPart3_0007 : anchorPartValid3_0007 anchorHistoryChunk0007 := by
  unfold anchorPartValid3_0007 anchorHistoryChunk0007
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
