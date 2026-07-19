import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0018

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0018 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 19072
  | _ => True

theorem anchorPart5_0018 : anchorPartValid5_0018 anchorHistoryChunk0018 := by
  unfold anchorPartValid5_0018 anchorHistoryChunk0018
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
