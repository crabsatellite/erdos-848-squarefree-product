import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0187

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0187 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 191488
  | _ => True

theorem anchorPart0_0187 : anchorPartValid0_0187 anchorHistoryChunk0187 := by
  unfold anchorPartValid0_0187 anchorHistoryChunk0187
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
