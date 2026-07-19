import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0120

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0120 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 123520
  | _ => True

theorem anchorPart5_0120 : anchorPartValid5_0120 anchorHistoryChunk0120 := by
  unfold anchorPartValid5_0120 anchorHistoryChunk0120
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
