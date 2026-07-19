import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0178

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0178 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 182272
  | _ => True

theorem anchorPart0_0178 : anchorPartValid0_0178 anchorHistoryChunk0178 := by
  unfold anchorPartValid0_0178 anchorHistoryChunk0178
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
