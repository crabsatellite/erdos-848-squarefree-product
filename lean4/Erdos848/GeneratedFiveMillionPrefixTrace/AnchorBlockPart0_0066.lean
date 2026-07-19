import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0066

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0066 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 67584
  | _ => True

theorem anchorPart0_0066 : anchorPartValid0_0066 anchorHistoryChunk0066 := by
  unfold anchorPartValid0_0066 anchorHistoryChunk0066
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
