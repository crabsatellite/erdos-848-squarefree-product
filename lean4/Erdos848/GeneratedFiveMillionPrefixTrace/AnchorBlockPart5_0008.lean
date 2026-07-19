import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0008

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0008 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 8832
  | _ => True

theorem anchorPart5_0008 : anchorPartValid5_0008 anchorHistoryChunk0008 := by
  unfold anchorPartValid5_0008 anchorHistoryChunk0008
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
