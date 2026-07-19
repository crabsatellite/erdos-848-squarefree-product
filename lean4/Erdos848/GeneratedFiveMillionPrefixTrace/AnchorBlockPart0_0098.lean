import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0098

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0098 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 100352
  | _ => True

theorem anchorPart0_0098 : anchorPartValid0_0098 anchorHistoryChunk0098 := by
  unfold anchorPartValid0_0098 anchorHistoryChunk0098
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
