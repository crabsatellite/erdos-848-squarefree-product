import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0016

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0016 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 16640
  | _ => True

theorem anchorPart2_0016 : anchorPartValid2_0016 anchorHistoryChunk0016 := by
  unfold anchorPartValid2_0016 anchorHistoryChunk0016
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
