#!/usr/bin/env python3
import readline
import subprocess as sp
from argparse import ArgumentParser


def parse_args():
    parser = ArgumentParser()
    parser.add_argument("-t", "--tmux-pane", default="0")
    return parser.parse_args()


def main():
    args = parse_args()

    try:
        line = ""
        while True:
            line = input(f"[SENDING TO PANE {args.tmux_pane}] > ")
            if line in ["quit", "q", "exit"]:
                break
            sp.run(["tmux", "send", "-t", args.tmux_pane, line, "Enter"])
    except KeyboardInterrupt:
        pass
    except EOFError:
        pass


if __name__ == '__main__':
    main()
