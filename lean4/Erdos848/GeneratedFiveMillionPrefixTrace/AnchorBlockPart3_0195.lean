import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0195

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0195 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 199800
  | _ => True

theorem anchorPart3_0195 : anchorPartValid3_0195 anchorHistoryChunk0195 := by
  unfold anchorPartValid3_0195 anchorHistoryChunk0195
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
