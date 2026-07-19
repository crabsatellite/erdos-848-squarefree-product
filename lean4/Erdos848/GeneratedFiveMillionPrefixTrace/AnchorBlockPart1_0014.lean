import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0014

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0014 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 14464
  | _ => True

theorem anchorPart1_0014 : anchorPartValid1_0014 anchorHistoryChunk0014 := by
  unfold anchorPartValid1_0014 anchorHistoryChunk0014
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
