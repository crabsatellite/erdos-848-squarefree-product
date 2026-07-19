import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0077

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0077 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 79104
  | _ => True

theorem anchorPart2_0077 : anchorPartValid2_0077 anchorHistoryChunk0077 := by
  unfold anchorPartValid2_0077 anchorHistoryChunk0077
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
