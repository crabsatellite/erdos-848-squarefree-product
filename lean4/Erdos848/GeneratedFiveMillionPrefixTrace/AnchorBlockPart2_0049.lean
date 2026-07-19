import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0049

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0049 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 50432
  | _ => True

theorem anchorPart2_0049 : anchorPartValid2_0049 anchorHistoryChunk0049 := by
  unfold anchorPartValid2_0049 anchorHistoryChunk0049
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
