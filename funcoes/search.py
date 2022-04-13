from operator import itemgetter
def search(sequence, expected, finder):
    for elem in sequence:
        if finder(elem) == expected:
            return elem
    raise RuntimeError(f"Could not find a element with {expected}.")


friends = [
           {"name": "Rolf Smith", "age": 24},
           {"name": "Franklin Moura", "age": 41},
           {"name": "Juliano Terra", "age": 36},
           {"name": "Danilo Lua", "age": 45},
           {"name": "Julia Lopes", "age": 56},
           {"name": "Tania Lucia", "age": 99},
           {"name": "Raquel Lia", "age": 101},
           {"name": "Carol Frank", "age": 109},
           
           ]
           
def get_friend_name(friend):
    return friend["name"]
    



print(search(friends, "Franklin Moura", itemgetter('name')))    
#print(search(friends, "Franklin Moura", get_friend_name))