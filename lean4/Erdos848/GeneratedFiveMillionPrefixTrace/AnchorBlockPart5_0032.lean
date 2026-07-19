import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0032

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0032 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 33408
  | _ => True

theorem anchorPart5_0032 : anchorPartValid5_0032 anchorHistoryChunk0032 := by
  unfold anchorPartValid5_0032 anchorHistoryChunk0032
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
