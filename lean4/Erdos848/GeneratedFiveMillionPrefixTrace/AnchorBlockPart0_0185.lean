import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0185

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0185 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 189440
  | _ => True

theorem anchorPart0_0185 : anchorPartValid0_0185 anchorHistoryChunk0185 := by
  unfold anchorPartValid0_0185 anchorHistoryChunk0185
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
