func! avx#DisplayResults()
    let cmd = "cat /root/dS.fS.web_Scraping/log.txt"
    let results = split(system(cmd),'\n')

    for result in results
        if(result ==# results[1])
            execute "normal! 1GdGI" . result
        else
            call append(line('$') result)
        endif
    endfor
endfunction


