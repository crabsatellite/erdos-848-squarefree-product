import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0082

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0082 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 84352
  | _ => True

theorem anchorPart3_0082 : anchorPartValid3_0082 anchorHistoryChunk0082 := by
  unfold anchorPartValid3_0082 anchorHistoryChunk0082
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
