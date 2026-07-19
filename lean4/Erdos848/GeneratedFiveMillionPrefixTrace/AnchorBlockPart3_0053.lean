import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0053

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0053 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 54656
  | _ => True

theorem anchorPart3_0053 : anchorPartValid3_0053 anchorHistoryChunk0053 := by
  unfold anchorPartValid3_0053 anchorHistoryChunk0053
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
