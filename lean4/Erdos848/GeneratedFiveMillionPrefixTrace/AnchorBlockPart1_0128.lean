import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0128

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0128 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 131200
  | _ => True

theorem anchorPart1_0128 : anchorPartValid1_0128 anchorHistoryChunk0128 := by
  unfold anchorPartValid1_0128 anchorHistoryChunk0128
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
