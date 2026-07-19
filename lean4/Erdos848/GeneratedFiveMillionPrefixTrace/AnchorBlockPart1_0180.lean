import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0180

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0180 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 184448
  | _ => True

theorem anchorPart1_0180 : anchorPartValid1_0180 anchorHistoryChunk0180 := by
  unfold anchorPartValid1_0180 anchorHistoryChunk0180
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
