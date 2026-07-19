import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0169

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0169 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 173440
  | _ => True

theorem anchorPart3_0169 : anchorPartValid3_0169 anchorHistoryChunk0169 := by
  unfold anchorPartValid3_0169 anchorHistoryChunk0169
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
