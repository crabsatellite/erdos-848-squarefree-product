import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0131

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0131 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 134272
  | _ => True

theorem anchorPart1_0131 : anchorPartValid1_0131 anchorHistoryChunk0131 := by
  unfold anchorPartValid1_0131 anchorHistoryChunk0131
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
