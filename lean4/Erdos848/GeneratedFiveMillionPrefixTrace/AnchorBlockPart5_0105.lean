import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0105

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0105 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 108160
  | _ => True

theorem anchorPart5_0105 : anchorPartValid5_0105 anchorHistoryChunk0105 := by
  unfold anchorPartValid5_0105 anchorHistoryChunk0105
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
