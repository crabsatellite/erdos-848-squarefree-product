import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0115

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0115 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 118016
  | _ => True

theorem anchorPart2_0115 : anchorPartValid2_0115 anchorHistoryChunk0115 := by
  unfold anchorPartValid2_0115 anchorHistoryChunk0115
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
