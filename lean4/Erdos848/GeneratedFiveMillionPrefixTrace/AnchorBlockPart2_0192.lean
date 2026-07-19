import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0192

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0192 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 196864
  | _ => True

theorem anchorPart2_0192 : anchorPartValid2_0192 anchorHistoryChunk0192 := by
  unfold anchorPartValid2_0192 anchorHistoryChunk0192
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
