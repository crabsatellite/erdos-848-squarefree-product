import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0049

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0049 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 50816
  | _ => True

theorem anchorPart5_0049 : anchorPartValid5_0049 anchorHistoryChunk0049 := by
  unfold anchorPartValid5_0049 anchorHistoryChunk0049
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
