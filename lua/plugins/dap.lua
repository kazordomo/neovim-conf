local dap = require('dap')

dap.adapters.chrome = {
    type = "executable",
    command = "node",
    args = {"~/programs/vscode-chrome-debug/out/src/chromeDebug.js"} 
    -- args = {os.getenv("HOME") .. "/programs/vscode-chrome-debug/out/src/chromeDebug.js"} 
}

dap.configurations.typescriptreact = { 
    {
        type = "chrome",
        request = "attach",
        program = "${file}",
        cwd = vim.fn.getcwd(),
        sourceMaps = true,
        protocol = "inspector",
        port = 9222,
        webRoot = "${workspaceFolder}"
    }
}
