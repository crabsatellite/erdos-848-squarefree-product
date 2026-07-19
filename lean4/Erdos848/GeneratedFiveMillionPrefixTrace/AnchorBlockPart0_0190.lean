import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0190

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0190 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 194560
  | _ => True

theorem anchorPart0_0190 : anchorPartValid0_0190 anchorHistoryChunk0190 := by
  unfold anchorPartValid0_0190 anchorHistoryChunk0190
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
