import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0176

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0176 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 180224
  | _ => True

theorem anchorPart0_0176 : anchorPartValid0_0176 anchorHistoryChunk0176 := by
  unfold anchorPartValid0_0176 anchorHistoryChunk0176
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
