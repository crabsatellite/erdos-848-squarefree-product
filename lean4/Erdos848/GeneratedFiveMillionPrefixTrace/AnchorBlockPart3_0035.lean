import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0035

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0035 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 36224
  | _ => True

theorem anchorPart3_0035 : anchorPartValid3_0035 anchorHistoryChunk0035 := by
  unfold anchorPartValid3_0035 anchorHistoryChunk0035
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
