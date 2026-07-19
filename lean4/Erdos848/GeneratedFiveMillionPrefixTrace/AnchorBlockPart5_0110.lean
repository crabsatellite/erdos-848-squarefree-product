import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0110

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0110 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 113280
  | _ => True

theorem anchorPart5_0110 : anchorPartValid5_0110 anchorHistoryChunk0110 := by
  unfold anchorPartValid5_0110 anchorHistoryChunk0110
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
