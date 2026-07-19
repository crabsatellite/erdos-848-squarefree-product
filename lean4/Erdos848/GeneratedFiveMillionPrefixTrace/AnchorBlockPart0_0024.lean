import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0024

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0024 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 24576
  | _ => True

theorem anchorPart0_0024 : anchorPartValid0_0024 anchorHistoryChunk0024 := by
  unfold anchorPartValid0_0024 anchorHistoryChunk0024
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
