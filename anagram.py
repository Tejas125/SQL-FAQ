from collections import defaultdict

def group_anagrams(words):
    anagrams = defaultdict(list)
    for word in words:
        print(anagrams[word]);

        key = ''.join(sorted(word))
        print(word + " --> "+ key);
        anagrams[key].append(word)
    return list(anagrams.values())

# Example usage:
words = ["listen", "silent", "enlist", "rat", "tar", "art", "evil", "vile", "live"]
anagram_groups = group_anagrams(words)
print(anagram_groups)