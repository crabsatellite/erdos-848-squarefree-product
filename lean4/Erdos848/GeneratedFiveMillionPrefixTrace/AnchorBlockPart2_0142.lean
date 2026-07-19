import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0142

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0142 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 145664
  | _ => True

theorem anchorPart2_0142 : anchorPartValid2_0142 anchorHistoryChunk0142 := by
  unfold anchorPartValid2_0142 anchorHistoryChunk0142
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
