import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0055

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0055 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 56704
  | _ => True

theorem anchorPart3_0055 : anchorPartValid3_0055 anchorHistoryChunk0055 := by
  unfold anchorPartValid3_0055 anchorHistoryChunk0055
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
