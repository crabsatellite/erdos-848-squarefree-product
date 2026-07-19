import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0114

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0114 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 116736
  | _ => True

theorem anchorPart0_0114 : anchorPartValid0_0114 anchorHistoryChunk0114 := by
  unfold anchorPartValid0_0114 anchorHistoryChunk0114
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
