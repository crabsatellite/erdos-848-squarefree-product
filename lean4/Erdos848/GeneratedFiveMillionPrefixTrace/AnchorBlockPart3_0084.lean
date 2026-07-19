import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0084

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0084 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 86400
  | _ => True

theorem anchorPart3_0084 : anchorPartValid3_0084 anchorHistoryChunk0084 := by
  unfold anchorPartValid3_0084 anchorHistoryChunk0084
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
