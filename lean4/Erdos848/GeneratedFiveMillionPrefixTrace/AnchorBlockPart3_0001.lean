import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0001

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0001 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 1408
  | _ => True

theorem anchorPart3_0001 : anchorPartValid3_0001 anchorHistoryChunk0001 := by
  unfold anchorPartValid3_0001 anchorHistoryChunk0001
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
