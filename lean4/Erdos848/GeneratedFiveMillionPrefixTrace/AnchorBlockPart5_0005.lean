import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0005

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0005 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 5760
  | _ => True

theorem anchorPart5_0005 : anchorPartValid5_0005 anchorHistoryChunk0005 := by
  unfold anchorPartValid5_0005 anchorHistoryChunk0005
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
