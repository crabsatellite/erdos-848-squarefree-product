import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0066

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0066 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 67840
  | _ => True

theorem anchorPart2_0066 : anchorPartValid2_0066 anchorHistoryChunk0066 := by
  unfold anchorPartValid2_0066 anchorHistoryChunk0066
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
