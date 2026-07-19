import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0120

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0120 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 122880
  | _ => True

theorem anchorPart0_0120 : anchorPartValid0_0120 anchorHistoryChunk0120 := by
  unfold anchorPartValid0_0120 anchorHistoryChunk0120
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
