import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0042

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0042 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 43392
  | _ => True

theorem anchorPart3_0042 : anchorPartValid3_0042 anchorHistoryChunk0042 := by
  unfold anchorPartValid3_0042 anchorHistoryChunk0042
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
