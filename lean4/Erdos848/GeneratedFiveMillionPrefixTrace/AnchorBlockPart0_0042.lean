import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0042

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0042 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 43008
  | _ => True

theorem anchorPart0_0042 : anchorPartValid0_0042 anchorHistoryChunk0042 := by
  unfold anchorPartValid0_0042 anchorHistoryChunk0042
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
