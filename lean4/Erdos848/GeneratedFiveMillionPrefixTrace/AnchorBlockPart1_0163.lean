import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0163

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0163 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 167040
  | _ => True

theorem anchorPart1_0163 : anchorPartValid1_0163 anchorHistoryChunk0163 := by
  unfold anchorPartValid1_0163 anchorHistoryChunk0163
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
