import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0082

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0082 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 83968
  | _ => True

theorem anchorPart0_0082 : anchorPartValid0_0082 anchorHistoryChunk0082 := by
  unfold anchorPartValid0_0082 anchorHistoryChunk0082
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
