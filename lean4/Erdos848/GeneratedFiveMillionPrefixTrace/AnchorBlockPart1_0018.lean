import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0018

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0018 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 18560
  | _ => True

theorem anchorPart1_0018 : anchorPartValid1_0018 anchorHistoryChunk0018 := by
  unfold anchorPartValid1_0018 anchorHistoryChunk0018
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
