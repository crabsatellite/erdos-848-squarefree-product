import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0124

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0124 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 126976
  | _ => True

theorem anchorPart0_0124 : anchorPartValid0_0124 anchorHistoryChunk0124 := by
  unfold anchorPartValid0_0124 anchorHistoryChunk0124
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
