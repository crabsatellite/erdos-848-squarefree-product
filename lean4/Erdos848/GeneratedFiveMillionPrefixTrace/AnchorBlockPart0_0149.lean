import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0149

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0149 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 152576
  | _ => True

theorem anchorPart0_0149 : anchorPartValid0_0149 anchorHistoryChunk0149 := by
  unfold anchorPartValid0_0149 anchorHistoryChunk0149
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
