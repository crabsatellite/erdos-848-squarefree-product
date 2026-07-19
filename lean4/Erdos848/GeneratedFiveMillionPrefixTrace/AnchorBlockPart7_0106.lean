import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0106

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0106 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 109440
  | _ => True

theorem anchorPart7_0106 : anchorPartValid7_0106 anchorHistoryChunk0106 := by
  unfold anchorPartValid7_0106 anchorHistoryChunk0106
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
