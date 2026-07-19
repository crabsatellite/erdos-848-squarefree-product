import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0103

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0103 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 105856
  | _ => True

theorem anchorPart3_0103 : anchorPartValid3_0103 anchorHistoryChunk0103 := by
  unfold anchorPartValid3_0103 anchorHistoryChunk0103
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
