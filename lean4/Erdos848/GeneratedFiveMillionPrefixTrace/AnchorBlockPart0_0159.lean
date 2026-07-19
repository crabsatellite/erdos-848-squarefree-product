import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0159

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0159 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 162816
  | _ => True

theorem anchorPart0_0159 : anchorPartValid0_0159 anchorHistoryChunk0159 := by
  unfold anchorPartValid0_0159 anchorHistoryChunk0159
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
