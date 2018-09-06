

for i in range(5):
    # Body of for loop
    print(i)


# same as
range_generator = range(5)
range_iterator = iter(range_generator)
while True:
    try:
        i = next(range_iterator)
    except StopIteration:
        break
    # Body of for loop
    print(i)