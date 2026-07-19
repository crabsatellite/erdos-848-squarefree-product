import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0064

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0064 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 65536
  | _ => True

theorem anchorPart0_0064 : anchorPartValid0_0064 anchorHistoryChunk0064 := by
  unfold anchorPartValid0_0064 anchorHistoryChunk0064
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
