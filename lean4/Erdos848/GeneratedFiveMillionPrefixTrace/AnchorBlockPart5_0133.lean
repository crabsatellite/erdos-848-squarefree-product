import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0133

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0133 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 136832
  | _ => True

theorem anchorPart5_0133 : anchorPartValid5_0133 anchorHistoryChunk0133 := by
  unfold anchorPartValid5_0133 anchorHistoryChunk0133
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
