import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0119

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0119 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 122496
  | _ => True

theorem anchorPart5_0119 : anchorPartValid5_0119 anchorHistoryChunk0119 := by
  unfold anchorPartValid5_0119 anchorHistoryChunk0119
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
