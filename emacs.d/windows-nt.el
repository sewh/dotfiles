(when (string= system-type "windows-nt")
  (set-default buffer-file-coding-system "utf-8-unix")
  (defadvice server-ensure-safe-dir (around
                                     my-around-server-ensure-safe-dir
                                     activate)
    "Ignores any errors raised from server-ensure-safe-dir"
    (ignore-errors ad-do-it))
)
