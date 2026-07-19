import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0170

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0170 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 174080
  | _ => True

theorem anchorPart0_0170 : anchorPartValid0_0170 anchorHistoryChunk0170 := by
  unfold anchorPartValid0_0170 anchorHistoryChunk0170
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
