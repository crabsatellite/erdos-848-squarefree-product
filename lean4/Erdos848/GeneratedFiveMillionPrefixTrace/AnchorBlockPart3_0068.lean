import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0068

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0068 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 70016
  | _ => True

theorem anchorPart3_0068 : anchorPartValid3_0068 anchorHistoryChunk0068 := by
  unfold anchorPartValid3_0068 anchorHistoryChunk0068
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
