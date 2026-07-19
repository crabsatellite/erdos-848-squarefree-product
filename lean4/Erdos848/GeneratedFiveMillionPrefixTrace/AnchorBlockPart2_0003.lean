import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0003

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0003 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 3328
  | _ => True

theorem anchorPart2_0003 : anchorPartValid2_0003 anchorHistoryChunk0003 := by
  unfold anchorPartValid2_0003 anchorHistoryChunk0003
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
