import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0161

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0161 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 165504
  | _ => True

theorem anchorPart5_0161 : anchorPartValid5_0161 anchorHistoryChunk0161 := by
  unfold anchorPartValid5_0161 anchorHistoryChunk0161
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
