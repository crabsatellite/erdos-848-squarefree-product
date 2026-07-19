import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0162

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0162 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 166528
  | _ => True

theorem anchorPart5_0162 : anchorPartValid5_0162 anchorHistoryChunk0162 := by
  unfold anchorPartValid5_0162 anchorHistoryChunk0162
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
