import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0142

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0142 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 145536
  | _ => True

theorem anchorPart1_0142 : anchorPartValid1_0142 anchorHistoryChunk0142 := by
  unfold anchorPartValid1_0142 anchorHistoryChunk0142
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
