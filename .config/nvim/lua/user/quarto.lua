require 'quarto'.setup {
    debug = false,
    closePreviewOnExit = true,
    lspFeatures = {
        enabled = false,
        languages = { 'r', 'python', 'julia' },
        diagnostics = {
            enabled = true,
            triggers = { "BufWrite" }
        },
        completion = {
            enabled = false,
        },
    },
    keymap = {
        hover = 'K',
        definition = 'gd'
    }
}
