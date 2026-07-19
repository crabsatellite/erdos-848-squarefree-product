import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0149

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0149 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 152960
  | _ => True

theorem anchorPart3_0149 : anchorPartValid3_0149 anchorHistoryChunk0149 := by
  unfold anchorPartValid3_0149 anchorHistoryChunk0149
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
