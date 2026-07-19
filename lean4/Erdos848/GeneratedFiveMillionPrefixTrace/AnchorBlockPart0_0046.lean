import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0046

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0046 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 47104
  | _ => True

theorem anchorPart0_0046 : anchorPartValid0_0046 anchorHistoryChunk0046 := by
  unfold anchorPartValid0_0046 anchorHistoryChunk0046
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
