import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0071

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0071 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 73344
  | _ => True

theorem anchorPart5_0071 : anchorPartValid5_0071 anchorHistoryChunk0071 := by
  unfold anchorPartValid5_0071 anchorHistoryChunk0071
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
