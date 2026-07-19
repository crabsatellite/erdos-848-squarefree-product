import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0096

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0096 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 98688
  | _ => True

theorem anchorPart3_0096 : anchorPartValid3_0096 anchorHistoryChunk0096 := by
  unfold anchorPartValid3_0096 anchorHistoryChunk0096
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
