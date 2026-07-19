import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0013

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0013 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 13696
  | _ => True

theorem anchorPart3_0013 : anchorPartValid3_0013 anchorHistoryChunk0013 := by
  unfold anchorPartValid3_0013 anchorHistoryChunk0013
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
