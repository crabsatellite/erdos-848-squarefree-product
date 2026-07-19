import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0057

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0057 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 59264
  | _ => True

theorem anchorPart7_0057 : anchorPartValid7_0057 anchorHistoryChunk0057 := by
  unfold anchorPartValid7_0057 anchorHistoryChunk0057
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
