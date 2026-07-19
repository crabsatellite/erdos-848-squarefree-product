import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0175

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0175 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 179584
  | _ => True

theorem anchorPart3_0175 : anchorPartValid3_0175 anchorHistoryChunk0175 := by
  unfold anchorPartValid3_0175 anchorHistoryChunk0175
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
