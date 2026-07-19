import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0140

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0140 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 144000
  | _ => True

theorem anchorPart5_0140 : anchorPartValid5_0140 anchorHistoryChunk0140 := by
  unfold anchorPartValid5_0140 anchorHistoryChunk0140
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
