import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0072

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0072 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 74624
  | _ => True

theorem anchorPart7_0072 : anchorPartValid7_0072 anchorHistoryChunk0072 := by
  unfold anchorPartValid7_0072 anchorHistoryChunk0072
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
