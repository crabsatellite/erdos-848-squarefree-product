import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0041

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0041 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 42112
  | _ => True

theorem anchorPart1_0041 : anchorPartValid1_0041 anchorHistoryChunk0041 := by
  unfold anchorPartValid1_0041 anchorHistoryChunk0041
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
