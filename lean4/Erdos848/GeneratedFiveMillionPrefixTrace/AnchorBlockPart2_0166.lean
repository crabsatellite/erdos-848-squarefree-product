import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0166

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0166 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 170240
  | _ => True

theorem anchorPart2_0166 : anchorPartValid2_0166 anchorHistoryChunk0166 := by
  unfold anchorPartValid2_0166 anchorHistoryChunk0166
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
