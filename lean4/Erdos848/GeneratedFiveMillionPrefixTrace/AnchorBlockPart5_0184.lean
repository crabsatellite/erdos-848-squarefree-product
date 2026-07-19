import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0184

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0184 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 189056
  | _ => True

theorem anchorPart5_0184 : anchorPartValid5_0184 anchorHistoryChunk0184 := by
  unfold anchorPartValid5_0184 anchorHistoryChunk0184
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
