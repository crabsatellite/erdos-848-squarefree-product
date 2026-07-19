import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0154

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0154 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 158592
  | _ => True

theorem anchorPart7_0154 : anchorPartValid7_0154 anchorHistoryChunk0154 := by
  unfold anchorPartValid7_0154 anchorHistoryChunk0154
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
