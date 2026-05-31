import Erdos848.MainChain

def main : IO UInt32 :=
  ChainAudit.Status.runCheck Erdos848.MainChain.config
