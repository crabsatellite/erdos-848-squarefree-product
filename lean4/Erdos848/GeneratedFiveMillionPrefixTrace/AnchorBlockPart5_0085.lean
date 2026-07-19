import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0085

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0085 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 87680
  | _ => True

theorem anchorPart5_0085 : anchorPartValid5_0085 anchorHistoryChunk0085 := by
  unfold anchorPartValid5_0085 anchorHistoryChunk0085
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
