import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0111

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0111 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 113920
  | _ => True

theorem anchorPart2_0111 : anchorPartValid2_0111 anchorHistoryChunk0111 := by
  unfold anchorPartValid2_0111 anchorHistoryChunk0111
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
