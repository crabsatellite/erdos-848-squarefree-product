import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0037

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0037 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 38272
  | _ => True

theorem anchorPart3_0037 : anchorPartValid3_0037 anchorHistoryChunk0037 := by
  unfold anchorPartValid3_0037 anchorHistoryChunk0037
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
