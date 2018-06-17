defmodule Lists do
  def sample do
    listA = [0,1,2,3,4,5]
  end

  def deleteItem do
    List.delete(sample, 3)
#    This returns [0,1,2,4,5]
  end

  def showHead do
    List.first(sample)
#    Return first item in the list which is 0
  end

  def showTail do
    List.last(sample)
    #    Return last item in the list which is 5
  end

  def foldList do
    List.foldr(sample, 0, fn (listItem, sumOfItems) -> listItem + sumOfItems  end)
#    Adds the items in the list
#   Return 15 since the starting point is 0.
#   using List.foldr(sample, 2, fn (listItem, sumOfItems) -> listItem + sumOfItems  end)
#   would return 17
#   This can also be simplified to
#
#   List.foldr(sample, 0, &(&1 + &2))
  end

  def reduceList do
    Enum.reduce(sample, 0, fn (num, sum) -> num + sum  end)
#    Similar to List.foldr
#    Adds the items in the list
#    Return 15 since the starting point is 0.
#    using Enum.reduce(sample, 2, fn (listItem, sumOfItems) -> listItem + sumOfItems  end)
#    would return 17
#    This can also be simplified to
#
#    Enum.reduce(sample, 0, &(&1 + &2)
  end

  def enumFilter do
    myList = ["Kevin", "Brian", "Tom", "Eky"]
    Enum.filter_map myList, &(String.first(&1) >= "K"), &(&1 <> " Kip")
#   Filters the list then checks the first character of the item
#   if the first character is K or any other char after that, Kip is appended to the name
#   This example returns ["KevinKip", "Tom Kip"]
#
#    This can also be accomplished as below:
#
#    for item <- myList, String.first(item) >= "K" do
#      item <> " Kip"
#    end

  end

  def listComprehension do
    myList = ["Kevin", "Brian", "Tom", "Eky"]
    for listItem <- myList, String.first(listItem) < "K" do
      listItem <> " Kip"
    end
#       Filters the list then checks the first character of the item
#       if the first character is before K, Kip is appended to the name
#       This example returns ["Brian Kip", "EKy Kip"]
#
#       This can also be accomplished as below:
#
#       Enum.filter_map myList, &(String.first(&1) < "K", &(&1 <> " Kip")
  end
end
