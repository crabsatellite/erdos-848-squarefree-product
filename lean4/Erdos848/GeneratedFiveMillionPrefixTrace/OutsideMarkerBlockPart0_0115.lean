import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0115

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0115 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 117760
  | _ => True

theorem outsideMarkerPart0_0115 : outsideMarkerPartValid0_0115 outsideHistoryChunk0115 := by
  unfold outsideMarkerPartValid0_0115 outsideHistoryChunk0115
  decide

def outsideMarkerPartValid1_0115 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 117888
  | _ => True

theorem outsideMarkerPart1_0115 : outsideMarkerPartValid1_0115 outsideHistoryChunk0115 := by
  unfold outsideMarkerPartValid1_0115 outsideHistoryChunk0115
  decide

def outsideMarkerPartValid2_0115 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 118016
  | _ => True

theorem outsideMarkerPart2_0115 : outsideMarkerPartValid2_0115 outsideHistoryChunk0115 := by
  unfold outsideMarkerPartValid2_0115 outsideHistoryChunk0115
  decide

def outsideMarkerPartValid3_0115 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 118144
  | _ => True

theorem outsideMarkerPart3_0115 : outsideMarkerPartValid3_0115 outsideHistoryChunk0115 := by
  unfold outsideMarkerPartValid3_0115 outsideHistoryChunk0115
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
