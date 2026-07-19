import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0089

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0089 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 91776
  | _ => True

theorem anchorPart5_0089 : anchorPartValid5_0089 anchorHistoryChunk0089 := by
  unfold anchorPartValid5_0089 anchorHistoryChunk0089
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
