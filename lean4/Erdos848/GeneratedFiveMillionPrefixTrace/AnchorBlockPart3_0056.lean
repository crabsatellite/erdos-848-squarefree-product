import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0056

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0056 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 57728
  | _ => True

theorem anchorPart3_0056 : anchorPartValid3_0056 anchorHistoryChunk0056 := by
  unfold anchorPartValid3_0056 anchorHistoryChunk0056
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
