class EofException(Exception):
    def __init__(self):
        pass

class CMakeListsParser:
    def __init__(self):
        self.index = 0
        self.text = self.read_file()
        self.builder = []
        self.tokens = []

    def read_file(self):
        f = open("./build/CMakeLists.txt", "r")
        content = f.read()
        f.close()
        return content

    def peek(self):
        if self.isEof():
            raise EofException()
        else:
            return self.text[self.index]

    def consume(self):
        self.builder.append(self.text[self.index])
        self.index += 1

    def skip(self):
        self.index += 1
    
    def isEof(self):
        return self.index >= len(self.text)

    def read_word(self):
        while self.peek().isalpha() or self.peek() == "_":
            self.consume()
    
    def read_options(self):
        if self.peek() == '(':
            self.skip()
            while self.peek() != ')':
                self.consume()
            self.skip()
        else:
            raise Exception("cannot parse CMakeLists")

    def read_all(self):
        self.skip_blanks()
        while self.peek().isalpha() or self.peek() == "_":
            self.builder.clear()
            self.read_word()
            self.tokens.append("".join(self.builder))
            self.builder.clear()
            self.read_options()
            self.tokens.append("".join(self.builder))
            self.skip_blanks()

    def skip_blanks(self):
        while self.peek().isspace():
            self.skip()

def find_add_executable(tokens):
    for i in range(len(tokens)):
        if tokens[i] == "ADD_EXECUTABLE":
            return tokens[i + 1]

def get_add_executable_options():
    parser = CMakeListsParser()
    try:
        parser.read_all()
        tokens = parser.tokens
        options = find_add_executable(tokens)
        return options
    except EofException as ex:
        tokens = parser.tokens
        options = find_add_executable(tokens)
        return options
