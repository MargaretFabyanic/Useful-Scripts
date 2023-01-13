import re
def disemvowel(string_):
    
    x=re.sub('[aeiouAEIOU]','',string_)
    
    return x