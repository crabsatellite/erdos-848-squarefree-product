import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0078

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0078 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 79872
  | _ => True

theorem anchorPart0_0078 : anchorPartValid0_0078 anchorHistoryChunk0078 := by
  unfold anchorPartValid0_0078 anchorHistoryChunk0078
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
