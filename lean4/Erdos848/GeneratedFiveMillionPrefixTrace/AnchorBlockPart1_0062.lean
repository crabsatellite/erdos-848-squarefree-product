import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0062

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0062 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 63616
  | _ => True

theorem anchorPart1_0062 : anchorPartValid1_0062 anchorHistoryChunk0062 := by
  unfold anchorPartValid1_0062 anchorHistoryChunk0062
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
