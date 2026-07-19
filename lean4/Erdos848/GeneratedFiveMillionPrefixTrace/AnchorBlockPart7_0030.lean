import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0030

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0030 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 31616
  | _ => True

theorem anchorPart7_0030 : anchorPartValid7_0030 anchorHistoryChunk0030 := by
  unfold anchorPartValid7_0030 anchorHistoryChunk0030
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
