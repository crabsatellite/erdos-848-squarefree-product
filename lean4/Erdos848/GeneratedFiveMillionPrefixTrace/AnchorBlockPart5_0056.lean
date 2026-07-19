import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0056

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0056 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 57984
  | _ => True

theorem anchorPart5_0056 : anchorPartValid5_0056 anchorHistoryChunk0056 := by
  unfold anchorPartValid5_0056 anchorHistoryChunk0056
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
