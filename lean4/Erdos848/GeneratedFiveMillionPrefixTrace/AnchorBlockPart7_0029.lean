import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0029

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0029 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 30592
  | _ => True

theorem anchorPart7_0029 : anchorPartValid7_0029 anchorHistoryChunk0029 := by
  unfold anchorPartValid7_0029 anchorHistoryChunk0029
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
