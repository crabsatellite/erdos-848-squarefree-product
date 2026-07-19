import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0121

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0121 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 123904
  | _ => True

theorem anchorPart0_0121 : anchorPartValid0_0121 anchorHistoryChunk0121 := by
  unfold anchorPartValid0_0121 anchorHistoryChunk0121
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
