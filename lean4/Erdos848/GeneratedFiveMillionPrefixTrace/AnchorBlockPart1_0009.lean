import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0009

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0009 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 9344
  | _ => True

theorem anchorPart1_0009 : anchorPartValid1_0009 anchorHistoryChunk0009 := by
  unfold anchorPartValid1_0009 anchorHistoryChunk0009
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
