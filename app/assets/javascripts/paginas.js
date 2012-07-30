/* when document is ready */
    $(function(){
    /* initiate the plugin */
        $("div.paginas").jPages({
        containerID  : "itemContainer",
        perPage      : 3,
        startPage    : 1,
        startRange   : 1,
        midRange     : 5,
        endRange     : 1
    });
    
     $("div.paginador").jPages({
        containerID  : "ContVideo",
        perPage      : 4,
        startPage    : 1,
        startRange   : 1,
        midRange     : 5,
        endRange     : 1
    });
});
