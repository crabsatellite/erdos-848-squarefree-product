import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0013

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0013 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 13312
  | _ => True

theorem anchorPart0_0013 : anchorPartValid0_0013 anchorHistoryChunk0013 := by
  unfold anchorPartValid0_0013 anchorHistoryChunk0013
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
