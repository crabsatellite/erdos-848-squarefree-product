import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0157

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0157 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 161408
  | _ => True

theorem anchorPart5_0157 : anchorPartValid5_0157 anchorHistoryChunk0157 := by
  unfold anchorPartValid5_0157 anchorHistoryChunk0157
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
