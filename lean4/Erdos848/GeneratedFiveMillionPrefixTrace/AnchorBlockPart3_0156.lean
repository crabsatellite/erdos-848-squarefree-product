import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0156

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0156 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 160128
  | _ => True

theorem anchorPart3_0156 : anchorPartValid3_0156 anchorHistoryChunk0156 := by
  unfold anchorPartValid3_0156 anchorHistoryChunk0156
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
