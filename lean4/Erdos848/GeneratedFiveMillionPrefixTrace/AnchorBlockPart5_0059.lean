import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0059

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0059 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 61056
  | _ => True

theorem anchorPart5_0059 : anchorPartValid5_0059 anchorHistoryChunk0059 := by
  unfold anchorPartValid5_0059 anchorHistoryChunk0059
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
