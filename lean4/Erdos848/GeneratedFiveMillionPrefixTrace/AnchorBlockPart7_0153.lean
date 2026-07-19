import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0153

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0153 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 157568
  | _ => True

theorem anchorPart7_0153 : anchorPartValid7_0153 anchorHistoryChunk0153 := by
  unfold anchorPartValid7_0153 anchorHistoryChunk0153
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
