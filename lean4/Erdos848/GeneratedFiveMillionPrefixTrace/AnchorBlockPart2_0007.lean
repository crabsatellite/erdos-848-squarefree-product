import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0007

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0007 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 7424
  | _ => True

theorem anchorPart2_0007 : anchorPartValid2_0007 anchorHistoryChunk0007 := by
  unfold anchorPartValid2_0007 anchorHistoryChunk0007
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
