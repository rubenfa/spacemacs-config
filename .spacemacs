(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("94ba29363bfb7e06105f68d72b268f85981f7fba2ddef89331660033101eb5e5" "3cd28471e80be3bd2657ca3f03fbb2884ab669662271794360866ab60b6cb6e6" "51e228ffd6c4fff9b5168b31d5927c27734e82ec61f414970fc6bcce23bc140d" "8288b9b453cdd2398339a9fd0cec94105bc5ca79b86695bd7bf0381b1fbe8147" default))
 '(evil-want-Y-yank-to-eol t)
 '(package-selected-packages
   '(bui enh-ruby-mode rvm ruby-tools ruby-test-mode rubocop rspec-mode robe rbenv projectile-rails rake inflections minitest feature-mode chruby bundler inf-ruby exunit lsp-mode ws-butler winum volatile-highlights vi-tilde-fringe uuidgen toc-org spaceline powerline restart-emacs rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-bullets open-junk-file neotree move-text lorem-ipsum linum-relative link-hint indent-guide lv hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation projectile request google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist highlight evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu goto-chg undo-tree eval-sexp-fu pkg-info epl dumb-jump f define-word column-enforce-mode clean-aindent-mode bind-key auto-highlight-symbol packed aggressive-indent adaptive-wrap ace-window ace-link helm avy helm-core async popup flymake jsonrpc eglot yaml-mode web-mode web-beautify tagedit smeargle slim-mode scss-mode sass-mode rainbow-mode pug-mode orgit omnisharp mmm-mode markdown-toc markdown-mode magit-gitflow magit-popup livid-mode skewer-mode simple-httpd less-css-mode json-mode json-snatcher json-reformat js2-refactor multiple-cursors js2-mode js-doc helm-gitignore helm-css-scss helm-company helm-c-yasnippet haml-mode guru-mode gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter gh-md fuzzy flyspell-correct-helm flyspell-correct flycheck-pos-tip pos-tip evil-magit magit transient git-commit with-editor emmet-mode diff-hl csharp-mode company-web web-completion-data company-tern dash-functional tern company-statistics coffee-mode auto-yasnippet yasnippet auto-dictionary all-the-icons memoize ac-ispell auto-complete dockerfile-mode ob-elixir org-plus-contrib flycheck-mix flycheck-credo flycheck alchemist s company dash elixir-mode which-key use-package macrostep hydra helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-flx helm-descbinds helm-ag evil elisp-slime-nav diminish bind-map auto-compile ace-jump-helm-line eglot)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((((class color) (min-colors 89)) (:foreground "#F7F7F7" :background "#282828"))))
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(sql
     yaml
     javascript
     html
     tabs
     react
     auto-completion
     bm
     ;; better-defaults
     emacs-lisp
     git
     github
     ibuffer
       (ibuffer :variables ibuffer-group-buffers-by nil)
     markdown
     lsp
     org
     spell-checking
     syntax-checking
     version-control
     elixir
     (elixir :variables elixir-backend 'lsp)
     ;;the (require 'etags-update)mes-megapack
     spacemacs-layouts
     dap
     ruby
     ruby-on-rails
     (ruby :variables ruby-enable-enh-ruby-mode t)
     (ruby :variables ruby-backend 'lsp)
     (treemacs :variables treemacs-use-scope-type 'Frames)
     tmux
     themes-megapack
     (unicode-fonts :variables unicode-fonts-ligature-modes '(js-mode elixir-mode ruby-mode))
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(
                                      all-the-icons
                                      rainbow-mode
                                      guru-mode
                                      exunit
                                      ;; neotree
                                      ibuffer-sidebar
                                     )
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '(alchemist)
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https nil
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. (default t)
   dotspacemacs-check-for-update t
   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'emacs
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner nil
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'.
   ;; (default '(recents projects))
   dotspacemacs-startup-lists '((projects  . 10) (recents . 10) (bookmarks . 5))
   ;; Number of recent files to show in the startup buffer. Ignored if
   ;; `dotspacemacs-startup-lists' doesn't include `recents'. (default 5)
   dotspacemacs-startup-recent-list-size 10
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
             oldlace
             smyx
             chocolate
						 spacemacs-dark
                         spacemacs-light
                         solarized-light
                         solarized-dark
                         leuven
                         monokai
                         zenburn)

   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Cascadia Code:regular"
                               :size 16
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)pp
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; (Not implemented) dotspacemacs-distinguish-gui-ret nil
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil `Y' is remapped to `y$'. (default t)
   dotspacemacs-remap-Y-to-y$ t
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (depfault nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-micro-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   dotspacemacs-line-numbers t
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   dotspacemacs-mode-line-theme 'spacemacs
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."

  ;; (with-eval-after-load 'company-etags '(progn (add-to-list 'company-etags-modes 'web-mode)))
  ;; (setq company-etags-everywhere '(html-mode web-mode nxml-mode))


  ;; Para prevenir el bug que hace que Spacemacs copie texto aleatorio al abrir un archivo con el mouse
  (add-hook 'spacemacs-buffer-mode-hook (lambda ()
                                          (set (make-local-variable 'mouse-1-click-follows-link) nil)))


  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."

  (require 'all-the-icons)
  ;;(add-hook 'prog-mode-hook 'linum-mode)  
  ;; TITLES OF WINDOWS AND FRAMES
  (setq frame-title-format
        '("" invocation-name ": "
          (:eval
           (if (buffer-file-name)
               (abbreviate-file-name (buffer-file-name))
             "%b"))))


  (setq indent-guide-delay 0.2)

  (spacemacs/toggle-indent-guide-globally-on)

  (defun show-my-sidebar ()
      treemacs
      ibuffer-sidebar-show-sidebar
      )

  ; CUSTOM SHORTCUTS
  (define-key global-map (kbd "C-+") 'text-scale-increase)
  (define-key global-map (kbd "C--") 'text-scale-decrease)
  (define-key global-map (kbd "C-x @") 'evil-toggle-fold)
	(spacemacs/declare-prefix "o" "sidebar-actions")
	(spacemacs/set-leader-keys "ot" 'treemacs)
  (spacemacs/set-leader-keys "oi" 'ibuffer-sidebar-show-sidebar)

  (guru-global-mode t) ; disables arrow keys to be more emacs pro

  ;TREEMACS
  (use-package treemacs
  :ensure t
  :defer t
  :init
  (with-eval-after-load 'winum
    (define-key winum-keymap (kbd "M-0") #'treemacs-select-window))
  :config
  (progn
    (setq treemacs-collapse-dirs                 (if treemacs-python-executable 3 0)
          treemacs-deferred-git-apply-delay      0.5
          treemacs-directory-name-transformer    'identity
          treemacs-display-in-side-window        t
          treemacs-eldoc-display                 t
          treemacs-file-event-delay              5000
          treemacs-file-extension-regex          treemacs-last-period-regex-value
          treemacs-file-follow-delay             0.2
          treemacs-file-name-transformer         #'identity
          treemacs-follow-after-init             t
          treemacs-git-command-pipe              ""
          treemacs-goto-tag-strategy             'refetch-index
          treemacs-indentation                   2
          treemacs-indentation-string            " "
          treemacs-is-never-other-window         nil
          treemacs-max-git-entries               5000
          treemacs-missing-project-action        'ask
          treemacs-move-forward-on-expand        nil
          treemacs-no-png-images                 nil
          treemacs-no-delete-other-windows       t
          treemacs-project-follow-cleanup        nil
          treemacs-persist-file                  (expand-file-name ".cache/treemacs-persist" user-emacs-directory)
          treemacs-position                      'right
          treemacs-recenter-distance             0.1
          treemacs-recenter-after-file-follow    nil
          treemacs-recenter-after-tag-follow     nil
          treemacs-recenter-after-project-jump   'always
          treemacs-recenter-after-project-expand 'on-distance
          treemacs-show-cursor                   nil
          treemacs-show-hidden-files             t
          treemacs-silent-filewatch              nil
          treemacs-silent-refresh                nil
          treemacs-sorting                       'alphabetic-asc
          treemacs-space-between-root-nodes      t
          treemacs-tag-follow-cleanup            t
          treemacs-tag-follow-delay              1.5
          treemacs-user-mode-line-format         nil
          treemacs-user-header-line-format       nil
          treemacs-width                         35)

    ;; The default width and height of the icons is 22 pixels. If you are
    ;; using a Hi-DPI display, uncomment this to double the icon size.
    ;;(treemacs-resize-icons 44)
    (treemacs-resize-icons 20)
    (treemacs-follow-mode t)
    (treemacs-filewatch-mode t)
    (treemacs-fringe-indicator-mode t)
    (pcase (cons (not (null (executable-find "git")))
                 (not (null treemacs-python-executable)))
      (`(t . t)
       (treemacs-git-mode 'deferred))
      (`(t . _)
       (treemacs-git-mode 'simple))))
  :bind
  (:map global-map
        ("M-0"       . treemacs-select-window)
        ("C-x t 1"   . treemacs-delete-other-windows)
        ("C-x t t"   . treemacs)
        ("C-x t B"   . treemacs-bookmark)
        ("C-x t C-t" . treemacs-find-file)
        ("C-x t M-t" . treemacs-find-tag)))

  ; HELM
  (setq grep-find-ignored-directories
    (quote
    (".git" "node_modules" ".elixir_ls")))
  (setq helm-ag-use-grep-ignore-list t)


  ; PROJECTILE ACTIONS
  (add-hook 'projectile-find-file-hook #'neotree-projectile-action)

  (setq frame-title-format '(
                             "emacs:"
                             (:eval (number-to-string (emacs-pid)))
                             " --> "
                             " %b @ "
                             (:eval (last (s-split "/" (projectile-project-root) 1)))
  ))
  ; DISPLAY OF BUFFERS, WINDOWS AND 
  (setq neo-theme 'icons)
  (setq neo-window-position 'right)

  (defun my-turn-current-window-into-frame ()
    (interactive)
    (let ((buffer (current-buffer)))
      (unless (one-window-p)
        (delete-window))
      (display-buffer-pop-up-frame buffer nil)))

  ; To open Alchemist (compile, tets etc) in other frame
	(add-to-list 'display-buffer-alist
                    `(,(rx bos "*Alchemist" (* not-newline) "*" eos)
                      (display-buffer-reuse-window
                       display-buffer-use-some-frame
                       display-buffer-pop-up-frame)
                      (reuse-window . t)
                         (inhibit-same-window . t)
                         (window-height . 0.25)))


  (golden-ratio-mode 0) ; to open two autoexpandable windows

  (setq golden-ratio-exclude-modes '("ediff-mode"
                                     "eshell-mode"
                                     "dired-mode"
                                     "treemacs-mode"
                                     "ibuffer-sidebar-mode"))

  ; ELIXIR
  (setq flycheck-elixir-credo-strict t)

  ;; Create a buffer-local hook to run elixir-format on save, only when we enable elixir-mode.
  (add-hook 'elixir-mode-hook
            (lambda () (add-hook 'before-save-hook 'elixir-format nil t)))


  (use-package lsp-mode
    :commands lsp
    :ensure t
    :diminish lsp-mode
    :hook
    (elixir-mode . lsp)
    :init
    (add-to-list 'exec-path "~/Desarrollo/utilities/elixir-ls/release"))

  (defvar lsp-elixir--config-options (make-hash-table))

  (add-hook 'lsp-after-initialize-hook
            (lambda ()
              (lsp--set-configuration `(:elixirLS, lsp-elixir--config-options))))

  ;Ruby
  ;; Code folding

  (add-hook 'ruby-mode-hook
            (lambda () (hs-minor-mode)))

  ;; (eval-after-load "hideshow"
  ;;   '(add-to-list 'hs-special-modes-alist
  ;;                 `(ruby-mode
  ;;                   ,(rx (or "def" "class" "module" "do" "{" "[")) ; Block start
  ;;                   ,(rx (or "}" "]" "end"))                       ; Block end
  ;;                   ,(rx (or "#" "=begin"))                        ; Comment start
  ;;                   ruby-forward-sexp nil)))

  ;; (global-set-key (kbd "C-c h <left>") 'hs-hide-block)
  ;; (global-set-key (kbd "C-c h <right>") 'hs-show-block)
  ;; (global-set-key (kbd "C-c h <up>") 'hs-hide-level)


  ; ISPELL CONFIGURATION
  (add-hook 'markdown-mode-hook 'flyspell-mode) ;start flyspell-mode
  (setq ispell-dictionary "spanish")    ;set the default dictionary
  (add-hook 'markdown-mode-hook 'ispell)   ;start ispell
  (add-hook 'markdown-mode-hook (lambda () (setq-default word-wrap t)))


  ; HTML AND CSS
  ;; (push '(company-web-html company-etags company-css) company-backends-web-mode)
  (add-hook 'css-mode-hook 'rainbow-mode)
  (add-hook 'web-mode-hook 'rainbow-mode)
  (add-hook 'html-mode-hook 'rainbow-mode)

  (setq-default
   ;; js2-mode
   js2-basic-offset 2
   ;; web-mode
   css-indent-offset 2
   web-mode-markup-indent-offset 2
   web-mode-css-indent-offset 2
   web-mode-code-indent-offset 2
   web-mode-attr-indent-offset 2)

  ; Disable indent on new line for js2-mode
  (add-hook 'rjsx-mode-hook (lambda () (electric-indent-local-mode -1)))

  (with-eval-after-load 'web-mode
    (add-to-list 'web-mode-indentation-params '("lineup-args" . nil))
    (add-to-list 'web-mode-indentation-params '("lineup-concats" . nil))
    (add-to-list 'web-mode-indentation-params '("lineup-calls" . nil)))

 ; Ibuffer sidebar
  (use-package ibuffer-sidebar
    :load-path "~/.emacs.d/fork/ibuffer-sidebar"
    :ensure nil
    :commands (ibuffer-sidebar-toggle-sidebar)
    :config
    (setq ibuffer-sidebar-use-custom-font t)
    (setq ibuffer-sidebar-display-alist '((side . right) (slot . 1)))
    (setq ibuffer-sidebar-width 35)
    )

  (setq ibuffer-saved-filter-groups
        (quote (("default"
                   ("elixir" (mode . elixir-mode))
                   ("ruby" (mode . enh-ruby-mode))
                   ("jsx" (mode . rjsx-mode))
                   ("web" (mode . web-mode))
                   ("emacs" (or
                             (name . "^\\*scratch\\*$")
                             (name . "^\\*Messages\\*$")))))))

  (add-hook 'ibuffer-mode-hook
            (lambda ()
              (ibuffer-switch-to-saved-filter-groups "default")))

  ;SCROLLING
  (setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time  
  (setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling  
  (setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse  
  (setq scroll-step 1) ;; keyboard scroll one line at a time

  ;Tabs layer
  (centaur-tabs-headline-match)
  (setq centaur-tabs-height 32)
  (setq centaur-tabs-set-modified-marker t)
  (setq centaur-tabs-modified-marker "*")
  (setq centaur-tabs-set-icons t)
  (setq centaur-tabs-gray-out-icons 'buffer)
  (add-hook 'dired-mode-hook 'centaur-tabs-local-mode)
  (setq centaur-tabs-style "bar")
  (setq centaur-tabs-set-bar 'under)
  ;; Note: If you're not using Spacmeacs, in order for the underline to display
  ;; correctly you must add the following line:
  (setq x-underline-at-descent-line t)
  (global-set-key (kbd "C-<left>") 'centaur-tabs-backward)
  (global-set-key (kbd "C-S-<left>") 'centaur-tabs-backward-group)
  (global-set-key (kbd "C-<right>") 'centaur-tabs-forward)
  (global-set-key (kbd "C-S-<right>") 'centaur-tabs-forward-group)
  (global-set-key (kbd "C-M-[") 'centaur-tabs-move-current-tab-to-left)
  (global-set-key (kbd "C-M-]") 'centaur-tabs-move-current-tab-to-right)


  ;; restore on load (even before you require bm)
  (setq bm-restore-repository-on-load t)

  ; To show scrollbars only in selected buffer
  (defun update-scroll-bars ()
    (interactive)
    (mapc (lambda (win)
            (set-window-scroll-bars win nil))
          (window-list))
    (set-window-scroll-bars (selected-window) 10 'right))

  (add-hook 'window-configuration-change-hook 'update-scroll-bars)
  (add-hook 'buffer-list-update-hook 'update-scroll-bars)

  ; SHOW FULL PATH OF OPEN BUFFER ON MODE-LINE
  (with-eval-after-load 'spaceline-config (spaceline-define-segment buffer-id (if (buffer-file-name) (abbreviate-file-name (buffer-file-name)) (powerline-buffer-id))))



)

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("94ba29363bfb7e06105f68d72b268f85981f7fba2ddef89331660033101eb5e5" "3cd28471e80be3bd2657ca3f03fbb2884ab669662271794360866ab60b6cb6e6" "51e228ffd6c4fff9b5168b31d5927c27734e82ec61f414970fc6bcce23bc140d" "8288b9b453cdd2398339a9fd0cec94105bc5ca79b86695bd7bf0381b1fbe8147" default)))
 '(package-selected-packages
   (quote
    (enh-ruby-mode rvm ruby-tools ruby-test-mode rubocop rspec-mode robe rbenv projectile-rails rake inflections minitest feature-mode chruby bundler inf-ruby exunit lsp-mode ws-butler winum volatile-highlights vi-tilde-fringe uuidgen toc-org spaceline powerline restart-emacs rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-bullets open-junk-file neotree move-text lorem-ipsum linum-relative link-hint indent-guide lv hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation projectile request google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist highlight evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu goto-chg undo-tree eval-sexp-fu pkg-info epl dumb-jump f define-word column-enforce-mode clean-aindent-mode bind-key auto-highlight-symbol packed aggressive-indent adaptive-wrap ace-window ace-link helm avy helm-core async popup flymake jsonrpc eglot yaml-mode web-mode web-beautify tagedit smeargle slim-mode scss-mode sass-mode rainbow-mode pug-mode orgit omnisharp mmm-mode markdown-toc markdown-mode magit-gitflow magit-popup livid-mode skewer-mode simple-httpd less-css-mode json-mode json-snatcher json-reformat js2-refactor multiple-cursors js2-mode js-doc helm-gitignore helm-css-scss helm-company helm-c-yasnippet haml-mode guru-mode gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter gh-md fuzzy flyspell-correct-helm flyspell-correct flycheck-pos-tip pos-tip evil-magit magit transient git-commit with-editor emmet-mode diff-hl csharp-mode company-web web-completion-data company-tern dash-functional tern company-statistics coffee-mode auto-yasnippet yasnippet auto-dictionary all-the-icons memoize ac-ispell auto-complete dockerfile-mode ob-elixir org-plus-contrib flycheck-mix flycheck-credo flycheck alchemist s company dash elixir-mode which-key use-package macrostep hydra helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-flx helm-descbinds helm-ag evil elisp-slime-nav diminish bind-map auto-compile ace-jump-helm-line eglot))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((((class color) (min-colors 89)) ())))
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))


(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("e0628ee6c594bc7a29bedc5c57f0f56f28c5b5deaa1bc60fc8bd4bb4106ebfda" "57a29645c35ae5ce1660d5987d3da5869b048477a7801ce7ab57bfb25ce12d3e" "94ba29363bfb7e06105f68d72b268f85981f7fba2ddef89331660033101eb5e5" "3cd28471e80be3bd2657ca3f03fbb2884ab669662271794360866ab60b6cb6e6" "51e228ffd6c4fff9b5168b31d5927c27734e82ec61f414970fc6bcce23bc140d" "8288b9b453cdd2398339a9fd0cec94105bc5ca79b86695bd7bf0381b1fbe8147" default))
 '(evil-want-Y-yank-to-eol t)
 '(helm-completion-style 'helm)
 '(package-selected-packages
   '(js-format dap-mode bui enh-ruby-mode rvm ruby-tools ruby-test-mode rubocop rspec-mode robe rbenv projectile-rails rake inflections minitest feature-mode chruby bundler inf-ruby exunit lsp-mode ws-butler winum volatile-highlights vi-tilde-fringe uuidgen toc-org spaceline powerline restart-emacs rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-bullets open-junk-file neotree move-text lorem-ipsum linum-relative link-hint indent-guide lv hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation projectile request google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist highlight evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu goto-chg undo-tree eval-sexp-fu pkg-info epl dumb-jump f define-word column-enforce-mode clean-aindent-mode bind-key auto-highlight-symbol packed aggressive-indent adaptive-wrap ace-window ace-link helm avy helm-core async popup flymake jsonrpc eglot yaml-mode web-mode web-beautify tagedit smeargle slim-mode scss-mode sass-mode rainbow-mode pug-mode orgit omnisharp mmm-mode markdown-toc markdown-mode magit-gitflow magit-popup livid-mode skewer-mode simple-httpd less-css-mode json-mode json-snatcher json-reformat js2-refactor multiple-cursors js2-mode js-doc helm-gitignore helm-css-scss helm-company helm-c-yasnippet haml-mode guru-mode gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter gh-md fuzzy flyspell-correct-helm flyspell-correct flycheck-pos-tip pos-tip evil-magit magit transient git-commit with-editor emmet-mode diff-hl csharp-mode company-web web-completion-data company-tern dash-functional tern company-statistics coffee-mode auto-yasnippet yasnippet auto-dictionary all-the-icons memoize ac-ispell auto-complete dockerfile-mode ob-elixir org-plus-contrib flycheck-mix flycheck-credo flycheck alchemist s company dash elixir-mode which-key use-package macrostep hydra helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-flx helm-descbinds helm-ag evil elisp-slime-nav diminish bind-map auto-compile ace-jump-helm-line eglot)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((((class color) (min-colors 89)) ())))
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
)
