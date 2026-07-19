import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0107

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0107 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 110464
  | _ => True

theorem anchorPart7_0107 : anchorPartValid7_0107 anchorHistoryChunk0107 := by
  unfold anchorPartValid7_0107 anchorHistoryChunk0107
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
