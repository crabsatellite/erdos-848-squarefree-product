import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0036

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0036 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 37760
  | _ => True

theorem anchorPart7_0036 : anchorPartValid7_0036 anchorHistoryChunk0036 := by
  unfold anchorPartValid7_0036 anchorHistoryChunk0036
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
