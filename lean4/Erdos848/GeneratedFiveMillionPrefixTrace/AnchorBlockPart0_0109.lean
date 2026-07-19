import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0109

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0109 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 111616
  | _ => True

theorem anchorPart0_0109 : anchorPartValid0_0109 anchorHistoryChunk0109 := by
  unfold anchorPartValid0_0109 anchorHistoryChunk0109
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
