import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0146

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0146 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 150144
  | _ => True

theorem anchorPart5_0146 : anchorPartValid5_0146 anchorHistoryChunk0146 := by
  unfold anchorPartValid5_0146 anchorHistoryChunk0146
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
