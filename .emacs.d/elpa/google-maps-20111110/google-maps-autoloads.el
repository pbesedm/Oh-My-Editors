;;; google-maps-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (google-maps) "google-maps" "google-maps.el" (20491
;;;;;;  32570))
;;; Generated autoloads from google-maps.el

(autoload 'google-maps "google-maps" "\
Run Google Maps on LOCATION.
If NO-GEOCODING is t, then does not try to geocode the address
and do not ask the user for a more precise location.

\(fn LOCATION &optional NO-GEOCODING)" t nil)

;;;***

;;;### (autoloads (google-maps-geocode-replace-region) "google-maps-geocode"
;;;;;;  "google-maps-geocode.el" (20491 32570))
;;; Generated autoloads from google-maps-geocode.el

(autoload 'google-maps-geocode-replace-region "google-maps-geocode" "\
Geocode region and replace it with a more accurate result.

\(fn BEG END)" t nil)

;;;***

;;;### (autoloads (google-maps-static-mode) "google-maps-static"
;;;;;;  "google-maps-static.el" (20491 32570))
;;; Generated autoloads from google-maps-static.el

(autoload 'google-maps-static-mode "google-maps-static" "\
A major mode for Google Maps service

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("google-maps-base.el" "google-maps-pkg.el"
;;;;;;  "org-location-google-maps.el") (20491 32570 166116))

;;;***

(provide 'google-maps-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; google-maps-autoloads.el ends here
