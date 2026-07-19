import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0090

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0090 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 92544
  | _ => True

theorem anchorPart3_0090 : anchorPartValid3_0090 anchorHistoryChunk0090 := by
  unfold anchorPartValid3_0090 anchorHistoryChunk0090
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
