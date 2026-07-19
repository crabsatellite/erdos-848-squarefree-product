import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0146

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0146 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 149504
  | _ => True

theorem anchorPart0_0146 : anchorPartValid0_0146 anchorHistoryChunk0146 := by
  unfold anchorPartValid0_0146 anchorHistoryChunk0146
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
