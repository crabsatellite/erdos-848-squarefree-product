import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0172

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0172 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 176768
  | _ => True

theorem anchorPart5_0172 : anchorPartValid5_0172 anchorHistoryChunk0172 := by
  unfold anchorPartValid5_0172 anchorHistoryChunk0172
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
