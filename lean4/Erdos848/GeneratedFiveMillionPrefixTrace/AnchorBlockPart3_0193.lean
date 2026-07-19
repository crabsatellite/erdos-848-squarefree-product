import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0193

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0193 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 198016
  | _ => True

theorem anchorPart3_0193 : anchorPartValid3_0193 anchorHistoryChunk0193 := by
  unfold anchorPartValid3_0193 anchorHistoryChunk0193
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
