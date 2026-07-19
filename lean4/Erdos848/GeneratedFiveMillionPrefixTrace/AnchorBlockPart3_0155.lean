import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0155

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0155 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 159104
  | _ => True

theorem anchorPart3_0155 : anchorPartValid3_0155 anchorHistoryChunk0155 := by
  unfold anchorPartValid3_0155 anchorHistoryChunk0155
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
