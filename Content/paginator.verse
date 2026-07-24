paginator(t:type) := class:

    var Items : []t = array{}
    var ItemsPerPage : int = 3
    var CurrentPage : int = 0

    SetItems(NewItems : []t) : void =
        set Items = NewItems
        set CurrentPage = 0

    CurrentPageItems() : []t =
        StartIndex := CurrentPage * ItemsPerPage
        EndIndex := StartIndex + ItemsPerPage
        for (Index -> Item : Items, Index >= StartIndex, Index < EndIndex):
            Item

    TotalPages() : int =
        if (Pages := Ceil(Items.Length / ItemsPerPage)):
            return Pages
        return 1

    NextPage() : void =
        InTotalPages : int = TotalPages()
        if (CurrentPage + 1 < InTotalPages):
            set CurrentPage += 1

    PreviousPage() : void =
        if (CurrentPage > 0):
            set CurrentPage -= 1