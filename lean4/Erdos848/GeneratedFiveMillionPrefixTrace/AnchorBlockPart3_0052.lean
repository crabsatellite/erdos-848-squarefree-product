import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0052

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0052 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 53632
  | _ => True

theorem anchorPart3_0052 : anchorPartValid3_0052 anchorHistoryChunk0052 := by
  unfold anchorPartValid3_0052 anchorHistoryChunk0052
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
