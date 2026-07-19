import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0177

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0177 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 181248
  | _ => True

theorem anchorPart0_0177 : anchorPartValid0_0177 anchorHistoryChunk0177 := by
  unfold anchorPartValid0_0177 anchorHistoryChunk0177
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
