import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0035

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0035 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 36480
  | _ => True

theorem anchorPart5_0035 : anchorPartValid5_0035 anchorHistoryChunk0035 := by
  unfold anchorPartValid5_0035 anchorHistoryChunk0035
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
