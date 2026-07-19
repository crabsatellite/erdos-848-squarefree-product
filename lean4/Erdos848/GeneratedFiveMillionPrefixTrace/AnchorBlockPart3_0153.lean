import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0153

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0153 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 157056
  | _ => True

theorem anchorPart3_0153 : anchorPartValid3_0153 anchorHistoryChunk0153 := by
  unfold anchorPartValid3_0153 anchorHistoryChunk0153
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
