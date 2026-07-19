import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0116

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0116 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 119424
  | _ => True

theorem anchorPart5_0116 : anchorPartValid5_0116 anchorHistoryChunk0116 := by
  unfold anchorPartValid5_0116 anchorHistoryChunk0116
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
