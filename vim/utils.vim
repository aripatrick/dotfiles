function! SetupDataDirectories()
    let data = '_data'
    let dirs = {'backupdir': 'backup', 'dir': 'swap', 'undodir': 'undo'}
    let split = '/'
    let root = '.vim'

    if has("win32")
        let split = '\\'
        let root = 'vimfiles'
    endif

    " Create the _data directory in the vim root
    let data_dir = expand('~' . split . root . split . data)
    if !isdirectory(data_dir)
        call mkdir(data_dir)
    endif

    " Create the backup, swap, and undo dirs until the _data directory, and
    " assign the directories to their respective options
    for dir in keys(dirs)
        let tmp = data_dir . split . dirs[dir]
        if !isdirectory(tmp)
            call mkdir(tmp)
        endif
        let cmd = "set " . dir . "=" . tmp
        exec cmd
    endfor
endfunction

function! ToggleLineLengthHighlight()
    let l:toggle = 0
    if exists("b:line_length_highlight")
        let l:toggle = b:line_length_highlight
    endif
    if l:toggle == 1
        exec ':set cc=0'
        let l:toggle = 0
    else
        exec ':set cc=+1'
        let l:toggle = 1
    endif
    let b:line_length_highlight = l:toggle
endfunction

command! SetupDataDirectories call SetupDataDirectories()
command! ToggleLineLengthHighlight call ToggleLineLengthHighlight()

