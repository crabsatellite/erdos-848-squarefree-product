import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0134

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0134 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 137600
  | _ => True

theorem anchorPart3_0134 : anchorPartValid3_0134 anchorHistoryChunk0134 := by
  unfold anchorPartValid3_0134 anchorHistoryChunk0134
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
