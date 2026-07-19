import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0030

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0030 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 31360
  | _ => True

theorem anchorPart5_0030 : anchorPartValid5_0030 anchorHistoryChunk0030 := by
  unfold anchorPartValid5_0030 anchorHistoryChunk0030
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
