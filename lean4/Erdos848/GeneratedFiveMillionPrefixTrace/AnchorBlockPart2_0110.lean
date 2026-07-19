import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0110

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0110 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 112896
  | _ => True

theorem anchorPart2_0110 : anchorPartValid2_0110 anchorHistoryChunk0110 := by
  unfold anchorPartValid2_0110 anchorHistoryChunk0110
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
