import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0055

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0055 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 56448
  | _ => True

theorem anchorPart1_0055 : anchorPartValid1_0055 anchorHistoryChunk0055 := by
  unfold anchorPartValid1_0055 anchorHistoryChunk0055
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
