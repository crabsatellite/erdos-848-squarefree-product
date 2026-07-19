import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0173

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0173 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 177152
  | _ => True

theorem anchorPart0_0173 : anchorPartValid0_0173 anchorHistoryChunk0173 := by
  unfold anchorPartValid0_0173 anchorHistoryChunk0173
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
