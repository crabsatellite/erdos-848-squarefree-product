import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0101

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0101 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 103808
  | _ => True

theorem anchorPart3_0101 : anchorPartValid3_0101 anchorHistoryChunk0101 := by
  unfold anchorPartValid3_0101 anchorHistoryChunk0101
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
