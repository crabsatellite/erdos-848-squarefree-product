import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0184

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0184 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 189312
  | _ => True

theorem anchorPart7_0184 : anchorPartValid7_0184 anchorHistoryChunk0184 := by
  unfold anchorPartValid7_0184 anchorHistoryChunk0184
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
