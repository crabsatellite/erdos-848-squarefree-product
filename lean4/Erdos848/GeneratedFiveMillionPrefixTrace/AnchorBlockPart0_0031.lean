import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0031

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0031 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 31744
  | _ => True

theorem anchorPart0_0031 : anchorPartValid0_0031 anchorHistoryChunk0031 := by
  unfold anchorPartValid0_0031 anchorHistoryChunk0031
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
