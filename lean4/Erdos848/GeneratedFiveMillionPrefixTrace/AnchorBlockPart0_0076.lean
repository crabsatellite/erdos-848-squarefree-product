import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0076

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0076 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 77824
  | _ => True

theorem anchorPart0_0076 : anchorPartValid0_0076 anchorHistoryChunk0076 := by
  unfold anchorPartValid0_0076 anchorHistoryChunk0076
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
