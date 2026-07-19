import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0169

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0169 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 173056
  | _ => True

theorem anchorPart0_0169 : anchorPartValid0_0169 anchorHistoryChunk0169 := by
  unfold anchorPartValid0_0169 anchorHistoryChunk0169
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
