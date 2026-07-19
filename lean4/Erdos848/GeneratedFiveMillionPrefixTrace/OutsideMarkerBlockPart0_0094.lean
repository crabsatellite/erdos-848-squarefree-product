import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0094

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0094 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 96256
  | _ => True

theorem outsideMarkerPart0_0094 : outsideMarkerPartValid0_0094 outsideHistoryChunk0094 := by
  unfold outsideMarkerPartValid0_0094 outsideHistoryChunk0094
  decide

def outsideMarkerPartValid1_0094 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 96384
  | _ => True

theorem outsideMarkerPart1_0094 : outsideMarkerPartValid1_0094 outsideHistoryChunk0094 := by
  unfold outsideMarkerPartValid1_0094 outsideHistoryChunk0094
  decide

def outsideMarkerPartValid2_0094 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 96512
  | _ => True

theorem outsideMarkerPart2_0094 : outsideMarkerPartValid2_0094 outsideHistoryChunk0094 := by
  unfold outsideMarkerPartValid2_0094 outsideHistoryChunk0094
  decide

def outsideMarkerPartValid3_0094 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 96640
  | _ => True

theorem outsideMarkerPart3_0094 : outsideMarkerPartValid3_0094 outsideHistoryChunk0094 := by
  unfold outsideMarkerPartValid3_0094 outsideHistoryChunk0094
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
