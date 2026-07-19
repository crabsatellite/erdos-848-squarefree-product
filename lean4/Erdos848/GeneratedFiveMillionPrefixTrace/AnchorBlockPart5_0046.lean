import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0046

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0046 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 47744
  | _ => True

theorem anchorPart5_0046 : anchorPartValid5_0046 anchorHistoryChunk0046 := by
  unfold anchorPartValid5_0046 anchorHistoryChunk0046
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
