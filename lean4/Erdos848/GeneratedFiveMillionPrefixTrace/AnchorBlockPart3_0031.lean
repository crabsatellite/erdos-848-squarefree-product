import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0031

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0031 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 32128
  | _ => True

theorem anchorPart3_0031 : anchorPartValid3_0031 anchorHistoryChunk0031 := by
  unfold anchorPartValid3_0031 anchorHistoryChunk0031
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
