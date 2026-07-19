import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0070

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0070 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 71680
  | _ => True

theorem anchorPart0_0070 : anchorPartValid0_0070 anchorHistoryChunk0070 := by
  unfold anchorPartValid0_0070 anchorHistoryChunk0070
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
