import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0045

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0045 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 46080
  | _ => True

theorem anchorPart0_0045 : anchorPartValid0_0045 anchorHistoryChunk0045 := by
  unfold anchorPartValid0_0045 anchorHistoryChunk0045
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
