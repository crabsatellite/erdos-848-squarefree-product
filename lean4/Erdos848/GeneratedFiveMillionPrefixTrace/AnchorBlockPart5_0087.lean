import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0087

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0087 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 89728
  | _ => True

theorem anchorPart5_0087 : anchorPartValid5_0087 anchorHistoryChunk0087 := by
  unfold anchorPartValid5_0087 anchorHistoryChunk0087
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
