import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0053

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0053 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 54400
  | _ => True

theorem anchorPart1_0053 : anchorPartValid1_0053 anchorHistoryChunk0053 := by
  unfold anchorPartValid1_0053 anchorHistoryChunk0053
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
