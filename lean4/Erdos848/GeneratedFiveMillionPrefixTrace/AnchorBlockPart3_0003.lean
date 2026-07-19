import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0003

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0003 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 3456
  | _ => True

theorem anchorPart3_0003 : anchorPartValid3_0003 anchorHistoryChunk0003 := by
  unfold anchorPartValid3_0003 anchorHistoryChunk0003
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
