import math
def find_next_square(sq):
    # Return the next square if sq is a square, -1 otherwise
    squareRoot= math.sqrt(sq)+1
    Rootfloor = int(squareRoot)
    if(squareRoot==Rootfloor):
        return squareRoot*squareRoot
    return -1