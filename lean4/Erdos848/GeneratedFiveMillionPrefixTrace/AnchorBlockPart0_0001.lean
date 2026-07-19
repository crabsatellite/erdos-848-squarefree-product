import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0001

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0001 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 1024
  | _ => True

theorem anchorPart0_0001 : anchorPartValid0_0001 anchorHistoryChunk0001 := by
  unfold anchorPartValid0_0001 anchorHistoryChunk0001
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
