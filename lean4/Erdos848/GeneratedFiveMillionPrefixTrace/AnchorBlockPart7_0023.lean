import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0023

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0023 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 24448
  | _ => True

theorem anchorPart7_0023 : anchorPartValid7_0023 anchorHistoryChunk0023 := by
  unfold anchorPartValid7_0023 anchorHistoryChunk0023
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
