

class Generator:
    """
    A Generator is an object that defines the __iter__() method.
    """
    def __iter__(self):
        return Iterator()


class Iterator:
    """
    An Iterator is an object that defines the __next__() method.
    """
    def __next__(self):
        """
        The __next__ method should raise StopIteration when iteration ends.
        """
        raise StopIteration
        # return

