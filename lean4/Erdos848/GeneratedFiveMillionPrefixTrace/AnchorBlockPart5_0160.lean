import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0160

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0160 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 164480
  | _ => True

theorem anchorPart5_0160 : anchorPartValid5_0160 anchorHistoryChunk0160 := by
  unfold anchorPartValid5_0160 anchorHistoryChunk0160
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
