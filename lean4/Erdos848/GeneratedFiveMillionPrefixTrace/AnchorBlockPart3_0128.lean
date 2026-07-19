import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0128

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0128 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 131456
  | _ => True

theorem anchorPart3_0128 : anchorPartValid3_0128 anchorHistoryChunk0128 := by
  unfold anchorPartValid3_0128 anchorHistoryChunk0128
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
