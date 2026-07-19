import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0123

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0123 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 126848
  | _ => True

theorem anchorPart7_0123 : anchorPartValid7_0123 anchorHistoryChunk0123 := by
  unfold anchorPartValid7_0123 anchorHistoryChunk0123
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
