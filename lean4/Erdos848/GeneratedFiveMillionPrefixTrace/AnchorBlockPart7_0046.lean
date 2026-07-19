import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0046

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0046 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 48000
  | _ => True

theorem anchorPart7_0046 : anchorPartValid7_0046 anchorHistoryChunk0046 := by
  unfold anchorPartValid7_0046 anchorHistoryChunk0046
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
