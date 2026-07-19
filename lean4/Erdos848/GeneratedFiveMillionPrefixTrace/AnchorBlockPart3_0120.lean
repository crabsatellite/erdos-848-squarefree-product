import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0120

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0120 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 123264
  | _ => True

theorem anchorPart3_0120 : anchorPartValid3_0120 anchorHistoryChunk0120 := by
  unfold anchorPartValid3_0120 anchorHistoryChunk0120
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
