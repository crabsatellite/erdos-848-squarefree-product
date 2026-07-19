import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0053

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0053 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 55168
  | _ => True

theorem anchorPart7_0053 : anchorPartValid7_0053 anchorHistoryChunk0053 := by
  unfold anchorPartValid7_0053 anchorHistoryChunk0053
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
