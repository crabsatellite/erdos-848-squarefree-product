import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0102

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0102 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 104704
  | _ => True

theorem anchorPart2_0102 : anchorPartValid2_0102 anchorHistoryChunk0102 := by
  unfold anchorPartValid2_0102 anchorHistoryChunk0102
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
