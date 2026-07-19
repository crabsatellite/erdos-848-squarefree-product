import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0022

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0022 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 23424
  | _ => True

theorem anchorPart7_0022 : anchorPartValid7_0022 anchorHistoryChunk0022 := by
  unfold anchorPartValid7_0022 anchorHistoryChunk0022
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
