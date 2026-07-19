import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0084

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0084 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 86016
  | _ => True

theorem anchorPart0_0084 : anchorPartValid0_0084 anchorHistoryChunk0084 := by
  unfold anchorPartValid0_0084 anchorHistoryChunk0084
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
